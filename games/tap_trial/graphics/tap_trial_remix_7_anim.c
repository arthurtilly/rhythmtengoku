#include "global.h"
#include "graphics.h"

#include "tap_trial_remix_7_anim_cells.inc.c"

// [D_0891c2f4] Girl - Tap Left
struct Animation anim_tap_remix_7_girl_1step[] = {
    /* 000 */ { tap_trial_remix_7_cel065, 2 },
    /* 001 */ { tap_trial_remix_7_cel066, 2 },
    /* 002 */ { tap_trial_remix_7_cel067, 3 },
    /* 003 */ { tap_trial_remix_7_cel068, 3 },
    /* 004 */ { tap_trial_remix_7_cel069, 4 },
    /* 005 */ { tap_trial_remix_7_cel070, 4 },
    /* 006 */ { tap_trial_remix_7_cel071, 4 },
    /* 007 */ { tap_trial_remix_7_cel072, 4 },
    /* 008 */ { tap_trial_remix_7_cel073, 20 },
    /* End */ END_ANIMATION
};

// [D_0891c344] Girl - Tap Right
struct Animation anim_tap_remix_7_girl_2step[] = {
    /* 000 */ { tap_trial_remix_7_cel076, 2 },
    /* 001 */ { tap_trial_remix_7_cel077, 2 },
    /* 002 */ { tap_trial_remix_7_cel078, 3 },
    /* 003 */ { tap_trial_remix_7_cel079, 3 },
    /* 004 */ { tap_trial_remix_7_cel080, 4 },
    /* 005 */ { tap_trial_remix_7_cel081, 4 },
    /* 006 */ { tap_trial_remix_7_cel082, 4 },
    /* 007 */ { tap_trial_remix_7_cel083, 4 },
    /* 008 */ { tap_trial_remix_7_cel073, 20 },
    /* End */ END_ANIMATION
};

// [D_0891c394] Girl - Beat
struct Animation anim_tap_remix_7_girl_beat[] = {
    /* 000 */ { tap_trial_remix_7_cel075, 3 },
    /* 001 */ { tap_trial_remix_7_cel074, 3 },
    /* 002 */ { tap_trial_remix_7_cel073, 24 },
    /* End */ END_ANIMATION
};

// [D_0891c3b4] Pig - Tap Left
struct Animation anim_tap_remix_7_pig_1step[] = {
    /* 000 */ { tap_trial_remix_7_cel000, 2 },
    /* 001 */ { tap_trial_remix_7_cel003, 2 },
    /* 002 */ { tap_trial_remix_7_cel005, 2 },
    /* 003 */ { tap_trial_remix_7_cel007, 2 },
    /* 004 */ { tap_trial_remix_7_cel008, 2 },
    /* 005 */ { tap_trial_remix_7_cel009, 3 },
    /* 006 */ { tap_trial_remix_7_cel010, 4 },
    /* 007 */ { tap_trial_remix_7_cel011, 30 },
    /* End */ END_ANIMATION
};

// [D_0891c3fc] Pig - Tap Right
struct Animation anim_tap_remix_7_pig_2step[] = {
    /* 000 */ { tap_trial_remix_7_cel016, 2 },
    /* 001 */ { tap_trial_remix_7_cel017, 2 },
    /* 002 */ { tap_trial_remix_7_cel019, 2 },
    /* 003 */ { tap_trial_remix_7_cel021, 2 },
    /* 004 */ { tap_trial_remix_7_cel022, 2 },
    /* 005 */ { tap_trial_remix_7_cel099, 3 },
    /* 006 */ { tap_trial_remix_7_cel100, 4 },
    /* 007 */ { tap_trial_remix_7_cel011, 30 },
    /* End */ END_ANIMATION
};

// [D_0891c444] Pig - Tap Left (Arms Raised)
struct Animation anim_tap_remix_7_pig_3step_l[] = {
    /* 000 */ { tap_trial_remix_7_cel046, 2 },
    /* 001 */ { tap_trial_remix_7_cel047, 2 },
    /* 002 */ { tap_trial_remix_7_cel048, 2 },
    /* 003 */ { tap_trial_remix_7_cel049, 2 },
    /* 004 */ { tap_trial_remix_7_cel050, 2 },
    /* 005 */ { tap_trial_remix_7_cel025, 20 },
    /* End */ END_ANIMATION
};

