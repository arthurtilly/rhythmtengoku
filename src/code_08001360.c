#include "code_08001360.h"
#include "memory_heap.h"

asm(".include \"include/gba.inc\"");//Temporary

// Can be better split

static u16 D_03000098;
static D_0300009c_func D_0300009c;
static u16 D_030000a0;
static u16 D_030000a2;
static u16 D_030000a4;
static u16 D_030000a6;
static s8 D_030000a8;
static u8 D_030000a9;
static s16 D_030000aa; // unknown type
static u16 D_030000ac;
static s32 D_030000b0; // unknown type
static u16 sRandom; // [D_030000b4] Static Random Variable
static s32 D_030000b8[32]; // unknown type
static s32 D_03000138[64]; // unknown type
static s32 D_03000238[64]; // unknown type
static s32 D_03000338[2]; // unknown type
static s32 D_03000340[8]; // unknown type
static s32 D_03000360[2]; // unknown type
static s32 D_03000368[32]; // unknown type
static s32 D_030003e8[120]; // unknown type

void func_08001360(void) {
    func_08003f28();
    D_03000098 = 0;
    D_0300009c = NULL;
    return;
}

void func_08001380(void) {
    func_08006e00();
    func_08003f50();
    if (D_0300009c != NULL) {
        D_0300009c();
    }
    D_03000098 = 1;
    return;
}

void func_080013a8(void) {
    volatile u32 temp;
    if (!(REG_DISPCNT & 0x80)) {
        while (!D_03000098) {
			temp = *((u32*)GameROMBase + get_agb_random_var());
		}
    }
    D_03000098 = 0;
}

void func_080013e8(D_0300009c_func arg1) {
	D_0300009c = arg1;
	return;
}

void func_080013f4(u16 arg1) {
    D_03004ac0 = arg1;
    D_03004afc = 0;
    D_030053b8 = 0;
    D_03004b00 = 0;
    D_030000a0 = arg1;
    D_030000a2 = 0;
    return;
}

void func_0800142c(u16 arg1) {
    D_030046b8 = arg1;
    D_03005378 = 0;
    D_0300537c = 0;
    D_030046b4 = 0;
    D_030000a4 = arg1;
    D_030000a6 = 0;
    return;
}

void func_08001464(u16 arg1) {
    func_080013f4(~REG_KEY);
    func_0800142c(0);
    D_030000a8 = 0;
    D_030000ac = 0x3ff;
}

void func_0800149c(u16 arg0) {
    D_03004afc = arg0 & (arg0 ^ D_03004ac0);
    D_03004b00 = D_03004ac0 & (arg0 ^ D_03004ac0);
    D_03004ac0 = arg0;

    if (D_03004afc != 0) {
        D_030053b8 = D_03004afc;
        D_030000a2 = 0;
    }
    if (D_03004afc == 0) {
        D_030053b8 = 0;
        if (D_030000a0 == arg0) {
            D_030000a2++;
            if (D_030000a2 > 14) {
                D_030000a2 = 12;
                D_030053b8 = arg0;
            }
        } else {
            D_030000a2 = 0;
        }
        D_030000a0 = D_03004ac0;
    }
}

void func_0800152c(u16 arg0) {
    D_03005378 = arg0 & (arg0 ^ D_030046b8);
    D_030046b4 = D_030046b8 & (arg0 ^ D_030046b8);
    D_030046b8 = arg0;

    if (D_03005378 != 0) {
        D_0300537c = D_03005378;
        D_030000a6 = 0;
    }
    if (D_03005378 == 0) {
        D_0300537c = 0;
        if (D_030000a4 == arg0) {
            D_030000a6++;
            if (D_030000a6 > 14) {
                D_030000a6 = 12;
                D_0300537c = arg0;
            }
        } else {
            D_030000a6 = 0;
        }
        D_030000a4 = D_030046b8;
    }
}

#include "asm/code_08001360/asm_080015bc.s"

#include "asm/code_08001360/asm_08001724.s"

void func_0800181c(u8 arg1) {
    D_030000a9 = arg1;
    return;
}

u32 func_08001828(void) {
    if (D_030053b4 < D_03005374) {
        return D_030053b4 + 1;
    }
    return D_030053b4;
}

u32 func_0800184c(void) {
    return D_030053b4 >= D_03005374;
}


