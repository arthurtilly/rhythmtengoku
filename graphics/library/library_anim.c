#include "global.h"
#include "graphics.h"

#include "library_anim_cells.inc.c"

// [D_089000cc] Options - Cursor on Option 1
struct Animation anim_library_option1[] = {
    /* 000 */ { library_cel000, 5 },
    /* 001 */ { library_cel001, 8 },
    /* 002 */ { library_cel000, 5 },
    /* 003 */ { library_cel002, 8 },
    /* End */ END_ANIMATION
};

// [D_089000f4] Options - Cursor on Option 2
struct Animation anim_library_option2[] = {
    /* 000 */ { library_cel003, 5 },
    /* 001 */ { library_cel004, 8 },
    /* 002 */ { library_cel003, 5 },
    /* 003 */ { library_cel005, 8 },
    /* End */ END_ANIMATION
};