// [D_0891c47c] Pig - Tap Right (Arms Raised)
struct Animation anim_tap_remix_7_pig_3step_r[] = {
    /* 000 */ { tap_trial_remix_7_cel053, 2 },
    /* 001 */ { tap_trial_remix_7_cel054, 2 },
    /* 002 */ { tap_trial_remix_7_cel055, 2 },
    /* 003 */ { tap_trial_remix_7_cel056, 2 },
    /* 004 */ { tap_trial_remix_7_cel057, 2 },
    /* 005 */ { tap_trial_remix_7_cel025, 20 },
    /* End */ END_ANIMATION
};

// [D_0891c4b4] Pig - Call Single Tap
struct Animation anim_tap_remix_7_pig_1cue[] = {
    /* 000 */ { tap_trial_remix_7_cel002, 2 },
    /* 001 */ { tap_trial_remix_7_cel004, 2 },
    /* 002 */ { tap_trial_remix_7_cel006, 2 },
    /* 003 */ { tap_trial_remix_7_cel007, 2 },
    /* 004 */ { tap_trial_remix_7_cel008, 20 },
    /* End */ END_ANIMATION
};

// [D_0891c4e4] Pig - Call Double Tap
struct Animation anim_tap_remix_7_pig_2cue[] = {
    /* 000 */ { tap_trial_remix_7_cel015, 2 },
    /* 001 */ { tap_trial_remix_7_cel018, 2 },
    /* 002 */ { tap_trial_remix_7_cel020, 2 },
    /* 003 */ { tap_trial_remix_7_cel021, 2 },
    /* 004 */ { tap_trial_remix_7_cel022, 6 },
    /* 005 */ { tap_trial_remix_7_cel023, 6 },
    /* 006 */ { tap_trial_remix_7_cel022, 20 },
    /* End */ END_ANIMATION
};

// [D_0891c524] Pig - Step Test
struct Animation anim_tap_remix_7_pig_shimmy[] = {
    /* 000 */ { tap_trial_remix_7_cel008, 20 },
    /* 001 */ { tap_trial_remix_7_cel010, 2 },
    /* 002 */ { tap_trial_remix_7_cel011, 2 },
    /* 003 */ { tap_trial_remix_7_cel022, 20 },
    /* 004 */ { tap_trial_remix_7_cel011, 2 },
    /* 005 */ { tap_trial_remix_7_cel010, 2 },
    /* End */ END_ANIMATION
};

// [D_0891c55c] Pig - Call Triple Tap
struct Animation anim_tap_remix_7_pig_3cue[] = {
    /* 000 */ { tap_trial_remix_7_cel024, 20 },
    /* 001 */ { tap_trial_remix_7_cel025, 4 },
    /* 002 */ { tap_trial_remix_7_cel026, 4 },
    /* 003 */ { tap_trial_remix_7_cel027, 4 },
    /* 004 */ { tap_trial_remix_7_cel028, 4 },
    /* 005 */ { tap_trial_remix_7_cel029, 20 },
    /* End */ END_ANIMATION
};

// [D_0891c594] Pig - Crouch
struct Animation anim_tap_remix_7_pig_crouch[] = {
    /* 000 */ { tap_trial_remix_7_cel011, 20 },
    /* 001 */ { tap_trial_remix_7_cel030, 2 },
    /* 002 */ { tap_trial_remix_7_cel031, 2 },
    /* 003 */ { tap_trial_remix_7_cel032, 2 },
    /* 004 */ { tap_trial_remix_7_cel033, 2 },
    /* 005 */ { tap_trial_remix_7_cel034, 2 },
    /* 006 */ { tap_trial_remix_7_cel035, 20 },
    /* End */ END_ANIMATION
};

// [D_0891c5d4] Pig - Jump
struct Animation anim_tap_remix_7_pig_jump[] = {
    /* 000 */ { tap_trial_remix_7_cel039, 2 },
    /* End */ END_ANIMATION
};

// [D_0891c5e4] Pig - Final Jump Tap
struct Animation anim_tap_remix_7_pig_pose_step[] = {
    /* 000 */ { tap_trial_remix_7_cel060, 2 },
    /* 001 */ { tap_trial_remix_7_cel095, 2 },
    /* 002 */ { tap_trial_remix_7_cel096, 2 },
    /* 003 */ { tap_trial_remix_7_cel097, 2 },
    /* 004 */ { tap_trial_remix_7_cel098, 30 },
    /* End */ END_ANIMATION
};

// [D_0891c614] Pig - Beat
struct Animation anim_tap_remix_7_pig_beat[] = {
    /* 000 */ { tap_trial_remix_7_cel013, 3 },
    /* 001 */ { tap_trial_remix_7_cel012, 3 },
    /* 002 */ { tap_trial_remix_7_cel011, 24 },
    /* End */ END_ANIMATION
};

