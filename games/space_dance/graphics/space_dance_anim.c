#include "global.h"
#include "graphics.h"

#include "space_dance_anim_cells.inc.c"

// [D_0891249c] Dancer - Turn Right (Input)
struct Animation anim_space_dancer_right[] = {
    /* 000 */ { space_dance_cel010, 10 },
    /* 001 */ { space_dance_cel009, 3 },
    /* 002 */ { space_dance_cel008, 3 },
    /* 003 */ { space_dance_cel007, 3 },
    /* 004 */ { space_dance_cel006, 3 },
    /* 005 */ { space_dance_cel005, 3 },
    /* 006 */ { space_dance_cel004, 3 },
    /* 007 */ { space_dance_cel003, 20 },
    /* End */ END_ANIMATION
};

// [D_089124e4] Dancer - Pa-Pa-Pa-Punch (Input)
struct Animation anim_space_dancer_punch[] = {
    /* 000 */ { space_dance_cel011, 10 },
    /* 001 */ { space_dance_cel012, 3 },
    /* 002 */ { space_dance_cel013, 3 },
    /* 003 */ { space_dance_cel014, 3 },
    /* 004 */ { space_dance_cel015, 3 },
    /* 005 */ { space_dance_cel016, 1 },
    /* 006 */ { space_dance_cel017, 1 },
    /* 007 */ { space_dance_cel018, 15 },
    /* End */ END_ANIMATION
};

// [D_0891252c] Dancer - Let's Sit Down (Input)
struct Animation anim_space_dancer_down[] = {
    /* 000 */ { space_dance_cel020, 10 },
    /* 001 */ { space_dance_cel021, 3 },
    /* 002 */ { space_dance_cel022, 3 },
    /* 003 */ { space_dance_cel023, 3 },
    /* 004 */ { space_dance_cel024, 3 },
    /* 005 */ { space_dance_cel026, 2 },
    /* 006 */ { space_dance_cel025, 2 },
    /* 007 */ { space_dance_cel003, 20 },
    /* End */ END_ANIMATION
};

// [D_08912574] Dancer - Let's Sit Down (Input, Reversed)
struct Animation anim_space_dancer_down_rev[] = {
    /* 000 */ { space_dance_cel003, 20 },
    /* 001 */ { space_dance_cel024, 4 },
    /* 002 */ { space_dance_cel023, 4 },
    /* 003 */ { space_dance_cel022, 4 },
    /* 004 */ { space_dance_cel020, 4 },
    /* End */ END_ANIMATION
};

// [D_089125a4] Space Gramps - Beat
struct Animation anim_space_gramps_beat[] = {
    /* 000 */ { space_dance_cel027, 3 },
    /* 001 */ { space_dance_cel028, 3 },
    /* 002 */ { space_dance_cel029, 30 },
    /* End */ END_ANIMATION
};

// [D_089125c4] Speech Bubble - Down
struct Animation anim_space_gramps_instruct_down[] = {
    /* 000 */ { space_dance_cel033, 20 },
    /* 001 */ { space_dance_cel035, 16 },
    /* 002 */ { space_dance_cel000, 20 },
    /* End */ END_ANIMATION
};

// [D_089125e4] Speech Bubble - Punch
struct Animation anim_space_gramps_instruct_punch[] = {
    /* 000 */ { space_dance_cel034, 20 },
    /* 001 */ { space_dance_cel036, 16 },
    /* 002 */ { space_dance_cel000, 20 },
    /* End */ END_ANIMATION
};

// [D_08912604] Speech Bubble - Right
struct Animation anim_space_gramps_instruct_right[] = {
    /* 000 */ { space_dance_cel034, 20 },
    /* 001 */ { space_dance_cel037, 16 },
    /* 002 */ { space_dance_cel000, 20 },
    /* End */ END_ANIMATION
};

// [D_08912624] Dancer Spacing Test - Right
struct Animation anim_space_dancer_test_right[] = {
    /* 000 */ { space_dance_cel038, 4 },
    /* End */ END_ANIMATION
};

// [D_08912634] Dancer Spacing Test - Punch
struct Animation anim_space_dancer_test_punch[] = {
    /* 000 */ { space_dance_cel039, 4 },
    /* End */ END_ANIMATION
};

// [D_08912644] Dancer Spacing Test - Down
struct Animation anim_space_dancer_test_down[] = {
    /* 000 */ { space_dance_cel040, 4 },
    /* End */ END_ANIMATION
};

