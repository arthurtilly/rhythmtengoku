#include "global.h"
#include "graphics.h"

#include "ninja_bodyguard_anim_cells.inc.c"

// [D_0890f764] Ninja - Cut Right + Spin
struct Animation anim_ninja_slice_spin_r[] = {
    /* 000 */ { ninja_bodyguard_cel019, 20 },
    /* 001 */ { ninja_bodyguard_cel024, 4 },
    /* 002 */ { ninja_bodyguard_cel025, 8 },
    /* 003 */ { ninja_bodyguard_cel026, 4 },
    /* 004 */ { ninja_bodyguard_cel027, 4 },
    /* 005 */ { ninja_bodyguard_cel028, 4 },
    /* 006 */ { ninja_bodyguard_cel001, 8 },
    /* 007 */ { ninja_bodyguard_cel002, 20 },
    /* End */ END_ANIMATION
};

// [D_0890f7ac] Ninja - Cut Left + Spin
struct Animation anim_ninja_slice_spin_l[] = {
    /* 000 */ { ninja_bodyguard_cel025, 20 },
    /* 001 */ { ninja_bodyguard_cel030, 4 },
    /* 002 */ { ninja_bodyguard_cel031, 8 },
    /* 003 */ { ninja_bodyguard_cel033, 4 },
    /* 004 */ { ninja_bodyguard_cel034, 4 },
    /* 005 */ { ninja_bodyguard_cel035, 4 },
    /* 006 */ { ninja_bodyguard_cel036, 8 },
    /* 007 */ { ninja_bodyguard_cel036, 20 },
    /* End */ END_ANIMATION
};

// [D_0890f7f4] Ninja - Bow to Feudal Lord
struct Animation anim_ninja_bow_to_lord[] = {
    /* 000 */ { ninja_bodyguard_cel037, 8 },
    /* 001 */ { ninja_bodyguard_cel038, 8 },
    /* 002 */ { ninja_bodyguard_cel039, 8 },
    /* End */ END_ANIMATION
};

// [D_0890f814] Archer - Draw Bow
struct Animation anim_archer_draw_bow[] = {
    /* 000 */ { ninja_bodyguard_cel056, 1 },
    /* 001 */ { ninja_bodyguard_cel057, 1 },
    /* 002 */ { ninja_bodyguard_cel058, 1 },
    /* 003 */ { ninja_bodyguard_cel061, 1 },
    /* 004 */ { ninja_bodyguard_cel063, 1 },
    /* 005 */ { ninja_bodyguard_cel065, 1 },
    /* 006 */ { ninja_bodyguard_cel066, 1 },
    /* 007 */ { ninja_bodyguard_cel067, 2 },
    /* 008 */ { ninja_bodyguard_cel068, 2 },
    /* 009 */ { ninja_bodyguard_cel069, 10 },
    /* End */ END_ANIMATION
};

// [D_0890f86c] Arrow - Drawn
struct Animation anim_archer_arrow_draw[] = {
    /* 000 */ { ninja_bodyguard_cel088, 36 },
    /* 001 */ { ninja_bodyguard_cel074, 1 },
    /* 002 */ { ninja_bodyguard_cel075, 1 },
    /* 003 */ { ninja_bodyguard_cel076, 1 },
    /* 004 */ { ninja_bodyguard_cel077, 1 },
    /* 005 */ { ninja_bodyguard_cel078, 1 },
    /* 006 */ { ninja_bodyguard_cel079, 1 },
    /* 007 */ { ninja_bodyguard_cel080, 1 },
    /* 008 */ { ninja_bodyguard_cel081, 1 },
    /* 009 */ { ninja_bodyguard_cel082, 1 },
    /* 010 */ { ninja_bodyguard_cel083, 1 },
    /* 011 */ { ninja_bodyguard_cel084, 1 },
    /* 012 */ { ninja_bodyguard_cel085, 1 },
    /* 013 */ { ninja_bodyguard_cel086, 1 },
    /* 014 */ { ninja_bodyguard_cel087, 10 },
    /* End */ END_ANIMATION
};

// [D_0890f8ec] Feudal Lord - Blink
struct Animation anim_feudal_lord_blink[] = {
    /* 000 */ { ninja_bodyguard_cel011, 8 },
    /* 001 */ { ninja_bodyguard_cel012, 8 },
    /* 002 */ { ninja_bodyguard_cel012, 30 },
    /* 003 */ { ninja_bodyguard_cel011, 8 },
    /* 004 */ { ninja_bodyguard_cel012, 20 },
    /* End */ END_ANIMATION
};

// [D_0890f91c] Feudal Lord - Scared
struct Animation anim_feudal_lord_scared[] = {
    /* 000 */ { ninja_bodyguard_cel016, 4 },
    /* 001 */ { ninja_bodyguard_cel017, 50 },
    /* End */ END_ANIMATION
};

