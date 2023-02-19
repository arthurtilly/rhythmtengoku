#include "global.h"
#include "graphics.h"

#include "cosmic_dance_anim_cells.inc.c"

// [D_088bc970] Dancer - Turn Right (Input)
struct Animation anim_cosmic_dancer_right[] = {
    /* 000 */ { cosmic_dance_cel010, 10 },
    /* 001 */ { cosmic_dance_cel009, 3 },
    /* 002 */ { cosmic_dance_cel008, 3 },
    /* 003 */ { cosmic_dance_cel007, 3 },
    /* 004 */ { cosmic_dance_cel006, 3 },
    /* 005 */ { cosmic_dance_cel005, 3 },
    /* 006 */ { cosmic_dance_cel004, 3 },
    /* 007 */ { cosmic_dance_cel003, 20 },
    /* End */ END_ANIMATION
};

// [D_088bc9b8] Dancer - Pa-Pa-Pa-Punch (Input)
struct Animation anim_cosmic_dancer_punch[] = {
    /* 000 */ { cosmic_dance_cel011, 10 },
    /* 001 */ { cosmic_dance_cel012, 3 },
    /* 002 */ { cosmic_dance_cel013, 3 },
    /* 003 */ { cosmic_dance_cel014, 3 },
    /* 004 */ { cosmic_dance_cel015, 3 },
    /* 005 */ { cosmic_dance_cel016, 1 },
    /* 006 */ { cosmic_dance_cel017, 1 },
    /* 007 */ { cosmic_dance_cel018, 15 },
    /* End */ END_ANIMATION
};

// [D_088bca00] Dancer - Let's Sit Down (Input)
struct Animation anim_cosmic_dancer_down[] = {
    /* 000 */ { cosmic_dance_cel020, 10 },
    /* 001 */ { cosmic_dance_cel021, 3 },
    /* 002 */ { cosmic_dance_cel022, 3 },
    /* 003 */ { cosmic_dance_cel023, 3 },
    /* 004 */ { cosmic_dance_cel024, 3 },
    /* 005 */ { cosmic_dance_cel026, 2 },
    /* 006 */ { cosmic_dance_cel025, 2 },
    /* 007 */ { cosmic_dance_cel003, 20 },
    /* End */ END_ANIMATION
};

// [D_088bca48] Dancer - Let's Sit Down (Input, Reversed)
struct Animation anim_cosmic_dancer_down_rev[] = {
    /* 000 */ { cosmic_dance_cel003, 20 },
    /* 001 */ { cosmic_dance_cel024, 4 },
    /* 002 */ { cosmic_dance_cel023, 4 },
    /* 003 */ { cosmic_dance_cel022, 4 },
    /* 004 */ { cosmic_dance_cel020, 4 },
    /* End */ END_ANIMATION
};

// [D_088bca78] Cosmic Girl - Stand
struct Animation anim_cosmic_girl_placeholder1[] = {
    /* 000 */ { cosmic_dance_cel027, 20 },
    /* End */ END_ANIMATION
};

// [D_088bca88] Speech Bubble - Down
struct Animation anim_cosmic_girl_instruct_down[] = {
    /* 000 */ { cosmic_dance_cel031, 20 },
    /* 001 */ { cosmic_dance_cel033, 16 },
    /* 002 */ { cosmic_dance_cel000, 20 },
    /* End */ END_ANIMATION
};

// [D_088bcaa8] Speech Bubble - Punch
struct Animation anim_cosmic_girl_instruct_punch[] = {
    /* 000 */ { cosmic_dance_cel032, 20 },
    /* 001 */ { cosmic_dance_cel034, 16 },
    /* 002 */ { cosmic_dance_cel000, 20 },
    /* End */ END_ANIMATION
};

// [D_088bcac8] Speech Bubble - Right
struct Animation anim_cosmic_girl_instruct_right[] = {
    /* 000 */ { cosmic_dance_cel032, 20 },
    /* 001 */ { cosmic_dance_cel035, 16 },
    /* 002 */ { cosmic_dance_cel000, 20 },
    /* End */ END_ANIMATION
};

// [D_088bcae8] Dancer Spacing Test - Right (Blank)
struct Animation anim_cosmic_dancer_test_right[] = {
    /* 000 */ { cosmic_dance_cel036, 4 },
    /* End */ END_ANIMATION
};

// [D_088bcaf8] Dancer Spacing Test - Punch (Blank)
struct Animation anim_cosmic_dancer_test_punch[] = {
    /* 000 */ { cosmic_dance_cel037, 4 },
    /* End */ END_ANIMATION
};

