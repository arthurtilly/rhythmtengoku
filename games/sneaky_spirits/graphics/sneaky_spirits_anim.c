#include "global.h"
#include "graphics.h"

#include "sneaky_spirits_anim_cells.inc.c"

// [D_088a0ca0] Bow - Draw
struct Animation anim_sneaky_spirits_bow[] = {
    /* 000 */ { sneaky_spirits_cel001, 1 },
    /* 001 */ { sneaky_spirits_cel002, 2 },
    /* 002 */ { sneaky_spirits_cel003, 3 },
    /* 003 */ { sneaky_spirits_cel004, 10 },
    /* 004 */ { sneaky_spirits_cel005, 40 },
    /* End */ END_ANIMATION
};

// [D_088a0cd0] Ghost - Hit
struct Animation anim_sneaky_spirit_hit[] = {
    /* 000 */ { sneaky_spirits_cel013, 3 },
    /* 001 */ { sneaky_spirits_cel014, 3 },
    /* 002 */ { sneaky_spirits_cel105, 3 },
    /* 003 */ { sneaky_spirits_cel106, 3 },
    /* End */ END_ANIMATION
};

// [D_088a0cf8] Wall
struct Animation anim_sneaky_spirits_back_wall[] = {
    /* 000 */ { sneaky_spirits_cel015, 4 },
    /* End */ END_ANIMATION
};

// [D_088a0d08] Door
struct Animation anim_sneaky_spirits_door[] = {
    /* 000 */ { sneaky_spirits_cel020, 60 },
    /* 001 */ { sneaky_spirits_cel016, 1 },
    /* 002 */ { sneaky_spirits_cel017, 2 },
    /* 003 */ { sneaky_spirits_cel018, 3 },
    /* 004 */ { sneaky_spirits_cel019, 12 },
    /* End */ END_ANIMATION
};

// [D_088a0d38] Ghost - Walk (Unused)
struct Animation anim_sneaky_spirit_walk_test[] = {
    /* 000 */ { sneaky_spirits_cel021, 1 },
    /* 001 */ { sneaky_spirits_cel022, 1 },
    /* 002 */ { sneaky_spirits_cel023, 1 },
    /* 003 */ { sneaky_spirits_cel024, 1 },
    /* 004 */ { sneaky_spirits_cel025, 20 },
    /* 005 */ { sneaky_spirits_cel024, 1 },
    /* 006 */ { sneaky_spirits_cel023, 1 },
    /* 007 */ { sneaky_spirits_cel022, 1 },
    /* End */ END_ANIMATION
};

// [D_088a0d80] Ghost - Taunt
struct Animation anim_sneaky_spirit_taunt[] = {
    /* 000 */ { sneaky_spirits_cel000, 15 },
    /* 001 */ { sneaky_spirits_cel037, 3 },
    /* 002 */ { sneaky_spirits_cel036, 3 },
    /* 003 */ { sneaky_spirits_cel035, 3 },
    /* 004 */ { sneaky_spirits_cel038, 3 },
    /* 005 */ { sneaky_spirits_cel035, 3 },
    /* 006 */ { sneaky_spirits_cel036, 3 },
    /* 007 */ { sneaky_spirits_cel037, 3 },
    /* 008 */ { sneaky_spirits_cel036, 3 },
    /* 009 */ { sneaky_spirits_cel035, 3 },
    /* 010 */ { sneaky_spirits_cel038, 3 },
    /* 011 */ { sneaky_spirits_cel035, 3 },
    /* 012 */ { sneaky_spirits_cel036, 3 },
    /* End */ END_ANIMATION
};

// [D_088a0df0] Arrow - Miss
struct Animation anim_sneaky_spirits_arrow_miss[] = {
    /* 000 */ { sneaky_spirits_cel045, 1 },
    /* 001 */ { sneaky_spirits_cel043, 2 },
    /* 002 */ { sneaky_spirits_cel046, 2 },
    /* 003 */ { sneaky_spirits_cel044, 2 },
    /* 004 */ { sneaky_spirits_cel046, 2 },
    /* 005 */ { sneaky_spirits_cel043, 1 },
    /* 006 */ { sneaky_spirits_cel046, 1 },
    /* 007 */ { sneaky_spirits_cel044, 1 },
    /* 008 */ { sneaky_spirits_cel046, 1 },
    /* 009 */ { sneaky_spirits_cel043, 1 },
    /* 010 */ { sneaky_spirits_cel046, 1 },
    /* 011 */ { sneaky_spirits_cel044, 1 },
    /* 012 */ { sneaky_spirits_cel046, 1 },
    /* 013 */ { sneaky_spirits_cel043, 1 },
    /* 014 */ { sneaky_spirits_cel046, 1 },
    /* 015 */ { sneaky_spirits_cel044, 1 },
    /* 016 */ { sneaky_spirits_cel046, 60 },
    /* End */ END_ANIMATION
};