// [D_0890f934] Feudal Lord - Scared, Shaking
struct Animation anim_feudal_lord_shaking[] = {
    /* 000 */ { ninja_bodyguard_cel016, 2 },
    /* 001 */ { ninja_bodyguard_cel018, 2 },
    /* End */ END_ANIMATION
};

// [D_0890f94c] Heart Eyes
struct Animation anim_ninja1_heart_eyes[] = {
    /* 000 */ { ninja_bodyguard_cel007, 8 },
    /* 001 */ { ninja_bodyguard_cel008, 8 },
    /* 002 */ { ninja_bodyguard_cel009, 30 },
    /* 003 */ { ninja_bodyguard_cel010, 8 },
    /* End */ END_ANIMATION
};

// [D_0890f974] Cherry Blossom Petal
struct Animation anim_ninja1_cherry_petal[] = {
    /* 000 */ { ninja_bodyguard_cel004, 6 },
    /* 001 */ { ninja_bodyguard_cel005, 6 },
    /* 002 */ { ninja_bodyguard_cel006, 6 },
    /* 003 */ { ninja_bodyguard_cel005, 6 },
    /* End */ END_ANIMATION
};

// [D_0890f99c] Arrow - Hit Wall
struct Animation anim_ninja1_arrow_to_wall[] = {
    /* 000 */ { ninja_bodyguard_cel040, 1 },
    /* 001 */ { ninja_bodyguard_cel041, 1 },
    /* 002 */ { ninja_bodyguard_cel042, 1 },
    /* 003 */ { ninja_bodyguard_cel044, 1 },
    /* 004 */ { ninja_bodyguard_cel042, 2 },
    /* 005 */ { ninja_bodyguard_cel046, 1 },
    /* 006 */ { ninja_bodyguard_cel042, 2 },
    /* 007 */ { ninja_bodyguard_cel044, 1 },
    /* 008 */ { ninja_bodyguard_cel042, 2 },
    /* 009 */ { ninja_bodyguard_cel046, 1 },
    /* 010 */ { ninja_bodyguard_cel042, 30 },
    /* End */ END_ANIMATION
};

// [D_0890f9fc] Arrow - In Wall
struct Animation anim_ninja1_arrow_in_wall1[] = {
    /* 000 */ { ninja_bodyguard_cel042, 2 },
    /* End */ END_ANIMATION
};

// [D_0890fa0c] Arrow - In Wall (Duplicate)
struct Animation anim_ninja1_arrow_in_wall2[] = {
    /* 000 */ { ninja_bodyguard_cel042, 2 },
    /* End */ END_ANIMATION
};

// [D_0890fa1c] Arrow - In Wall (Another Duplicate)
struct Animation anim_ninja1_arrow_in_wall3[] = {
    /* 000 */ { ninja_bodyguard_cel042, 2 },
    /* End */ END_ANIMATION
};

// [D_0890fa2c] Arrow - Deflected Left
struct Animation anim_ninja1_arrow_deflect_l[] = {
    /* 000 */ { ninja_bodyguard_cel040, 1 },
    /* 001 */ { ninja_bodyguard_cel048, 1 },
    /* 002 */ { ninja_bodyguard_cel049, 1 },
    /* 003 */ { ninja_bodyguard_cel050, 1 },
    /* 004 */ { ninja_bodyguard_cel049, 1 },
    /* 005 */ { ninja_bodyguard_cel051, 1 },
    /* 006 */ { ninja_bodyguard_cel049, 1 },
    /* 007 */ { ninja_bodyguard_cel050, 1 },
    /* 008 */ { ninja_bodyguard_cel049, 1 },
    /* 009 */ { ninja_bodyguard_cel051, 1 },
    /* 010 */ { ninja_bodyguard_cel049, 17 },
    /* End */ END_ANIMATION
};

// [D_0890fa8c] Arrow - Deflected Right
struct Animation anim_ninja1_arrow_deflect_r[] = {
    /* 000 */ { ninja_bodyguard_cel040, 1 },
    /* 001 */ { ninja_bodyguard_cel052, 1 },
    /* 002 */ { ninja_bodyguard_cel053, 1 },
    /* 003 */ { ninja_bodyguard_cel054, 1 },
    /* 004 */ { ninja_bodyguard_cel053, 1 },
    /* 005 */ { ninja_bodyguard_cel055, 1 },
    /* 006 */ { ninja_bodyguard_cel053, 1 },
    /* 007 */ { ninja_bodyguard_cel054, 1 },
    /* 008 */ { ninja_bodyguard_cel053, 1 },
    /* 009 */ { ninja_bodyguard_cel055, 1 },
    /* 010 */ { ninja_bodyguard_cel053, 17 },
    /* End */ END_ANIMATION
};

// [D_0890faec] Archer - Release Bow
struct Animation anim_archer_release_bow[] = {
    /* 000 */ { ninja_bodyguard_cel070, 1 },
    /* 001 */ { ninja_bodyguard_cel072, 1 },
    /* 002 */ { ninja_bodyguard_cel071, 1 },
    /* 003 */ { ninja_bodyguard_cel073, 1 },
    /* 004 */ { ninja_bodyguard_cel072, 1 },
    /* 005 */ { ninja_bodyguard_cel071, 1 },
    /* 006 */ { ninja_bodyguard_cel073, 30 },
    /* End */ END_ANIMATION
};

