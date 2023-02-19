#include "global.h"
#include "graphics.h"

#include "polyrhythm_anim_cells.inc.c"

// [D_088f60f4] Layout/Spacing Demonstration (Upside)
const struct Animation anim_polyrhythm_test_upside[] = {
    /* 000 */ { polyrhythm_cel000, 4 },
    /* End */ END_ANIMATION
};

// [D_088f6104] Layout/Spacing Demonstration (Downside)
const struct Animation anim_polyrhythm_test_downside[] = {
    /* 000 */ { polyrhythm_cel001, 4 },
    /* End */ END_ANIMATION
};

// [D_088f6114] Rolling Rod
const struct Animation anim_polyrhythm_rod[] = {
    /* 000 */ { polyrhythm_cel020, 3 },
    /* 001 */ { polyrhythm_cel021, 3 },
    /* 002 */ { polyrhythm_cel022, 3 },
    /* 003 */ { polyrhythm_cel023, 3 },
    /* 004 */ { polyrhythm_cel024, 3 },
    /* 005 */ { polyrhythm_cel025, 3 },
    /* 006 */ { polyrhythm_cel026, 3 },
    /* 007 */ { polyrhythm_cel027, 3 },
    /* End */ END_ANIMATION
};

// [D_088f615c] Large Up Arrow (Unused)
const struct Animation anim_polyrhythm_arrow_large[] = {
    /* 000 */ { polyrhythm_cel032, 4 },
    /* End */ END_ANIMATION
};

// [D_088f616c] Upside Piston
const struct Animation anim_polyrhythm_upside_piston[] = {
    /* 000 */ { polyrhythm_cel003, 40 },
    /* 001 */ { polyrhythm_cel008, 1 },
    /* 002 */ { polyrhythm_cel009, 1 },
    /* 003 */ { polyrhythm_cel010, 1 },
    /* 004 */ { polyrhythm_cel011, 40 },
    /* 005 */ { polyrhythm_cel013, 3 },
    /* 006 */ { polyrhythm_cel012, 40 },
    /* End */ END_ANIMATION
};

// [D_088f61ac] Downside Piston
const struct Animation anim_polyrhythm_downside_piston[] = {
    /* 000 */ { polyrhythm_cel003, 40 },
    /* 001 */ { polyrhythm_cel014, 1 },
    /* 002 */ { polyrhythm_cel015, 1 },
    /* 003 */ { polyrhythm_cel016, 1 },
    /* 004 */ { polyrhythm_cel017, 40 },
    /* 005 */ { polyrhythm_cel019, 3 },
    /* 006 */ { polyrhythm_cel018, 40 },
    /* End */ END_ANIMATION
};

// [D_088f61ec] Starting Blocks Structure
const struct Animation anim_polyrhythm_world_start[] = {
    /* 000 */ { polyrhythm_cel002, 4 },
    /* End */ END_ANIMATION
};

// [D_088f61fc] Spawn Block
const struct Animation anim_polyrhythm_block[] = {
    /* 000 */ { polyrhythm_cel003, 40 },
    /* 001 */ { polyrhythm_cel004, 1 },
    /* 002 */ { polyrhythm_cel005, 1 },
    /* 003 */ { polyrhythm_cel006, 1 },
    /* 004 */ { polyrhythm_cel007, 40 },
    /* End */ END_ANIMATION
};

// [D_088f622c] Spawn Upside Piston
const struct Animation anim_polyrhythm_spawn_upside[] = {
    /* 000 */ { polyrhythm_cel003, 1 },
    /* 001 */ { polyrhythm_cel008, 1 },
    /* 002 */ { polyrhythm_cel009, 1 },
    /* 003 */ { polyrhythm_cel010, 1 },
    /* 004 */ { polyrhythm_cel011, 1 },
    /* End */ END_ANIMATION
};

// [D_088f625c] Spawn Downside Piston
const struct Animation anim_polyrhythm_spawn_downside[] = {
    /* 000 */ { polyrhythm_cel003, 1 },
    /* 001 */ { polyrhythm_cel014, 1 },
    /* 002 */ { polyrhythm_cel015, 1 },
    /* 003 */ { polyrhythm_cel016, 1 },
    /* 004 */ { polyrhythm_cel017, 1 },
    /* End */ END_ANIMATION
};

// [D_088f628c] Push Upside Piston
const struct Animation anim_polyrhythm_push_upside[] = {
    /* 000 */ { polyrhythm_cel013, 3 },
    /* 001 */ { polyrhythm_cel012, 40 },
    /* End */ END_ANIMATION
};

// [D_088f62a4] Push Downside Piston
const struct Animation anim_polyrhythm_push_downside[] = {
    /* 000 */ { polyrhythm_cel019, 3 },
    /* 001 */ { polyrhythm_cel018, 40 },
    /* End */ END_ANIMATION
};

// [D_088f62bc] Rod Explosion
const struct Animation anim_polyrhythm_rod_explode[] = {
    /* 000 */ { polyrhythm_cel028, 2 },
    /* 001 */ { polyrhythm_cel029, 2 },
    /* 002 */ { polyrhythm_cel030, 2 },
    /* 003 */ { polyrhythm_cel031, 2 },
    /* End */ END_ANIMATION
};

// [D_088f62e4] Button Signs
const struct Animation anim_polyrhythm_signs[] = {
    /* 000 */ { polyrhythm_cel033, 4 },
    /* 001 */ { polyrhythm_cel034, 4 },
    /* End */ END_ANIMATION
};

// [D_088f62fc] Up Arrow (A Button)
const struct Animation anim_polyrhythm_arrow_a[] = {
    /* 000 */ { polyrhythm_cel035, 3 },
    /* 001 */ { polyrhythm_cel036, 3 },
    /* 002 */ { polyrhythm_cel037, 20 },
    /* End */ END_ANIMATION
};

// [D_088f631c] Up Arrow (D-Pad)
const struct Animation anim_polyrhythm_arrow_dpad[] = {
    /* 000 */ { polyrhythm_cel038, 3 },
    /* 001 */ { polyrhythm_cel039, 3 },
    /* 002 */ { polyrhythm_cel040, 20 },
    /* End */ END_ANIMATION
};
