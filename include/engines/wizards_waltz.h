#pragma once

#include "global.h"
#include "sound.h"
#include "graphics.h"

// Engine Macros/Enums:
#define WIZARDS_WALTZ_SPARKLE_STATE_HIDDEN 0
#define WIZARDS_WALTZ_SPARKLE_STATE_QUEUED 1
#define WIZARDS_WALTZ_SPARKLE_STATE_ACTIVE 2
#define WIZARDS_WALTZ_GIRL_STATE_NEUTRAL 0
#define WIZARDS_WALTZ_GIRL_STATE_HAPPY 1
#define WIZARDS_WALTZ_GIRL_STATE_SAD 2

// OAM Animations:
extern const struct Animation D_08932bec[]; // Animation: "wizard_fly"
extern const struct Animation D_08932c14[]; // Animation: "wizard_magic"
extern const struct Animation D_08932c8c[]; // Animation: "sparkle"
extern const struct Animation D_08932cbc[]; // Animation: "sprout_eaten"
extern const struct Animation D_08932d2c[]; // Animation: "sprout_grow"
extern const struct Animation D_08932de4[]; // Animation: "sprout_appear"
extern const struct Animation D_08932e3c[]; // Animation: "girl"
extern const struct Animation D_08932e64[]; // Animation: "girl_happy"
extern const struct Animation D_08932ea4[]; // Animation: "girl_sad"
extern const struct Animation D_08932edc[]; // Animation: "shadow"
extern const struct Animation D_08932f94[]; // Animation: "sprout_appear_tutorial"

// Palettes:

// Sound Effects:
extern const struct SequenceData s_witch_furu_seqData; // Sound for inputting without a cue.

// Engine Data:

// Engine Definition Data:
extern u32 D_089e9f10;   // GFX-related Null
extern u32 D_089e9f14[]; // GFX Struct

// Functions:
extern void func_080449a4(void);        // [func_080449a4] GFX_INIT Func_02
extern void func_080449b4(void);        // [func_080449b4] GFX_INIT Func_01
extern void func_080449e4(void);        // [func_080449e4] GFX_INIT Func_00
extern void func_08044a10(u32);         // [func_08044a10] MAIN - Init
extern void func_08044b80(u32);         // [func_08044b80] ENGINE Func_00 - Set Rotation Interval
extern void func_08044ba8(struct AffineSprite *, s32, s32, u32); // [func_08044ba8] Update Sprite Position
extern void func_08044c04(void);        // [func_08044c04] MAIN - Update
extern void func_08044e60(u32);         // [func_08044e60] ENGINE Func_01 - Set Tutorial Flag
extern void func_08044e74_stub(void);   // [func_08044e74] MAIN - Close (STUB)
extern void func_08044e78(u32, struct WizardsWaltzCue *, u32);  // [func_08044e78] CUE - Spawn
extern u32  func_08044f94(u32, struct WizardsWaltzCue *, u32);  // [func_08044f94] CUE - Update
extern void func_08044fc0(u32, struct WizardsWaltzCue *, u32);  // [func_08044fc0] CUE - Despawn
extern void func_08044fcc(u32, struct WizardsWaltzCue *, u32);  // [func_08044fcc] CUE - Hit
extern void func_0804503c(u32, struct WizardsWaltzCue *, u32);  // [func_0804503c] CUE - Barely
extern void func_080450d0(u32, struct WizardsWaltzCue *, u32);  // [func_080450d0] CUE - Miss
extern void func_080450dc_stub(void);   // [func_080450dc] MAIN - Input Event (STUB)
extern void func_080450e0_stub(void);   // [func_080450e0] COMMON Func_00 - STUB
extern void func_080450e4_stub(void);   // [func_080450e4] COMMON Func_01 - STUB
extern void func_080450e8(u32);         // [func_080450e8] COMMON Func_02 - ?
