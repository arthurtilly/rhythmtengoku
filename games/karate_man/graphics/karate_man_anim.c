#include "global.h"
#include "graphics.h"

#include "karate_man_anim_cells.inc.c"

// [D_088acc2c] Karate Joe - Standing
struct Animation anim_karate_joe_stand[] = {
    /* 000 */ { karate_man_cel000, 24 },
    /* End */ END_ANIMATION
};

// [D_088acc3c] Object { Pot, Rock, Soccer Ball, Bomb, Light Bulb }
struct Animation anim_karate_object[] = {
    /* 000 */ { karate_man_cel035, 40 },
    /* 001 */ { karate_man_cel039, 40 },
    /* 002 */ { karate_man_cel037, 40 },
    /* 003 */ { karate_man_cel038, 40 },
    /* 004 */ { karate_man_cel036, 40 },
    /* End */ END_ANIMATION
};

// [D_088acc6c] Object Shadow
struct Animation anim_karate_object_shadow[] = {
    /* 000 */ { karate_man_cel040, 4 },
    /* End */ END_ANIMATION
};

// [D_088acc7c] Object Shards
struct Animation anim_karate_object_shards[] = {
    /* 000 */ { karate_man_cel041, 40 },
    /* 001 */ { karate_man_cel042, 40 },
    /* End */ END_ANIMATION
};

// [D_088acc94] Karate Joe - Punch (High Flow)
struct Animation anim_karate_joe_punch_high[] = {
    /* 000 */ { karate_man_cel020, 1 },
    /* 001 */ { karate_man_cel019, 3 },
    /* 002 */ { karate_man_cel021, 2 },
    /* 003 */ { karate_man_cel022, 2 },
    /* 004 */ { karate_man_cel023, 2 },
    /* 005 */ { karate_man_cel002, 1 },
    /* 006 */ { karate_man_cel001, 1 },
    /* 007 */ { karate_man_cel000, 15 },
    /* End */ END_ANIMATION
};

// [D_088accdc] Karate Joe - Beat
struct Animation anim_karate_joe_beat[] = {
    /* 000 */ { karate_man_cel002, 3 },
    /* 001 */ { karate_man_cel001, 3 },
    /* 002 */ { karate_man_cel000, 24 },
    /* End */ END_ANIMATION
};

// [D_088accfc] Hit Effect
struct Animation anim_karate_hit_effect[] = {
    /* 000 */ { karate_man_cel043, 2 },
    /* End */ END_ANIMATION
};

// [D_088acd0c] Karate Joe - Very Sad
struct Animation anim_karate_joe_sad[] = {
    /* 000 */ { karate_man_cel027, 4 },
    /* End */ END_ANIMATION
};

// [D_088acd1c] Flow Gauge
struct Animation anim_karate_flow_meter[] = {
    /* 000 */ { karate_man_cel044, 40 },
    /* 001 */ { karate_man_cel045, 40 },
    /* 002 */ { karate_man_cel046, 40 },
    /* 003 */ { karate_man_cel047, 40 },
    /* 004 */ { karate_man_cel048, 40 },
    /* 005 */ { karate_man_cel049, 40 },
    /* End */ END_ANIMATION
};

// [D_088acd54] Karate Joe - Punch (Low Flow)
struct Animation anim_karate_joe_punch_low[] = {
    /* 000 */ { karate_man_cel015, 4 },
    /* 001 */ { karate_man_cel016, 2 },
    /* 002 */ { karate_man_cel017, 2 },
    /* 003 */ { karate_man_cel018, 2 },
    /* 004 */ { karate_man_cel002, 1 },
    /* 005 */ { karate_man_cel001, 1 },
    /* 006 */ { karate_man_cel000, 40 },
    /* End */ END_ANIMATION
};

// [D_088acd94] Karate Joe - Barely
struct Animation anim_karate_joe_barely[] = {
    /* 000 */ { karate_man_cel005, 3 },
    /* 001 */ { karate_man_cel004, 3 },
    /* 002 */ { karate_man_cel003, 24 },
    /* End */ END_ANIMATION
};

// [D_088acdb4] Karate Joe - Miss
struct Animation anim_karate_joe_miss[] = {
    /* 000 */ { karate_man_cel008, 3 },
    /* 001 */ { karate_man_cel007, 3 },
    /* 002 */ { karate_man_cel006, 24 },
    /* End */ END_ANIMATION
};

// [D_088acdd4] Karate Joe - Smirk
struct Animation anim_karate_joe_smirk[] = {
    /* 000 */ { karate_man_cel011, 3 },
    /* 001 */ { karate_man_cel010, 3 },
    /* 002 */ { karate_man_cel009, 24 },
    /* End */ END_ANIMATION
};

