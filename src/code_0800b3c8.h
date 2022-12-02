#pragma once

#include "global.h"

//TODO: move to types.h

struct struct_0800b3c8 {
    u32 pad0;
    void *printer;
    u8 totalLines;
    s16 unkA;
    s16 unkC;
    u16 unkE;
    s16 unk10;
    u16 pad12[2];
    s16 unk16;
    u32 pad18;
    s16 x1; //unknown type
    s16 y1; //unknown type
    s16 pad20;
    s16 x2;
    s16 y2;
    s16 unk26;
    s16 unk28;
    s16 unk2A;
    s16 unk2C;
    u16 pad2E;
    s16 unk30;
    char *(*unk34)(s32);
    s16 (*unk38)(s32);
};

struct struct_0800b71c_sub {
    u8 unk0;
    u32 unk1:10;
    u32 unk4;
};

struct struct_0800b71c {
    u8 unk0;
    u32 unk1_0:1;
    u32 unk1_1:23;
    struct struct_0800b71c_sub *unk4;
};

// extern ? func_0800ae1c(?);
// extern ? func_0800ae3c(?);
// extern ? func_0800ae88(?);
// extern ? func_0800aeb4(?);
// extern ? func_0800b074(?);
// extern ? func_0800b0d4(?);
// extern ? func_0800b108(?);
// extern ? func_0800b118(?);
// extern ? func_0800b12c(?);
// extern ? func_0800b140(?);
// extern ? func_0800b21c(?);
// extern ? func_0800b30c(?);
// extern ? func_0800b31c(?);
// extern ? func_0800b32c(?);
// extern ? func_0800b368(?);
// extern ? func_0800b384(?);
extern void func_0800b3c8(struct struct_0800b3c8 *);
extern void func_0800b3e8(struct struct_0800b3c8 *);
extern void func_0800b408(struct struct_0800b3c8 *, s16, u32);
extern void func_0800b454(struct struct_0800b3c8 *, s32);
extern void func_0800b4d8(struct struct_0800b3c8 *arg0, struct Animation *arg1);
extern s16 func_0800b550(struct struct_0800b3c8 *);
extern void func_0800b564();
extern void func_0800b590();
extern u32 func_0800b60c(s32);
extern u8 func_0800b634(s16 *arg0, s16 *arg1, s16 *arg2, s16 *arg3);
extern void func_0800b698();
extern void func_0800b6bc(void (*)(u32), u32);
extern void func_0800b6dc(struct struct_0800b71c *, u32, u32, struct struct_0800b71c_sub *);
extern void func_0800b71c(struct struct_0800b71c *, u32, u32, u32);
extern void func_0800b768();
extern void func_0800b76c();
extern void func_0800b770();
extern void func_0800b774();