// [D_08912654] Dancer Spacing Test - All
struct Animation anim_space_dancer_test_all[] = {
    /* 000 */ { space_dance_cel038, 40 },
    /* 001 */ { space_dance_cel039, 40 },
    /* 002 */ { space_dance_cel040, 40 },
    /* End */ END_ANIMATION
};

// [D_08912674] Dancer - Beat
struct Animation anim_space_dancer_beat[] = {
    /* 000 */ { space_dance_cel001, 3 },
    /* 001 */ { space_dance_cel002, 3 },
    /* 002 */ { space_dance_cel003, 30 },
    /* End */ END_ANIMATION
};

// [D_08912694] Dancer - Hurt
struct Animation anim_space_dancer_hurt[] = {
    /* 000 */ { space_dance_cel003, 3 },
    /* 001 */ { space_dance_cel042, 3 },
    /* 002 */ { space_dance_cel043, 3 },
    /* 003 */ { space_dance_cel044, 3 },
    /* 004 */ { space_dance_cel045, 20 },
    /* End */ END_ANIMATION
};

// [D_089126c4] Dancer - Turn Right (Cue)
struct Animation anim_space_dancer_right_cue[] = {
    /* 000 */ { space_dance_cel046, 3 },
    /* 001 */ { space_dance_cel047, 3 },
    /* 002 */ { space_dance_cel048, 3 },
    /* 003 */ { space_dance_cel049, 20 },
    /* End */ END_ANIMATION
};

// [D_089126ec] Dancer - Pa-Pa-Pa-Punch (Cue, Unused Version)
struct Animation anim_space_dancer_punch_cue[] = {
    /* 000 */ { space_dance_cel050, 2 },
    /* 001 */ { space_dance_cel051, 2 },
    /* 002 */ { space_dance_cel052, 2 },
    /* 003 */ { space_dance_cel052, 2 },
    /* 004 */ { space_dance_cel053, 2 },
    /* 005 */ { space_dance_cel054, 2 },
    /* 006 */ { space_dance_cel053, 2 },
    /* 007 */ { space_dance_cel052, 2 },
    /* 008 */ { space_dance_cel051, 2 },
    /* 009 */ { space_dance_cel050, 2 },
    /* 010 */ { space_dance_cel056, 2 },
    /* 011 */ { space_dance_cel057, 2 },
    /* 012 */ { space_dance_cel058, 2 },
    /* 013 */ { space_dance_cel057, 2 },
    /* 014 */ { space_dance_cel056, 2 },
    /* 015 */ { space_dance_cel050, 2 },
    /* 016 */ { space_dance_cel051, 2 },
    /* 017 */ { space_dance_cel052, 2 },
    /* 018 */ { space_dance_cel052, 2 },
    /* 019 */ { space_dance_cel053, 2 },
    /* 020 */ { space_dance_cel054, 20 },
    /* End */ END_ANIMATION
};

// [D_0891279c] Dancer - Let's Sit Down (Cue)
struct Animation anim_space_dancer_down_cue[] = {
    /* 000 */ { space_dance_cel059, 3 },
    /* 001 */ { space_dance_cel060, 3 },
    /* 002 */ { space_dance_cel061, 3 },
    /* 003 */ { space_dance_cel062, 3 },
    /* 004 */ { space_dance_cel063, 20 },
    /* End */ END_ANIMATION
};

// [D_089127cc] Dancer - Pa-Pa-Pa-Punch (Cue, Part 1)
struct Animation anim_space_dancer_punch_cue1[] = {
    /* 000 */ { space_dance_cel052, 3 },
    /* 001 */ { space_dance_cel051, 2 },
    /* 002 */ { space_dance_cel050, 30 },
    /* End */ END_ANIMATION
};

// [D_089127ec] Dancer - Pa-Pa-Pa-Punch (Cue, Part 2)
struct Animation anim_space_dancer_punch_cue2[] = {
    /* 000 */ { space_dance_cel056, 3 },
    /* 001 */ { space_dance_cel055, 2 },
    /* 002 */ { space_dance_cel050, 30 },
    /* End */ END_ANIMATION
};

// [D_0891280c] Dancer Impact Effect
struct Animation anim_space_dancer_hurt_effect[] = {
    /* 000 */ { space_dance_cel064, 2 },
    /* 001 */ { space_dance_cel065, 2 },
    /* 002 */ { space_dance_cel066, 2 },
    /* 003 */ { space_dance_cel000, 40 },
    /* End */ END_ANIMATION
};

