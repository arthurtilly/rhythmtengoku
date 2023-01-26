#pragma once

#include "global.h"
#include "src/task_pool.h"

extern const struct TaskMethods D_089363cc;
extern const struct TaskMethods D_089363dc;
extern const struct TaskMethods D_089363ec;
extern const struct TaskMethods D_089363fc;
extern const u8 D_0893640c[];
extern const u16 D_0893644e[];

struct struct_08001f94 {
    u8 duration;
    u8 total;
    u8 filler[2];
    const void *srcInit;
    const void *srcTarget;
    void *dest;
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