// [D_088acdf4] Karate Joe - Happy
struct Animation anim_karate_joe_happy[] = {
    /* 000 */ { karate_man_cel014, 3 },
    /* 001 */ { karate_man_cel013, 3 },
    /* 002 */ { karate_man_cel012, 24 },
    /* End */ END_ANIMATION
};

// [D_088ace14] Karate Joe - Hurt Hand
struct Animation anim_karate_joe_punch_ouch[] = {
    /* 000 */ { karate_man_cel024, 3 },
    /* 001 */ { karate_man_cel025, 2 },
    /* 002 */ { karate_man_cel026, 2 },
    /* 003 */ { karate_man_cel025, 2 },
    /* 004 */ { karate_man_cel026, 2 },
    /* 005 */ { karate_man_cel025, 2 },
    /* 006 */ { karate_man_cel026, 2 },
    /* 007 */ { karate_man_cel025, 2 },
    /* 008 */ { karate_man_cel026, 2 },
    /* 009 */ { karate_man_cel025, 2 },
    /* 010 */ { karate_man_cel026, 2 },
    /* 011 */ { karate_man_cel025, 2 },
    /* 012 */ { karate_man_cel026, 20 },
    /* End */ END_ANIMATION
};

// [D_088ace84] Placeholder Flow Gauge
struct Animation anim_karate_flow_meter_test1[] = {
    /* 000 */ { karate_man_cel050, 4 },
    /* 001 */ { karate_man_cel051, 4 },
    /* 002 */ { karate_man_cel052, 4 },
    /* 003 */ { karate_man_cel053, 4 },
    /* 004 */ { karate_man_cel054, 4 },
    /* 005 */ { karate_man_cel055, 4 },
    /* 006 */ { karate_man_cel056, 4 },
    /* 007 */ { karate_man_cel057, 4 },
    /* 008 */ { karate_man_cel058, 4 },
    /* 009 */ { karate_man_cel059, 4 },
    /* 010 */ { karate_man_cel060, 4 },
    /* End */ END_ANIMATION
};

// [D_088acee4] Unused Light Bulbs
struct Animation anim_karate_flow_meter_test2[] = {
    /* 000 */ { karate_man_cel061, 4 },
    /* 001 */ { karate_man_cel062, 4 },
    /* 002 */ { karate_man_cel063, 4 },
    /* End */ END_ANIMATION
};

// [D_088acf04] Warning Text
struct Animation anim_karate_cue_warning[] = {
    /* 000 */ { karate_man_cel065, 40 },
    /* 001 */ { karate_man_cel066, 40 },
    /* 002 */ { karate_man_cel067, 40 },
    /* 003 */ { karate_man_cel064, 40 },
    /* End */ END_ANIMATION
};

// [D_088acf2c] A Button Prompt
struct Animation anim_karate_tutorial_text_button[] = {
    /* 000 */ { karate_man_cel069, 10 },
    /* 001 */ { karate_man_cel068, 30 },
    /* End */ END_ANIMATION
};

// [D_088acf44] "Start to Skip" Text
struct Animation anim_karate_tutorial_skip[] = {
    /* 000 */ { karate_man_cel070, 4 },
    /* End */ END_ANIMATION
};

// [D_088acf54] Tutorial Counter
struct Animation anim_karate_tutorial_counter[] = {
    /* 000 */ { karate_man_cel074, 40 },
    /* 001 */ { karate_man_cel071, 40 },
    /* 002 */ { karate_man_cel072, 40 },
    /* 003 */ { karate_man_cel073, 40 },
    /* End */ END_ANIMATION
};

// [D_088acf7c] Karate Joe - Smug (High Flow)
struct Animation anim_karate_joe_smug_high[] = {
    /* 000 */ { karate_man_cel020, 1 },
    /* 001 */ { karate_man_cel019, 3 },
    /* 002 */ { karate_man_cel021, 2 },
    /* 003 */ { karate_man_cel022, 2 },
    /* 004 */ { karate_man_cel023, 2 },
    /* 005 */ { karate_man_cel030, 1 },
    /* 006 */ { karate_man_cel029, 1 },
    /* 007 */ { karate_man_cel028, 15 },
    /* End */ END_ANIMATION
};

// [D_088acfc4] Karate Joe - Smug (Low Flow)
struct Animation anim_karate_joe_smug_low[] = {
    /* 000 */ { karate_man_cel031, 4 },
    /* 001 */ { karate_man_cel032, 2 },
    /* 002 */ { karate_man_cel033, 2 },
    /* 003 */ { karate_man_cel034, 2 },
    /* 004 */ { karate_man_cel030, 1 },
    /* 005 */ { karate_man_cel029, 1 },
    /* 006 */ { karate_man_cel028, 40 },
    /* End */ END_ANIMATION
};
