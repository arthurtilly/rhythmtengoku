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
    u8 unk0;
    u8 unk1;
    u8 filler[2];
    u32 unk4;
    u32 unk8;
    u32 unkC;
};

struct InitGfxTaskInputs {
    const struct GraphicsTable *gfx;
    u32 arg;
};

struct InitGfxTaskInfo {
    u16 unk0_b0:1;
    u16 unk0_b1:2;
    u16 unk0_b3:1;
    u16 unk0_b4:12;
    u32 arg;
    const struct GraphicsTable *gfx;
    u8 *src;
    void *dest;
    u32 unk14;
};