// [D_08912834] Blank
struct Animation anim_space_dance_blank1[] = {
    /* 000 */ { space_dance_cel067, 4 },
    /* End */ END_ANIMATION
};

// [D_08912844] Tutorial Icons
struct Animation anim_space_dance_tutorial_icons[] = {
    /* 000 */ { space_dance_cel000, 50 },
    /* 001 */ { space_dance_cel068, 50 },
    /* 002 */ { space_dance_cel069, 50 },
    /* 003 */ { space_dance_cel070, 50 },
    /* 004 */ { space_dance_cel071, 50 },
    /* End */ END_ANIMATION
};

// [D_08912874] Sparkle
struct Animation anim_space_dance_sparkle[] = {
    /* 000 */ { space_dance_cel072, 6 },
    /* 001 */ { space_dance_cel073, 6 },
    /* 002 */ { space_dance_cel074, 6 },
    /* 003 */ { space_dance_cel075, 6 },
    /* 004 */ { space_dance_cel000, 20 },
    /* End */ END_ANIMATION
};

// [D_089128a4] Blank
struct Animation anim_space_dance_blank2[] = {
    /* 000 */ { space_dance_cel077, 20 },
    /* 001 */ { space_dance_cel079, 4 },
    /* 002 */ { space_dance_cel080, 3 },
    /* 003 */ { space_dance_cel081, 2 },
    /* End */ END_ANIMATION
};

// [D_089128cc] Space Gramps - Turn Right (Input)
struct Animation anim_space_gramps_right[] = {
    /* 000 */ { space_dance_cel030, 10 },
    /* 001 */ { space_dance_cel031, 3 },
    /* 002 */ { space_dance_cel032, 3 },
    /* 003 */ { space_dance_cel082, 3 },
    /* 004 */ { space_dance_cel083, 3 },
    /* 005 */ { space_dance_cel084, 3 },
    /* 006 */ { space_dance_cel085, 3 },
    /* 007 */ { space_dance_cel027, 20 },
    /* End */ END_ANIMATION
};

// [D_08912914] Space Gramps - Turn Right (Cue)
struct Animation anim_space_gramps_right_cue[] = {
    /* 000 */ { space_dance_cel086, 3 },
    /* 001 */ { space_dance_cel087, 3 },
    /* 002 */ { space_dance_cel088, 3 },
    /* 003 */ { space_dance_cel089, 20 },
    /* End */ END_ANIMATION
};

// [D_0891293c] Space Gramps - Pa-Pa-Pa-Punch (Input)
struct Animation anim_space_gramps_punch[] = {
    /* 000 */ { space_dance_cel090, 10 },
    /* 001 */ { space_dance_cel091, 3 },
    /* 002 */ { space_dance_cel092, 3 },
    /* 003 */ { space_dance_cel093, 3 },
    /* 004 */ { space_dance_cel094, 3 },
    /* 005 */ { space_dance_cel095, 1 },
    /* 006 */ { space_dance_cel096, 1 },
    /* 007 */ { space_dance_cel097, 15 },
    /* End */ END_ANIMATION
};

// [D_08912984] Space Gramps - Pa-Pa-Pa-Punch (Cue, Unused Version)
struct Animation anim_space_gramps_punch_cue[] = {
    /* 000 */ { space_dance_cel097, 2 },
    /* 001 */ { space_dance_cel098, 2 },
    /* 002 */ { space_dance_cel099, 2 },
    /* 003 */ { space_dance_cel100, 2 },
    /* 004 */ { space_dance_cel101, 2 },
    /* 005 */ { space_dance_cel102, 2 },
    /* 006 */ { space_dance_cel101, 2 },
    /* 007 */ { space_dance_cel100, 2 },
    /* 008 */ { space_dance_cel098, 2 },
    /* 009 */ { space_dance_cel097, 2 },
    /* 010 */ { space_dance_cel103, 2 },
    /* 011 */ { space_dance_cel104, 2 },
    /* 012 */ { space_dance_cel105, 2 },
    /* 013 */ { space_dance_cel106, 2 },
    /* 014 */ { space_dance_cel107, 2 },
    /* 015 */ { space_dance_cel097, 2 },
    /* 016 */ { space_dance_cel098, 2 },
    /* 017 */ { space_dance_cel099, 2 },
    /* 018 */ { space_dance_cel100, 2 },
    /* 019 */ { space_dance_cel101, 2 },
    /* 020 */ { space_dance_cel102, 20 },
    /* End */ END_ANIMATION
};

