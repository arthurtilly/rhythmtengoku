#pragma once

#include "global.h"
#include "src/task_pool.h"

extern struct TaskMethods D_089363cc;
extern struct TaskMethods D_089363dc;
extern struct TaskMethods D_089363ec;
extern struct TaskMethods D_089363fc;
extern u8 D_0893640c[];
extern u16 D_0893644e[];

struct struct_08001f94 {
    u8 duration;
    u8 total;
    u8 filler[2];
    void *srcInit;
    void *srcTarget;
    void *dest;
};

struct LoadGfxTableTaskInputs {
    struct GraphicsTable *gfxTable;
    u32 limit;
};

struct GfxTableLoader {
    u16 active:1;
    u16 compressionLevel:2;
    u16 decodingRLE:1;
    u16 decompressingHuffman:12;
    u32 limit;
    struct GraphicsTable *gfxTable;
    void *src;
    u16 *dest;
    s32 size;
    u32 rleSaveState[8];
    u32 huffmanSaveState[9];
};