// [D_088bcb08] Dancer Spacing Test - Down (Blank)
struct Animation anim_cosmic_dancer_test_down[] = {
    /* 000 */ { cosmic_dance_cel038, 4 },
    /* End */ END_ANIMATION
};

// [D_088bcb18] Dancer Spacing Test - All (Blank)
struct Animation anim_cosmic_dancer_test_all[] = {
    /* 000 */ { cosmic_dance_cel036, 40 },
    /* 001 */ { cosmic_dance_cel037, 40 },
    /* 002 */ { cosmic_dance_cel038, 40 },
    /* End */ END_ANIMATION
};

// [D_088bcb38] Dancer - Beat
struct Animation anim_cosmic_dancer_beat[] = {
    /* 000 */ { cosmic_dance_cel001, 3 },
    /* 001 */ { cosmic_dance_cel002, 3 },
    /* 002 */ { cosmic_dance_cel003, 30 },
    /* End */ END_ANIMATION
};

// [D_088bcb58] Dancer - Hurt
struct Animation anim_cosmic_dancer_hurt[] = {
    /* 000 */ { cosmic_dance_cel003, 3 },
    /* 001 */ { cosmic_dance_cel040, 3 },
    /* 002 */ { cosmic_dance_cel041, 3 },
    /* 003 */ { cosmic_dance_cel042, 3 },
    /* 004 */ { cosmic_dance_cel043, 20 },
    /* End */ END_ANIMATION
};

// [D_088bcb88] Dancer - Turn Right (Cue)
struct Animation anim_cosmic_dancer_right_cue[] = {
    /* 000 */ { cosmic_dance_cel044, 3 },
    /* 001 */ { cosmic_dance_cel045, 3 },
    /* 002 */ { cosmic_dance_cel046, 3 },
    /* 003 */ { cosmic_dance_cel047, 20 },
    /* End */ END_ANIMATION
};

// [D_088bcbb0] Dancer - Pa-Pa-Pa-Punch (Cue, Unused Version)
struct Animation anim_cosmic_dancer_punch_cue[] = {
    /* 000 */ { cosmic_dance_cel048, 2 },
    /* 001 */ { cosmic_dance_cel049, 2 },
    /* 002 */ { cosmic_dance_cel050, 2 },
    /* 003 */ { cosmic_dance_cel050, 2 },
    /* 004 */ { cosmic_dance_cel051, 2 },
    /* 005 */ { cosmic_dance_cel052, 2 },
    /* 006 */ { cosmic_dance_cel051, 2 },
    /* 007 */ { cosmic_dance_cel050, 2 },
    /* 008 */ { cosmic_dance_cel049, 2 },
    /* 009 */ { cosmic_dance_cel048, 2 },
    /* 010 */ { cosmic_dance_cel054, 2 },
    /* 011 */ { cosmic_dance_cel055, 2 },
    /* 012 */ { cosmic_dance_cel056, 2 },
    /* 013 */ { cosmic_dance_cel055, 2 },
    /* 014 */ { cosmic_dance_cel054, 2 },
    /* 015 */ { cosmic_dance_cel048, 2 },
    /* 016 */ { cosmic_dance_cel049, 2 },
    /* 017 */ { cosmic_dance_cel050, 2 },
    /* 018 */ { cosmic_dance_cel050, 2 },
    /* 019 */ { cosmic_dance_cel051, 2 },
    /* 020 */ { cosmic_dance_cel052, 20 },
    /* End */ END_ANIMATION
};

// [D_088bcc60] Dancer - Let's Sit Down (Cue)
struct Animation anim_cosmic_dancer_down_cue[] = {
    /* 000 */ { cosmic_dance_cel057, 3 },
    /* 001 */ { cosmic_dance_cel058, 3 },
    /* 002 */ { cosmic_dance_cel059, 3 },
    /* 003 */ { cosmic_dance_cel060, 3 },
    /* 004 */ { cosmic_dance_cel061, 20 },
    /* End */ END_ANIMATION
};

// [D_088bcc90] Dancer - Pa-Pa-Pa-Punch (Cue, Part 1)
struct Animation anim_cosmic_dancer_punch_cue1[] = {
    /* 000 */ { cosmic_dance_cel050, 3 },
    /* 001 */ { cosmic_dance_cel049, 2 },
    /* 002 */ { cosmic_dance_cel048, 30 },
    /* End */ END_ANIMATION
};

