#include "global.h"
#include "graphics.h"

#include "tap_trial_remix_8_anim_cells.inc.c"

// [D_08919840] Girl - Tap Left
struct Animation anim_tap_remix_8_girl_1step[] = {
    /* 000 */ { tap_trial_remix_8_cel065, 2 },
    /* 001 */ { tap_trial_remix_8_cel066, 2 },
    /* 002 */ { tap_trial_remix_8_cel067, 3 },
    /* 003 */ { tap_trial_remix_8_cel068, 3 },
    /* 004 */ { tap_trial_remix_8_cel069, 4 },
    /* 005 */ { tap_trial_remix_8_cel070, 4 },
    /* 006 */ { tap_trial_remix_8_cel071, 4 },
    /* 007 */ { tap_trial_remix_8_cel072, 4 },
    /* 008 */ { tap_trial_remix_8_cel073, 20 },
    /* End */ END_ANIMATION
};

// [D_08919890] Girl - Tap Right
struct Animation anim_tap_remix_8_girl_2step[] = {
    /* 000 */ { tap_trial_remix_8_cel076, 2 },
    /* 001 */ { tap_trial_remix_8_cel077, 2 },
    /* 002 */ { tap_trial_remix_8_cel078, 3 },
    /* 003 */ { tap_trial_remix_8_cel079, 3 },
    /* 004 */ { tap_trial_remix_8_cel080, 4 },
    /* 005 */ { tap_trial_remix_8_cel081, 4 },
    /* 006 */ { tap_trial_remix_8_cel082, 4 },
    /* 007 */ { tap_trial_remix_8_cel083, 4 },
    /* 008 */ { tap_trial_remix_8_cel073, 20 },
    /* End */ END_ANIMATION
};

// [D_089198e0] Girl - Beat
struct Animation anim_tap_remix_8_girl_beat[] = {
    /* 000 */ { tap_trial_remix_8_cel075, 3 },
    /* 001 */ { tap_trial_remix_8_cel074, 3 },
    /* 002 */ { tap_trial_remix_8_cel073, 24 },
    /* End */ END_ANIMATION
};

// [D_08919900] Monkey - Tap Left
struct Animation anim_tap_remix_8_monkey_1step[] = {
    /* 000 */ { tap_trial_remix_8_cel000, 2 },
    /* 001 */ { tap_trial_remix_8_cel003, 2 },
    /* 002 */ { tap_trial_remix_8_cel005, 2 },
    /* 003 */ { tap_trial_remix_8_cel007, 2 },
    /* 004 */ { tap_trial_remix_8_cel008, 2 },
    /* 005 */ { tap_trial_remix_8_cel009, 3 },
    /* 006 */ { tap_trial_remix_8_cel010, 4 },
    /* 007 */ { tap_trial_remix_8_cel011, 30 },
    /* End */ END_ANIMATION
};

// [D_08919948] Monkey - Tap Right
struct Animation anim_tap_remix_8_monkey_2step[] = {
    /* 000 */ { tap_trial_remix_8_cel016, 2 },
    /* 001 */ { tap_trial_remix_8_cel017, 2 },
    /* 002 */ { tap_trial_remix_8_cel019, 2 },
    /* 003 */ { tap_trial_remix_8_cel021, 2 },
    /* 004 */ { tap_trial_remix_8_cel022, 2 },
    /* 005 */ { tap_trial_remix_8_cel099, 3 },
    /* 006 */ { tap_trial_remix_8_cel100, 4 },
    /* 007 */ { tap_trial_remix_8_cel011, 30 },
    /* End */ END_ANIMATION
};

// [D_08919990] Monkey - Tap Left (Arms Raised)
struct Animation anim_tap_remix_8_monkey_3step_l[] = {
    /* 000 */ { tap_trial_remix_8_cel046, 2 },
    /* 001 */ { tap_trial_remix_8_cel047, 2 },
    /* 002 */ { tap_trial_remix_8_cel048, 2 },
    /* 003 */ { tap_trial_remix_8_cel049, 2 },
    /* 004 */ { tap_trial_remix_8_cel050, 2 },
    /* 005 */ { tap_trial_remix_8_cel025, 20 },
    /* End */ END_ANIMATION
};

// [D_089199c8] Monkey - Tap Right (Arms Raised)
struct Animation anim_tap_remix_8_monkey_3step_r[] = {
    /* 000 */ { tap_trial_remix_8_cel053, 2 },
    /* 001 */ { tap_trial_remix_8_cel054, 2 },
    /* 002 */ { tap_trial_remix_8_cel055, 2 },
    /* 003 */ { tap_trial_remix_8_cel056, 2 },
    /* 004 */ { tap_trial_remix_8_cel057, 2 },
    /* 005 */ { tap_trial_remix_8_cel025, 20 },
    /* End */ END_ANIMATION
};

