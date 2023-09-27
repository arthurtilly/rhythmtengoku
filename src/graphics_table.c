#include "graphics_table.h"
#include "code_08001360.h"
#include "task_pool.h"
#include "memory_heap.h"

asm(".include \"include/gba.inc\"");//Temporary


/* GRAPHICS TABLE LOADER */


enum CompressionLevelsEnum {
    COMPRESSION_LEVEL_NONE,
    COMPRESSION_LEVEL_RLE,
    COMPRESSION_LEVEL_HUFFMAN
};

extern s32 (*D_03004af0)(const u16 *src, u16 *dest, const u8 *rleData, u32 sizeData);
extern u32 D_03005390[]; // rle decompression save state
extern u8 D_030053b0; // boolean

extern struct TaskMethods D_089363fc;


// Ensure Valid Destination Pointer..?
// Removes the highest bit from a pointer, since that shouldn't be set (not that this keeps the pointer in range though).
void *func_08002a54(void *dest) {
    if ((s32)dest < 0) {
        dest = *(void **)((s32)dest & 0x7fffffff);
    }
    return dest;
}


// Initialise GfxTableLoader
void func_08002a6c(struct GfxTableLoader *info, const struct GraphicsTable *gfxTable, u32 limit) {
    if (gfxTable->src != NULL) {
        while (gfxTable->size == FUNCTION_GFX_SOURCE) {
            GfxTableSrcFunc func = gfxTable->src;
            func(gfxTable->dest);
            gfxTable++;
        }

        info->active = TRUE;
        info->limit = limit;
        info->gfxTable = gfxTable;
        info->dest = (void *)func_08002a54(gfxTable->dest);
        info->src = gfxTable->src;

        // Uncompressed
        if (gfxTable->size != COMPRESSED_GFX_SOURCE) {
            info->compressionLevel = COMPRESSION_LEVEL_NONE;
            info->size = gfxTable->size;
            return;
        }

        // Compressed (RLE)
        info->src = (void *)func_0800869c(info->src);
        info->compressionLevel = COMPRESSION_LEVEL_RLE;
        info->size = 1;
        info->decodingRLE = FALSE;

        // Double Compressed (Huffman + RLE)
        if (((struct CompressedGraphics *)info->src)->doubleCompressed) {
            info->compressionLevel = COMPRESSION_LEVEL_HUFFMAN;
            info->decompressingHuffman = FALSE;
        }
    } else {
        info->active = FALSE;
        return;
    }
}


