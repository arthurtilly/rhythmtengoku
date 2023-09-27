#include "global.h"
#include "graphics.h"

#include "arrival_anim_cells.inc.c"

// [D_089000cc] Options - Cursor on Option 1
struct Animation anim_arrival_option1[] = {
    /* 000 */ { arrival_cel000, 5 },
    /* 001 */ { arrival_cel001, 8 },
    /* 002 */ { arrival_cel000, 5 },
    /* 003 */ { arrival_cel002, 8 },
    /* End */ END_ANIMATION
};

// [D_089000f4] Options - Cursor on Option 2
struct Animation anim_arrival_option2[] = {
    /* 000 */ { arrival_cel003, 5 },
    /* 001 */ { arrival_cel004, 8 },
    /* 002 */ { arrival_cel003, 5 },
    /* 003 */ { arrival_cel005, 8 },
    /* End */ END_ANIMATION
};
