#include "global.h"
#include "graphics.h"

#include "spaceball_anim_cells.inc.c"

// [D_088a1a70] Batter Green - Close
struct Animation anim_spaceball_batter_green[] = {
    /* 000 */ { spaceball_cel001, 20 },
    /* 001 */ { spaceball_cel002, 3 },
    /* 002 */ { spaceball_cel003, 3 },
    /* 003 */ { spaceball_cel004, 3 },
    /* 004 */ { spaceball_cel005, 20 },
    /* End */ END_ANIMATION
};

// [D_088a1aa0] Batter Red - Close
struct Animation anim_spaceball_batter_red[] = {
    /* 000 */ { spaceball_cel009, 20 },
    /* 001 */ { spaceball_cel010, 3 },
    /* 002 */ { spaceball_cel011, 3 },
    /* 003 */ { spaceball_cel012, 3 },
    /* 004 */ { spaceball_cel013, 20 },
    /* End */ END_ANIMATION
};

// [D_088a1ad0] Pitcher
struct Animation anim_spaceball_pitcher[] = {
    /* 000 */ { spaceball_cel015, 20 },
    /* 001 */ { spaceball_cel016, 4 },
    /* 002 */ { spaceball_cel014, 2 },
    /* End */ END_ANIMATION
};

// [D_088a1af0] Apple - Close
struct Animation anim_spaceball_apple[] = {
    /* 000 */ { spaceball_cel018, 20 },
    /* 001 */ { spaceball_cel019, 4 },
    /* 002 */ { spaceball_cel017, 2 },
    /* End */ END_ANIMATION
};

// [D_088a1b10] Baseball - Close
struct Animation anim_spaceball_baseball[] = {
    /* 000 */ { spaceball_cel006, 4 },
    /* End */ END_ANIMATION
};

// [D_088a1b20] Baseball - Far
struct Animation anim_spaceball_baseball_far[] = {
    /* 000 */ { spaceball_cel000, 4 },
    /* End */ END_ANIMATION
};

// [D_088a1b30] Rice Ball - Close
struct Animation anim_spaceball_rice_ball[] = {
    /* 000 */ { spaceball_cel008, 4 },
    /* End */ END_ANIMATION
};

// [D_088a1b40] Rice Ball - Far
struct Animation anim_spaceball_rice_ball_far[] = {
    /* 000 */ { spaceball_cel020, 4 },
    /* End */ END_ANIMATION
};

// [D_088a1b50] Star
struct Animation anim_spaceball_star_ball[] = {
    /* 000 */ { spaceball_cel007, 4 },
    /* End */ END_ANIMATION
};

// [D_088a1b60] Apple - Far
struct Animation anim_spaceball_apple_far[] = {
    /* 000 */ { spaceball_cel022, 4 },
    /* End */ END_ANIMATION
};

// [D_088a1b70] Miss Poof
struct Animation anim_spaceball_poof[] = {
    /* 000 */ { spaceball_cel024, 4 },
    /* 001 */ { spaceball_cel025, 3 },
    /* 002 */ { spaceball_cel026, 2 },
    /* End */ END_ANIMATION
};

// [D_088a1b90] BG Star
struct Animation anim_spaceball_bg_star[] = {
    /* 000 */ { spaceball_cel027, 4 },
    /* End */ END_ANIMATION
};

// [D_088a1ba0] Umpire - Show
struct Animation anim_spaceball_ufo_open[] = {
    /* 000 */ { spaceball_cel055, 4 },
    /* 001 */ { spaceball_cel060, 20 },
    /* 002 */ { spaceball_cel059, 10 },
    /* 003 */ { spaceball_cel058, 10 },
    /* 004 */ { spaceball_cel055, 10 },
    /* End */ END_ANIMATION
};

// [D_088a1bd0] Umpire - Idle
struct Animation anim_spaceball_ufo_sway[] = {
    /* 000 */ { spaceball_cel055, 4 },
    /* 001 */ { spaceball_cel054, 4 },
    /* 002 */ { spaceball_cel053, 4 },
    /* 003 */ { spaceball_cel054, 4 },
    /* 004 */ { spaceball_cel055, 4 },
    /* 005 */ { spaceball_cel056, 4 },
    /* 006 */ { spaceball_cel057, 4 },
    /* 007 */ { spaceball_cel056, 4 },
    /* 008 */ { spaceball_cel055, 4 },
    /* 009 */ { spaceball_cel054, 4 },
    /* End */ END_ANIMATION
};

