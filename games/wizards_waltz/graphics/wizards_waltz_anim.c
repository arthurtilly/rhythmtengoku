#include "global.h"
#include "graphics.h"

#include "wizards_waltz_anim_cells.inc.c"

// [D_08932bec] Wizard - Fly
struct Animation anim_wizard_fly[] = {
    /* 000 */ { wizards_waltz_cel019, 2 },
    /* 001 */ { wizards_waltz_cel020, 2 },
    /* 002 */ { wizards_waltz_cel021, 2 },
    /* 003 */ { wizards_waltz_cel022, 2 },
    /* End */ END_ANIMATION
};

// [D_08932c14] Wizard - Cast Magic
struct Animation anim_wizard_cast_spell[] = {
    /* 000 */ { wizards_waltz_cel009, 6 },
    /* 001 */ { wizards_waltz_cel008, 2 },
    /* 002 */ { wizards_waltz_cel007, 2 },
    /* 003 */ { wizards_waltz_cel006, 2 },
    /* 004 */ { wizards_waltz_cel005, 2 },
    /* 005 */ { wizards_waltz_cel004, 2 },
    /* 006 */ { wizards_waltz_cel003, 2 },
    /* 007 */ { wizards_waltz_cel002, 2 },
    /* 008 */ { wizards_waltz_cel001, 2 },
    /* End */ END_ANIMATION
};

// [D_08932c64] Descending Magic Particle
struct Animation anim_wizard_spell_particle[] = {
    /* 000 */ { wizards_waltz_cel011, 4 },
    /* 001 */ { wizards_waltz_cel012, 4 },
    /* 002 */ { wizards_waltz_cel013, 4 },
    /* 003 */ { wizards_waltz_cel014, 4 },
    /* End */ END_ANIMATION
};

// [D_08932c8c] Wizard Sparkle
struct Animation anim_wizard_sparkle[] = {
    /* 000 */ { wizards_waltz_cel015, 4 },
    /* 001 */ { wizards_waltz_cel016, 4 },
    /* 002 */ { wizards_waltz_cel017, 4 },
    /* End */ END_ANIMATION
};

// [D_08932cac] Wizard Sparkle (Small)
struct Animation anim_wizard_sparkle_small[] = {
    /* 000 */ { wizards_waltz_cel018, 4 },
    /* End */ END_ANIMATION
};

// [D_08932cbc] Evil Flower - Appear & Eat Sprout
struct Animation anim_wizards_waltz_sprout_eaten[] = {
    /* 000 */ { wizards_waltz_cel064, 2 },
    /* 001 */ { wizards_waltz_cel065, 2 },
    /* 002 */ { wizards_waltz_cel065, 2 },
    /* 003 */ { wizards_waltz_cel066, 2 },
    /* 004 */ { wizards_waltz_cel067, 4 },
    /* 005 */ { wizards_waltz_cel068, 8 },
    /* 006 */ { wizards_waltz_cel069, 4 },
    /* 007 */ { wizards_waltz_cel070, 2 },
    /* 008 */ { wizards_waltz_cel071, 6 },
    /* 009 */ { wizards_waltz_cel070, 2 },
    /* 010 */ { wizards_waltz_cel071, 6 },
    /* 011 */ { wizards_waltz_cel070, 2 },
    /* 012 */ { wizards_waltz_cel071, 6 },
    /* End */ END_ANIMATION
};

// [D_08932d2c] Flower - Grow
struct Animation anim_wizards_waltz_sprout_grow[] = {
    /* 000 */ { wizards_waltz_cel059, 2 },
    /* 001 */ { wizards_waltz_cel060, 4 },
    /* 002 */ { wizards_waltz_cel059, 2 },
    /* 003 */ { wizards_waltz_cel060, 4 },
    /* 004 */ { wizards_waltz_cel059, 2 },
    /* 005 */ { wizards_waltz_cel060, 2 },
    /* 006 */ { wizards_waltz_cel061, 6 },
    /* 007 */ { wizards_waltz_cel062, 3 },
    /* 008 */ { wizards_waltz_cel063, 2 },
    /* 009 */ { wizards_waltz_cel032, 3 },
    /* 010 */ { wizards_waltz_cel033, 2 },
    /* 011 */ { wizards_waltz_cel032, 1 },
    /* 012 */ { wizards_waltz_cel033, 60 },
    /* End */ END_ANIMATION
};

// [D_08932d9c] Evil Flower Particle
struct Animation anim_wizards_waltz_bad_particle[] = {
    /* 000 */ { wizards_waltz_cel031, 4 },
    /* End */ END_ANIMATION
};

// [D_08932dac] Little Flowers
struct Animation anim_wizards_waltz_small_flowers[] = {
    /* 000 */ { wizards_waltz_cel036, 4 },
    /* 001 */ { wizards_waltz_cel037, 4 },
    /* 002 */ { wizards_waltz_cel038, 4 },
    /* 003 */ { wizards_waltz_cel039, 4 },
    /* 004 */ { wizards_waltz_cel040, 4 },
    /* 005 */ { wizards_waltz_cel041, 4 },
    /* End */ END_ANIMATION
};

