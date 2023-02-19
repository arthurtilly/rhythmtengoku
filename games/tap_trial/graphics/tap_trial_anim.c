#include "global.h"
#include "graphics.h"

#include "tap_trial_anim_cells.inc.c"

// [D_08916ef0] Girl - Tap Left
struct Animation anim_tap_trial_girl_1step[] = {
    /* 000 */ { tap_trial_cel065, 2 },
    /* 001 */ { tap_trial_cel066, 2 },
    /* 002 */ { tap_trial_cel067, 3 },
    /* 003 */ { tap_trial_cel068, 3 },
    /* 004 */ { tap_trial_cel069, 4 },
    /* 005 */ { tap_trial_cel070, 4 },
    /* 006 */ { tap_trial_cel071, 4 },
    /* 007 */ { tap_trial_cel072, 4 },
    /* 008 */ { tap_trial_cel073, 20 },
    /* End */ END_ANIMATION
};

// [D_08916f40] Girl - Tap Right
struct Animation anim_tap_trial_girl_2step[] = {
    /* 000 */ { tap_trial_cel076, 2 },
    /* 001 */ { tap_trial_cel077, 2 },
    /* 002 */ { tap_trial_cel078, 3 },
    /* 003 */ { tap_trial_cel079, 3 },
    /* 004 */ { tap_trial_cel080, 4 },
    /* 005 */ { tap_trial_cel081, 4 },
    /* 006 */ { tap_trial_cel082, 4 },
    /* 007 */ { tap_trial_cel083, 4 },
    /* 008 */ { tap_trial_cel073, 20 },
    /* End */ END_ANIMATION
};

// [D_08916f90] Girl - Beat
struct Animation anim_tap_trial_girl_beat[] = {
    /* 000 */ { tap_trial_cel075, 3 },
    /* 001 */ { tap_trial_cel074, 3 },
    /* 002 */ { tap_trial_cel073, 24 },
    /* End */ END_ANIMATION
};

// [D_08916fb0] Monkey - Tap Left
struct Animation anim_tap_trial_monkey_1step[] = {
    /* 000 */ { tap_trial_cel000, 2 },
    /* 001 */ { tap_trial_cel003, 2 },
    /* 002 */ { tap_trial_cel005, 2 },
    /* 003 */ { tap_trial_cel007, 2 },
    /* 004 */ { tap_trial_cel008, 2 },
    /* 005 */ { tap_trial_cel009, 3 },
    /* 006 */ { tap_trial_cel010, 4 },
    /* 007 */ { tap_trial_cel011, 30 },
    /* End */ END_ANIMATION
};

// [D_08916ff8] Monkey - Tap Right
struct Animation anim_tap_trial_monkey_2step[] = {
    /* 000 */ { tap_trial_cel016, 2 },
    /* 001 */ { tap_trial_cel017, 2 },
    /* 002 */ { tap_trial_cel019, 2 },
    /* 003 */ { tap_trial_cel021, 2 },
    /* 004 */ { tap_trial_cel022, 2 },
    /* 005 */ { tap_trial_cel099, 3 },
    /* 006 */ { tap_trial_cel100, 4 },
    /* 007 */ { tap_trial_cel011, 30 },
    /* End */ END_ANIMATION
};

// [D_08917040] Monkey - Tap Left (Arms Raised)
struct Animation anim_tap_trial_monkey_3step_l[] = {
    /* 000 */ { tap_trial_cel046, 2 },
    /* 001 */ { tap_trial_cel047, 2 },
    /* 002 */ { tap_trial_cel048, 2 },
    /* 003 */ { tap_trial_cel049, 2 },
    /* 004 */ { tap_trial_cel050, 2 },
    /* 005 */ { tap_trial_cel025, 20 },
    /* End */ END_ANIMATION
};

