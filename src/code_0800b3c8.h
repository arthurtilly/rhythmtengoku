#pragma once

#include "global.h"

//TODO: move to types.h

struct struct_0800b3c8 {
    u32 pad0;
    u32 unk4;
    u8 unk8;
    s16 unkA;
    u16 unkC;
    u16 unkE;
    s16 unk10;
    u16 pad12[2];
    s16 unk16;
    u32 pad18;
    s16 unk1C; //unknown type
    s16 unk1E; //unknown type
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

extern void func_0800b3c8(struct struct_0800b3c8*);
extern void func_0800b3e8(struct struct_0800b3c8*);
extern void func_0800b408(struct struct_0800b3c8*, s16, u32);
extern void func_0800b454(struct struct_0800b3c8*, s32);
extern void func_0800b4d8(struct struct_0800b3c8* arg0, u32* arg1);
extern s16 func_0800b550(struct struct_0800b3c8*);
extern void func_0800b564();
extern void func_0800b590();
extern u32 func_0800b60c(s32);
extern u8 func_0800b634(s16*arg0, s16* arg1, s16* arg2, s16* arg3);
extern void func_0800b698();
extern void func_0800b6bc(void (*)(u32), u32);
extern void func_0800b6dc(struct struct_0800b71c*, u32, u32, struct struct_0800b71c_sub*);
extern void func_0800b71c(struct struct_0800b71c*, u32, u32, u32);
extern void func_0800b768();
extern void func_0800b76c();
extern void func_0800b770();
extern void func_0800b774();