// [D_08932de4] Sprout - Appear
struct Animation anim_wizards_waltz_sprout_appear[] = {
    /* 000 */ { wizards_waltz_cel000, 4 },
    /* 001 */ { wizards_waltz_cel023, 2 },
    /* 002 */ { wizards_waltz_cel024, 2 },
    /* 003 */ { wizards_waltz_cel025, 2 },
    /* 004 */ { wizards_waltz_cel026, 2 },
    /* 005 */ { wizards_waltz_cel027, 2 },
    /* 006 */ { wizards_waltz_cel026, 2 },
    /* 007 */ { wizards_waltz_cel027, 2 },
    /* 008 */ { wizards_waltz_cel026, 2 },
    /* 009 */ { wizards_waltz_cel027, 20 },
    /* End */ END_ANIMATION
};

// [D_08932e3c] Girl - Idle
struct Animation anim_wizards_waltz_girl_idle[] = {
    /* 000 */ { wizards_waltz_cel042, 5 },
    /* 001 */ { wizards_waltz_cel043, 5 },
    /* 002 */ { wizards_waltz_cel044, 5 },
    /* 003 */ { wizards_waltz_cel043, 5 },
    /* End */ END_ANIMATION
};

// [D_08932e64] Girl - Happy
struct Animation anim_wizards_waltz_girl_happy[] = {
    /* 000 */ { wizards_waltz_cel046, 4 },
    /* 001 */ { wizards_waltz_cel048, 4 },
    /* 002 */ { wizards_waltz_cel049, 4 },
    /* 003 */ { wizards_waltz_cel050, 4 },
    /* 004 */ { wizards_waltz_cel051, 4 },
    /* 005 */ { wizards_waltz_cel052, 4 },
    /* 006 */ { wizards_waltz_cel053, 4 },
    /* End */ END_ANIMATION
};

// [D_08932ea4] Girl - Upset
struct Animation anim_wizards_waltz_girl_upset[] = {
    /* 000 */ { wizards_waltz_cel045, 4 },
    /* 001 */ { wizards_waltz_cel054, 4 },
    /* 002 */ { wizards_waltz_cel055, 4 },
    /* 003 */ { wizards_waltz_cel056, 4 },
    /* 004 */ { wizards_waltz_cel057, 4 },
    /* 005 */ { wizards_waltz_cel058, 4 },
    /* End */ END_ANIMATION
};

// [D_08932edc] Shadow
struct Animation anim_wizards_waltz_shadow[] = {
    /* 000 */ { wizards_waltz_cel047, 4 },
    /* End */ END_ANIMATION
};

// [D_08932eec] Flower - Spin
struct Animation anim_wizards_waltz_spinning_flower[] = {
    /* 000 */ { wizards_waltz_cel072, 3 },
    /* 001 */ { wizards_waltz_cel073, 3 },
    /* 002 */ { wizards_waltz_cel074, 3 },
    /* 003 */ { wizards_waltz_cel075, 3 },
    /* 004 */ { wizards_waltz_cel076, 3 },
    /* End */ END_ANIMATION
};

// [D_08932f1c] Angry Smoke Puff
struct Animation anim_wizards_waltz_anger_puff[] = {
    /* 000 */ { wizards_waltz_cel077, 4 },
    /* 001 */ { wizards_waltz_cel078, 4 },
    /* 002 */ { wizards_waltz_cel079, 4 },
    /* 003 */ { wizards_waltz_cel000, 40 },
    /* End */ END_ANIMATION
};

// [D_08932f44] Flower - Grow (No Effect)
struct Animation anim_wizards_waltz_sprout_grow_no_effect[] = {
    /* 000 */ { wizards_waltz_cel035, 3 },
    /* 001 */ { wizards_waltz_cel034, 3 },
    /* 002 */ { wizards_waltz_cel033, 3 },
    /* 003 */ { wizards_waltz_cel032, 3 },
    /* 004 */ { wizards_waltz_cel033, 3 },
    /* 005 */ { wizards_waltz_cel032, 3 },
    /* 006 */ { wizards_waltz_cel033, 3 },
    /* 007 */ { wizards_waltz_cel032, 3 },
    /* 008 */ { wizards_waltz_cel033, 12 },
    /* End */ END_ANIMATION
};

// [D_08932f94] Sprout - Appear (Tutorial)
struct Animation anim_wizards_waltz_sprout_appear_tutorial[] = {
    /* 000 */ { wizards_waltz_cel000, 4 },
    /* 001 */ { wizards_waltz_cel023, 2 },
    /* 002 */ { wizards_waltz_cel024, 2 },
    /* 003 */ { wizards_waltz_cel025, 2 },
    /* 004 */ { wizards_waltz_cel026, 2 },
    /* 005 */ { wizards_waltz_cel027, 2 },
    /* 006 */ { wizards_waltz_cel026, 2 },
    /* 007 */ { wizards_waltz_cel027, 2 },
    /* 008 */ { wizards_waltz_cel026, 2 },
    /* 009 */ { wizards_waltz_cel027, 2 },
    /* 010 */ { wizards_waltz_cel028, 2 },
    /* 011 */ { wizards_waltz_cel029, 2 },
    /* 012 */ { wizards_waltz_cel030, 20 },
    /* End */ END_ANIMATION
};