// [D_08919a00] Monkey - Call Single Tap
struct Animation anim_tap_remix_8_monkey_1cue[] = {
    /* 000 */ { tap_trial_remix_8_cel002, 2 },
    /* 001 */ { tap_trial_remix_8_cel004, 2 },
    /* 002 */ { tap_trial_remix_8_cel006, 2 },
    /* 003 */ { tap_trial_remix_8_cel007, 2 },
    /* 004 */ { tap_trial_remix_8_cel008, 20 },
    /* End */ END_ANIMATION
};

// [D_08919a30] Monkey - Call Double Tap
struct Animation anim_tap_remix_8_monkey_2cue[] = {
    /* 000 */ { tap_trial_remix_8_cel015, 2 },
    /* 001 */ { tap_trial_remix_8_cel018, 2 },
    /* 002 */ { tap_trial_remix_8_cel020, 2 },
    /* 003 */ { tap_trial_remix_8_cel021, 2 },
    /* 004 */ { tap_trial_remix_8_cel022, 6 },
    /* 005 */ { tap_trial_remix_8_cel023, 6 },
    /* 006 */ { tap_trial_remix_8_cel022, 20 },
    /* End */ END_ANIMATION
};

// [D_08919a70] Monkey - Step Test
struct Animation anim_tap_remix_8_monkey_shimmy[] = {
    /* 000 */ { tap_trial_remix_8_cel008, 20 },
    /* 001 */ { tap_trial_remix_8_cel010, 2 },
    /* 002 */ { tap_trial_remix_8_cel011, 2 },
    /* 003 */ { tap_trial_remix_8_cel022, 20 },
    /* 004 */ { tap_trial_remix_8_cel011, 2 },
    /* 005 */ { tap_trial_remix_8_cel010, 2 },
    /* End */ END_ANIMATION
};

// [D_08919aa8] Monkey - Call Triple Tap
struct Animation anim_tap_remix_8_monkey_3cue[] = {
    /* 000 */ { tap_trial_remix_8_cel024, 20 },
    /* 001 */ { tap_trial_remix_8_cel025, 4 },
    /* 002 */ { tap_trial_remix_8_cel026, 4 },
    /* 003 */ { tap_trial_remix_8_cel027, 4 },
    /* 004 */ { tap_trial_remix_8_cel028, 4 },
    /* 005 */ { tap_trial_remix_8_cel029, 20 },
    /* End */ END_ANIMATION
};

// [D_08919ae0] Monkey - Crouch
struct Animation anim_tap_remix_8_monkey_crouch[] = {
    /* 000 */ { tap_trial_remix_8_cel011, 20 },
    /* 001 */ { tap_trial_remix_8_cel030, 2 },
    /* 002 */ { tap_trial_remix_8_cel031, 2 },
    /* 003 */ { tap_trial_remix_8_cel032, 2 },
    /* 004 */ { tap_trial_remix_8_cel033, 2 },
    /* 005 */ { tap_trial_remix_8_cel034, 2 },
    /* 006 */ { tap_trial_remix_8_cel035, 20 },
    /* End */ END_ANIMATION
};

// [D_08919b20] Monkey - Jump
struct Animation anim_tap_remix_8_monkey_jump[] = {
    /* 000 */ { tap_trial_remix_8_cel039, 2 },
    /* End */ END_ANIMATION
};

// [D_08919b30] Monkey - Final Jump Tap
struct Animation anim_tap_remix_8_monkey_pose_step[] = {
    /* 000 */ { tap_trial_remix_8_cel060, 2 },
    /* 001 */ { tap_trial_remix_8_cel095, 2 },
    /* 002 */ { tap_trial_remix_8_cel096, 2 },
    /* 003 */ { tap_trial_remix_8_cel097, 2 },
    /* 004 */ { tap_trial_remix_8_cel098, 30 },
    /* End */ END_ANIMATION
};

// [D_08919b60] Monkey - Beat
struct Animation anim_tap_remix_8_monkey_beat[] = {
    /* 000 */ { tap_trial_remix_8_cel013, 3 },
    /* 001 */ { tap_trial_remix_8_cel012, 3 },
    /* 002 */ { tap_trial_remix_8_cel011, 24 },
    /* End */ END_ANIMATION
};