// [D_08917078] Monkey - Tap Right (Arms Raised)
struct Animation anim_tap_trial_monkey_3step_r[] = {
    /* 000 */ { tap_trial_cel053, 2 },
    /* 001 */ { tap_trial_cel054, 2 },
    /* 002 */ { tap_trial_cel055, 2 },
    /* 003 */ { tap_trial_cel056, 2 },
    /* 004 */ { tap_trial_cel057, 2 },
    /* 005 */ { tap_trial_cel025, 20 },
    /* End */ END_ANIMATION
};

// [D_089170b0] Monkey - Call Single Tap
struct Animation anim_tap_trial_monkey_1cue[] = {
    /* 000 */ { tap_trial_cel002, 2 },
    /* 001 */ { tap_trial_cel004, 2 },
    /* 002 */ { tap_trial_cel006, 2 },
    /* 003 */ { tap_trial_cel007, 2 },
    /* 004 */ { tap_trial_cel008, 20 },
    /* End */ END_ANIMATION
};

// [D_089170e0] Monkey - Call Double Tap
struct Animation anim_tap_trial_monkey_2cue[] = {
    /* 000 */ { tap_trial_cel015, 2 },
    /* 001 */ { tap_trial_cel018, 2 },
    /* 002 */ { tap_trial_cel020, 2 },
    /* 003 */ { tap_trial_cel021, 2 },
    /* 004 */ { tap_trial_cel022, 6 },
    /* 005 */ { tap_trial_cel023, 6 },
    /* 006 */ { tap_trial_cel022, 20 },
    /* End */ END_ANIMATION
};

// [D_08917120] Monkey - Step Test
struct Animation anim_tap_trial_monkey_shimmy[] = {
    /* 000 */ { tap_trial_cel008, 20 },
    /* 001 */ { tap_trial_cel010, 2 },
    /* 002 */ { tap_trial_cel011, 2 },
    /* 003 */ { tap_trial_cel022, 20 },
    /* 004 */ { tap_trial_cel011, 2 },
    /* 005 */ { tap_trial_cel010, 2 },
    /* End */ END_ANIMATION
};

// [D_08917158] Monkey - Call Triple Tap
struct Animation anim_tap_trial_monkey_3cue[] = {
    /* 000 */ { tap_trial_cel024, 20 },
    /* 001 */ { tap_trial_cel025, 4 },
    /* 002 */ { tap_trial_cel026, 4 },
    /* 003 */ { tap_trial_cel027, 4 },
    /* 004 */ { tap_trial_cel028, 4 },
    /* 005 */ { tap_trial_cel029, 20 },
    /* End */ END_ANIMATION
};

// [D_08917190] Monkey - Crouch
struct Animation anim_tap_trial_monkey_crouch[] = {
    /* 000 */ { tap_trial_cel011, 20 },
    /* 001 */ { tap_trial_cel030, 2 },
    /* 002 */ { tap_trial_cel031, 2 },
    /* 003 */ { tap_trial_cel032, 2 },
    /* 004 */ { tap_trial_cel033, 2 },
    /* 005 */ { tap_trial_cel034, 2 },
    /* 006 */ { tap_trial_cel035, 20 },
    /* End */ END_ANIMATION
};

// [D_089171d0] Monkey - Jump
struct Animation anim_tap_trial_monkey_jump[] = {
    /* 000 */ { tap_trial_cel039, 2 },
    /* End */ END_ANIMATION
};

// [D_089171e0] Monkey - Final Jump Tap
struct Animation anim_tap_trial_monkey_pose_step[] = {
    /* 000 */ { tap_trial_cel060, 2 },
    /* 001 */ { tap_trial_cel095, 2 },
    /* 002 */ { tap_trial_cel096, 2 },
    /* 003 */ { tap_trial_cel097, 2 },
    /* 004 */ { tap_trial_cel098, 30 },
    /* End */ END_ANIMATION
};

// [D_08917210] Monkey - Beat
struct Animation anim_tap_trial_monkey_beat[] = {
    /* 000 */ { tap_trial_cel013, 3 },
    /* 001 */ { tap_trial_cel012, 3 },
    /* 002 */ { tap_trial_cel011, 24 },
    /* End */ END_ANIMATION
};

