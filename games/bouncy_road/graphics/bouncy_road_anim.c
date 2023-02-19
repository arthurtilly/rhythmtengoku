#include "global.h"
#include "graphics.h"

#include "bouncy_road_anim_cells.inc.c"

// [D_088cbd90] Bouncer (A Button)
struct Animation anim_bouncy_road_player_a[] = {
    /* 000 */ { bouncy_road_cel000, 2 },
    /* 001 */ { bouncy_road_cel001, 2 },
    /* 002 */ { bouncy_road_cel002, 2 },
    /* 003 */ { bouncy_road_cel003, 2 },
    /* 004 */ { bouncy_road_cel004, 2 },
    /* 005 */ { bouncy_road_cel005, 20 },
    /* End */ END_ANIMATION
};

// [D_088cbdc8] Bouncer (D-Pad)
struct Animation anim_bouncy_road_player_dpad[] = {
    /* 000 */ { bouncy_road_cel006, 2 },
    /* 001 */ { bouncy_road_cel007, 2 },
    /* 002 */ { bouncy_road_cel008, 2 },
    /* 003 */ { bouncy_road_cel009, 2 },
    /* 004 */ { bouncy_road_cel010, 2 },
    /* 005 */ { bouncy_road_cel011, 20 },
    /* End */ END_ANIMATION
};

// [D_088cbe00] Ball
struct Animation anim_bouncy_road_ball[] = {
    /* 000 */ { bouncy_road_cel012, 4 },
    /* End */ END_ANIMATION
};

// [D_088cbe10] Bouncer (Path)
struct Animation anim_bouncy_road_path[] = {
    /* 000 */ { bouncy_road_cel013, 2 },
    /* 001 */ { bouncy_road_cel014, 2 },
    /* 002 */ { bouncy_road_cel015, 2 },
    /* 003 */ { bouncy_road_cel016, 2 },
    /* 004 */ { bouncy_road_cel017, 2 },
    /* 005 */ { bouncy_road_cel018, 20 },
    /* End */ END_ANIMATION
};