// DMA3 Set
void dma3_set(const void *source, void *destination, u32 bytesToSet, u16 unit, u32 bytesPerInterrupt) {
    const void *src = source;
    void *dest = destination;
    u32 dmaSize = unit / 16;

    while (bytesToSet != 0) {
        REG_DMA3SAD = (u32)src;
        REG_DMA3DAD = (u32)dest;

        if (bytesToSet <= bytesPerInterrupt) {
            bytesPerInterrupt = bytesToSet;
        }

        REG_DMA3CNT_L = bytesPerInterrupt >> dmaSize;
        REG_DMA3CNT_H = (
            DMACNT_DEST_INC_TYPE_INCREMENT
            | DMACNT_SRC_INC_TYPE_INCREMENT
            | ((dmaSize != 1) << 10)
            | DMACNT_START_MODE_IMMEDIATE
            | DMACNT_ENABLE
        );

        src += bytesPerInterrupt;
        dest += bytesPerInterrupt;
        bytesToSet -= bytesPerInterrupt;
    }
}


// DMA3 Fill
void dma3_fill(u32 value, void *destination, u32 bytesToFill, u16 unit, u32 bytesPerInterrupt) {
    void *dest = destination;
    u32 dmaSize = unit / 16;

    while (bytesToFill != 0) {
        REG_DMA3SAD = (u32)&value;
        REG_DMA3DAD = (u32)dest;

        if (bytesToFill <= bytesPerInterrupt) {
            bytesPerInterrupt = bytesToFill;
        }

        REG_DMA3CNT_L = bytesPerInterrupt >> dmaSize;
        REG_DMA3CNT_H = (
            DMACNT_DEST_INC_TYPE_INCREMENT
            | DMACNT_SRC_INC_TYPE_UNCHANGED
            | ((dmaSize != 1) << 10)
            | DMACNT_START_MODE_IMMEDIATE
            | DMACNT_ENABLE
        );

        dest += bytesPerInterrupt;
        bytesToFill -= bytesPerInterrupt;
    }
}


// Set Global Random Value
void set_agb_random_var(u32 val) {
    sRandom = val;
    return;
}


// Get Global Random Value
u16 get_agb_random_var(void) {
    sRandom = sRandom * 109 + 1021;
    return sRandom;
}


// AGB Random
u16 agb_random(u16 var) {   // Random
    sRandom = sRandom * 109 + 1021;
    return (sRandom * var) >> 16;
}


#include "asm/code_08001360/asm_080019a4.s"

#include "asm/code_08001360/asm_080019e4.s"

void func_08001a24_stub(void) {
}

#include "asm/code_08001360/asm_08001a28.s"

#include "asm/code_08001360/asm_08001a64.s"

#include "asm/code_08001360/asm_08001b48.s"

#include "asm/code_08001360/asm_08001b98.s"

#include "asm/code_08001360/asm_08001bf8.s"

#include "asm/code_08001360/asm_08001c64.s"

#include "asm/code_08001360/asm_08001cd8.s"

#include "asm/code_08001360/asm_08001d44.s" // Unused

#include "asm/code_08001360/asm_08001d74.s"

#include "asm/code_08001360/asm_08001ddc.s"

#include "asm/code_08001360/asm_08001e4c.s"

#include "asm/code_08001360/asm_08001ec4.s"


// Gradual (Palette) Set - Task Init.
void *func_08001f34(struct struct_08001f94 *arg1) {
    void *temp;
    temp = mem_heap_alloc(0x18);
    func_08001bf8(temp, arg1->duration, arg1->total, arg1->srcInit, arg1->srcTarget, 0, arg1->dest);
    return temp;
}


void *func_08001f64(struct struct_08001f94 *arg1) {
    void *temp;
    temp = mem_heap_alloc(0x18);
    func_08001c64(temp, arg1->duration, arg1->total, arg1->srcInit, arg1->srcTarget, 0, arg1->dest);
    return temp;
}


void *func_08001f94(struct struct_08001f94 *arg1) {
    void *temp;
    temp = mem_heap_alloc(0x18);
    func_08001cd8(temp, arg1->duration, arg1->total, arg1->srcInit, arg1->srcTarget, 0, arg1->dest);
    return temp;
}


u8 func_08001fc4(u8 *arg1) {
    func_08001b48();
    return ((*arg1 << 31) == 0);
}


#include "asm/code_08001360/asm_08001fe0.s"