// [D_08917230] Giraffe - Bedazzled
struct Animation anim_tap_trial_giraffe_bedazzled[] = {
    /* 000 */ { tap_trial_cel085, 8 },
    /* 001 */ { tap_trial_cel084, 8 },
    /* 002 */ { tap_trial_cel085, 8 },
    /* 003 */ { tap_trial_cel084, 20 },
    /* End */ END_ANIMATION
};

// [D_08917258] Giraffe - Neutral
struct Animation anim_tap_trial_giraffe_neutral[] = {
    /* 000 */ { tap_trial_cel086, 20 },
    /* End */ END_ANIMATION
};

// [D_08917268] Giraffe - Disappointed
struct Animation anim_tap_trial_giraffe_sad[] = {
    /* 000 */ { tap_trial_cel087, 4 },
    /* 001 */ { tap_trial_cel088, 4 },
    /* 002 */ { tap_trial_cel089, 4 },
    /* 003 */ { tap_trial_cel090, 4 },
    /* 004 */ { tap_trial_cel091, 4 },
    /* 005 */ { tap_trial_cel092, 4 },
    /* 006 */ { tap_trial_cel093, 20 },
    /* End */ END_ANIMATION
};

// [D_089172a8] Monkey - Fall to Crouch
struct Animation anim_tap_trial_monkey_fall[] = {
    /* 000 */ { tap_trial_cel038, 2 },
    /* 001 */ { tap_trial_cel037, 2 },
    /* 002 */ { tap_trial_cel036, 2 },
    /* 003 */ { tap_trial_cel035, 2 },
    /* 004 */ { tap_trial_cel034, 2 },
    /* End */ END_ANIMATION
};

// [D_089172d8] Monkey - Crouching Jump Tap
struct Animation anim_tap_trial_monkey_crouch_step[] = {
    /* 000 */ { tap_trial_cel094, 2 },
    /* 001 */ { tap_trial_cel035, 2 },
    /* 002 */ { tap_trial_cel034, 2 },
    /* End */ END_ANIMATION
};

// [D_089172f8] Shadow
struct Animation anim_tap_trial_shadow[] = {
    /* 000 */ { tap_trial_cel102, 4 },
    /* End */ END_ANIMATION
};

// [D_08917308] "Start to Skip" Tutorial Text
struct Animation anim_tap_trial_text_skip_tutorial[] = {
    /* 000 */ { tap_trial_cel105, 4 },
    /* End */ END_ANIMATION
};

// [D_08917318] Girl - Cue Triple Tap
struct Animation anim_tap_trial_girl_3cue[] = {
    /* 000 */ { tap_trial_cel106, 20 },
    /* 001 */ { tap_trial_cel107, 4 },
    /* 002 */ { tap_trial_cel108, 4 },
    /* 003 */ { tap_trial_cel109, 4 },
    /* 004 */ { tap_trial_cel110, 4 },
    /* 005 */ { tap_trial_cel111, 20 },
    /* End */ END_ANIMATION
};

// [D_08917350] Girl - Tap Left (Arms Raised)
struct Animation anim_tap_trial_girl_3step_l[] = {
    /* 000 */ { tap_trial_cel112, 2 },
    /* 001 */ { tap_trial_cel113, 2 },
    /* 002 */ { tap_trial_cel114, 2 },
    /* 003 */ { tap_trial_cel115, 2 },
    /* 004 */ { tap_trial_cel116, 2 },
    /* 005 */ { tap_trial_cel107, 20 },
    /* End */ END_ANIMATION
};

// [D_08917388] Girl - Tap Right (Arms Raised)
struct Animation anim_tap_trial_girl_3step_r[] = {
    /* 000 */ { tap_trial_cel117, 2 },
    /* 001 */ { tap_trial_cel118, 2 },
    /* 002 */ { tap_trial_cel119, 2 },
    /* 003 */ { tap_trial_cel120, 2 },
    /* 004 */ { tap_trial_cel121, 2 },
    /* 005 */ { tap_trial_cel107, 20 },
    /* End */ END_ANIMATION
};