// [D_0891c634] Giraffe - Bedazzled
struct Animation anim_tap_remix_7_giraffe_bedazzled[] = {
    /* 000 */ { tap_trial_remix_7_cel085, 8 },
    /* 001 */ { tap_trial_remix_7_cel084, 8 },
    /* 002 */ { tap_trial_remix_7_cel085, 8 },
    /* 003 */ { tap_trial_remix_7_cel084, 20 },
    /* End */ END_ANIMATION
};

// [D_0891c65c] Giraffe - Neutral
struct Animation anim_tap_remix_7_giraffe_neutral[] = {
    /* 000 */ { tap_trial_remix_7_cel086, 20 },
    /* End */ END_ANIMATION
};

// [D_0891c66c] Giraffe - Disappointed
struct Animation anim_tap_remix_7_giraffe_sad[] = {
    /* 000 */ { tap_trial_remix_7_cel087, 4 },
    /* 001 */ { tap_trial_remix_7_cel088, 4 },
    /* 002 */ { tap_trial_remix_7_cel089, 4 },
    /* 003 */ { tap_trial_remix_7_cel090, 4 },
    /* 004 */ { tap_trial_remix_7_cel091, 4 },
    /* 005 */ { tap_trial_remix_7_cel092, 4 },
    /* 006 */ { tap_trial_remix_7_cel093, 20 },
    /* End */ END_ANIMATION
};

// [D_0891c6ac] Pig - Fall to Crouch
struct Animation anim_tap_remix_7_pig_fall[] = {
    /* 000 */ { tap_trial_remix_7_cel038, 2 },
    /* 001 */ { tap_trial_remix_7_cel037, 2 },
    /* 002 */ { tap_trial_remix_7_cel036, 2 },
    /* 003 */ { tap_trial_remix_7_cel035, 2 },
    /* 004 */ { tap_trial_remix_7_cel034, 2 },
    /* End */ END_ANIMATION
};

// [D_0891c6dc] Pig - Crouching Jump Tap
struct Animation anim_tap_remix_7_pig_crouch_step[] = {
    /* 000 */ { tap_trial_remix_7_cel094, 2 },
    /* 001 */ { tap_trial_remix_7_cel035, 2 },
    /* 002 */ { tap_trial_remix_7_cel034, 2 },
    /* End */ END_ANIMATION
};

// [D_0891c6fc] Shadow
struct Animation anim_tap_remix_7_shadow[] = {
    /* 000 */ { tap_trial_remix_7_cel102, 4 },
    /* End */ END_ANIMATION
};

// [D_0891c70c] "Start to Skip" Tutorial Text
struct Animation anim_tap_remix_7_text_skip_tutorial[] = {
    /* 000 */ { tap_trial_remix_7_cel105, 4 },
    /* End */ END_ANIMATION
};

// [D_0891c71c] Girl - Cue Triple Tap
struct Animation anim_tap_remix_7_girl_3cue[] = {
    /* 000 */ { tap_trial_remix_7_cel106, 20 },
    /* 001 */ { tap_trial_remix_7_cel107, 4 },
    /* 002 */ { tap_trial_remix_7_cel108, 4 },
    /* 003 */ { tap_trial_remix_7_cel109, 4 },
    /* 004 */ { tap_trial_remix_7_cel110, 4 },
    /* 005 */ { tap_trial_remix_7_cel111, 20 },
    /* End */ END_ANIMATION
};

// [D_0891c754] Girl - Tap Left (Arms Raised)
struct Animation anim_tap_remix_7_girl_3step_l[] = {
    /* 000 */ { tap_trial_remix_7_cel112, 2 },
    /* 001 */ { tap_trial_remix_7_cel113, 2 },
    /* 002 */ { tap_trial_remix_7_cel114, 2 },
    /* 003 */ { tap_trial_remix_7_cel115, 2 },
    /* 004 */ { tap_trial_remix_7_cel116, 2 },
    /* 005 */ { tap_trial_remix_7_cel107, 20 },
    /* End */ END_ANIMATION
};

// [D_0891c78c] Girl - Tap Right (Arms Raised)
struct Animation anim_tap_remix_7_girl_3step_r[] = {
    /* 000 */ { tap_trial_remix_7_cel117, 2 },
    /* 001 */ { tap_trial_remix_7_cel118, 2 },
    /* 002 */ { tap_trial_remix_7_cel119, 2 },
    /* 003 */ { tap_trial_remix_7_cel120, 2 },
    /* 004 */ { tap_trial_remix_7_cel121, 2 },
    /* 005 */ { tap_trial_remix_7_cel107, 20 },
    /* End */ END_ANIMATION
};

