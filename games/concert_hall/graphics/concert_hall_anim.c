#include "global.h"
#include "graphics.h"

#include "concert_hall_anim_cells.inc.c"

// [D_088f67d0] Up Arrow
struct Animation anim_concert_hall_arrow_up[] = {
    /* 000 */ { concert_hall_cel000, 20 },
    /* 001 */ { concert_hall_cel001, 40 },
    /* End */ END_ANIMATION
};

// [D_088f67e8] Down Arrow
struct Animation anim_concert_hall_arrow_down[] = {
    /* 000 */ { concert_hall_cel000, 20 },
    /* 001 */ { concert_hall_cel002, 40 },
    /* End */ END_ANIMATION
};

// [D_088f6800] "Press A to Play" Icon
struct Animation anim_concert_hall_start_icon[] = {
    /* 000 */ { concert_hall_cel003, 4 },
    /* End */ END_ANIMATION
};

// [D_088f6810] Posters
struct Animation anim_concert_hall_poster[] = {
    /* 000 */ { concert_hall_cel004, 40 },
    /* 001 */ { concert_hall_cel006, 40 },
    /* 002 */ { concert_hall_cel005, 40 },
    /* End */ END_ANIMATION
};
