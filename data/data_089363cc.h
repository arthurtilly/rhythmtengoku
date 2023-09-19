#pragma once

#include "global.h"
#include "src/task_pool.h"

extern struct TaskMethods D_089363cc;
extern struct TaskMethods D_089363dc;
extern struct TaskMethods D_089363ec;
extern struct TaskMethods D_089363fc;
extern u8 D_0893640c[];
extern u16 D_0893644e[];

struct PaletteInterpolatorInputs {
    u8 duration;
    u8 totalPalettes;
    const u16 *sourceA;
    const u16 *sourceB;
    u16 *outputDest;
};
struct PaletteInterpolator {
    u32 isActive:1;
    u32 duration:8;
    u32 runningTime:8;
    u32 totalPalettes:6;
    u32 sourceType:2;
    const u16 *sourceA;
    const u16 *sourceB;
    u32 unk0C;
    u16 *outputDest;
    u32 unk14;
};

struct LoadGfxTableTaskInputs {
    const struct GraphicsTable *gfxTable;
    u32 limit;
};
struct GfxTableLoader {
    u16 active:1;
    u16 compressionLevel:2;
    u16 decodingRLE:1;
    u16 decompressingHuffman:12;
    u32 limit;
    const struct GraphicsTable *gfxTable;
    const void *src;
    u16 *dest;
    s32 size;
    u32 rleSaveState[8];
    u32 huffmanSaveState[9];
};