// [D_089173c0] Girl - Cue Left Tap
struct Animation anim_tap_trial_girl_1cue[] = {
    /* 000 */ { tap_trial_cel122, 2 },
    /* 001 */ { tap_trial_cel066, 2 },
    /* 002 */ { tap_trial_cel067, 2 },
    /* 003 */ { tap_trial_cel068, 2 },
    /* 004 */ { tap_trial_cel069, 20 },
    /* End */ END_ANIMATION
};

// [D_089173f0] Girl - Cue Right Tap
struct Animation anim_tap_trial_girl_2cue[] = {
    /* 000 */ { tap_trial_cel123, 2 },
    /* 001 */ { tap_trial_cel077, 2 },
    /* 002 */ { tap_trial_cel078, 2 },
    /* 003 */ { tap_trial_cel079, 2 },
    /* 004 */ { tap_trial_cel080, 20 },
    /* End */ END_ANIMATION
};

// [D_08917420] Girl - Crouch
struct Animation anim_tap_trial_girl_crouch[] = {
    /* 000 */ { tap_trial_cel073, 20 },
    /* 001 */ { tap_trial_cel124, 2 },
    /* 002 */ { tap_trial_cel125, 2 },
    /* 003 */ { tap_trial_cel126, 2 },
    /* 004 */ { tap_trial_cel127, 2 },
    /* 005 */ { tap_trial_cel128, 2 },
    /* 006 */ { tap_trial_cel129, 20 },
    /* End */ END_ANIMATION
};

// [D_08917460] Girl - Jump
struct Animation anim_tap_trial_girl_jump[] = {
    /* 000 */ { tap_trial_cel130, 2 },
    /* End */ END_ANIMATION
};

// [D_08917470] Girl - Final Jump Tap
struct Animation anim_tap_trial_girl_pose_step[] = {
    /* 000 */ { tap_trial_cel131, 2 },
    /* 001 */ { tap_trial_cel132, 2 },
    /* 002 */ { tap_trial_cel133, 2 },
    /* 003 */ { tap_trial_cel134, 2 },
    /* 004 */ { tap_trial_cel135, 30 },
    /* End */ END_ANIMATION
};

// [D_089174a0] Girl - Fall to Crouch
struct Animation anim_tap_trial_girl_fall[] = {
    /* 000 */ { tap_trial_cel136, 2 },
    /* 001 */ { tap_trial_cel124, 2 },
    /* 002 */ { tap_trial_cel125, 2 },
    /* 003 */ { tap_trial_cel126, 2 },
    /* 004 */ { tap_trial_cel128, 2 },
    /* End */ END_ANIMATION
};

// [D_089174d0] Girl - Crouching Jump Tap
struct Animation anim_tap_trial_girl_crouch_step[] = {
    /* 000 */ { tap_trial_cel137, 2 },
    /* 001 */ { tap_trial_cel129, 2 },
    /* 002 */ { tap_trial_cel138, 2 },
    /* End */ END_ANIMATION
};

// [D_089174f0] Girl - Miss Crouching Jump Tap
struct Animation anim_tap_trial_girl_miss_crouch[] = {
    /* 000 */ { tap_trial_cel138, 2 },
    /* 001 */ { tap_trial_cel139, 2 },
    /* 002 */ { tap_trial_cel140, 3 },
    /* 003 */ { tap_trial_cel141, 3 },
    /* 004 */ { tap_trial_cel142, 30 },
    /* End */ END_ANIMATION
};

// [D_08917520] Girl - Miss Final Jump Tap
struct Animation anim_tap_trial_girl_miss_pose[] = {
    /* 000 */ { tap_trial_cel143, 2 },
    /* 001 */ { tap_trial_cel144, 2 },
    /* 002 */ { tap_trial_cel145, 3 },
    /* 003 */ { tap_trial_cel146, 3 },
    /* 004 */ { tap_trial_cel147, 30 },
    /* End */ END_ANIMATION
};
