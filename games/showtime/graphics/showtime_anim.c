#include "global.h"
#include "graphics.h"

#include "showtime_anim_cells.inc.c"

// [D_088cb47c] Penguin
struct Animation anim_showtime_penguin_beat[] = {
    /* 000 */ { showtime_cel000, 4 },
    /* 001 */ { showtime_cel003, 4 },
    /* 002 */ { showtime_cel002, 4 },
    /* 003 */ { showtime_cel001, 4 },
    /* End */ END_ANIMATION
};

// [D_088cb4a4] Block
struct Animation anim_showtime_block[] = {
    /* 000 */ { showtime_cel010, 4 },
    /* 001 */ { showtime_cel009, 4 },
    /* 002 */ { showtime_cel008, 4 },
    /* 003 */ { showtime_cel007, 20 },
    /* End */ END_ANIMATION
};

// [D_088cb4cc] Blank (similar animation timing to the Block above)
struct Animation anim_showtime_blank1[] = {
    /* 000 */ { showtime_cel019, 4 },
    /* 001 */ { showtime_cel017, 4 },
    /* 002 */ { showtime_cel016, 4 },
    /* 003 */ { showtime_cel015, 20 },
    /* End */ END_ANIMATION
};

// [D_088cb4f4] Ball
struct Animation anim_showtime_ball[] = {
    /* 000 */ { showtime_cel021, 4 },
    /* End */ END_ANIMATION
};

// [D_088cb504] Water
struct Animation anim_showtime_water[] = {
    /* 000 */ { showtime_cel027, 10 },
    /* 001 */ { showtime_cel026, 10 },
    /* 002 */ { showtime_cel025, 10 },
    /* 003 */ { showtime_cel024, 10 },
    /* 004 */ { showtime_cel023, 10 },
    /* 005 */ { showtime_cel022, 10 },
    /* 006 */ { showtime_cel023, 10 },
    /* 007 */ { showtime_cel024, 10 },
    /* 008 */ { showtime_cel025, 10 },
    /* 009 */ { showtime_cel026, 10 },
    /* End */ END_ANIMATION
};

// [D_088cb55c] Ball Splash
struct Animation anim_showtime_splash_ball[] = {
    /* 000 */ { showtime_cel028, 3 },
    /* 001 */ { showtime_cel029, 3 },
    /* 002 */ { showtime_cel030, 3 },
    /* 003 */ { showtime_cel031, 3 },
    /* 004 */ { showtime_cel032, 3 },
    /* 005 */ { showtime_cel033, 4 },
    /* 006 */ { showtime_cel034, 4 },
    /* 007 */ { showtime_cel035, 5 },
    /* 008 */ { showtime_cel036, 5 },
    /* 009 */ { showtime_cel037, 5 },
    /* End */ END_ANIMATION
};

// [D_088cb5b4] Penguin Splash
struct Animation anim_showtime_splash_penguin[] = {
    /* 000 */ { showtime_cel037, 3 },
    /* 001 */ { showtime_cel038, 3 },
    /* 002 */ { showtime_cel039, 3 },
    /* 003 */ { showtime_cel040, 4 },
    /* 004 */ { showtime_cel041, 5 },
    /* 005 */ { showtime_cel042, 5 },
    /* 006 */ { showtime_cel043, 5 },
    /* 007 */ { showtime_cel044, 5 },
    /* End */ END_ANIMATION
};

// [D_088cb5fc] Penguin - Leap
struct Animation anim_showtime_penguin_jump[] = {
    /* 000 */ { showtime_cel056, 4 },
    /* 001 */ { showtime_cel057, 4 },
    /* 002 */ { showtime_cel058, 4 },
    /* 003 */ { showtime_cel059, 4 },
    /* 004 */ { showtime_cel005, 4 },
    /* 005 */ { showtime_cel006, 4 },
    /* End */ END_ANIMATION
};

// [D_088cb634] Penguin - Prepare
struct Animation anim_showtime_penguin_jump_prepare[] = {
    /* 000 */ { showtime_cel045, 20 },
    /* 001 */ { showtime_cel046, 2 },
    /* 002 */ { showtime_cel047, 2 },
    /* 003 */ { showtime_cel048, 2 },
    /* 004 */ { showtime_cel049, 20 },
    /* End */ END_ANIMATION
};

