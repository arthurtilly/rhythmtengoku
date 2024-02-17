#pragma once

#include "global.h"
#include "bitmap_font.h"
#include "data/data_08936b54.h"

struct struct_08005e54 {
    u16 *unk0;
    u16 unk4;
    u16 unk6;
};

extern u32 func_08005e54(struct struct_08005e54 *, s32 *, s32 *, s32 *, s32 *);
extern void func_08005ee4(struct struct_08005e54 *, u16);
extern void func_08005f04(struct struct_08005e54 *, s32, s32, u16);
extern void func_08005f34(struct struct_08005e54 *, s32, s32, s32, s32, u16);
extern void func_08005fe4(struct struct_08005e54 *, u16[10], s32, s32, s32, s32, u32);
extern void func_080060bc(u16[10], u16[10], u16 *);
extern void func_080061a4(struct struct_08005e54 *, struct BitmapFontBG *, s32, s32, const char *, u32);
extern s32 func_080061d0(u16, struct struct_08005e54 *, struct BitmapFontBG *, s32, s32, const char *, u32, u32);
extern void func_0800620c(struct struct_08005e54 *, s32, s32, s32, s32, struct struct_08005e54 *, s32, s32);
extern struct struct_08005e54 *func_08006328(u16, s32, s32);
extern void func_08006364(struct struct_08005e54 *);
extern void func_0800637c(struct struct_08005e54 *, s32, s32, s32, s32, u16);
extern void func_08006448(struct struct_08005e54 *, s32, s32, s32, s32, u16);
