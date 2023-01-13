#pragma once

#include "global.h"
#include "engines.h"


struct WizardsWaltzEntity {
    struct AffineSprite *sprite;
    u8  state;
    s32 rotation;
    s32 x;
    s32 y;
    s32 z;
    u32 time;
    u32 null1C;
};

struct WizardsWaltzInfo {
    u8 version;
    struct WizardsWaltzEntity wizard;
    struct WizardsWaltzEntity shadow;
    struct WizardsWaltzEntity sparkle[10];
    struct WizardsWaltzEntity girl;
    s32 cyclePosition;  // Current point in cycle
    s32 cycleInterval;  // Duration of one cycle
    s32 globalScale;    //
    u8  currentSparkle; // Sparkle to operate on
    u8  flowerCount;
    u8  isTutorial;
};

struct WizardsWaltzCue {
    struct AffineSprite *sprite;
    u16 null4;
    s16 position;
};


// Engine Macros/Enums:
#define WIZARDS_WALTZ_SPARKLE_STATE_HIDDEN 0
#define WIZARDS_WALTZ_SPARKLE_STATE_QUEUED 1
#define WIZARDS_WALTZ_SPARKLE_STATE_ACTIVE 2
#define WIZARDS_WALTZ_GIRL_STATE_NEUTRAL 0
#define WIZARDS_WALTZ_GIRL_STATE_HAPPY 1
#define WIZARDS_WALTZ_GIRL_STATE_SAD 2

// OAM Animations:
extern const struct Animation anim_wizard_fly[]; // Animation: "wizard_fly"
extern const struct Animation anim_wizard_cast_spell[]; // Animation: "wizard_magic"
extern const struct Animation anim_wizard_sparkle[]; // Animation: "sparkle"
extern const struct Animation anim_wizards_waltz_sprout_eaten[]; // Animation: "sprout_eaten"
extern const struct Animation anim_wizards_waltz_sprout_grow[]; // Animation: "sprout_grow"
extern const struct Animation anim_wizards_waltz_sprout_appear[]; // Animation: "sprout_appear"
extern const struct Animation anim_wizards_waltz_girl_idle[]; // Animation: "girl"
extern const struct Animation anim_wizards_waltz_girl_happy[]; // Animation: "girl_happy"
extern const struct Animation anim_wizards_waltz_girl_upset[]; // Animation: "girl_sad"
extern const struct Animation anim_wizards_waltz_shadow[]; // Animation: "shadow"
extern const struct Animation anim_wizards_waltz_sprout_appear_tutorial[]; // Animation: "sprout_appear_tutorial"

// Palettes:

// Sound Effects:
extern const struct SequenceData s_witch_furu_seqData; // Sound for inputting without a cue.

// Engine Data:

// Engine Definition Data:
extern const struct CompressedGraphics *D_089e9f10[]; // Buffered Textures List
extern const struct GraphicsTable D_089e9f14[]; // Graphics Table

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
extern void func_08044e78(u32, struct WizardsWaltzCue *, u32); // [func_08044e78] CUE - Spawn
extern u32  func_08044f94(u32, struct WizardsWaltzCue *, u32); // [func_08044f94] CUE - Update
extern void func_08044fc0(u32, struct WizardsWaltzCue *, u32); // [func_08044fc0] CUE - Despawn
extern void func_08044fcc(u32, struct WizardsWaltzCue *, u32); // [func_08044fcc] CUE - Hit
extern void func_0804503c(u32, struct WizardsWaltzCue *, u32); // [func_0804503c] CUE - Barely
extern void func_080450d0(u32, struct WizardsWaltzCue *, u32); // [func_080450d0] CUE - Miss
extern void func_080450dc_stub(void);   // [func_080450dc] MAIN - Input Event (STUB)
extern void func_080450e0_stub(void);   // [func_080450e0] COMMON Func_00 - Beat Animation (STUB)
extern void func_080450e4_stub(void);   // [func_080450e4] COMMON Func_01 - Display Text (STUB)
extern void func_080450e8(const struct Scene *); // [func_080450e8] COMMON Func_02 - Init. Tutorial