// Update GfxTableLoader
void func_08002b10(struct GfxTableLoader *info) {
    const struct GraphicsTable *gfxTable;
    const struct CompressedGraphics *comp;
    const struct Huffman *huffman;
    s32 processLimit;
    u32 size;
    u32 offset;
    const void *src;
    u16 *dest;
    u32 i;
    u32 finished;

    if (!info->active) {
        return;
    }

    processLimit = info->limit;

    while (processLimit != 0) {
        switch (info->compressionLevel) {
            case COMPRESSION_LEVEL_NONE:
                size = processLimit;
                if (processLimit > info->size) size = info->size;
                offset = 0x20;
                src = info->src;
                if ((u32)src & 3) offset = 0x10;
                dest = info->dest;
                if ((u32)dest & 3) offset = 0x10;
                if ((u32)size & 3) offset = 0x10;
                dma3_set(src, dest, size, offset, 0x100);
                processLimit -= size;
                info->size -= size;
                if (info->size == 0) {
                    break;
                }
                (u32) info->src += size;
                (u32) info->dest += size;
                continue;

            case COMPRESSION_LEVEL_RLE:
                if (info->decodingRLE) {
                    D_030053b0 = TRUE;
                    for (i = 0; i < 8; i++) {
                        D_03005390[i] = info->rleSaveState[i];
                    }
                    size = func_08003ea4();
                } else {
                    D_030053b0 = FALSE;
                    comp = info->src;
                    src = comp->data.raw;
                    if (comp->doubleCompressed) {
                        src = info->dest + comp->rleOffset - comp->data.huffman->size;
                    }
                    size = D_03004af0(src, info->dest, comp->rleData, (comp->rleSize << 16) | (info->limit / 4));
                }
                if (D_030053b0) {
                    info->decodingRLE = TRUE;
                    for (i = 0; i < 8; i++) {
                        info->rleSaveState[i] = D_03005390[i];
                    }
                    D_030053b0 = FALSE;
                } else {
                    info->decodingRLE = FALSE;
                }
                processLimit -= size;
                if (processLimit < 0) {
                    processLimit = 0;
                }
                if (info->decodingRLE) {
                    return;
                }
                info->size = 0;
                break;

            case COMPRESSION_LEVEL_HUFFMAN:
                if (info->decompressingHuffman) {
                    finished = func_080085e4(info->huffmanSaveState);
                } else {
                    comp = info->src;
                    info->decompressingHuffman = TRUE;
                    // Fake-match below:
                    size = (u32)comp->data.huffman;
                    // <audible booing>
                    finished = func_08008594(comp->data.huffman, (info->dest + comp->rleOffset - comp->data.huffman->size), info->limit, info->huffmanSaveState);
                }
                info->size -= info->limit;
                if (info->size < 0) {
                    info->size = 0;
                }
                if (finished) {
                    info->decompressingHuffman = FALSE;
                    info->compressionLevel = COMPRESSION_LEVEL_RLE;
                }
                return;
        }

        gfxTable = ++info->gfxTable;
        if (gfxTable->src != NULL) {
            while (gfxTable->size == FUNCTION_GFX_SOURCE) {
                GfxTableSrcFunc func = gfxTable->src;
                func(gfxTable->dest);
                gfxTable++;
            }
            if (gfxTable->size != COMPRESSED_GFX_SOURCE) {
                info->compressionLevel = COMPRESSION_LEVEL_NONE;
                info->src = gfxTable->src;
                info->dest = (void *)func_08002a54(gfxTable->dest);
                info->size = gfxTable->size;
            } else {
                info->compressionLevel = COMPRESSION_LEVEL_RLE;
                info->src = (void *)func_0800869c(gfxTable->src);
                info->dest = (void *)func_08002a54(gfxTable->dest);
                info->size = 1;
                info->decodingRLE = FALSE;

                comp = info->src;
                if (comp->doubleCompressed) {
                    info->compressionLevel = COMPRESSION_LEVEL_HUFFMAN;
                    info->decompressingHuffman = FALSE;
                }
            }
        } else {
            info->active = FALSE;
            return;
        }
    }
}

#include "asm/code_08001360/asm_08002db0.s"

#include "asm/code_08001360/asm_08002db8.s"

#include "asm/code_08001360/asm_08002dc4.s"

#include "asm/code_08001360/asm_08002dec.s"

#include "asm/code_08001360/asm_08002e18.s"

#include "asm/code_08001360/asm_08002e2c.s"

#include "asm/code_08001360/asm_08002e44.s"

#include "asm/code_08001360/asm_08002e5c.s"

#include "asm/code_08001360/asm_08002e78.s"


// LoadGfxTableTask Start
void *func_08002eb0(struct LoadGfxTableTaskInputs *inputs) {
    struct GfxTableLoader *info;

    info = mem_heap_alloc(sizeof(struct GfxTableLoader));
    func_08002a6c(info, inputs->gfxTable, inputs->limit);
    return info;
}


// LoadGfxTableTask Update
u32 func_08002ecc(struct GfxTableLoader *info) {
    func_08002b10(info);
    return !info->active;
}


// New LoadGfxTableTask
s32 func_08002ee0(u16 memID, const struct GraphicsTable *gfxTable, u32 limit) {
    struct LoadGfxTableTaskInputs inputs;

    inputs.gfxTable = gfxTable;
    inputs.limit = limit;
    return start_new_task(memID, &D_089363fc, &inputs, NULL, 0);
}


#include "asm/code_08001360/asm_08002f04.s"

#include "asm/code_08001360/asm_08002f40.s"

#include "asm/code_08001360/asm_08002f48.s"

#include "asm/code_08001360/asm_08002f54.s"

#include "asm/code_08001360/asm_08002f5c.s"


// Graphics Table Loader Task Methods
struct TaskMethods D_089363fc = {
    (TaskStartFunc)func_08002eb0,
    NULL,
    (TaskUpdateFunc)func_08002ecc,
    NULL
};