#include "asm/code_08001360/asm_08002018.s"

#include "asm/code_08001360/asm_08002050.s"

#include "asm/code_08001360/asm_08002088.s"

#include "asm/code_08001360/asm_080020ec.s"

#include "asm/code_08001360/asm_08002150.s"

#include "asm/code_08001360/asm_08002194.s"

#include "asm/code_08001360/asm_080021b8.s"

#include "asm/code_08001360/asm_0800222c.s"

#include "asm/code_08001360/asm_08002260.s"

#include "asm/code_08001360/asm_08002280.s"

#include "asm/code_08001360/asm_080022bc.s"

#include "asm/code_08001360/asm_080022d8.s"

#include "asm/code_08001360/asm_080022f4.s"

#include "asm/code_08001360/asm_08002310.s"

#include "asm/code_08001360/asm_0800232c.s"

#include "asm/code_08001360/asm_080024dc.s"

#include "asm/code_08001360/asm_08002500.s"

#include "asm/code_08001360/asm_08002520.s"

#include "asm/code_08001360/asm_0800253c.s"

#include "asm/code_08001360/asm_08002584.s"

#include "asm/code_08001360/asm_080025bc.s"

#include "asm/code_08001360/asm_080025d8.s"

#include "asm/code_08001360/asm_080025fc.s"

#include "asm/code_08001360/asm_08002630.s"

#include "asm/code_08001360/asm_08002634.s"

#include "asm/code_08001360/asm_0800267c.s"

#include "asm/code_08001360/asm_08002698.s"

#include "asm/code_08001360/asm_080026c4.s"

#include "asm/code_08001360/asm_080026fc.s"

#include "asm/code_08001360/asm_0800274c.s"

#include "asm/code_08001360/asm_08002794.s"

#include "asm/code_08001360/asm_080027dc.s"

#include "asm/code_08001360/asm_08002828.s"

#include "asm/code_08001360/asm_08002838.s"

#include "asm/code_08001360/asm_08002868.s"

#include "asm/code_08001360/asm_08002880.s"

#include "asm/code_08001360/asm_08002894.s"

#include "asm/code_08001360/asm_080028a8.s"

#include "asm/code_08001360/asm_080028c4.s"

#include "asm/code_08001360/asm_080028d8.s"

#include "asm/code_08001360/asm_080028ec.s"

#include "asm/code_08001360/asm_08002920.s"

#include "asm/code_08001360/asm_08002934.s"

#include "asm/code_08001360/asm_0800294c.s"

#include "asm/code_08001360/asm_08002968.s"

#include "asm/code_08001360/asm_08002978.s"

#include "asm/code_08001360/asm_0800298c.s"

#include "asm/code_08001360/asm_080029b0.s"

#include "asm/code_08001360/asm_080029c4.s"

#include "asm/code_08001360/asm_080029d8.s"

#include "asm/code_08001360/asm_08002a18.s"



enum CompressionLevelsEnum {
    COMPRESSION_LEVEL_NONE,
    COMPRESSION_LEVEL_RLE,
    COMPRESSION_LEVEL_HUFFMAN
};

extern s32 (*D_03004af0)(const u16 *src, u16 *dest, const u8 *rleData, u32 sizeData);
extern u32 D_03005390[]; // rle decompression save state
extern u8 D_030053b0; // boolean



// Ensure Valid Destination Pointer..?
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

#include "asm/code_08001360/asm_08002f68.s"

#include "asm/code_08001360/asm_08002f9c.s"

#include "asm/code_08001360/asm_08003004.s"

#include "asm/code_08001360/asm_08003070.s"

#include "asm/code_08001360/asm_0800318c.s"

#include "asm/code_08001360/asm_08003278.s"

#include "asm/code_08001360/asm_08003384.s"

#include "asm/code_08001360/asm_08003398.s"

#include "asm/code_08001360/asm_080033a0.s"

#include "asm/code_08001360/asm_0800351c.s"

#include "asm/code_08001360/asm_08003598.s"

#include "asm/code_08001360/asm_080035a0.s"

#include "asm/code_08001360/asm_080036c4.s"

#include "asm/code_08001360/asm_08003720.s"

#include "asm/code_08001360/asm_0800387c.s"

#include "asm/code_08001360/asm_080038b0.s"

#include "asm/code_08001360/asm_08003974.s"
