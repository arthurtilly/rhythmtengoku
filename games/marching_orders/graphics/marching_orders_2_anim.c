#include "global.h"
#include "graphics.h"

#include "marching_orders_2_anim_cells.inc.c"

// [D_088f288c] Marcher Test
struct Animation anim_marching2_test[] = {
    /* 000 */ { marching_orders_2_cel005, 3 },
    /* 001 */ { marching_orders_2_cel006, 3 },
    /* 002 */ { marching_orders_2_cel007, 3 },
    /* 003 */ { marching_orders_2_cel008, 3 },
    /* 004 */ { marching_orders_2_cel009, 3 },
    /* 005 */ { marching_orders_2_cel008, 3 },
    /* 006 */ { marching_orders_2_cel007, 3 },
    /* 007 */ { marching_orders_2_cel006, 3 },
    /* 008 */ { marching_orders_2_cel005, 3 },
    /* 009 */ { marching_orders_2_cel010, 3 },
    /* 010 */ { marching_orders_2_cel011, 3 },
    /* 011 */ { marching_orders_2_cel012, 3 },
    /* 012 */ { marching_orders_2_cel013, 3 },
    /* 013 */ { marching_orders_2_cel012, 3 },
    /* 014 */ { marching_orders_2_cel011, 3 },
    /* 015 */ { marching_orders_2_cel010, 3 },
    /* 016 */ { marching_orders_2_cel005, 3 },
    /* 017 */ { marching_orders_2_cel006, 3 },
    /* 018 */ { marching_orders_2_cel007, 3 },
    /* 019 */ { marching_orders_2_cel008, 3 },
    /* 020 */ { marching_orders_2_cel009, 3 },
    /* 021 */ { marching_orders_2_cel008, 3 },
    /* 022 */ { marching_orders_2_cel007, 3 },
    /* 023 */ { marching_orders_2_cel006, 3 },
    /* 024 */ { marching_orders_2_cel005, 3 },
    /* 025 */ { marching_orders_2_cel010, 3 },
    /* 026 */ { marching_orders_2_cel011, 3 },
    /* 027 */ { marching_orders_2_cel012, 3 },
    /* 028 */ { marching_orders_2_cel013, 3 },
    /* 029 */ { marching_orders_2_cel012, 3 },
    /* 030 */ { marching_orders_2_cel011, 3 },
    /* 031 */ { marching_orders_2_cel010, 3 },
    /* 032 */ { marching_orders_2_cel010, 3 },
    /* 033 */ { marching_orders_2_cel005, 3 },
    /* 034 */ { marching_orders_2_cel004, 30 },
    /* End */ END_ANIMATION
};

// [D_088f29ac] Marcher - Turn Left
struct Animation anim_marching2_turn_l[] = {
    /* 000 */ { marching_orders_2_cel014, 10 },
    /* 001 */ { marching_orders_2_cel015, 4 },
    /* 002 */ { marching_orders_2_cel016, 4 },
    /* 003 */ { marching_orders_2_cel004, 30 },
    /* End */ END_ANIMATION
};

// [D_088f29d4] Marcher - Turn Right
struct Animation anim_marching2_turn_r[] = {
    /* 000 */ { marching_orders_2_cel018, 10 },
    /* 001 */ { marching_orders_2_cel019, 4 },
    /* 002 */ { marching_orders_2_cel020, 4 },
    /* 003 */ { marching_orders_2_cel004, 30 },
    /* End */ END_ANIMATION
};

// [D_088f29fc] Marcher - Point Left
struct Animation anim_marching2_point_l[] = {
    /* 000 */ { marching_orders_2_cel023, 10 },
    /* 001 */ { marching_orders_2_cel022, 4 },
    /* 002 */ { marching_orders_2_cel021, 3 },
    /* 003 */ { marching_orders_2_cel017, 30 },
    /* End */ END_ANIMATION
};

// [D_088f2a24] Marcher - Point Right
struct Animation anim_marching2_point_r[] = {
    /* 000 */ { marching_orders_2_cel026, 10 },
    /* 001 */ { marching_orders_2_cel025, 4 },
    /* 002 */ { marching_orders_2_cel024, 3 },
    /* 003 */ { marching_orders_2_cel017, 30 },
    /* End */ END_ANIMATION
};

// [D_088f2a4c] Bunny Commander - Angry
struct Animation anim_marching2_commander_angry[] = {
    /* 000 */ { marching_orders_2_cel003, 20 },
    /* 001 */ { marching_orders_2_cel002, 6 },
    /* 002 */ { marching_orders_2_cel001, 6 },
    /* 003 */ { marching_orders_2_cel000, 6 },
    /* End */ END_ANIMATION
};

