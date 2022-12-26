#include "global.h"
#include "graphics.h"

#include "prologue_bunny_hop_anim_cells.inc.c"

// [D_088b35a4] Rabbits
const struct Animation anim_prologue_bunny_hop_rabbits[] = {
    /* 000 */ { prologue_bunny_hop_cel000, 10 },
    /* 001 */ { prologue_bunny_hop_cel002, 10 },
    /* 002 */ { prologue_bunny_hop_cel003, 10 },
    /* 003 */ { prologue_bunny_hop_cel004, 10 },
    /* 004 */ { prologue_bunny_hop_cel005, 10 },
    /* 005 */ { prologue_bunny_hop_cel006, 60 },
    /* End */ END_ANIMATION
};

// [D_088b35dc] Title
const struct Animation anim_prologue_bunny_hop_title[] = {
    /* 000 */ { prologue_bunny_hop_cel000, 10 },
    /* 001 */ { prologue_bunny_hop_cel000, 10 },
    /* 002 */ { prologue_bunny_hop_cel007, 10 },
    /* 003 */ { prologue_bunny_hop_cel008, 10 },
    /* 004 */ { prologue_bunny_hop_cel009, 10 },
    /* 005 */ { prologue_bunny_hop_cel010, 10 },
    /* 006 */ { prologue_bunny_hop_cel011, 100 },
    /* End */ END_ANIMATION
};
