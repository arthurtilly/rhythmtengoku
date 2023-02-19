#include "global.h"
#include "graphics.h"

#include "showtime_prologue_anim_cells.inc.c"

// [D_088ae3e4] Title
struct Animation anim_showtime_prologue_title[] = {
    /* 000 */ { showtime_prologue_cel000, 4 },
    /* End */ END_ANIMATION
};

// [D_088ae3f4] Penguin
struct Animation anim_showtime_prologue_penguin[] = {
    /* 000 */ { showtime_prologue_cel001, 4 },
    /* 001 */ { showtime_prologue_cel002, 4 },
    /* 002 */ { showtime_prologue_cel003, 4 },
    /* 003 */ { showtime_prologue_cel004, 4 },
    /* 004 */ { showtime_prologue_cel005, 4 },
    /* 005 */ { showtime_prologue_cel006, 6 },
    /* 006 */ { showtime_prologue_cel007, 20 },
    /* 007 */ { showtime_prologue_cel006, 6 },
    /* 008 */ { showtime_prologue_cel005, 100 },
    /* End */ END_ANIMATION
};
