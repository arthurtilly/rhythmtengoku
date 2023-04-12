#include "global.h"
#include "graphics.h"

#include "medal_corner_menus_anim_cells.inc.c"

// [D_0890dab8] Cursor
struct Animation anim_medal_corner_cursor[] = {
    /* 000 */ { medal_corner_menus_cel001, 4 },
    /* 001 */ { medal_corner_menus_cel002, 4 },
    /* 002 */ { medal_corner_menus_cel003, 30 },
    /* End */ END_ANIMATION
};

// [D_0890dad8] "Medals to Unlock" Digits
struct Animation anim_medal_corner_req_num[] = {
    /* 000 */ { medal_corner_menus_cel004, 10 },
    /* 001 */ { medal_corner_menus_cel005, 10 },
    /* 002 */ { medal_corner_menus_cel006, 10 },
    /* 003 */ { medal_corner_menus_cel007, 10 },
    /* 004 */ { medal_corner_menus_cel008, 10 },
    /* 005 */ { medal_corner_menus_cel009, 10 },
    /* 006 */ { medal_corner_menus_cel010, 10 },
    /* 007 */ { medal_corner_menus_cel011, 10 },
    /* 008 */ { medal_corner_menus_cel012, 10 },
    /* 009 */ { medal_corner_menus_cel013, 10 },
    /* 010 */ { medal_corner_menus_cel000, 10 },
    /* End */ END_ANIMATION
};

// [D_0890db38] "Medal Count" Digits
struct Animation anim_medal_corner_count_num[] = {
    /* 000 */ { medal_corner_menus_cel014, 10 },
    /* 001 */ { medal_corner_menus_cel015, 10 },
    /* 002 */ { medal_corner_menus_cel016, 10 },
    /* 003 */ { medal_corner_menus_cel017, 10 },
    /* 004 */ { medal_corner_menus_cel018, 10 },
    /* 005 */ { medal_corner_menus_cel019, 10 },
    /* 006 */ { medal_corner_menus_cel020, 10 },
    /* 007 */ { medal_corner_menus_cel021, 10 },
    /* 008 */ { medal_corner_menus_cel022, 10 },
    /* 009 */ { medal_corner_menus_cel023, 10 },
    /* 010 */ { medal_corner_menus_cel000, 10 },
    /* End */ END_ANIMATION
};

// [D_0890db98] Icon (Game Not Yet Unlocked)
struct Animation anim_medal_corner_locked_icon[] = {
    /* 000 */ { medal_corner_menus_cel024, 4 },
    /* End */ END_ANIMATION
};

// [D_0890dba8] "Medals to Unlock" Zero
struct Animation anim_medal_corner_req_zero[] = {
    /* 000 */ { medal_corner_menus_cel004, 10 },
    /* End */ END_ANIMATION
};

// [D_0890dbb8] "Medal Count" Zero
struct Animation anim_medal_corner_count_zero[] = {
    /* 000 */ { medal_corner_menus_cel014, 10 },
    /* End */ END_ANIMATION
};