// [D_08912a34] Space Gramps - Let's Sit Down (Input)
struct Animation anim_space_gramps_down[] = {
    /* 000 */ { space_dance_cel108, 10 },
    /* 001 */ { space_dance_cel109, 3 },
    /* 002 */ { space_dance_cel110, 3 },
    /* 003 */ { space_dance_cel111, 3 },
    /* 004 */ { space_dance_cel112, 3 },
    /* 005 */ { space_dance_cel027, 2 },
    /* 006 */ { space_dance_cel028, 2 },
    /* 007 */ { space_dance_cel029, 20 },
    /* End */ END_ANIMATION
};

// [D_08912a7c] Space Gramps - Let's Sit Down (Cue)
struct Animation anim_space_gramps_down_cue[] = {
    /* 000 */ { space_dance_cel027, 3 },
    /* 001 */ { space_dance_cel028, 3 },
    /* 002 */ { space_dance_cel029, 3 },
    /* 003 */ { space_dance_cel114, 3 },
    /* 004 */ { space_dance_cel115, 20 },
    /* End */ END_ANIMATION
};

// [D_08912aac] Space Gramps - Pa-Pa-Pa-Punch (Cue, Part 1)
struct Animation anim_space_gramps_punch_cue1[] = {
    /* 000 */ { space_dance_cel102, 2 },
    /* 001 */ { space_dance_cel101, 2 },
    /* 002 */ { space_dance_cel100, 2 },
    /* 003 */ { space_dance_cel098, 1 },
    /* 004 */ { space_dance_cel097, 1 },
    /* 005 */ { space_dance_cel103, 1 },
    /* 006 */ { space_dance_cel104, 50 },
    /* End */ END_ANIMATION
};

// [D_08912aec] Space Gramps - Pa-Pa-Pa-Punch (Cue, Part 2)
struct Animation anim_space_gramps_punch_cue2[] = {
    /* 000 */ { space_dance_cel107, 2 },
    /* 001 */ { space_dance_cel106, 2 },
    /* 002 */ { space_dance_cel105, 2 },
    /* 003 */ { space_dance_cel104, 1 },
    /* 004 */ { space_dance_cel103, 1 },
    /* 005 */ { space_dance_cel097, 1 },
    /* 006 */ { space_dance_cel098, 50 },
    /* End */ END_ANIMATION
};

// [D_08912b2c] Space Gramps - Speaking
struct Animation anim_space_gramps_speak[] = {
    /* 000 */ { space_dance_cel029, 20 },
    /* 001 */ { space_dance_cel117, 10 },
    /* 002 */ { space_dance_cel029, 10 },
    /* 003 */ { space_dance_cel117, 10 },
    /* 004 */ { space_dance_cel029, 8 },
    /* 005 */ { space_dance_cel117, 5 },
    /* 006 */ { space_dance_cel029, 20 },
    /* 007 */ { space_dance_cel117, 10 },
    /* 008 */ { space_dance_cel029, 5 },
    /* 009 */ { space_dance_cel117, 7 },
    /* End */ END_ANIMATION
};

// [D_08912b84] Space Gramps - Blinking
struct Animation anim_space_gramps_blink[] = {
    /* 000 */ { space_dance_cel029, 60 },
    /* 001 */ { space_dance_cel116, 8 },
    /* 002 */ { space_dance_cel029, 80 },
    /* 003 */ { space_dance_cel116, 4 },
    /* 004 */ { space_dance_cel029, 10 },
    /* 005 */ { space_dance_cel116, 4 },
    /* End */ END_ANIMATION
};

// [D_08912bbc] Space Gramps - Beat (Miss)
struct Animation anim_space_gramps_frown[] = {
    /* 000 */ { space_dance_cel118, 3 },
    /* 001 */ { space_dance_cel119, 3 },
    /* 002 */ { space_dance_cel120, 30 },
    /* End */ END_ANIMATION
};

// [D_08912bdc] Space Gramps - Beat (Barely)
struct Animation anim_space_gramps_raise_brow[] = {
    /* 000 */ { space_dance_cel121, 3 },
    /* 001 */ { space_dance_cel122, 3 },
    /* 002 */ { space_dance_cel123, 30 },
    /* End */ END_ANIMATION
};
