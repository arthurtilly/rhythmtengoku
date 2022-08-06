#pragma once

#include "global.h"
#include "sound.h"

// Engine Macros/Enums:

// OAM Animations:

// Palettes:

// Sound Effects:
extern const struct SequenceData s_RC_seqData;
extern const struct SequenceData s_tom_M_seqData;
extern const struct SequenceData s_SD1_seqData;
extern const struct SequenceData s_CC4_seqData;

// Engine Data:
extern char D_0805a8b0[];   // Empty Default Text

// Engine Definition Data:
extern u32 **D_089e63f8[];  // Animation Index (index of pairs of animation pointers; 0 = Rap Men; 1 = Rap Women)
extern u32 D_089e6424;      // GFX-related Null
extern u32 *D_089e6518[];   // GFX Struct Index
extern u8  D_089e6520;
extern u8  D_089e6525;
extern const struct SequenceData *D_089e652c[2][2];
extern u32 D_089e65f0[];

// Functions:
extern u32 *func_080398b4(u32);
extern void func_080398d4(void);    // [func_080398d4] GFX_INIT Func_02
extern void func_080398e4(void);    // [func_080398e4] GFX_INIT Func_01
extern void func_08039924(void);    // [func_08039924] GFX_INIT Func_00
extern void func_08039950(u32);     // [func_08039950] MAIN - Init
extern void func_08039a40(void);    // [func_08039a40] ENGINE Func_02 - STUB
extern void func_08039a44(u32);     // [func_08039a44] ENGINE Func_00 - ?
extern void func_08039a98(u32);     // [func_08039a98] ENGINE Func_01 - ?
extern void func_08039aa4(void);    // [func_08039aa4] MAIN - Update
extern void func_08039ad4(void);    // [func_08039ad4] MAIN - Close (STUB)
extern void func_08039ad8(u32, struct struct_080179f4_sub *, u32);  // [func_08039ad8] CUE - Spawn
extern u32  func_08039b2c(u32, u32, u32);                           // [func_08039b2c] CUE - Update
extern void func_08039b48(void);                                    // [func_08039b48] CUE - Despawn
extern void func_08039b4c(u32, struct struct_080179f4_sub *);       // [func_08039b4c] CUE - Hit
extern void func_08039c00(void);                                    // [func_08039c00] CUE - Barely
extern void func_08039c60(void);                                    // [func_08039c60] CUE - Miss
extern void func_08039cb8(void);    // [func_08039cb8] MAIN - Input Event
extern void func_08039d10(void);    // [func_08039d10] COMMON Func_00 - Beat Animation
extern void func_08039d7c(char *);  // [func_08039d7c] COMMON Func_01 - Display Text
extern void func_08039df8(void);    // [func_08039df8] COMMON Func_02 - STUB