// [D_088a1c28] Batter Pink - Close
struct Animation anim_spaceball_batter_pink[] = {
    /* 000 */ { spaceball_cel030, 20 },
    /* 001 */ { spaceball_cel031, 3 },
    /* 002 */ { spaceball_cel032, 3 },
    /* 003 */ { spaceball_cel033, 3 },
    /* 004 */ { spaceball_cel034, 30 },
    /* End */ END_ANIMATION
};

// [D_088a1c58] Flower Pot - Turn
struct Animation anim_spaceball_flower_turn[] = {
    /* 000 */ { spaceball_cel035, 4 },
    /* 001 */ { spaceball_cel036, 4 },
    /* 002 */ { spaceball_cel037, 4 },
    /* 003 */ { spaceball_cel028, 30 },
    /* End */ END_ANIMATION
};

// [D_088a1c80] Flower Pot - Kiss Test
struct Animation anim_spaceball_flower_test[] = {
    /* 000 */ { spaceball_cel036, 4 },
    /* 001 */ { spaceball_cel037, 4 },
    /* 002 */ { spaceball_cel038, 20 },
    /* 003 */ { spaceball_cel042, 20 },
    /* 004 */ { spaceball_cel039, 20 },
    /* 005 */ { spaceball_cel038, 20 },
    /* 006 */ { spaceball_cel041, 4 },
    /* 007 */ { spaceball_cel040, 4 },
    /* 008 */ { spaceball_cel035, 30 },
    /* 009 */ { spaceball_cel043, 30 },
    /* 010 */ { spaceball_cel035, 30 },
    /* 011 */ { spaceball_cel043, 30 },
    /* End */ END_ANIMATION
};

// [D_088a1ce8] Batter Green - Far
struct Animation anim_spaceball_batter_green_far[] = {
    /* 000 */ { spaceball_cel044, 20 },
    /* 001 */ { spaceball_cel044, 3 },
    /* 002 */ { spaceball_cel045, 3 },
    /* 003 */ { spaceball_cel045, 3 },
    /* 004 */ { spaceball_cel046, 20 },
    /* End */ END_ANIMATION
};

// [D_088a1d18] Batter Red - Far
struct Animation anim_spaceball_batter_red_far[] = {
    /* 000 */ { spaceball_cel047, 20 },
    /* 001 */ { spaceball_cel047, 3 },
    /* 002 */ { spaceball_cel048, 3 },
    /* 003 */ { spaceball_cel048, 3 },
    /* 004 */ { spaceball_cel049, 20 },
    /* End */ END_ANIMATION
};

// [D_088a1d48] Batter Pink - Far
struct Animation anim_spaceball_batter_pink_far[] = {
    /* 000 */ { spaceball_cel050, 20 },
    /* 001 */ { spaceball_cel050, 3 },
    /* 002 */ { spaceball_cel051, 3 },
    /* 003 */ { spaceball_cel051, 3 },
    /* 004 */ { spaceball_cel052, 20 },
    /* End */ END_ANIMATION
};

// [D_088a1d78] Flower Pot - Kiss 1
struct Animation anim_spaceball_flower_kiss[] = {
    /* 000 */ { spaceball_cel037, 4 },
    /* 001 */ { spaceball_cel038, 20 },
    /* 002 */ { spaceball_cel042, 20 },
    /* 003 */ { spaceball_cel039, 20 },
    /* 004 */ { spaceball_cel038, 20 },
    /* End */ END_ANIMATION
};

// [D_088a1da8] Flower Pot - Kiss 2
struct Animation anim_spaceball_flower_hide[] = {
    /* 000 */ { spaceball_cel041, 4 },
    /* 001 */ { spaceball_cel040, 4 },
    /* 002 */ { spaceball_cel035, 10 },
    /* 003 */ { spaceball_cel043, 10 },
    /* End */ END_ANIMATION
};