// [D_088a0e80] Ghost - Too Early
struct Animation anim_sneaky_spirit_scared_early[] = {
    /* 000 */ { sneaky_spirits_cel047, 2 },
    /* 001 */ { sneaky_spirits_cel048, 2 },
    /* 002 */ { sneaky_spirits_cel049, 2 },
    /* 003 */ { sneaky_spirits_cel048, 2 },
    /* 004 */ { sneaky_spirits_cel049, 2 },
    /* 005 */ { sneaky_spirits_cel048, 2 },
    /* 006 */ { sneaky_spirits_cel049, 2 },
    /* 007 */ { sneaky_spirits_cel048, 2 },
    /* 008 */ { sneaky_spirits_cel049, 2 },
    /* 009 */ { sneaky_spirits_cel048, 2 },
    /* 010 */ { sneaky_spirits_cel049, 2 },
    /* 011 */ { sneaky_spirits_cel048, 2 },
    /* 012 */ { sneaky_spirits_cel049, 2 },
    /* 013 */ { sneaky_spirits_cel048, 2 },
    /* 014 */ { sneaky_spirits_cel049, 2 },
    /* 015 */ { sneaky_spirits_cel048, 2 },
    /* 016 */ { sneaky_spirits_cel049, 8 },
    /* 017 */ { sneaky_spirits_cel053, 1 },
    /* 018 */ { sneaky_spirits_cel054, 1 },
    /* 019 */ { sneaky_spirits_cel000, 60 },
    /* End */ END_ANIMATION
};

// [D_088a0f28] Tree
struct Animation anim_sneaky_spirits_tree[] = {
    /* 000 */ { sneaky_spirits_cel055, 6 },
    /* 001 */ { sneaky_spirits_cel006, 6 },
    /* End */ END_ANIMATION
};

// [D_088a0f40] Raindrop Splash Test
struct Animation anim_sneaky_spirits_splash_test[] = {
    /* 000 */ { sneaky_spirits_cel057, 4 },
    /* 001 */ { sneaky_spirits_cel058, 4 },
    /* End */ END_ANIMATION
};

// [D_088a0f58] Ghost - Walk
struct Animation anim_sneaky_spirit_walk[] = {
    /* 000 */ { sneaky_spirits_cel030, 1 },
    /* 001 */ { sneaky_spirits_cel028, 1 },
    /* 002 */ { sneaky_spirits_cel026, 10 },
    /* 003 */ { sneaky_spirits_cel027, 1 },
    /* 004 */ { sneaky_spirits_cel028, 1 },
    /* 005 */ { sneaky_spirits_cel029, 1 },
    /* 006 */ { sneaky_spirits_cel030, 1 },
    /* 007 */ { sneaky_spirits_cel031, 1 },
    /* 008 */ { sneaky_spirits_cel032, 1 },
    /* 009 */ { sneaky_spirits_cel033, 1 },
    /* 010 */ { sneaky_spirits_cel034, 1 },
    /* End */ END_ANIMATION
};

// [D_088a0fb8] Ghost - Dash
struct Animation anim_sneaky_spirit_dash[] = {
    /* 000 */ { sneaky_spirits_cel041, 1 },
    /* 001 */ { sneaky_spirits_cel042, 1 },
    /* 002 */ { sneaky_spirits_cel000, 60 },
    /* End */ END_ANIMATION
};

// [D_088a0fd8] Rain Drop
struct Animation anim_sneaky_spirits_rain[] = {
    /* 000 */ { sneaky_spirits_cel060, 1 },
    /* 001 */ { sneaky_spirits_cel061, 1 },
    /* 002 */ { sneaky_spirits_cel062, 1 },
    /* 003 */ { sneaky_spirits_cel063, 1 },
    /* End */ END_ANIMATION
};

// [D_088a1000] Rain Drop Splash
struct Animation anim_sneaky_spirits_splash[] = {
    /* 000 */ { sneaky_spirits_cel059, 2 },
    /* End */ END_ANIMATION
};