// [D_088bccb0] Dancer - Pa-Pa-Pa-Punch (Cue, Part 2)
struct Animation anim_cosmic_dancer_punch_cue2[] = {
    /* 000 */ { cosmic_dance_cel054, 3 },
    /* 001 */ { cosmic_dance_cel053, 2 },
    /* 002 */ { cosmic_dance_cel048, 30 },
    /* End */ END_ANIMATION
};

// [D_088bccd0] Dancer Impact Effect
struct Animation anim_cosmic_dancer_hurt_effect[] = {
    /* 000 */ { cosmic_dance_cel062, 2 },
    /* 001 */ { cosmic_dance_cel063, 2 },
    /* 002 */ { cosmic_dance_cel064, 2 },
    /* 003 */ { cosmic_dance_cel000, 40 },
    /* End */ END_ANIMATION
};

// [D_088bccf8] Blank
struct Animation anim_cosmic_dance_blank1[] = {
    /* 000 */ { cosmic_dance_cel065, 4 },
    /* End */ END_ANIMATION
};

// [D_088bcd08] Tutorial Icons
struct Animation anim_cosmic_dance_tutorial_icons[] = {
    /* 000 */ { cosmic_dance_cel000, 50 },
    /* 001 */ { cosmic_dance_cel066, 50 },
    /* 002 */ { cosmic_dance_cel067, 50 },
    /* 003 */ { cosmic_dance_cel068, 50 },
    /* 004 */ { cosmic_dance_cel069, 50 },
    /* End */ END_ANIMATION
};

// [D_088bcd38] Sparkle
struct Animation anim_cosmic_dance_sparkle[] = {
    /* 000 */ { cosmic_dance_cel070, 6 },
    /* 001 */ { cosmic_dance_cel071, 6 },
    /* 002 */ { cosmic_dance_cel072, 6 },
    /* 003 */ { cosmic_dance_cel073, 6 },
    /* 004 */ { cosmic_dance_cel000, 20 },
    /* End */ END_ANIMATION
};

// [D_088bcd68] Blank
struct Animation anim_cosmic_dance_blank2[] = {
    /* 000 */ { cosmic_dance_cel075, 20 },
    /* 001 */ { cosmic_dance_cel077, 4 },
    /* 002 */ { cosmic_dance_cel078, 3 },
    /* 003 */ { cosmic_dance_cel079, 2 },
    /* End */ END_ANIMATION
};

// [D_088bcd90] Cosmic Girl - Stand (Duplicate)
struct Animation anim_cosmic_girl_placeholder2[] = {
    /* 000 */ { cosmic_dance_cel027, 20 },
    /* End */ END_ANIMATION
};

// [D_088bcda0] Cosmic Girl - Stand (Duplicate)
struct Animation anim_cosmic_girl_placeholder3[] = {
    /* 000 */ { cosmic_dance_cel027, 20 },
    /* End */ END_ANIMATION
};

// [D_088bcdb0] Cosmic Girl - Stand (Duplicate)
struct Animation anim_cosmic_girl_placeholder4[] = {
    /* 000 */ { cosmic_dance_cel027, 20 },
    /* End */ END_ANIMATION
};

// [D_088bcdc0] Cosmic Girl - Stand (Duplicate)
struct Animation anim_cosmic_girl_placeholder5[] = {
    /* 000 */ { cosmic_dance_cel027, 20 },
    /* End */ END_ANIMATION
};

// [D_088bcdd0] Cosmic Girl - Stand (Duplicate)
struct Animation anim_cosmic_girl_placeholder6[] = {
    /* 000 */ { cosmic_dance_cel027, 20 },
    /* End */ END_ANIMATION
};

// [D_088bcde0] Cosmic Girl - Stand (Duplicate)
struct Animation anim_cosmic_girl_placeholder7[] = {
    /* 000 */ { cosmic_dance_cel027, 20 },
    /* End */ END_ANIMATION
};

// [D_088bcdf0] Cosmic Girl - Stand (Duplicate)
struct Animation anim_cosmic_girl_placeholder8[] = {
    /* 000 */ { cosmic_dance_cel027, 20 },
    /* End */ END_ANIMATION
};

// [D_088bce00] Cosmic Girl - Beat
struct Animation anim_cosmic_girl_beat[] = {
    /* 000 */ { cosmic_dance_cel080, 3 },
    /* 001 */ { cosmic_dance_cel081, 3 },
    /* 002 */ { cosmic_dance_cel082, 30 },
    /* End */ END_ANIMATION
};