// [D_088cb664] Penguin - Slide
struct Animation anim_showtime_penguin_slide[] = {
    /* 000 */ { showtime_cel050, 2 },
    /* 001 */ { showtime_cel051, 2 },
    /* 002 */ { showtime_cel052, 2 },
    /* 003 */ { showtime_cel053, 2 },
    /* 004 */ { showtime_cel054, 2 },
    /* 005 */ { showtime_cel055, 2 },
    /* 006 */ { showtime_cel054, 2 },
    /* 007 */ { showtime_cel053, 2 },
    /* 008 */ { showtime_cel052, 2 },
    /* 009 */ { showtime_cel051, 2 },
    /* End */ END_ANIMATION
};

// [D_088cb6bc] Blank
struct Animation anim_showtime_blank2[] = {
    /* 000 */ { showtime_cel015, 3 },
    /* 001 */ { showtime_cel018, 3 },
    /* 002 */ { showtime_cel020, 20 },
    /* End */ END_ANIMATION
};

// [D_088cb6dc] Big Penguin
struct Animation anim_showtime_big_penguin_beat[] = {
    /* 000 */ { showtime_cel064, 4 },
    /* 001 */ { showtime_cel061, 4 },
    /* 002 */ { showtime_cel062, 4 },
    /* 003 */ { showtime_cel063, 4 },
    /* End */ END_ANIMATION
};

// [D_088cb704] Monkey - Swing Hammer
struct Animation anim_showtime_monkey_swing[] = {
    /* 000 */ { showtime_cel065, 1 },
    /* 001 */ { showtime_cel066, 2 },
    /* 002 */ { showtime_cel067, 2 },
    /* 003 */ { showtime_cel068, 3 },
    /* 004 */ { showtime_cel069, 3 },
    /* 005 */ { showtime_cel070, 4 },
    /* 006 */ { showtime_cel071, 4 },
    /* 007 */ { showtime_cel072, 4 },
    /* 008 */ { showtime_cel073, 4 },
    /* End */ END_ANIMATION
};

// [D_088cb754] Monkey - Beat (Hammer Held Down)
struct Animation anim_showtime_monkey_beat1[] = {
    /* 000 */ { showtime_cel074, 3 },
    /* 001 */ { showtime_cel075, 3 },
    /* 002 */ { showtime_cel076, 20 },
    /* End */ END_ANIMATION
};

// [D_088cb774] Launch Mechanism
struct Animation anim_showtime_launcher[] = {
    /* 000 */ { showtime_cel077, 1 },
    /* 001 */ { showtime_cel078, 2 },
    /* 002 */ { showtime_cel079, 2 },
    /* 003 */ { showtime_cel080, 3 },
    /* 004 */ { showtime_cel080, 3 },
    /* 005 */ { showtime_cel080, 4 },
    /* 006 */ { showtime_cel080, 4 },
    /* 007 */ { showtime_cel080, 4 },
    /* 008 */ { showtime_cel080, 4 },
    /* End */ END_ANIMATION
};

// [D_088cb7c4] Big Penguin - Leap
struct Animation anim_showtime_big_penguin_jump[] = {
    /* 000 */ { showtime_cel081, 4 },
    /* 001 */ { showtime_cel082, 4 },
    /* 002 */ { showtime_cel083, 4 },
    /* 003 */ { showtime_cel084, 4 },
    /* 004 */ { showtime_cel085, 4 },
    /* 005 */ { showtime_cel086, 4 },
    /* End */ END_ANIMATION
};

// [D_088cb7fc] Big Penguin - Prepare
struct Animation anim_showtime_big_penguin_jump_prepare[] = {
    /* 000 */ { showtime_cel087, 20 },
    /* 001 */ { showtime_cel088, 2 },
    /* 002 */ { showtime_cel089, 2 },
    /* 003 */ { showtime_cel090, 2 },
    /* 004 */ { showtime_cel091, 20 },
    /* End */ END_ANIMATION
};

// [D_088cb82c] Monkey - Beat (Hammer Held Down -> Hammer Held Up)
struct Animation anim_showtime_monkey_raise_hammer[] = {
    /* 000 */ { showtime_cel074, 2 },
    /* 001 */ { showtime_cel075, 2 },
    /* 002 */ { showtime_cel076, 2 },
    /* 003 */ { showtime_cel092, 2 },
    /* 004 */ { showtime_cel093, 2 },
    /* 005 */ { showtime_cel094, 2 },
    /* 006 */ { showtime_cel095, 2 },
    /* 007 */ { showtime_cel096, 2 },
    /* 008 */ { showtime_cel072, 20 },
    /* End */ END_ANIMATION
};

