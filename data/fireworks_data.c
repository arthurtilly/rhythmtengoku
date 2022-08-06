#include "src/engines/fireworks.h"

const char D_0805a3d0[] = "";

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

const s32 D_0805a41c[] = {
    /* RED   */ 0x8,
    /* GREEN */ 0x10,
    /* BLUE  */ 0x8,
    /* MULTI */ 0x18
};
