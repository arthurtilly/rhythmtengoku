#pragma once

#include "global.h"
#include "sound.h"
#include "graphics.h"

// Engine Macros/Enums:
enum BonOdoriAnimationsEnum {
    BON_ODORI_ANIM_00,
    BON_ODORI_ANIM_01,
    BON_ODORI_ANIM_02,
    BON_ODORI_ANIM_03,
    BON_ODORI_ANIM_04,
    BON_ODORI_ANIM_05,
    BON_ODORI_ANIM_06,
    BON_ODORI_ANIM_07,
    BON_ODORI_ANIM_08,
    BON_ODORI_ANIM_09,
    BON_ODORI_ANIM_10,
    BON_ODORI_ANIM_11,
    BON_ODORI_ANIM_12,
    BON_ODORI_ANIM_13,
    BON_ODORI_ANIM_14,
    BON_ODORI_ANIM_15,
    BON_ODORI_ANIM_16,
    BON_ODORI_ANIM_17,
    BON_ODORI_ANIM_18,
    BON_ODORI_ANIM_19,
    BON_ODORI_ANIM_20,
    BON_ODORI_ANIM_21,
    BON_ODORI_ANIM_22,
    BON_ODORI_ANIM_23,
    BON_ODORI_ANIM_24,
    BON_ODORI_ANIM_25,
    BON_ODORI_ANIM_26,
    BON_ODORI_ANIM_27,
    BON_ODORI_ANIM_28,
    BON_ODORI_ANIM_29,
    BON_ODORI_ANIM_30,
    BON_ODORI_ANIM_31, // Yagura-chan - Beat
    BON_ODORI_ANIM_32,
    BON_ODORI_ANIM_33,
};

enum BonOdoriDonpanAnimationsEnum {
    BON_ODORI_DONPAN_ANIM_00,
    BON_ODORI_DONPAN_ANIM_01,
    BON_ODORI_DONPAN_ANIM_02,
    BON_ODORI_DONPAN_ANIM_03,
    BON_ODORI_DONPAN_ANIM_04,
    BON_ODORI_DONPAN_ANIM_05,
    BON_ODORI_DONPAN_ANIM_06,
    BON_ODORI_DONPAN_ANIM_07
};

// OAM Animations:

// Palettes:

// Sound Effects:
extern const struct SequenceData s_tebyoushi_pati_seqData;
extern const struct SequenceData s_HC_seqData;

// Engine Data:

// Engine Definition Data:
extern const struct Animation **D_089dec38[34]; // Pointers to animation arrays, with each one consisting of two animations.
extern u8 *D_089dece0[];   // Contains Donpan animation indexes. (Subarrays are the same animation but for different donpans)
extern u16 D_089ded00[8];  // Seemingly numbers of ticks for animations.
extern u32 D_089ded10;     // GFX related
extern u32 *D_089deec4[];
extern u16 *D_089deecc[];  // Another index of pointers to palettes (more like sub-palettes).
extern u16 *D_089deed4[];  // Index of pointers to palettes.

// Functions:
extern const struct Animation *func_080206a0(u32);  // [func_080206a0] Get OBJ Animation
extern void func_080206c0(void);
extern const struct Animation *func_0802075c(u32, u32); // [func_0802075c] Get Donpan Animation
extern void func_08020778(u32, u32);    // Potentially sets donpan animation?
extern void func_080207d0(u32);     // [func_080207d0] ENGINE Func_0B - Set Animation (CPU Donpans)
extern void func_080207ec(u32);     // [func_080207ec] ENGINE Func_0C - Set Animation (Player)
extern void func_080207f8(u32);     // [func_080207f8] ENGINE Func_0D - Set Animation (All Donpans)
extern void func_0802080c(u32);     // [func_0802080c] ENGINE Func_0E - ?
extern void func_08020834(void);
extern void func_0802085c(void);    // [func_0802085c] GFX_INIT Func_02
extern void func_08020880(void);    // [func_08020880] GFX_INIT Func_01
extern void func_080208c0(void);    // [func_080208c0] GFX_INIT Func_00
extern void func_080208ec(u32);     // [func_080208ec] MAIN - Init
extern void func_08020a48(void);    // [func_08020a48] ENGINE Func_11 - STUB
extern void func_08020a4c(u32, s32, u32);
extern void func_08020be4(u8);      // [func_08020be4] ENGINE Func_00 - ?
extern void func_08020bf4(s32);     // [func_08020bf4] ENGINE Func_01 - Show Text (Middle)
extern void func_08020c0c(s32);     // [func_08020c0c] ENGINE Func_02 - Show Text (Left)
extern void func_08020c24(s32);     // [func_08020c24] ENGINE Func_03 - Show Text (Right)
extern void func_08020c3c(s32);     // [func_08020c3c] ENGINE Func_04 - ?
extern void func_08020c4c(u32);
extern void func_08020c8c(u32);     // [func_08020c8c] ENGINE Func_05 - Highlight Text
extern void func_08020d20(u32);     // [func_08020d20] ENGINE Func_06 - Lighten Screen (Gradual)
extern void func_08020da0(u32);     // [func_08020da0] ENGINE Func_07 - Darken Screen (Gradual)
extern void func_08020e1c(void);    // [func_08020e1c] ENGINE Func_08 - ?
extern void func_08020e50(void);    // [func_08020e50] ENGINE Func_09 - Lighten Screen (Instant)
extern void func_08020e90(void);    // [func_08020e90] ENGINE Func_0A - Darken Screen (Instant)
extern void func_08020ed4(void);    // [func_08020ed4] ENGINE Func_0F - Test Player Inputs
extern void func_08020ee8(void);    // [func_08020ee8] ENGINE Func_10 - React to Player Inputs
extern void func_08020f48(void);    // [func_08020f48] MAIN - Update
extern void func_08020f8c(void);    // [func_08020f8c] MAIN - Close
extern void func_08020f98(u32, struct struct_080179f4_sub *, u32);  // [func_08020f98] CUE - Spawn
extern u8   func_08020fb0(u32, struct struct_080179f4_sub *, u32);  // [func_08020fb0] CUE - Update
extern void func_08020fcc(u32, struct struct_080179f4_sub *);       // [func_08020fcc] CUE - Despawn
extern void func_08020fd0(u32, struct struct_080179f4_sub *);       // [func_08020fd0] CUE - Hit
extern void func_08020fe8(u32, struct struct_080179f4_sub *);       // [func_08020fe8] CUE - Barely
extern void func_0802100c(u32, struct struct_080179f4_sub *);       // [func_0802100c] CUE - Miss
extern void func_08021034(void);    // [func_08021034] MAIN - Input Event
extern void func_08021084(void);    // [func_08021084] COMMON Func_00 - Beat Animation
extern void func_08021188(void);    // [func_08021188] COMMON Func_01 - STUB
extern void func_0802118c(void);    // [func_0802118c] COMMON Func_02 - STUB