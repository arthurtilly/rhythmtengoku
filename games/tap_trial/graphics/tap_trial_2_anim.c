#include "global.h"
#include "graphics.h"

#include "tap_trial_2_anim_cells.inc.c"

// [D_089216c0] Girl - Tap Left
struct Animation anim_tap_trial_2_girl_1step[] = {
    /* 000 */ { tap_trial_2_cel065, 2 },
    /* 001 */ { tap_trial_2_cel066, 2 },
    /* 002 */ { tap_trial_2_cel067, 3 },
    /* 003 */ { tap_trial_2_cel068, 3 },
    /* 004 */ { tap_trial_2_cel069, 4 },
    /* 005 */ { tap_trial_2_cel070, 4 },
    /* 006 */ { tap_trial_2_cel071, 4 },
    /* 007 */ { tap_trial_2_cel072, 4 },
    /* 008 */ { tap_trial_2_cel073, 20 },
    /* End */ END_ANIMATION
};

// [D_08921710] Girl - Tap Right
struct Animation anim_tap_trial_2_girl_2step[] = {
    /* 000 */ { tap_trial_2_cel076, 2 },
    /* 001 */ { tap_trial_2_cel077, 2 },
    /* 002 */ { tap_trial_2_cel078, 3 },
    /* 003 */ { tap_trial_2_cel079, 3 },
    /* 004 */ { tap_trial_2_cel080, 4 },
    /* 005 */ { tap_trial_2_cel081, 4 },
    /* 006 */ { tap_trial_2_cel082, 4 },
    /* 007 */ { tap_trial_2_cel083, 4 },
    /* 008 */ { tap_trial_2_cel073, 20 },
    /* End */ END_ANIMATION
};

// [D_08921760] Girl - Beat
struct Animation anim_tap_trial_2_girl_beat[] = {
    /* 000 */ { tap_trial_2_cel075, 3 },
    /* 001 */ { tap_trial_2_cel074, 3 },
    /* 002 */ { tap_trial_2_cel073, 24 },
    /* End */ END_ANIMATION
};

// [D_08921780] Monkey - Tap Left
struct Animation anim_tap_trial_2_monkey_1step[] = {
    /* 000 */ { tap_trial_2_cel000, 2 },
    /* 001 */ { tap_trial_2_cel003, 2 },
    /* 002 */ { tap_trial_2_cel005, 2 },
    /* 003 */ { tap_trial_2_cel007, 2 },
    /* 004 */ { tap_trial_2_cel008, 2 },
    /* 005 */ { tap_trial_2_cel009, 3 },
    /* 006 */ { tap_trial_2_cel010, 4 },
    /* 007 */ { tap_trial_2_cel011, 30 },
    /* End */ END_ANIMATION
};

// [D_089217c8] Monkey - Tap Right
struct Animation anim_tap_trial_2_monkey_2step[] = {
    /* 000 */ { tap_trial_2_cel016, 2 },
    /* 001 */ { tap_trial_2_cel017, 2 },
    /* 002 */ { tap_trial_2_cel019, 2 },
    /* 003 */ { tap_trial_2_cel021, 2 },
    /* 004 */ { tap_trial_2_cel022, 2 },
    /* 005 */ { tap_trial_2_cel106, 3 },
    /* 006 */ { tap_trial_2_cel107, 4 },
    /* 007 */ { tap_trial_2_cel011, 30 },
    /* End */ END_ANIMATION
};

// [D_08921810] Monkey - Tap Left (Arms Raised)
struct Animation anim_tap_trial_2_monkey_3step_l[] = {
    /* 000 */ { tap_trial_2_cel046, 2 },
    /* 001 */ { tap_trial_2_cel047, 2 },
    /* 002 */ { tap_trial_2_cel048, 2 },
    /* 003 */ { tap_trial_2_cel049, 2 },
    /* 004 */ { tap_trial_2_cel050, 2 },
    /* 005 */ { tap_trial_2_cel025, 20 },
    /* End */ END_ANIMATION
};

// [D_08921848] Monkey - Tap Right (Arms Raised)
struct Animation anim_tap_trial_2_monkey_3step_r[] = {
    /* 000 */ { tap_trial_2_cel053, 2 },
    /* 001 */ { tap_trial_2_cel054, 2 },
    /* 002 */ { tap_trial_2_cel055, 2 },
    /* 003 */ { tap_trial_2_cel056, 2 },
    /* 004 */ { tap_trial_2_cel057, 2 },
    /* 005 */ { tap_trial_2_cel025, 20 },
    /* End */ END_ANIMATION
};

