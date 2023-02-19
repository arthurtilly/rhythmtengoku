#include "global.h"
#include "graphics.h"

#include "metronome_anim_cells.inc.c"

// [D_088f3b58] Metronome Pendulum
struct Animation anim_metronome_pendulum[] = {
    /* 000 */ { metronome_cel000, 4 },
    /* End */ END_ANIMATION
};

// [D_088f3b68] Bird Marker
struct Animation anim_metronome_bird_marker[] = {
    /* 000 */ { metronome_cel001, 4 },
    /* 001 */ { metronome_cel002, 3 },
    /* 002 */ { metronome_cel003, 3 },
    /* 003 */ { metronome_cel004, 3 },
    /* 004 */ { metronome_cel005, 40 },
    /* End */ END_ANIMATION
};

// [D_088f3b98] Bird
struct Animation anim_metronome_bird[] = {
    /* 000 */ { metronome_cel007, 5 },
    /* 001 */ { metronome_cel008, 3 },
    /* 002 */ { metronome_cel006, 40 },
    /* End */ END_ANIMATION
};

// [D_088f3bb8] Face - Left
struct Animation anim_metronome_face_l[] = {
    /* 000 */ { metronome_cel009, 40 },
    /* 001 */ { metronome_cel011, 40 },
    /* End */ END_ANIMATION
};

// [D_088f3bd0] Face - Right
struct Animation anim_metronome_face_r[] = {
    /* 000 */ { metronome_cel010, 40 },
    /* 001 */ { metronome_cel012, 40 },
    /* End */ END_ANIMATION
};

// [D_088f3be8] Score Counter
struct Animation anim_metronome_score_counter[] = {
    /* 000 */ { metronome_cel013, 4 },
    /* End */ END_ANIMATION
};

// [D_088f3bf8] Score Count Numbers.
struct Animation anim_metronome_score_num[] = {
    /* 000 */ { metronome_cel014, 4 },
    /* 001 */ { metronome_cel015, 4 },
    /* 002 */ { metronome_cel016, 4 },
    /* 003 */ { metronome_cel017, 4 },
    /* 004 */ { metronome_cel018, 4 },
    /* 005 */ { metronome_cel019, 4 },
    /* 006 */ { metronome_cel020, 4 },
    /* 007 */ { metronome_cel021, 4 },
    /* 008 */ { metronome_cel022, 4 },
    /* 009 */ { metronome_cel023, 4 },
    /* 010 */ { metronome_cel034, 4 },
    /* End */ END_ANIMATION
};

// [D_088f3c58] Accuracy Meter
struct Animation anim_metronome_timing_meter[] = {
    /* 000 */ { metronome_cel036, 20 },
    /* 001 */ { metronome_cel037, 20 },
    /* 002 */ { metronome_cel038, 20 },
    /* 003 */ { metronome_cel039, 20 },
    /* 004 */ { metronome_cel040, 20 },
    /* 005 */ { metronome_cel035, 20 },
    /* 006 */ { metronome_cel041, 20 },
    /* 007 */ { metronome_cel042, 20 },
    /* 008 */ { metronome_cel043, 20 },
    /* 009 */ { metronome_cel044, 20 },
    /* 010 */ { metronome_cel045, 20 },
    /* End */ END_ANIMATION
};

// [D_088f3cb8] Mr. Upbeat - Beat (Unused)
struct Animation anim_mr_upbeat_beat[] = {
    /* 000 */ { metronome_cel047, 2 },
    /* 001 */ { metronome_cel048, 2 },
    /* 002 */ { metronome_cel049, 2 },
    /* 003 */ { metronome_cel046, 40 },
    /* End */ END_ANIMATION
};

// [D_088f3ce0] Mr. Upbeat Shadows
struct Animation anim_mr_upbeat_shadow[] = {
    /* 000 */ { metronome_cel058, 40 },
    /* 001 */ { metronome_cel059, 46 },
    /* 002 */ { metronome_cel060, 46 },
    /* 003 */ { metronome_cel061, 46 },
    /* End */ END_ANIMATION
};

// [D_088f3d08] Mr. Upbeat - Right Step
struct Animation anim_mr_upbeat_r_step[] = {
    /* 000 */ { metronome_cel057, 2 },
    /* 001 */ { metronome_cel056, 1 },
    /* 002 */ { metronome_cel055, 3 },
    /* 003 */ { metronome_cel054, 40 },
    /* End */ END_ANIMATION
};

