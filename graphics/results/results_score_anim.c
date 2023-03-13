#include "global.h"
#include "graphics.h"

#include "results_score_anim_cells.inc.c"

// [D_0890bb68] Score Digits
struct Animation anim_score_results_num[] = {
    /* 000 */ { results_score_cel000, 40 },
    /* 001 */ { results_score_cel001, 40 },
    /* 002 */ { results_score_cel002, 40 },
    /* 003 */ { results_score_cel003, 40 },
    /* 004 */ { results_score_cel004, 40 },
    /* 005 */ { results_score_cel005, 40 },
    /* 006 */ { results_score_cel006, 40 },
    /* 007 */ { results_score_cel007, 40 },
    /* 008 */ { results_score_cel008, 40 },
    /* 009 */ { results_score_cel009, 40 },
    /* End */ END_ANIMATION
};

// [D_0890bbc0] Score Digit One
struct Animation anim_score_results_num_one[] = {
    /* 000 */ { results_score_cel001, 4 },
    /* End */ END_ANIMATION
};

// [D_0890bbd0] Score Digit Zero
struct Animation anim_score_results_num_zero1[] = {
    /* 000 */ { results_score_cel000, 4 },
    /* End */ END_ANIMATION
};

// [D_0890bbe0] Score Digit Zero
struct Animation anim_score_results_num_zero2[] = {
    /* 000 */ { results_score_cel000, 4 },
    /* End */ END_ANIMATION
};

// [D_0890bbf0] "Points"
struct Animation anim_score_results_points_label[] = {
    /* 000 */ { results_score_cel010, 4 },
    /* End */ END_ANIMATION
};

// [D_0890bc00] Score Decimal Digits
struct Animation anim_score_results_dec_num[] = {
    /* 000 */ { results_score_cel011, 40 },
    /* 001 */ { results_score_cel012, 40 },
    /* 002 */ { results_score_cel013, 40 },
    /* 003 */ { results_score_cel014, 40 },
    /* 004 */ { results_score_cel015, 40 },
    /* 005 */ { results_score_cel016, 40 },
    /* 006 */ { results_score_cel017, 40 },
    /* 007 */ { results_score_cel018, 40 },
    /* 008 */ { results_score_cel019, 40 },
    /* 009 */ { results_score_cel020, 40 },
    /* End */ END_ANIMATION
};
