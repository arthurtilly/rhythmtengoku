#include "engines/fireworks.h"

// [D_0805a3d0] Default Tutorial Text
const char D_0805a3d0[] = "";


// [D_0805a3d4] Unique 3-Colour Patterns
const struct FireworksPatternColours D_0805a3d4[] = {
    /* RGB */ {
        /* INNER  */ FIREWORKS_PARTICLE_RED,
        /* MIDDLE */ FIREWORKS_PARTICLE_GREEN,
        /* OUTER  */ FIREWORKS_PARTICLE_BLUE
    },
    /* RBG */ {
        /* INNER  */ FIREWORKS_PARTICLE_RED,
        /* MIDDLE */ FIREWORKS_PARTICLE_BLUE,
        /* OUTER  */ FIREWORKS_PARTICLE_GREEN
    },
    /* GRB */ {
        /* INNER  */ FIREWORKS_PARTICLE_GREEN,
        /* MIDDLE */ FIREWORKS_PARTICLE_RED,
        /* OUTER  */ FIREWORKS_PARTICLE_BLUE
    },
    /* GBR */ {
        /* INNER  */ FIREWORKS_PARTICLE_GREEN,
        /* MIDDLE */ FIREWORKS_PARTICLE_BLUE,
        /* OUTER  */ FIREWORKS_PARTICLE_RED
    },
    /* BRG */ {
        /* INNER  */ FIREWORKS_PARTICLE_BLUE,
        /* MIDDLE */ FIREWORKS_PARTICLE_RED,
        /* OUTER  */ FIREWORKS_PARTICLE_GREEN
    },
    /* BGR */ {
        /* INNER  */ FIREWORKS_PARTICLE_BLUE,
        /* MIDDLE */ FIREWORKS_PARTICLE_GREEN,
        /* OUTER  */ FIREWORKS_PARTICLE_RED
    }
};


// [D_0805a41c] Particle Durations
const s32 D_0805a41c[] = {
    /* RED   */ 0x8,
    /* GREEN */ 0x10,
    /* BLUE  */ 0x8,
    /* MULTI */ 0x18
};


// [D_0805a42c] Particle Trajectory for Åâ Pattern (unused)
const struct FireworksParticleTrajectory D_0805a42c[] = {
    /* 00 */ {   0,   0 },
    /* 01 */ { 224,  64 },
    /* 02 */ { 224, 128 },
    /* 03 */ { 224, 192 },
    /* 04 */ { 224, 256 },
    /* 05 */ { 224, 320 },
    /* 06 */ { 224, 384 },
    /* 07 */ { 192, 320 },
    /* 08 */ { 200, 336 },
    /* 09 */ { 208, 352 },
    /* 10 */ { 216, 368 },
    /* 11 */ {   0, 320 },
    /* 12 */ { 248, 336 },
    /* 13 */ { 240, 352 },
    /* 14 */ { 232, 368 },
    /* 15 */ {  68, 224 },
    /* 16 */ {  70, 160 },
    /* 17 */ {  96,  96 },
    /* 18 */ { 124, 160 },
    /* 19 */ { 128, 256 },
    /* 20 */ { 124, 320 },
    /* 21 */ { 120, 384 },
    /* 22 */ { 116, 448 },
    /* 23 */ { 112, 512 },
    /* 24 */ { 104, 576 },
    /* 25 */ {  96, 608 },
    /* 26 */ {  88, 576 },
    /* 27 */ {  80, 512 },
    /* 28 */ {  76, 448 },
    /* 29 */ {  72, 384 },
    /* 30 */ {  68, 320 }
};


// [D_0805a524] Pattern Sequence for Fireworks 1
const s32 D_0805a524[] = {
    FIREWORKS_PATTERN_L3,
    FIREWORKS_PATTERN_C3,
    FIREWORKS_PATTERN_R3,
    FIREWORKS_PATTERN_TAIKO_BOMBER,

    FIREWORKS_PATTERN_L3,
    FIREWORKS_PATTERN_C3,
    FIREWORKS_PATTERN_R3,
    FIREWORKS_PATTERN_TAIKO_BOMBER,

    FIREWORKS_PATTERN_SP_STAR,
    FIREWORKS_PATTERN_TAIKO_BOMBER,
    FIREWORKS_PATTERN_SP_CIRCLE,
    FIREWORKS_PATTERN_TAIKO_BOMBER,

    FIREWORKS_PATTERN_SP_SPIRAL,
    FIREWORKS_PATTERN_TAIKO_BOMBER,
    FIREWORKS_PATTERN_L3, FIREWORKS_PATTERN_R3,
    FIREWORKS_PATTERN_L3, FIREWORKS_PATTERN_TAIKO_BOMBER, FIREWORKS_PATTERN_R3,

    FIREWORKS_PATTERN_TAIKO_BOMBER,
    FIREWORKS_PATTERN_TAIKO_BOMBER,
    FIREWORKS_PATTERN_SP_SMILE,
    FIREWORKS_PATTERN_TAIKO_BOMBER,

    FIREWORKS_PATTERN_SP_STAR, FIREWORKS_PATTERN_L3,
    FIREWORKS_PATTERN_SP_STAR, FIREWORKS_PATTERN_R3,
    FIREWORKS_PATTERN_SP_STAR, FIREWORKS_PATTERN_C3,
    FIREWORKS_PATTERN_TAIKO_BOMBER,

    FIREWORKS_PATTERN_L3,
    FIREWORKS_PATTERN_C3,
    FIREWORKS_PATTERN_R3,
    FIREWORKS_PATTERN_TAIKO_BOMBER,

    FIREWORKS_PATTERN_SP_STAR, FIREWORKS_PATTERN_L3,
    FIREWORKS_PATTERN_SP_STAR, FIREWORKS_PATTERN_R3,
    FIREWORKS_PATTERN_LL2, FIREWORKS_PATTERN_RR2,
    FIREWORKS_PATTERN_L3, FIREWORKS_PATTERN_TAIKO_BOMBER, FIREWORKS_PATTERN_R3
};