// [D_088f2a74] Marcher - Stop Beat
struct Animation anim_marching2_stop_beat[] = {
    /* 000 */ { marching_orders_2_cel039, 4 },
    /* 001 */ { marching_orders_2_cel040, 4 },
    /* 002 */ { marching_orders_2_cel041, 50 },
    /* End */ END_ANIMATION
};

// [D_088f2a94] Marcher - Clap
struct Animation anim_marching2_clap[] = {
    /* 000 */ { marching_orders_2_cel036, 4 },
    /* 001 */ { marching_orders_2_cel038, 3 },
    /* 002 */ { marching_orders_2_cel037, 30 },
    /* End */ END_ANIMATION
};

// [D_088f2ab4] Marcher - Beat
struct Animation anim_marching2_beat[] = {
    /* 000 */ { marching_orders_2_cel041, 4 },
    /* 001 */ { marching_orders_2_cel040, 4 },
    /* 002 */ { marching_orders_2_cel039, 40 },
    /* End */ END_ANIMATION
};

// [D_088f2ad4] Marcher - Step Right (Body)
struct Animation anim_marching2_step_r[] = {
    /* 000 */ { marching_orders_2_cel042, 2 },
    /* 001 */ { marching_orders_2_cel043, 2 },
    /* 002 */ { marching_orders_2_cel044, 2 },
    /* 003 */ { marching_orders_2_cel045, 2 },
    /* 004 */ { marching_orders_2_cel046, 40 },
    /* End */ END_ANIMATION
};

// [D_088f2b04] Marcher - Step Left (Body)
struct Animation anim_marching2_step_l[] = {
    /* 000 */ { marching_orders_2_cel042, 2 },
    /* 001 */ { marching_orders_2_cel047, 2 },
    /* 002 */ { marching_orders_2_cel048, 2 },
    /* 003 */ { marching_orders_2_cel049, 2 },
    /* 004 */ { marching_orders_2_cel050, 40 },
    /* End */ END_ANIMATION
};

// [D_088f2b34] Marcher - Turn Right (Head)
struct Animation anim_marching2_head_turn_r[] = {
    /* 000 */ { marching_orders_2_cel033, 10 },
    /* 001 */ { marching_orders_2_cel034, 4 },
    /* 002 */ { marching_orders_2_cel035, 4 },
    /* 003 */ { marching_orders_2_cel029, 30 },
    /* End */ END_ANIMATION
};

// [D_088f2b5c] Marcher - Turn Left (Head)
struct Animation anim_marching2_head_turn_l[] = {
    /* 000 */ { marching_orders_2_cel030, 10 },
    /* 001 */ { marching_orders_2_cel031, 4 },
    /* 002 */ { marching_orders_2_cel032, 4 },
    /* 003 */ { marching_orders_2_cel029, 30 },
    /* End */ END_ANIMATION
};

// [D_088f2b84] Tutorial Icons
struct Animation anim_marching2_tutorial_icons[] = {
    /* 000 */ { marching_orders_2_cel051, 40 },
    /* 001 */ { marching_orders_2_cel053, 40 },
    /* 002 */ { marching_orders_2_cel054, 40 },
    /* End */ END_ANIMATION
};

// [D_088f2ba4] "Start to Skip" Tutorial Icon (Unused)
struct Animation anim_marching2_tutorial_skip_icon[] = {
    /* 000 */ { marching_orders_2_cel052, 4 },
    /* End */ END_ANIMATION
};

// [D_088f2bb4] Bunny Commander Frustration Cloud
struct Animation anim_marching2_angry_puff[] = {
    /* 000 */ { marching_orders_2_cel055, 4 },
    /* 001 */ { marching_orders_2_cel056, 5 },
    /* 002 */ { marching_orders_2_cel057, 4 },
    /* 003 */ { marching_orders_2_cel058, 4 },
    /* 004 */ { marching_orders_2_cel059, 4 },
    /* 005 */ { marching_orders_2_cel060, 4 },
    /* End */ END_ANIMATION
};

// [D_088f2bec] Bunny Commander - Annoyed
struct Animation anim_marching2_commander_annoyed[] = {
    /* 000 */ { marching_orders_2_cel061, 30 },
    /* 001 */ { marching_orders_2_cel062, 6 },
    /* 002 */ { marching_orders_2_cel000, 6 },
    /* End */ END_ANIMATION
};
