#pragma once

#include "global.h"

//TODO: try to find any existing struct that is close enough, or rename properly
struct arg {
    u32 pad0;
    u32 unk4;
    u8 unk8;
    s16 unkA;
    u16 unkC;
    s16 padE;
    s16 unk10;
    u16 pad12[2];
    s16 unk16;
    u32 pad18[2];
    s16 pad20;
    s16 unk22;
    s16 unk24;
    s16 unk26;
    s16 unk28;
    s16 unk2A;
    s16 unk2C;
    u16 pad2E;
    s16 unk30;
    u32 (*unk34)(s32);
    s16 (*unk38)(s32);
};

extern void func_0800b3c8(struct arg*);
extern void func_0800b3e8(struct arg*);
extern void func_0800b408(struct arg*, s16, u32);
extern void func_0800b454(struct arg*, s32);
// extern ? func_0800b4d8(?);
// extern ? func_0800b550(?);
// extern ? func_0800b564(?);
extern void func_0800b590();
extern u32 func_0800b60c(s32);
// extern ? func_0800b634(?);
// extern ? func_0800b698(?);
// extern ? func_0800b6bc(?);
// extern ? func_0800b6dc(?);
// extern ? func_0800b71c(?);
extern void func_0800b768();
extern void func_0800b76c();
extern void func_0800b770();
extern void func_0800b774();
