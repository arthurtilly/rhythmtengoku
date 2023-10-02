#pragma once

#include "global.h"
#include "palette.h"

struct struct_08003070 {
    u16 unk0_b0:1;
    u16 unk0_b1:1;
    u16 unk0_b2:14;
    u32 unk4;
    u8 *unk8;
    u16 *unkC;
    u16 unk10;
    u16 unk12;
    u8 unk14;
    u8 unk15;
    u16 unk16;
    u8 *unk18;
    u8 *unk1C;
    u8 unk20;
    u8 unk21;
    u8 unk22[8];
    u8 unk2A[8];
    u8 unk32[8];
    u8 unk3A[8];
    u16 *unk44;
    u16 unk48;
    u16 unk4A;
    u8 unk4C;
    u8 unk4D;
    u16 unk4E;
    u16 unk50;
    u16 unk52;
    u16 unk54;
    u16 unk56;
    u16 *unk58;
    u16 *unk5C;
};

struct struct_080035a0 {
    u8 unk0;
    u32 unk4;
    u32 unk8;
    u32 unkC;
    u8 *unk10;
};

struct struct_0800387c {
    u8 *unk0;
    u8 unk4;
    u8 unk5;
};


extern void init_math_sqrt(void); // Init. sqrt()
extern u8 func_08002f9c(s16 arg0, s16 arg1);
extern u16 func_08003004(s16 arg0, s16 arg1);

extern void func_08003070(struct struct_08003070 *arg0, u32 arg1, u32 arg2, u32 arg3, u32 arg4, u32 arg5, u32 arg6);
extern void func_0800318c(struct struct_08003070 *arg0, u32 arg1, u32 arg2, u32 arg3, u32 arg4, u32 arg5, u32 arg6);
extern void func_08003278(struct struct_08003070 *arg0);
extern void func_08003384(struct struct_08003070 *arg0);
extern u32 func_08003398(struct struct_08003070 *arg0);
extern void func_080033a0(struct struct_08003070 *arg0, u32 arg1, u32 arg2, u32 arg3, u32 arg4, u32 arg5, u32 arg6);
extern void func_0800351c(struct struct_08003070 *arg0, u8 arg1, u8 arg2, u8 arg3, u8 arg4);
extern void func_08003598(struct struct_08003070 *arg0, u16 arg1, u16 arg2);
void func_080035a0(struct struct_08003070 *arg0, struct struct_080035a0 *arg1, u8 *arg2, u16 *arg3,
                    u8 arg4, u8 arg5, u16 arg6, u16 *arg7, u8 arg8, u8 arg9, u16 *arg10, u16 *arg11,
                    u16 arg12, u16 arg13);
extern void func_080036c4(struct struct_08003070 *arg0, u16 arg1, u16 arg2);
extern void func_08003720(struct struct_08003070 *arg0, u16 arg1, u16 arg2);
extern void func_0800387c(struct struct_0800387c *arg0, u8 *arg1);
extern u32 func_080038b0(struct PaletteInterpolator *arg0, struct struct_0800387c *arg1, u32 arg2, u32 arg3, u8 *arg4);
extern void func_08003974(struct struct_0800387c *arg0);
extern void func_08003980(struct struct_0800387c *arg0, struct struct_0800387c *arg1);
extern void func_080039a8(struct struct_0800387c *arg0, struct struct_0800387c *arg1, u32 arg2);
extern void func_080039d4(struct struct_0800387c *arg0, u8 *arg1, u32 arg2, u32 arg3);
extern void func_080039e8(struct struct_0800387c *arg0, struct struct_0800387c *arg1);
extern void func_08003a00(struct struct_0800387c *arg0, struct struct_0800387c *arg1, u32 arg2);
extern void func_08003a18(struct struct_0800387c *arg0, u8 *arg1, u32 arg2, u32 arg3);
extern void func_08003a34(struct struct_0800387c *arg0, u32 arg1);
extern void func_08003a40(struct struct_0800387c *arg0, u32 arg1);
extern void func_08003a50(struct struct_0800387c *arg0, u32 arg1);
extern u32 func_08003a6c(struct struct_0800387c *arg0);
extern u32 func_08003a78(struct struct_0800387c *arg0);
extern u32 func_08003a88(struct struct_0800387c *arg0);

extern s16 func_08003aa4(s16 value); // Absolute Value (16 bits)
extern s32 func_08003ab8(s32 value); // Absolute Value (32 bits)
extern void func_08003ac4(u16 *array, u16 min, u16 max);