// [D_08919b80] Dragon - Bedazzled
struct Animation anim_tap_remix_8_dragon_bedazzled[] = {
    /* 000 */ { tap_trial_remix_8_cel085, 8 },
    /* 001 */ { tap_trial_remix_8_cel084, 8 },
    /* 002 */ { tap_trial_remix_8_cel085, 8 },
    /* 003 */ { tap_trial_remix_8_cel084, 20 },
    /* End */ END_ANIMATION
};

// [D_08919ba8] Dragon - Neutral
struct Animation anim_tap_remix_8_dragon_neutral[] = {
    /* 000 */ { tap_trial_remix_8_cel086, 20 },
    /* End */ END_ANIMATION
};

// [D_08919bb8] Dragon - Disappointed
struct Animation anim_tap_remix_8_dragon_sad[] = {
    /* 000 */ { tap_trial_remix_8_cel087, 4 },
    /* 001 */ { tap_trial_remix_8_cel088, 4 },
    /* 002 */ { tap_trial_remix_8_cel089, 4 },
    /* 003 */ { tap_trial_remix_8_cel090, 4 },
    /* 004 */ { tap_trial_remix_8_cel091, 4 },
    /* 005 */ { tap_trial_remix_8_cel092, 4 },
    /* 006 */ { tap_trial_remix_8_cel093, 20 },
    /* End */ END_ANIMATION
};

// [D_08919bf8] Monkey - Fall to Crouch
struct Animation anim_tap_remix_8_monkey_fall[] = {
    /* 000 */ { tap_trial_remix_8_cel038, 2 },
    /* 001 */ { tap_trial_remix_8_cel037, 2 },
    /* 002 */ { tap_trial_remix_8_cel036, 2 },
    /* 003 */ { tap_trial_remix_8_cel035, 2 },
    /* 004 */ { tap_trial_remix_8_cel034, 2 },
    /* End */ END_ANIMATION
};

// [D_08919c28] Monkey - Crouching Jump Tap
struct Animation anim_tap_remix_8_monkey_crouch_step[] = {
    /* 000 */ { tap_trial_remix_8_cel094, 2 },
    /* 001 */ { tap_trial_remix_8_cel035, 2 },
    /* 002 */ { tap_trial_remix_8_cel034, 2 },
    /* End */ END_ANIMATION
};

// [D_08919c48] Shadow
struct Animation anim_tap_remix_8_shadow[] = {
    /* 000 */ { tap_trial_remix_8_cel102, 4 },
    /* End */ END_ANIMATION
};

// [D_08919c58] "Start to Skip" Tutorial Text
struct Animation anim_tap_remix_8_text_skip_tutorial[] = {
    /* 000 */ { tap_trial_remix_8_cel105, 4 },
    /* End */ END_ANIMATION
};

// [D_08919c68] Girl - Cue Triple Tap
struct Animation anim_tap_remix_8_girl_3cue[] = {
    /* 000 */ { tap_trial_remix_8_cel106, 20 },
    /* 001 */ { tap_trial_remix_8_cel107, 4 },
    /* 002 */ { tap_trial_remix_8_cel108, 4 },
    /* 003 */ { tap_trial_remix_8_cel109, 4 },
    /* 004 */ { tap_trial_remix_8_cel110, 4 },
    /* 005 */ { tap_trial_remix_8_cel111, 20 },
    /* End */ END_ANIMATION
};

// [D_08919ca0] Girl - Tap Left (Arms Raised)
struct Animation anim_tap_remix_8_girl_3step_l[] = {
    /* 000 */ { tap_trial_remix_8_cel112, 2 },
    /* 001 */ { tap_trial_remix_8_cel113, 2 },
    /* 002 */ { tap_trial_remix_8_cel114, 2 },
    /* 003 */ { tap_trial_remix_8_cel115, 2 },
    /* 004 */ { tap_trial_remix_8_cel116, 2 },
    /* 005 */ { tap_trial_remix_8_cel107, 20 },
    /* End */ END_ANIMATION
};

// [D_08919cd8] Girl - Tap Right (Arms Raised)
struct Animation anim_tap_remix_8_girl_3step_r[] = {
    /* 000 */ { tap_trial_remix_8_cel117, 2 },
    /* 001 */ { tap_trial_remix_8_cel118, 2 },
    /* 002 */ { tap_trial_remix_8_cel119, 2 },
    /* 003 */ { tap_trial_remix_8_cel120, 2 },
    /* 004 */ { tap_trial_remix_8_cel121, 2 },
    /* 005 */ { tap_trial_remix_8_cel107, 20 },
    /* End */ END_ANIMATION
};

