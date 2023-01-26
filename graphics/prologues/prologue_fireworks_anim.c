#include "global.h"
#include "graphics.h"

#include "prologue_fireworks_anim_cells.inc.c"

// [D_088af7d4] Title
const struct Animation anim_prologue_fireworks_title[] = {
    /* 000 */ { prologue_fireworks_cel001, 20 },
    /* 001 */ { prologue_fireworks_cel002, 60 },
    /* 002 */ { prologue_fireworks_cel000, 20 },
    /* End */ END_ANIMATION
};

// [D_088af7f4] ? (Unused)
const struct Animation anim_prologue_fireworks_unused[] = {
    /* 000 */ { prologue_fireworks_cel003, 20 },
    /* 001 */ { prologue_fireworks_cel004, 60 },
    /* 002 */ { prologue_fireworks_cel000, 20 },
    /* End */ END_ANIMATION
};