// [D_0890fb2c] Ninja - Swing Right
struct Animation anim_ninja_swing_r[] = {
    /* 000 */ { ninja_bodyguard_cel023, 2 },
    /* 001 */ { ninja_bodyguard_cel025, 80 },
    /* End */ END_ANIMATION
};

// [D_0890fb44] Ninja - Swing Left
struct Animation anim_ninja_swing_l[] = {
    /* 000 */ { ninja_bodyguard_cel029, 2 },
    /* 001 */ { ninja_bodyguard_cel031, 80 },
    /* End */ END_ANIMATION
};

// [D_0890fb5c] Ninja - Cut Right
struct Animation anim_ninja_slice_r[] = {
    /* 000 */ { ninja_bodyguard_cel024, 2 },
    /* 001 */ { ninja_bodyguard_cel025, 80 },
    /* End */ END_ANIMATION
};

// [D_0890fb74] Ninja - Cut Left
struct Animation anim_ninja_slice_l[] = {
    /* 000 */ { ninja_bodyguard_cel030, 2 },
    /* 001 */ { ninja_bodyguard_cel031, 80 },
    /* End */ END_ANIMATION
};

// [D_0890fb8c] Ninja - Spin Right
struct Animation anim_ninja_spin_r[] = {
    /* 000 */ { ninja_bodyguard_cel026, 4 },
    /* 001 */ { ninja_bodyguard_cel027, 4 },
    /* 002 */ { ninja_bodyguard_cel028, 4 },
    /* 003 */ { ninja_bodyguard_cel001, 8 },
    /* 004 */ { ninja_bodyguard_cel002, 20 },
    /* End */ END_ANIMATION
};

// [D_0890fbbc] Ninja - Spin Left
struct Animation anim_ninja_spin_l[] = {
    /* 000 */ { ninja_bodyguard_cel033, 4 },
    /* 001 */ { ninja_bodyguard_cel034, 4 },
    /* 002 */ { ninja_bodyguard_cel035, 4 },
    /* 003 */ { ninja_bodyguard_cel036, 8 },
    /* 004 */ { ninja_bodyguard_cel036, 20 },
    /* End */ END_ANIMATION
};

// [D_0890fbec] Feudal Lord - Walk
struct Animation anim_feudal_lord_walk[] = {
    /* 000 */ { ninja_bodyguard_cel013, 10 },
    /* 001 */ { ninja_bodyguard_cel014, 10 },
    /* 002 */ { ninja_bodyguard_cel013, 10 },
    /* 003 */ { ninja_bodyguard_cel015, 10 },
    /* End */ END_ANIMATION
};

// [D_0890fc14] Ninja - Appear
struct Animation anim_ninja_appear[] = {
    /* 000 */ { ninja_bodyguard_cel089, 1 },
    /* 001 */ { ninja_bodyguard_cel090, 1 },
    /* 002 */ { ninja_bodyguard_cel091, 1 },
    /* 003 */ { ninja_bodyguard_cel002, 5 },
    /* 004 */ { ninja_bodyguard_cel001, 40 },
    /* End */ END_ANIMATION
};

// [D_0890fc44] Ninja - Raise Sword
struct Animation anim_ninja_raise_sword[] = {
    /* 000 */ { ninja_bodyguard_cel019, 3 },
    /* 001 */ { ninja_bodyguard_cel020, 3 },
    /* 002 */ { ninja_bodyguard_cel021, 3 },
    /* 003 */ { ninja_bodyguard_cel022, 40 },
    /* End */ END_ANIMATION
};

// [D_0890fc6c] Button Indicators
struct Animation anim_ninja1_button_indicators[] = {
    /* 000 */ { ninja_bodyguard_cel092, 4 },
    /* 001 */ { ninja_bodyguard_cel093, 4 },
    /* End */ END_ANIMATION
};

// [D_0890fc84] Arrow Shrapnel (Tail, Head)
struct Animation anim_ninja1_arrow_pieces[] = {
    /* 000 */ { ninja_bodyguard_cel094, 4 },
    /* 001 */ { ninja_bodyguard_cel095, 4 },
    /* End */ END_ANIMATION
};

// [D_0890fc9c] Arrow - Fired at Ninja
struct Animation anim_ninja1_arrow_to_ninja[] = {
    /* 000 */ { ninja_bodyguard_cel040, 1 },
    /* 001 */ { ninja_bodyguard_cel047, 1 },
    /* 002 */ { ninja_bodyguard_cel000, 1 },
    /* End */ END_ANIMATION
};

// [D_0890fcbc] Intro Cutscene Arrow
struct Animation anim_ninja1_cutscene_arrow[] = {
    /* 000 */ { ninja_bodyguard_cel096, 4 },
    /* End */ END_ANIMATION
};