// [D_08921880] Monkey - Call Single Tap
struct Animation anim_tap_trial_2_monkey_1cue[] = {
    /* 000 */ { tap_trial_2_cel002, 2 },
    /* 001 */ { tap_trial_2_cel004, 2 },
    /* 002 */ { tap_trial_2_cel006, 2 },
    /* 003 */ { tap_trial_2_cel007, 2 },
    /* 004 */ { tap_trial_2_cel008, 20 },
    /* End */ END_ANIMATION
};

// [D_089218b0] Monkey - Call Double Tap
struct Animation anim_tap_trial_2_monkey_2cue[] = {
    /* 000 */ { tap_trial_2_cel015, 2 },
    /* 001 */ { tap_trial_2_cel018, 2 },
    /* 002 */ { tap_trial_2_cel020, 2 },
    /* 003 */ { tap_trial_2_cel021, 2 },
    /* 004 */ { tap_trial_2_cel022, 6 },
    /* 005 */ { tap_trial_2_cel023, 6 },
    /* 006 */ { tap_trial_2_cel022, 20 },
    /* End */ END_ANIMATION
};

// [D_089218f0] Monkey - Step Test
struct Animation anim_tap_trial_2_monkey_shimmy[] = {
    /* 000 */ { tap_trial_2_cel008, 20 },
    /* 001 */ { tap_trial_2_cel010, 2 },
    /* 002 */ { tap_trial_2_cel011, 2 },
    /* 003 */ { tap_trial_2_cel022, 20 },
    /* 004 */ { tap_trial_2_cel011, 2 },
    /* 005 */ { tap_trial_2_cel010, 2 },
    /* End */ END_ANIMATION
};

// [D_08921928] Monkey - Call Triple Tap
struct Animation anim_tap_trial_2_monkey_3cue[] = {
    /* 000 */ { tap_trial_2_cel024, 20 },
    /* 001 */ { tap_trial_2_cel025, 4 },
    /* 002 */ { tap_trial_2_cel026, 4 },
    /* 003 */ { tap_trial_2_cel027, 4 },
    /* 004 */ { tap_trial_2_cel028, 4 },
    /* 005 */ { tap_trial_2_cel029, 20 },
    /* End */ END_ANIMATION
};

// [D_08921960] Monkey - Crouch
struct Animation anim_tap_trial_2_monkey_crouch[] = {
    /* 000 */ { tap_trial_2_cel011, 20 },
    /* 001 */ { tap_trial_2_cel030, 2 },
    /* 002 */ { tap_trial_2_cel031, 2 },
    /* 003 */ { tap_trial_2_cel032, 2 },
    /* 004 */ { tap_trial_2_cel033, 2 },
    /* 005 */ { tap_trial_2_cel034, 2 },
    /* 006 */ { tap_trial_2_cel035, 20 },
    /* End */ END_ANIMATION
};

// [D_089219a0] Monkey - Jump
struct Animation anim_tap_trial_2_monkey_jump[] = {
    /* 000 */ { tap_trial_2_cel039, 2 },
    /* End */ END_ANIMATION
};

// [D_089219b0] Monkey - Final Jump Tap
struct Animation anim_tap_trial_2_monkey_pose_step[] = {
    /* 000 */ { tap_trial_2_cel060, 2 },
    /* 001 */ { tap_trial_2_cel095, 2 },
    /* 002 */ { tap_trial_2_cel096, 2 },
    /* 003 */ { tap_trial_2_cel097, 2 },
    /* 004 */ { tap_trial_2_cel098, 2 },
    /* 005 */ { tap_trial_2_cel099, 2 },
    /* 006 */ { tap_trial_2_cel100, 2 },
    /* 007 */ { tap_trial_2_cel101, 4 },
    /* 008 */ { tap_trial_2_cel102, 15 },
    /* 009 */ { tap_trial_2_cel103, 2 },
    /* 010 */ { tap_trial_2_cel104, 2 },
    /* 011 */ { tap_trial_2_cel105, 2 },
    /* End */ END_ANIMATION
};

// [D_08921a18] Monkey - Beat
struct Animation anim_tap_trial_2_monkey_beat[] = {
    /* 000 */ { tap_trial_2_cel013, 3 },
    /* 001 */ { tap_trial_2_cel012, 3 },
    /* 002 */ { tap_trial_2_cel011, 24 },
    /* End */ END_ANIMATION
};

