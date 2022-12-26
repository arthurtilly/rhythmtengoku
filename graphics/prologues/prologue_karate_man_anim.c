#include "global.h"
#include "graphics.h"

#include "prologue_karate_man_anim_cells.inc.c"

// [D_088ada78] Title
const struct Animation anim_prologue_karate_title[] = {
    /* 000 */ { prologue_karate_man_cel000, 20 },
    /* 001 */ { prologue_karate_man_cel001, 10 },
    /* 002 */ { prologue_karate_man_cel002, 10 },
    /* 003 */ { prologue_karate_man_cel003, 10 },
    /* 004 */ { prologue_karate_man_cel004, 60 },
    /* End */ END_ANIMATION
};

// [D_088adaa8] Kick
const struct Animation anim_prologue_karate_kick[] = {
    /* 000 */ { prologue_karate_man_cel007, 60 },
    /* 001 */ { prologue_karate_man_cel005, 2 },
    /* 002 */ { prologue_karate_man_cel006, 2 },
    /* 003 */ { prologue_karate_man_cel005, 2 },
    /* 004 */ { prologue_karate_man_cel006, 1 },
    /* 005 */ { prologue_karate_man_cel005, 60 },
    /* End */ END_ANIMATION
};