// [D_088f3d30] Mr. Upbeat Shadow - Right
struct Animation anim_mr_upbeat_r_shadow[] = {
    /* 000 */ { metronome_cel060, 4 },
    /* End */ END_ANIMATION
};

// [D_088f3d40] Mr. Upbeat Test
struct Animation anim_mr_upbeat_r_test[] = {
    /* 000 */ { metronome_cel057, 2 },
    /* 001 */ { metronome_cel056, 1 },
    /* 002 */ { metronome_cel055, 3 },
    /* 003 */ { metronome_cel054, 40 },
    /* 004 */ { metronome_cel072, 2 },
    /* 005 */ { metronome_cel073, 2 },
    /* 006 */ { metronome_cel074, 3 },
    /* 007 */ { metronome_cel075, 4 },
    /* 008 */ { metronome_cel076, 40 },
    /* 009 */ { metronome_cel057, 2 },
    /* 010 */ { metronome_cel056, 1 },
    /* 011 */ { metronome_cel055, 3 },
    /* 012 */ { metronome_cel054, 40 },
    /* 013 */ { metronome_cel066, 2 },
    /* 014 */ { metronome_cel065, 1 },
    /* 015 */ { metronome_cel064, 1 },
    /* 016 */ { metronome_cel063, 3 },
    /* 017 */ { metronome_cel062, 40 },
    /* End */ END_ANIMATION
};

// [D_088f3dd8] Mr. Upbeat - Right Fall (Metronome Moving Right)
struct Animation anim_mr_upbeat_r_trip_r[] = {
    /* 000 */ { metronome_cel066, 2 },
    /* 001 */ { metronome_cel065, 1 },
    /* 002 */ { metronome_cel064, 1 },
    /* 003 */ { metronome_cel063, 3 },
    /* 004 */ { metronome_cel062, 40 },
    /* End */ END_ANIMATION
};

// [D_088f3e08] Mr. Upbeat - Right Fall (Metronome Moving Left)
struct Animation anim_mr_upbeat_r_trip_l[] = {
    /* 000 */ { metronome_cel072, 2 },
    /* 001 */ { metronome_cel073, 2 },
    /* 002 */ { metronome_cel074, 3 },
    /* 003 */ { metronome_cel075, 4 },
    /* 004 */ { metronome_cel076, 40 },
    /* End */ END_ANIMATION
};

// [D_088f3e38] Mr. Upbeat - Count Beep
struct Animation anim_mr_upbeat_beep[] = {
    /* 000 */ { metronome_cel082, 4 },
    /* 001 */ { metronome_cel083, 4 },
    /* 002 */ { metronome_cel084, 40 },
    /* End */ END_ANIMATION
};

// [D_088f3e58] Mr. Upbeat - Left Step
struct Animation anim_mr_upbeat_l_step[] = {
    /* 000 */ { metronome_cel053, 2 },
    /* 001 */ { metronome_cel052, 1 },
    /* 002 */ { metronome_cel051, 3 },
    /* 003 */ { metronome_cel050, 40 },
    /* End */ END_ANIMATION
};

// [D_088f3e80] Mr. Upbeat - Left Fall (Metronome Moving Left)
struct Animation anim_mr_upbeat_l_trip_l[] = {
    /* 000 */ { metronome_cel071, 2 },
    /* 001 */ { metronome_cel070, 1 },
    /* 002 */ { metronome_cel069, 1 },
    /* 003 */ { metronome_cel068, 3 },
    /* 004 */ { metronome_cel067, 40 },
    /* End */ END_ANIMATION
};

// [D_088f3eb0] Mr. Upbeat - Left Fall (Metronome Moving Right)
struct Animation anim_mr_upbeat_l_trip_r[] = {
    /* 000 */ { metronome_cel077, 2 },
    /* 001 */ { metronome_cel078, 2 },
    /* 002 */ { metronome_cel079, 1 },
    /* 003 */ { metronome_cel080, 4 },
    /* 004 */ { metronome_cel081, 40 },
    /* End */ END_ANIMATION
};

