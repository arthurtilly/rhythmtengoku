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

// Palettes:

// Sound Effects:

// Engine Data:

// Engine Definition Data:

// Functions:
// extern ? func_0802f3a4(?); // [func_0802f3a4] GFX_INIT Func_02
// extern ? func_0802f3b4(?); // [func_0802f3b4] GFX_INIT Func_01
// extern ? func_0802f3f4(?); // [func_0802f3f4] GFX_INIT Func_00
// extern ? func_0802f420(?); // [func_0802f420] MAIN - Init
// extern ? func_0802f5b8(?); // [func_0802f5b8] ENGINE Func_00 - Set Pattern Mode
// extern ? func_0802f5f0(?); // [func_0802f5f0] ENGINE Func_01 - Play Sound
// extern ? func_0802f650(?); // [func_0802f650] ENGINE Func_02 - Set Pattern
// extern ? func_0802f664(?); // [func_0802f664] Update Particles
// extern ? func_0802f74c(?); // [func_0802f74c] Create Explosion
// extern ? func_0802fc38(?); // [func_0802fc38] MAIN - Update
// extern ? func_0802fc6c(?); // [func_0802fc6c] MAIN - Close (STUB)
// extern ? func_0802fc70(?); // [func_0802fc70] CUE - Spawn
// extern ? func_0802ff70(?); // [func_0802ff70] CUE - Update
// extern ? func_08030114(?); // [func_08030114] CUE - Despawn
// extern ? func_0803012c(?); // [func_0803012c] CUE - Hit
// extern ? func_080301d0(?); // [func_080301d0] CUE - Barely
// extern ? func_08030288(?); // [func_08030288] CUE - Miss
// extern ? func_08030294(?); // [func_08030294] MAIN - Input Event (STUB)
// extern ? func_08030298(?); // [func_08030298] COMMON Func_00 - STUB
// extern ? func_0803029c(?); // [func_0803029c] COMMON Func_01 - Display Text
// extern ? func_0803031c(?); // [func_0803031c] COMMON Func_02 - Set Tutorial Mode
