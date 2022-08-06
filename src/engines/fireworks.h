#pragma once

#include "global.h"
#include "sound.h"

// Engine Macros/Enums:
enum FireworksPatternsEnum {
    FIREWORKS_PATTERN_L3,           // Left;    3 Layers
    FIREWORKS_PATTERN_C3,           // Centre;  3 Layers
    FIREWORKS_PATTERN_R3,           // Right;   3 Layers
    FIREWORKS_PATTERN_LL2,          // Far-Left;    2 Layers
    FIREWORKS_PATTERN_CL2,          // Mid-Left;    2 Layers (unused)
    FIREWORKS_PATTERN_CR2,          // Mid-Right;   2 Layers (unused)
    FIREWORKS_PATTERN_RR2,          // Far-Right;   2 Layers
    FIREWORKS_PATTERN_L3_BARELY,    // Centre;  1 Layer
    FIREWORKS_PATTERN_C3_BARELY,    // Centre;  1 Layer
    FIREWORKS_PATTERN_R3_BARELY,    // Centre;  1 Layer
    FIREWORKS_PATTERN_LL2_BARELY,   // Centre;  1 Layer
    FIREWORKS_PATTERN_CL2_BARELY,   // Centre;  1 Layer (unused)
    FIREWORKS_PATTERN_CR2_BARELY,   // Centre;  1 Layer (unused)
    FIREWORKS_PATTERN_RR2_BARELY,   // Centre;  1 Layer
    FIREWORKS_PATTERN_SP_STAR,      // Centre;  Special - Large Star
    FIREWORKS_PATTERN_SP_CIRCLE,    // Centre;  Special - Circle
    FIREWORKS_PATTERN_SP_SPIRAL,    // Centre;  Special - Spiral
    FIREWORKS_PATTERN_SP_SMILE,     // Centre;  Special - Smile
    FIREWORKS_PATTERN_SP_TSUNKU,    // Centre;  Special - ♂ (unused)
    FIREWORKS_PATTERN_TAIKO_BOMBER, // Hawfinch Taiko Bomber
};
enum FireworksParticlesEnum {
    FIREWORKS_PARTICLE_RED,
    FIREWORKS_PARTICLE_GREEN,
    FIREWORKS_PARTICLE_BLUE,
    FIREWORKS_PARTICLE_MULTI
};
enum FireworksPatternModesEnum {
    FIREWORKS_PATTERN_MODE_0,
    FIREWORKS_PATTERN_MODE_1,
    FIREWORKS_PATTERN_MODE_TAIKO_BOMBER,
    FIREWORKS_PATTERN_MODE_USE_TABLE
};
enum FireworksCueTypesEnum {
    FIREWORKS_CUE_TYPE_SPIRIT_SPARKLER,
    FIREWORKS_CUE_TYPE_NORMAL_FIREWORK,
    FIREWORKS_CUE_TYPE_HAWFINCH_TAIKO_BOMBER
};
enum FireworksSoundsEnum {
    FIREWORKS_SFX_COME_ON,
    FIREWORKS_SFX_ONE,
    FIREWORKS_SFX_TWO,
    FIREWORKS_SFX_THREE,
    FIREWORKS_SFX_NUEI
};

// Types:
struct FireworksPatternColours {
    s32 inner;
    s32 middle;
    s32 outer;
};
struct FireworksParticleTrajectory {
    s32 initAngle; // Uses precision of sins2 table.
    s32 initVelocity;
};

// OAM Animations:
extern u32 D_088e8f14[]; // Animation: ?
extern u32 D_088e8f34[]; // Animation: ?
extern u32 D_088e8f64[]; // Animation: Particle
extern u32 D_088e8fb4[]; // Animation: ?
extern u32 D_088e905c[]; // Animation: ?
extern u32 D_088e90ac[]; // Animation: "taiko_bomber_launch"
extern u32 D_088e90c4[]; // Animation: ?
extern u32 D_088e92dc[]; // Animation: ?
extern u32 D_088e93bc[]; // Animation: "Start to Skip" Text (unused)
extern u32 D_088e93cc[]; // Animation: ?
extern u32 D_088e93ec[]; // Animation: "spirit_sparkler_launch"
extern u32 D_088e940c[]; // Animation: "normal_firework_launch"

// Palettes:

// Sound Effects:
extern const struct SequenceData s_intro_comeon_seqData;
extern const struct SequenceData s_intro_one_seqData;
extern const struct SequenceData s_intro_two_seqData;
extern const struct SequenceData s_intro_three_seqData;
extern const struct SequenceData s_f_hanabi_v_nuei_seqData;
extern const struct SequenceData s_hanabi_hyu_seqData;
extern const struct SequenceData s_f_hanabi_v_tamaya_seqData;
extern const struct SequenceData s_hanabi_ah_seqData;
extern const struct SequenceData s_f_hanabi_kansei_seqData;

// Engine Data:
extern const char D_0805a3d0[];
extern const struct FireworksPatternColours D_0805a3d4[];
extern const s32 D_0805a41c[];
extern const struct FireworksParticleTrajectory D_0805a42c[];
extern const s32 D_0805a524[];

// Engine Definition Data:
extern u16 D_089e43e8[];  // Cue Expiration Times?
extern u32 D_089e4214;    // GFX-related Null
extern u32 *D_089e43d4[]; // GFX Init Struct

// Functions:
extern void func_0802f3a4(void);    // [func_0802f3a4] GFX_INIT Func_02
extern void func_0802f3b4(void);    // [func_0802f3b4] GFX_INIT Func_01
extern void func_0802f3f4(void);    // [func_0802f3f4] GFX_INIT Func_00
extern void func_0802f420(u32);     // [func_0802f420] MAIN - Init
extern void func_0802f5b8(u32);     // [func_0802f5b8] ENGINE Func_00 - Set Pattern Mode
extern void func_0802f5f0(u32);     // [func_0802f5f0] ENGINE Func_01 - Play Sound
extern void func_0802f650(u32);     // [func_0802f650] ENGINE Func_02 - Set Pattern
extern void func_0802f664(void);         // [func_0802f664] Update Particles
extern void func_0802f74c(u8, s32, s32); // [func_0802f74c] Create Explosion
extern void func_0802fc38(void);    // [func_0802fc38] MAIN - Update
extern void func_0802fc6c(void);    // [func_0802fc6c] MAIN - Close (STUB)
extern void func_0802fc70(u32, struct FireworksCue *, u32, u32); // [func_0802fc70] CUE - Spawn
extern u32  func_0802ff70(u32, struct FireworksCue *, u32, u32); // [func_0802ff70] CUE - Update
extern void func_08030114(u32, struct FireworksCue *, u32, u32); // [func_08030114] CUE - Despawn
extern void func_0803012c(u32, struct FireworksCue *, u32, u32); // [func_0803012c] CUE - Hit
extern void func_080301d0(u32, struct FireworksCue *, u32, u32); // [func_080301d0] CUE - Barely
extern void func_08030288(u32, struct FireworksCue *, u32, u32); // [func_08030288] CUE - Miss
extern void func_08030294(void);    // [func_08030294] MAIN - Input Event (STUB)
extern void func_08030298(void);    // [func_08030298] COMMON Func_00 - STUB
extern void func_0803029c(char *);  // [func_0803029c] COMMON Func_01 - Display Text
extern void func_0803031c(u32);     // [func_0803031c] COMMON Func_02 - Set Tutorial Mode?
