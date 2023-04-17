#include "global.h"
#include "graphics.h"

#include "drum_live_menu_anim_cells.inc.c"

// [D_088f67d0] Up Arrow
struct Animation anim_drum_live_menu_arrow_up[] = {
    /* 000 */ { drum_live_menu_cel000, 20 },
    /* 001 */ { drum_live_menu_cel001, 40 },
    /* End */ END_ANIMATION
};

// [D_088f67e8] Down Arrow
struct Animation anim_drum_live_menu_arrow_down[] = {
    /* 000 */ { drum_live_menu_cel000, 20 },
    /* 001 */ { drum_live_menu_cel002, 40 },
    /* End */ END_ANIMATION
};

// [D_088f6800] "Press A to Play" Icon
struct Animation anim_drum_live_menu_start_icon[] = {
    /* 000 */ { drum_live_menu_cel003, 4 },
    /* End */ END_ANIMATION
};

// [D_088f6810] Posters
struct Animation anim_drum_live_menu_poster[] = {
    /* 000 */ { drum_live_menu_cel004, 40 },
    /* 001 */ { drum_live_menu_cel006, 40 },
    /* 002 */ { drum_live_menu_cel005, 40 },
    /* End */ END_ANIMATION
};