// [D_088f3ee0] High Score Numbers
struct Animation anim_mr_upbeat_high_score_num[] = {
    /* 000 */ { metronome_cel024, 4 },
    /* 001 */ { metronome_cel025, 4 },
    /* 002 */ { metronome_cel026, 4 },
    /* 003 */ { metronome_cel027, 4 },
    /* 004 */ { metronome_cel028, 4 },
    /* 005 */ { metronome_cel029, 4 },
    /* 006 */ { metronome_cel030, 4 },
    /* 007 */ { metronome_cel031, 4 },
    /* 008 */ { metronome_cel032, 4 },
    /* 009 */ { metronome_cel033, 4 },
    /* 010 */ { metronome_cel034, 4 },
    /* End */ END_ANIMATION
};

// [D_088f3f40] Mr. Upbeat - Left Cheer (Metronome Moved Right)
struct Animation anim_mr_upbeat_l_cheer_r[] = {
    /* 000 */ { metronome_cel085, 4 },
    /* 001 */ { metronome_cel086, 4 },
    /* 002 */ { metronome_cel087, 4 },
    /* 003 */ { metronome_cel088, 20 },
    /* End */ END_ANIMATION
};

// [D_088f3f68] Mr. Upbeat - Left Sad (Metronome Moved Right)
struct Animation anim_mr_upbeat_l_mope_r[] = {
    /* 000 */ { metronome_cel089, 4 },
    /* 001 */ { metronome_cel090, 4 },
    /* 002 */ { metronome_cel091, 4 },
    /* 003 */ { metronome_cel092, 20 },
    /* 004 */ { metronome_cel093, 20 },
    /* End */ END_ANIMATION
};

// [D_088f3f98] Mr. Upbeat - Right Cheer (Metronome Moved Left)
struct Animation anim_mr_upbeat_r_cheer_l[] = {
    /* 000 */ { metronome_cel094, 4 },
    /* 001 */ { metronome_cel095, 4 },
    /* 002 */ { metronome_cel096, 4 },
    /* 003 */ { metronome_cel097, 20 },
    /* End */ END_ANIMATION
};

// [D_088f3fc0] Mr. Upbeat - Right Sad (Metronome Moved Left)
struct Animation anim_mr_upbeat_r_mope_l[] = {
    /* 000 */ { metronome_cel098, 4 },
    /* 001 */ { metronome_cel099, 4 },
    /* 002 */ { metronome_cel100, 4 },
    /* 003 */ { metronome_cel101, 20 },
    /* 004 */ { metronome_cel102, 20 },
    /* End */ END_ANIMATION
};

// [D_088f3ff0] Mr. Upbeat - Right Cheer (Metronome Moved Right)
struct Animation anim_mr_upbeat_r_cheer_r[] = {
    /* 000 */ { metronome_cel103, 4 },
    /* 001 */ { metronome_cel104, 4 },
    /* 002 */ { metronome_cel105, 4 },
    /* 003 */ { metronome_cel106, 20 },
    /* End */ END_ANIMATION
};

// [D_088f4018] Mr. Upbeat - Left Cheer (Metronome Moved Left)
struct Animation anim_mr_upbeat_l_cheer_l[] = {
    /* 000 */ { metronome_cel107, 4 },
    /* 001 */ { metronome_cel108, 4 },
    /* 002 */ { metronome_cel109, 4 },
    /* 003 */ { metronome_cel110, 20 },
    /* End */ END_ANIMATION
};

// [D_088f4040] Mr. Upbeat - Right Sad (Metronome Moved Right)
struct Animation anim_mr_upbeat_r_mope_r[] = {
    /* 000 */ { metronome_cel111, 4 },
    /* 001 */ { metronome_cel112, 4 },
    /* 002 */ { metronome_cel113, 4 },
    /* 003 */ { metronome_cel114, 20 },
    /* 004 */ { metronome_cel115, 20 },
    /* End */ END_ANIMATION
};

// [D_088f4070] Mr. Upbeat - Left Sad (Metronome Moved Left)
struct Animation anim_mr_upbeat_l_mope_l[] = {
    /* 000 */ { metronome_cel116, 4 },
    /* 001 */ { metronome_cel117, 4 },
    /* 002 */ { metronome_cel118, 4 },
    /* 003 */ { metronome_cel119, 20 },
    /* 004 */ { metronome_cel120, 20 },
    /* End */ END_ANIMATION
};