// [D_088cb87c] Monkey - Beat (Hammer Held Up)
struct Animation anim_showtime_monkey_beat2[] = {
    /* 000 */ { showtime_cel097, 3 },
    /* 001 */ { showtime_cel098, 3 },
    /* 002 */ { showtime_cel099, 20 },
    /* End */ END_ANIMATION
};

// [D_088cb89c] Bubble
struct Animation anim_showtime_bubble[] = {
    /* 000 */ { showtime_cel103, 4 },
    /* 001 */ { showtime_cel104, 4 },
    /* 002 */ { showtime_cel105, 4 },
    /* End */ END_ANIMATION
};

// [D_088cb8bc] Penguin - Catch Parachute Ball
struct Animation anim_showtime_penguin_catch_para[] = {
    /* 000 */ { showtime_cel114, 4 },
    /* 001 */ { showtime_cel115, 4 },
    /* 002 */ { showtime_cel116, 6 },
    /* 003 */ { showtime_cel117, 40 },
    /* End */ END_ANIMATION
};

// [D_088cb8e4] Penguin - Float with Parachute Ball
struct Animation anim_showtime_penguin_float_para[] = {
    /* 000 */ { showtime_cel117, 6 },
    /* 001 */ { showtime_cel118, 6 },
    /* 002 */ { showtime_cel119, 6 },
    /* End */ END_ANIMATION
};

// [D_088cb904] Penguin - Catch Ball (parachute opens later in animation, but this aspect is unused?)
struct Animation anim_showtime_penguin_catch[] = {
    /* 000 */ { showtime_cel108, 40 },
    /* 001 */ { showtime_cel109, 1 },
    /* 002 */ { showtime_cel110, 1 },
    /* 003 */ { showtime_cel111, 2 },
    /* 004 */ { showtime_cel112, 3 },
    /* 005 */ { showtime_cel113, 40 },
    /* End */ END_ANIMATION
};

// [D_088cb93c] Big Penguin - Slide
struct Animation anim_showtime_big_penguin_slide[] = {
    /* 000 */ { showtime_cel120, 2 },
    /* 001 */ { showtime_cel121, 2 },
    /* 002 */ { showtime_cel122, 2 },
    /* 003 */ { showtime_cel123, 2 },
    /* 004 */ { showtime_cel124, 2 },
    /* 005 */ { showtime_cel125, 2 },
    /* 006 */ { showtime_cel124, 2 },
    /* 007 */ { showtime_cel123, 2 },
    /* 008 */ { showtime_cel122, 2 },
    /* 009 */ { showtime_cel121, 2 },
    /* End */ END_ANIMATION
};

// [D_088cb994] Block (Remix 3 Version)
struct Animation anim_showtime_block_pink[] = {
    /* 000 */ { showtime_cel014, 4 },
    /* 001 */ { showtime_cel013, 4 },
    /* 002 */ { showtime_cel012, 4 },
    /* 003 */ { showtime_cel011, 20 },
    /* End */ END_ANIMATION
};

// [D_088cb9bc] Monkey - Beat (Sad, Hammer Held Down)
struct Animation anim_showtime_monkey_sad_beat1[] = {
    /* 000 */ { showtime_cel126, 3 },
    /* 001 */ { showtime_cel127, 3 },
    /* 002 */ { showtime_cel128, 20 },
    /* End */ END_ANIMATION
};

// [D_088cb9dc] Monkey - Beat (Sad, Hammer Held Up)
struct Animation anim_showtime_monkey_sad_beat2[] = {
    /* 000 */ { showtime_cel129, 3 },
    /* 001 */ { showtime_cel130, 3 },
    /* 002 */ { showtime_cel131, 20 },
    /* End */ END_ANIMATION
};

// [D_088cb9fc] Monkey - Swing Hammer (Sad)
struct Animation anim_showtime_monkey_sad_swing[] = {
    /* 000 */ { showtime_cel132, 1 },
    /* 001 */ { showtime_cel133, 2 },
    /* 002 */ { showtime_cel134, 2 },
    /* 003 */ { showtime_cel135, 3 },
    /* 004 */ { showtime_cel136, 30 },
    /* End */ END_ANIMATION
};
