#include "global.h"
#include "graphics.h"

#include "cafe_anim_cells.inc.c"

// [D_089001cc] Unused Barista Icon
struct Animation anim_cafe_barista_icon[] = {
    /* 000 */ { cafe_cel000, 4 },
    /* End */ END_ANIMATION
};

// [D_089001dc] Cursor - Option 1
struct Animation anim_cafe_cursor_option1[] = {
    /* 000 */ { cafe_cel001, 4 },
    /* 001 */ { cafe_cel002, 4 },
    /* 002 */ { cafe_cel003, 30 },
    /* End */ END_ANIMATION
};

// [D_089001fc] Cursor - Option 2
struct Animation anim_cafe_cursor_option2[] = {
    /* 000 */ { cafe_cel004, 4 },
    /* 001 */ { cafe_cel005, 4 },
    /* 002 */ { cafe_cel006, 30 },
    /* End */ END_ANIMATION
};

// [D_0890021c] Text Advance Icon
struct Animation anim_cafe_text_adv_icon[] = {
    /* 000 */ { cafe_cel008, 3 },
    /* 001 */ { cafe_cel009, 3 },
    /* 002 */ { cafe_cel007, 40 },
    /* End */ END_ANIMATION
};