// [D_08921a38] Camel - Bedazzled
struct Animation anim_tap_trial_2_camel_bedazzled[] = {
    /* 000 */ { tap_trial_2_cel085, 8 },
    /* 001 */ { tap_trial_2_cel084, 8 },
    /* 002 */ { tap_trial_2_cel085, 8 },
    /* 003 */ { tap_trial_2_cel084, 20 },
    /* End */ END_ANIMATION
};

// [D_08921a60] Camel - Neutral
struct Animation anim_tap_trial_2_camel_neutral[] = {
    /* 000 */ { tap_trial_2_cel086, 20 },
    /* End */ END_ANIMATION
};

// [D_08921a70] Camel - Disappointed
struct Animation anim_tap_trial_2_camel_sad[] = {
    /* 000 */ { tap_trial_2_cel087, 4 },
    /* 001 */ { tap_trial_2_cel088, 4 },
    /* 002 */ { tap_trial_2_cel089, 4 },
    /* 003 */ { tap_trial_2_cel090, 4 },
    /* 004 */ { tap_trial_2_cel091, 4 },
    /* 005 */ { tap_trial_2_cel092, 4 },
    /* 006 */ { tap_trial_2_cel093, 20 },
    /* End */ END_ANIMATION
};

// [D_08921ab0] Monkey - Fall to Crouch
struct Animation anim_tap_trial_2_monkey_fall[] = {
    /* 000 */ { tap_trial_2_cel038, 2 },
    /* 001 */ { tap_trial_2_cel037, 2 },
    /* 002 */ { tap_trial_2_cel036, 2 },
    /* 003 */ { tap_trial_2_cel035, 2 },
    /* 004 */ { tap_trial_2_cel034, 2 },
    /* End */ END_ANIMATION
};

// [D_08921ae0] Monkey - Crouching Jump Tap
struct Animation anim_tap_trial_2_monkey_crouch_step[] = {
    /* 000 */ { tap_trial_2_cel094, 2 },
    /* 001 */ { tap_trial_2_cel035, 2 },
    /* 002 */ { tap_trial_2_cel034, 2 },
    /* End */ END_ANIMATION
};

// [D_08921b00] Shadow
struct Animation anim_tap_trial_2_shadow[] = {
    /* 000 */ { tap_trial_2_cel109, 4 },
    /* End */ END_ANIMATION
};

// [D_08921b10] ("Start to Skip" Tutorial Text)
struct Animation anim_tap_trial_2_text_skip_tutorial[] = {
    /* 000 */ { tap_trial_2_cel112, 4 },
    /* End */ END_ANIMATION
};

// [D_08921b20] Girl - Cue Triple Tap
struct Animation anim_tap_trial_2_girl_3cue[] = {
    /* 000 */ { tap_trial_2_cel113, 20 },
    /* 001 */ { tap_trial_2_cel114, 4 },
    /* 002 */ { tap_trial_2_cel115, 4 },
    /* 003 */ { tap_trial_2_cel116, 4 },
    /* 004 */ { tap_trial_2_cel117, 4 },
    /* 005 */ { tap_trial_2_cel118, 20 },
    /* End */ END_ANIMATION
};

// [D_08921b58] Girl - Tap Left (Arms Raised)
struct Animation anim_tap_trial_2_girl_3step_l[] = {
    /* 000 */ { tap_trial_2_cel119, 2 },
    /* 001 */ { tap_trial_2_cel120, 2 },
    /* 002 */ { tap_trial_2_cel121, 2 },
    /* 003 */ { tap_trial_2_cel122, 2 },
    /* 004 */ { tap_trial_2_cel123, 2 },
    /* 005 */ { tap_trial_2_cel114, 20 },
    /* End */ END_ANIMATION
};

// [D_08921b90] Girl - Tap Right (Arms Raised)
struct Animation anim_tap_trial_2_girl_3step_r[] = {
    /* 000 */ { tap_trial_2_cel124, 2 },
    /* 001 */ { tap_trial_2_cel125, 2 },
    /* 002 */ { tap_trial_2_cel126, 2 },
    /* 003 */ { tap_trial_2_cel127, 2 },
    /* 004 */ { tap_trial_2_cel128, 2 },
    /* 005 */ { tap_trial_2_cel114, 20 },
    /* End */ END_ANIMATION
};