// [D_088a1010] Rain Drop (Slow-Motion)
struct Animation anim_sneaky_spirits_rain_slow[] = {
    /* 000 */ { sneaky_spirits_cel065, 4 },
    /* 001 */ { sneaky_spirits_cel066, 4 },
    /* 002 */ { sneaky_spirits_cel067, 4 },
    /* 003 */ { sneaky_spirits_cel068, 4 },
    /* 004 */ { sneaky_spirits_cel069, 4 },
    /* 005 */ { sneaky_spirits_cel070, 4 },
    /* 006 */ { sneaky_spirits_cel071, 4 },
    /* 007 */ { sneaky_spirits_cel072, 4 },
    /* 008 */ { sneaky_spirits_cel073, 4 },
    /* 009 */ { sneaky_spirits_cel074, 4 },
    /* 010 */ { sneaky_spirits_cel075, 4 },
    /* 011 */ { sneaky_spirits_cel076, 4 },
    /* 012 */ { sneaky_spirits_cel077, 4 },
    /* 013 */ { sneaky_spirits_cel078, 4 },
    /* 014 */ { sneaky_spirits_cel079, 4 },
    /* 015 */ { sneaky_spirits_cel080, 4 },
    /* 016 */ { sneaky_spirits_cel081, 4 },
    /* 017 */ { sneaky_spirits_cel082, 4 },
    /* 018 */ { sneaky_spirits_cel083, 4 },
    /* 019 */ { sneaky_spirits_cel084, 4 },
    /* 020 */ { sneaky_spirits_cel085, 4 },
    /* 021 */ { sneaky_spirits_cel086, 4 },
    /* 022 */ { sneaky_spirits_cel087, 4 },
    /* 023 */ { sneaky_spirits_cel088, 4 },
    /* 024 */ { sneaky_spirits_cel089, 4 },
    /* 025 */ { sneaky_spirits_cel090, 4 },
    /* 026 */ { sneaky_spirits_cel091, 4 },
    /* 027 */ { sneaky_spirits_cel092, 4 },
    /* 028 */ { sneaky_spirits_cel093, 4 },
    /* 029 */ { sneaky_spirits_cel094, 4 },
    /* 030 */ { sneaky_spirits_cel095, 4 },
    /* 031 */ { sneaky_spirits_cel096, 4 },
    /* 032 */ { sneaky_spirits_cel097, 4 },
    /* 033 */ { sneaky_spirits_cel098, 4 },
    /* 034 */ { sneaky_spirits_cel099, 4 },
    /* 035 */ { sneaky_spirits_cel100, 4 },
    /* 036 */ { sneaky_spirits_cel101, 4 },
    /* 037 */ { sneaky_spirits_cel102, 4 },
    /* 038 */ { sneaky_spirits_cel103, 4 },
    /* 039 */ { sneaky_spirits_cel104, 4 },
    /* End */ END_ANIMATION
};

// [D_088a1158] Bow - Release
struct Animation anim_sneaky_spirits_bow_shoot[] = {
    /* 000 */ { sneaky_spirits_cel009, 1 },
    /* 001 */ { sneaky_spirits_cel011, 1 },
    /* 002 */ { sneaky_spirits_cel009, 1 },
    /* 003 */ { sneaky_spirits_cel010, 1 },
    /* 004 */ { sneaky_spirits_cel009, 1 },
    /* 005 */ { sneaky_spirits_cel011, 1 },
    /* 006 */ { sneaky_spirits_cel009, 1 },
    /* 007 */ { sneaky_spirits_cel010, 1 },
    /* 008 */ { sneaky_spirits_cel009, 100 },
    /* End */ END_ANIMATION
};

// [D_088a11a8] Wall
struct Animation anim_sneaky_spirits_wall_mask[] = {
    /* 000 */ { sneaky_spirits_cel015, 4 },
    /* End */ END_ANIMATION
};

// [D_088a11b8] Ghost - Too Late
struct Animation anim_sneaky_spirit_scared_late[] = {
    /* 000 */ { sneaky_spirits_cel050, 2 },
    /* 001 */ { sneaky_spirits_cel051, 2 },
    /* 002 */ { sneaky_spirits_cel052, 2 },
    /* 003 */ { sneaky_spirits_cel051, 2 },
    /* 004 */ { sneaky_spirits_cel052, 2 },
    /* 005 */ { sneaky_spirits_cel051, 2 },
    /* 006 */ { sneaky_spirits_cel052, 2 },
    /* 007 */ { sneaky_spirits_cel051, 2 },
    /* 008 */ { sneaky_spirits_cel052, 2 },
    /* 009 */ { sneaky_spirits_cel051, 2 },
    /* 010 */ { sneaky_spirits_cel052, 2 },
    /* 011 */ { sneaky_spirits_cel051, 2 },
    /* 012 */ { sneaky_spirits_cel052, 2 },
    /* 013 */ { sneaky_spirits_cel051, 2 },
    /* 014 */ { sneaky_spirits_cel052, 2 },
    /* 015 */ { sneaky_spirits_cel051, 2 },
    /* 016 */ { sneaky_spirits_cel052, 8 },
    /* 017 */ { sneaky_spirits_cel054, 1 },
    /* 018 */ { sneaky_spirits_cel000, 60 },
    /* End */ END_ANIMATION
};

// [D_088a1258] Hit Effect
struct Animation anim_sneaky_spirit_hit_effect[] = {
    /* 000 */ { sneaky_spirits_cel107, 1 },
    /* 001 */ { sneaky_spirits_cel108, 1 },
    /* 002 */ { sneaky_spirits_cel109, 1 },
    /* 003 */ { sneaky_spirits_cel000, 60 },
    /* End */ END_ANIMATION
};

// [D_088a1280] Tutorial Ghost
struct Animation anim_sneaky_spirit_tutorial[] = {
    /* 000 */ { sneaky_spirits_cel039, 1 },
    /* 001 */ { sneaky_spirits_cel040, 100 },
    /* 002 */ { sneaky_spirits_cel041, 1 },
    /* 003 */ { sneaky_spirits_cel042, 1 },
    /* 004 */ { sneaky_spirits_cel000, 60 },
    /* End */ END_ANIMATION
};
