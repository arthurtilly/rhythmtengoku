#include "global.h"
#include "graphics.h"

#include "data_room_reading_anim_cells.inc.c"

// [D_0890ae24] Title Bar
struct Animation anim_reading_title_bar[] = {
    /* 000 */ { data_room_reading_cel000, 4 },
    /* End */ END_ANIMATION
};

// [D_0890ae34] "PREV" Icon
struct Animation anim_reading_icon_prev[] = {
    /* 000 */ { data_room_reading_cel001, 4 },
    /* End */ END_ANIMATION
};

// [D_0890ae44] "NEXT" Icon
struct Animation anim_reading_icon_next[] = {
    /* 000 */ { data_room_reading_cel002, 4 },
    /* End */ END_ANIMATION
};
