#include "global.h"
#include "graphics.h"

#include "bunny_hop_prologue_anim_cells.inc.c"

// [D_088b35a4] Rabbits
struct Animation anim_bunny_hop_prologue_rabbits[] = {
    /* 000 */ { bunny_hop_prologue_cel000, 10 },
    /* 001 */ { bunny_hop_prologue_cel002, 10 },
    /* 002 */ { bunny_hop_prologue_cel003, 10 },
    /* 003 */ { bunny_hop_prologue_cel004, 10 },
    /* 004 */ { bunny_hop_prologue_cel005, 10 },
    /* 005 */ { bunny_hop_prologue_cel006, 60 },
    /* End */ END_ANIMATION
};

// [D_088b35dc] Title
struct Animation anim_bunny_hop_prologue_title[] = {
    /* 000 */ { bunny_hop_prologue_cel000, 10 },
    /* 001 */ { bunny_hop_prologue_cel000, 10 },
    /* 002 */ { bunny_hop_prologue_cel007, 10 },
    /* 003 */ { bunny_hop_prologue_cel008, 10 },
    /* 004 */ { bunny_hop_prologue_cel009, 10 },
    /* 005 */ { bunny_hop_prologue_cel010, 10 },
    /* 006 */ { bunny_hop_prologue_cel011, 100 },
    /* End */ END_ANIMATION
};
