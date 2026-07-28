#include "graphics_table.h"
#include "code_08001360.h"
#include "task_pool.h"
#include "memory_heap.h"

asm(".include \"include/gba.inc\"");//Temporary


/* GRAPHICS TABLE LOADER */


enum CompressionLevelsEnum {
    COMPRESSION_LEVEL_NONE,
    COMPRESSION_LEVEL_RLE,
    COMPRESSION_LEVEL_DOUBLE
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
        info->decompressingRLE = FALSE;

        // Double Compressed
        if (((struct CompressedData *)info->src)->doubleCompressed) {
            info->compressionLevel = COMPRESSION_LEVEL_DOUBLE;
            info->decompressingGFX = FALSE;
        }
    } else {
        info->active = FALSE;
        return;
    }
}


// Update GfxTableLoader
void func_08002b10(struct GfxTableLoader *info) {
    const struct GraphicsTable *gfxTable;
    const struct CompressedData *compressed;
    const struct CompressedGFX *compressedGfx;
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
                (void *)info->src += size;
                (void *)info->dest += size;
                continue;

            case COMPRESSION_LEVEL_RLE:
                if (info->decompressingRLE) {
                    D_030053b0 = TRUE;
                    for (i = 0; i < 8; i++) {
                        D_03005390[i] = info->rleDecompressProgress[i];
                    }
                    size = func_08003ea4();
                } else {
                    D_030053b0 = FALSE;
                    compressed = info->src;
                    src = compressed->data;
                    if (compressed->doubleCompressed) {
                        compressedGfx = compressed->data;
                        src = info->dest + compressed->rleOffset - compressedGfx->size;
                    }
                    size = D_03004af0(src, info->dest, compressed->rleData, (compressed->rleSize << 16) | (info->limit / 4));
                }
                if (D_030053b0) {
                    info->decompressingRLE = TRUE;
                    for (i = 0; i < 8; i++) {
                        info->rleDecompressProgress[i] = D_03005390[i];
                    }
                    D_030053b0 = FALSE;
                } else {
                    info->decompressingRLE = FALSE;
                }
                processLimit -= size;
                if (processLimit < 0) {
                    processLimit = 0;
                }
                if (info->decompressingRLE) {
                    return;
                }
                info->size = 0;
                break;

            case COMPRESSION_LEVEL_DOUBLE:
                if (info->decompressingGFX) {
                    finished = decompress_gfx_resume(&info->gfxDecompressProgress);
                } else {
                    compressed = info->src;
                    info->decompressingGFX = TRUE;
                    compressedGfx = compressed->data;
                    finished = decompress_gfx_init(compressed->data, info->dest + compressed->rleOffset - compressedGfx->size, info->limit, &info->gfxDecompressProgress);
                }
                info->size -= info->limit;
                if (info->size < 0) {
                    info->size = 0;
                }
                if (finished) {
                    info->decompressingGFX = FALSE;
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
                info->decompressingRLE = FALSE;

                compressed = info->src;
                if (compressed->doubleCompressed) {
                    info->compressionLevel = COMPRESSION_LEVEL_DOUBLE;
                    info->decompressingGFX = FALSE;
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
