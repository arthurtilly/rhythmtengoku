#pragma once

#include "global.h"
#include "palette.h"


// VALUES:
enum PaletteTableFade {
    /* 00 */ PAL_TABLE_FADE_TO_BLACK,
    /* 01 */ PAL_TABLE_FADE_FROM_BLACK,
    /* 02 */ PAL_TABLE_FADE_TO_WHITE,
    /* 03 */ PAL_TABLE_FADE_FROM_WHITE
};


// TYPES:
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

// Palette Table Entry
struct PaletteTable {
    u16 *source;  // Source
    u8 index;     // Palette ID (0-15 for BG, 16-31 for OBJ)
    u8 total;     // Total Palettes
};


// FUNCTIONS:
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

extern void pal_table_write(struct PaletteTable *palTable, u16 *dest);
extern u32 pal_table_start_fade(struct PaletteInterpolator *palInterps, struct PaletteTable *palTable, u32 frames, u32 fadeType, u16 *palBuffer);
extern void pal_table_init(struct PaletteTable *palTable);
extern void pal_table_set_copy(struct PaletteTable *palTable, struct PaletteTable *srcTable);
extern void pal_table_set_copy_len(struct PaletteTable *palTable, struct PaletteTable *srcTable, u32 len);
extern void pal_table_set(struct PaletteTable *palTable, u16 *source, u32 index, u32 total);
extern void pal_table_add_copy(struct PaletteTable *palTable, struct PaletteTable *srcTable);
extern void pal_table_add_copy_len(struct PaletteTable *palTable, struct PaletteTable *srcTable, u32 len);
extern void pal_table_add(struct PaletteTable *palTable, u16 *source, u32 index, u32 total);

extern void stream_push8(u8 **stream, u32 value);
extern void stream_push16(u8 **stream, u32 value);
extern void stream_push32(u8 **stream, u32 value);
extern u32 stream_pop8(u8 **stream);
extern u32 stream_pop16(u8 **stream);
extern u32 stream_pop32(u8 **stream);

extern s16 math_abs16(s16 value); // Absolute Value (16 bits)
extern s32 math_abs32(s32 value); // Absolute Value (32 bits)
extern void func_08003ac4(u16 *array, u16 min, u16 max);