// [D_08921bc8] Girl - Cue Left Tap
struct Animation anim_tap_trial_2_girl_1cue[] = {
    /* 000 */ { tap_trial_2_cel129, 2 },
    /* 001 */ { tap_trial_2_cel066, 2 },
    /* 002 */ { tap_trial_2_cel067, 2 },
    /* 003 */ { tap_trial_2_cel068, 2 },
    /* 004 */ { tap_trial_2_cel069, 20 },
    /* End */ END_ANIMATION
};

// [D_08921bf8] Girl - Cue Right Tap
struct Animation anim_tap_trial_2_girl_2cue[] = {
    /* 000 */ { tap_trial_2_cel130, 2 },
    /* 001 */ { tap_trial_2_cel077, 2 },
    /* 002 */ { tap_trial_2_cel078, 2 },
    /* 003 */ { tap_trial_2_cel079, 2 },
    /* 004 */ { tap_trial_2_cel080, 20 },
    /* End */ END_ANIMATION
};

// [D_08921c28] Girl - Crouch
struct Animation anim_tap_trial_2_girl_crouch[] = {
    /* 000 */ { tap_trial_2_cel073, 20 },
    /* 001 */ { tap_trial_2_cel131, 2 },
    /* 002 */ { tap_trial_2_cel132, 2 },
    /* 003 */ { tap_trial_2_cel133, 2 },
    /* 004 */ { tap_trial_2_cel134, 2 },
    /* 005 */ { tap_trial_2_cel135, 2 },
    /* 006 */ { tap_trial_2_cel136, 20 },
    /* End */ END_ANIMATION
};

// [D_08921c68] Girl - Jump
struct Animation anim_tap_trial_2_girl_jump[] = {
    /* 000 */ { tap_trial_2_cel137, 2 },
    /* End */ END_ANIMATION
};

// [D_08921c78] Girl - Final Jump Tap
struct Animation anim_tap_trial_2_girl_pose_step[] = {
    /* 000 */ { tap_trial_2_cel138, 2 },
    /* 001 */ { tap_trial_2_cel139, 2 },
    /* 002 */ { tap_trial_2_cel140, 2 },
    /* 003 */ { tap_trial_2_cel141, 4 },
    /* 004 */ { tap_trial_2_cel142, 2 },
    /* 005 */ { tap_trial_2_cel143, 2 },
    /* 006 */ { tap_trial_2_cel144, 2 },
    /* 007 */ { tap_trial_2_cel145, 2 },
    /* 008 */ { tap_trial_2_cel146, 15 },
    /* 009 */ { tap_trial_2_cel147, 2 },
    /* 010 */ { tap_trial_2_cel148, 2 },
    /* 011 */ { tap_trial_2_cel149, 2 },
    /* End */ END_ANIMATION
};

// [D_08921ce0] Girl - Fall to Crouch
struct Animation anim_tap_trial_2_girl_fall[] = {
    /* 000 */ { tap_trial_2_cel150, 2 },
    /* 001 */ { tap_trial_2_cel131, 2 },
    /* 002 */ { tap_trial_2_cel132, 2 },
    /* 003 */ { tap_trial_2_cel133, 2 },
    /* 004 */ { tap_trial_2_cel135, 2 },
    /* End */ END_ANIMATION
};

// [D_08921d10] Girl - Crouching Jump Tap
struct Animation anim_tap_trial_2_girl_crouch_step[] = {
    /* 000 */ { tap_trial_2_cel151, 2 },
    /* 001 */ { tap_trial_2_cel136, 2 },
    /* 002 */ { tap_trial_2_cel152, 2 },
    /* End */ END_ANIMATION
};

// [D_08921d30] Girl - Miss Crouching Jump Tap
struct Animation anim_tap_trial_2_girl_miss_crouch[] = {
    /* 000 */ { tap_trial_2_cel152, 2 },
    /* 001 */ { tap_trial_2_cel153, 2 },
    /* 002 */ { tap_trial_2_cel154, 3 },
    /* 003 */ { tap_trial_2_cel155, 3 },
    /* 004 */ { tap_trial_2_cel156, 30 },
    /* End */ END_ANIMATION
};

// [D_08921d60] Girl - Miss Final Jump Tap
struct Animation anim_tap_trial_2_girl_miss_pose[] = {
    /* 000 */ { tap_trial_2_cel157, 2 },
    /* 001 */ { tap_trial_2_cel158, 2 },
    /* 002 */ { tap_trial_2_cel159, 3 },
    /* 003 */ { tap_trial_2_cel160, 3 },
    /* 004 */ { tap_trial_2_cel161, 30 },
    /* End */ END_ANIMATION
};