// [D_0891c7c4] Girl - Cue Left Tap
struct Animation anim_tap_remix_7_girl_1cue[] = {
    /* 000 */ { tap_trial_remix_7_cel122, 2 },
    /* 001 */ { tap_trial_remix_7_cel066, 2 },
    /* 002 */ { tap_trial_remix_7_cel067, 2 },
    /* 003 */ { tap_trial_remix_7_cel068, 2 },
    /* 004 */ { tap_trial_remix_7_cel069, 20 },
    /* End */ END_ANIMATION
};

// [D_0891c7f4] Girl - Cue Right Tap
struct Animation anim_tap_remix_7_girl_2cue[] = {
    /* 000 */ { tap_trial_remix_7_cel123, 2 },
    /* 001 */ { tap_trial_remix_7_cel077, 2 },
    /* 002 */ { tap_trial_remix_7_cel078, 2 },
    /* 003 */ { tap_trial_remix_7_cel079, 2 },
    /* 004 */ { tap_trial_remix_7_cel080, 20 },
    /* End */ END_ANIMATION
};

// [D_0891c824] Girl - Crouch
struct Animation anim_tap_remix_7_girl_crouch[] = {
    /* 000 */ { tap_trial_remix_7_cel073, 20 },
    /* 001 */ { tap_trial_remix_7_cel124, 2 },
    /* 002 */ { tap_trial_remix_7_cel125, 2 },
    /* 003 */ { tap_trial_remix_7_cel126, 2 },
    /* 004 */ { tap_trial_remix_7_cel127, 2 },
    /* 005 */ { tap_trial_remix_7_cel128, 2 },
    /* 006 */ { tap_trial_remix_7_cel129, 20 },
    /* End */ END_ANIMATION
};

// [D_0891c864] Girl - Jump
struct Animation anim_tap_remix_7_girl_jump[] = {
    /* 000 */ { tap_trial_remix_7_cel130, 2 },
    /* End */ END_ANIMATION
};

// [D_0891c874] Girl - Final Jump Tap
struct Animation anim_tap_remix_7_girl_pose_step[] = {
    /* 000 */ { tap_trial_remix_7_cel131, 2 },
    /* 001 */ { tap_trial_remix_7_cel132, 2 },
    /* 002 */ { tap_trial_remix_7_cel133, 2 },
    /* 003 */ { tap_trial_remix_7_cel134, 2 },
    /* 004 */ { tap_trial_remix_7_cel135, 4 },
    /* 005 */ { tap_trial_remix_7_cel136, 4 },
    /* 006 */ { tap_trial_remix_7_cel137, 22 },
    /* End */ END_ANIMATION
};

// [D_0891c8b4] Girl - Fall to Crouch
struct Animation anim_tap_remix_7_girl_fall[] = {
    /* 000 */ { tap_trial_remix_7_cel138, 2 },
    /* 001 */ { tap_trial_remix_7_cel124, 2 },
    /* 002 */ { tap_trial_remix_7_cel125, 2 },
    /* 003 */ { tap_trial_remix_7_cel126, 2 },
    /* 004 */ { tap_trial_remix_7_cel128, 2 },
    /* End */ END_ANIMATION
};

// [D_0891c8e4] Girl - Crouching Jump Tap
struct Animation anim_tap_remix_7_girl_crouch_step[] = {
    /* 000 */ { tap_trial_remix_7_cel139, 2 },
    /* 001 */ { tap_trial_remix_7_cel129, 2 },
    /* 002 */ { tap_trial_remix_7_cel140, 2 },
    /* End */ END_ANIMATION
};

// [D_0891c904] Girl - Miss Crouching Jump Tap
struct Animation anim_tap_remix_7_girl_miss_crouch[] = {
    /* 000 */ { tap_trial_remix_7_cel140, 2 },
    /* 001 */ { tap_trial_remix_7_cel141, 2 },
    /* 002 */ { tap_trial_remix_7_cel142, 3 },
    /* 003 */ { tap_trial_remix_7_cel143, 3 },
    /* 004 */ { tap_trial_remix_7_cel144, 30 },
    /* End */ END_ANIMATION
};

// [D_0891c934] Girl - Miss Final Jump Tap
struct Animation anim_tap_remix_7_girl_miss_pose[] = {
    /* 000 */ { tap_trial_remix_7_cel145, 2 },
    /* 001 */ { tap_trial_remix_7_cel146, 2 },
    /* 002 */ { tap_trial_remix_7_cel147, 3 },
    /* 003 */ { tap_trial_remix_7_cel148, 3 },
    /* 004 */ { tap_trial_remix_7_cel149, 30 },
    /* End */ END_ANIMATION
};