// [D_088bce20] Cosmic Girl - Turn Right (Input)
struct Animation anim_cosmic_girl_right[] = {
    /* 000 */ { cosmic_dance_cel083, 10 },
    /* 001 */ { cosmic_dance_cel084, 3 },
    /* 002 */ { cosmic_dance_cel085, 3 },
    /* 003 */ { cosmic_dance_cel086, 3 },
    /* 004 */ { cosmic_dance_cel087, 3 },
    /* 005 */ { cosmic_dance_cel088, 3 },
    /* 006 */ { cosmic_dance_cel089, 3 },
    /* 007 */ { cosmic_dance_cel082, 20 },
    /* End */ END_ANIMATION
};

// [D_088bce68] Cosmic Girl - Turn Right (Cue)
struct Animation anim_cosmic_girl_right_cue[] = {
    /* 000 */ { cosmic_dance_cel090, 3 },
    /* 001 */ { cosmic_dance_cel091, 3 },
    /* 002 */ { cosmic_dance_cel092, 3 },
    /* 003 */ { cosmic_dance_cel101, 20 },
    /* End */ END_ANIMATION
};

// [D_088bce90] Cosmic Girl - Pa-Pa-Pa-Punch (Input)
struct Animation anim_cosmic_girl_punch[] = {
    /* 000 */ { cosmic_dance_cel093, 10 },
    /* 001 */ { cosmic_dance_cel094, 3 },
    /* 002 */ { cosmic_dance_cel095, 3 },
    /* 003 */ { cosmic_dance_cel096, 3 },
    /* 004 */ { cosmic_dance_cel097, 3 },
    /* 005 */ { cosmic_dance_cel098, 1 },
    /* 006 */ { cosmic_dance_cel099, 1 },
    /* 007 */ { cosmic_dance_cel100, 15 },
    /* End */ END_ANIMATION
};

// [D_088bced8] Cosmic Girl - Pa-Pa-Pa-Punch (Cue, Part 1)
struct Animation anim_cosmic_girl_punch_cue1[] = {
    /* 000 */ { cosmic_dance_cel103, 3 },
    /* 001 */ { cosmic_dance_cel102, 2 },
    /* 002 */ { cosmic_dance_cel106, 30 },
    /* End */ END_ANIMATION
};

// [D_088bcef8] Cosmic Girl - Pa-Pa-Pa-Punch (Cue, Part 2)
struct Animation anim_cosmic_girl_punch_cue2[] = {
    /* 000 */ { cosmic_dance_cel104, 3 },
    /* 001 */ { cosmic_dance_cel105, 2 },
    /* 002 */ { cosmic_dance_cel106, 30 },
    /* End */ END_ANIMATION
};

// [D_088bcf18] Cosmic Girl - Let's Sit Down (Input)
struct Animation anim_cosmic_girl_down[] = {
    /* 000 */ { cosmic_dance_cel107, 10 },
    /* 001 */ { cosmic_dance_cel108, 3 },
    /* 002 */ { cosmic_dance_cel109, 3 },
    /* 003 */ { cosmic_dance_cel110, 3 },
    /* 004 */ { cosmic_dance_cel111, 3 },
    /* 005 */ { cosmic_dance_cel112, 2 },
    /* 006 */ { cosmic_dance_cel113, 2 },
    /* 007 */ { cosmic_dance_cel082, 20 },
    /* End */ END_ANIMATION
};

// [D_088bcf60] Cosmic Girl - Let's Sit Down (Cue)
struct Animation anim_cosmic_girl_down_cue[] = {
    /* 000 */ { cosmic_dance_cel114, 3 },
    /* 001 */ { cosmic_dance_cel115, 3 },
    /* 002 */ { cosmic_dance_cel116, 3 },
    /* 003 */ { cosmic_dance_cel117, 3 },
    /* 004 */ { cosmic_dance_cel118, 20 },
    /* End */ END_ANIMATION
};

// [D_088bcf90] Cosmic Girl - Beat (Miss)
struct Animation anim_cosmic_girl_frown[] = {
    /* 000 */ { cosmic_dance_cel119, 3 },
    /* 001 */ { cosmic_dance_cel120, 3 },
    /* 002 */ { cosmic_dance_cel121, 30 },
    /* End */ END_ANIMATION
};

// [D_088bcfb0] Cosmic Girl - Beat (Barely)
struct Animation anim_cosmic_girl_glare[] = {
    /* 000 */ { cosmic_dance_cel122, 3 },
    /* 001 */ { cosmic_dance_cel123, 3 },
    /* 002 */ { cosmic_dance_cel124, 30 },
    /* End */ END_ANIMATION
};