// [D_08919d10] Girl - Cue Left Tap
struct Animation anim_tap_remix_8_girl_1cue[] = {
    /* 000 */ { tap_trial_remix_8_cel122, 2 },
    /* 001 */ { tap_trial_remix_8_cel066, 2 },
    /* 002 */ { tap_trial_remix_8_cel067, 2 },
    /* 003 */ { tap_trial_remix_8_cel068, 2 },
    /* 004 */ { tap_trial_remix_8_cel069, 20 },
    /* End */ END_ANIMATION
};

// [D_08919d40] Girl - Cue Right Tap
struct Animation anim_tap_remix_8_girl_2cue[] = {
    /* 000 */ { tap_trial_remix_8_cel123, 2 },
    /* 001 */ { tap_trial_remix_8_cel077, 2 },
    /* 002 */ { tap_trial_remix_8_cel078, 2 },
    /* 003 */ { tap_trial_remix_8_cel079, 2 },
    /* 004 */ { tap_trial_remix_8_cel080, 20 },
    /* End */ END_ANIMATION
};

// [D_08919d70] Girl - Crouch
struct Animation anim_tap_remix_8_girl_crouch[] = {
    /* 000 */ { tap_trial_remix_8_cel073, 20 },
    /* 001 */ { tap_trial_remix_8_cel124, 2 },
    /* 002 */ { tap_trial_remix_8_cel125, 2 },
    /* 003 */ { tap_trial_remix_8_cel126, 2 },
    /* 004 */ { tap_trial_remix_8_cel127, 2 },
    /* 005 */ { tap_trial_remix_8_cel128, 2 },
    /* 006 */ { tap_trial_remix_8_cel129, 20 },
    /* End */ END_ANIMATION
};

// [D_08919db0] Girl - Jump
struct Animation anim_tap_remix_8_girl_jump[] = {
    /* 000 */ { tap_trial_remix_8_cel130, 2 },
    /* End */ END_ANIMATION
};

// [D_08919dc0] Girl - Final Jump Tap
struct Animation anim_tap_remix_8_girl_pose_step[] = {
    /* 000 */ { tap_trial_remix_8_cel131, 2 },
    /* 001 */ { tap_trial_remix_8_cel132, 2 },
    /* 002 */ { tap_trial_remix_8_cel133, 2 },
    /* 003 */ { tap_trial_remix_8_cel134, 2 },
    /* 004 */ { tap_trial_remix_8_cel135, 30 },
    /* End */ END_ANIMATION
};

// [D_08919df0] Girl - Fall to Crouch
struct Animation anim_tap_remix_8_girl_fall[] = {
    /* 000 */ { tap_trial_remix_8_cel136, 2 },
    /* 001 */ { tap_trial_remix_8_cel124, 2 },
    /* 002 */ { tap_trial_remix_8_cel125, 2 },
    /* 003 */ { tap_trial_remix_8_cel126, 2 },
    /* 004 */ { tap_trial_remix_8_cel128, 2 },
    /* End */ END_ANIMATION
};

// [D_08919e20] Girl - Crouching Jump Tap
struct Animation anim_tap_remix_8_girl_crouch_step[] = {
    /* 000 */ { tap_trial_remix_8_cel137, 2 },
    /* 001 */ { tap_trial_remix_8_cel129, 2 },
    /* 002 */ { tap_trial_remix_8_cel138, 2 },
    /* End */ END_ANIMATION
};

// [D_08919e40] Girl - Miss Crouching Jump Tap
struct Animation anim_tap_remix_8_girl_miss_crouch[] = {
    /* 000 */ { tap_trial_remix_8_cel138, 2 },
    /* 001 */ { tap_trial_remix_8_cel139, 2 },
    /* 002 */ { tap_trial_remix_8_cel140, 3 },
    /* 003 */ { tap_trial_remix_8_cel141, 3 },
    /* 004 */ { tap_trial_remix_8_cel142, 30 },
    /* End */ END_ANIMATION
};

// [D_08919e70] Girl - Miss Final Jump Tap
struct Animation anim_tap_remix_8_girl_miss_pose[] = {
    /* 000 */ { tap_trial_remix_8_cel143, 2 },
    /* 001 */ { tap_trial_remix_8_cel144, 2 },
    /* 002 */ { tap_trial_remix_8_cel145, 3 },
    /* 003 */ { tap_trial_remix_8_cel146, 3 },
    /* 004 */ { tap_trial_remix_8_cel147, 30 },
    /* End */ END_ANIMATION
};
