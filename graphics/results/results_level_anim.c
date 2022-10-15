#include "global.h"
#include "graphics.h"

#include "results_level_anim_cells.inc.c"

// [D_0890b6ac] Placeholder Header ("nori-kan check")
const struct Animation results_level_anim00[] = {
    /* 000 */ { results_level_cel000, 4 },
    /* End */ END_ANIMATION
};

// [D_0890b6bc] Result Icon { 0 = OK; 1 = Try Again; 2 = Superb }
const struct Animation results_level_anim01[] = {
    /* 000 */ { results_level_cel001, 90 },
    /* 001 */ { results_level_cel002, 90 },
    /* 002 */ { results_level_cel003, 90 },
    /* End */ END_ANIMATION
};

// [D_0890b6dc] Positive Reinforcement Text Bubble
const struct Animation results_level_anim02[] = {
    /* 000 */ { results_level_cel007, 4 },
    /* End */ END_ANIMATION
};

// [D_0890b6ec] Header Text Box
const struct Animation results_level_anim03[] = {
    /* 000 */ { results_level_cel008, 4 },
    /* End */ END_ANIMATION
};

// [D_0890b6fc] Header Text Box Mask
const struct Animation results_level_anim04[] = {
    /* 000 */ { results_level_cel009, 4 },
    /* End */ END_ANIMATION
};

// [D_0890b70c] "Medal Get!"
const struct Animation results_level_anim05[] = {
    /* 000 */ { results_level_cel004, 30 },
    /* 001 */ { results_level_cel005, 20 },
    /* End */ END_ANIMATION
};

// [D_0890b724] "‚Å‚à" ("but")
const struct Animation results_level_anim06[] = {
    /* 000 */ { results_level_cel006, 4 },
    /* End */ END_ANIMATION
};
