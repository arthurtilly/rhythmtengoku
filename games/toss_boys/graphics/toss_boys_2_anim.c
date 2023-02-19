#include "global.h"
#include "graphics.h"

#include "toss_boys_2_anim_cells.inc.c"

// [D_0892a4e4] Aka-chan - Beat
struct Animation anim_toss_boys_2_beat_r[] = {
    /* 000 */ { toss_boys_2_cel000, 4 },
    /* 001 */ { toss_boys_2_cel001, 4 },
    /* 002 */ { toss_boys_2_cel002, 24 },
    /* End */ END_ANIMATION
};

// [D_0892a504] Ao-kun - Beat
struct Animation anim_toss_boys_2_beat_b[] = {
    /* 000 */ { toss_boys_2_cel003, 4 },
    /* 001 */ { toss_boys_2_cel004, 4 },
    /* 002 */ { toss_boys_2_cel005, 24 },
    /* End */ END_ANIMATION
};

// [D_0892a524] Kii-yan - Beat
struct Animation anim_toss_boys_2_beat_y[] = {
    /* 000 */ { toss_boys_2_cel006, 4 },
    /* 001 */ { toss_boys_2_cel007, 4 },
    /* 002 */ { toss_boys_2_cel008, 24 },
    /* End */ END_ANIMATION
};

// [D_0892a544] Aka-chan - Toss
struct Animation anim_toss_boys_2_pass_r[] = {
    /* 000 */ { toss_boys_2_cel015, 2 },
    /* 001 */ { toss_boys_2_cel014, 2 },
    /* 002 */ { toss_boys_2_cel013, 2 },
    /* 003 */ { toss_boys_2_cel012, 2 },
    /* 004 */ { toss_boys_2_cel011, 2 },
    /* 005 */ { toss_boys_2_cel010, 2 },
    /* 006 */ { toss_boys_2_cel009, 24 },
    /* End */ END_ANIMATION
};

// [D_0892a584] Ao-kun - Toss
struct Animation anim_toss_boys_2_pass_b[] = {
    /* 000 */ { toss_boys_2_cel028, 2 },
    /* 001 */ { toss_boys_2_cel027, 2 },
    /* 002 */ { toss_boys_2_cel026, 2 },
    /* 003 */ { toss_boys_2_cel025, 2 },
    /* 004 */ { toss_boys_2_cel024, 2 },
    /* 005 */ { toss_boys_2_cel023, 2 },
    /* 006 */ { toss_boys_2_cel022, 24 },
    /* End */ END_ANIMATION
};

// [D_0892a5c4] Kii-yan - Toss
struct Animation anim_toss_boys_2_pass_y[] = {
    /* 000 */ { toss_boys_2_cel041, 2 },
    /* 001 */ { toss_boys_2_cel040, 2 },
    /* 002 */ { toss_boys_2_cel039, 2 },
    /* 003 */ { toss_boys_2_cel038, 2 },
    /* 004 */ { toss_boys_2_cel037, 2 },
    /* 005 */ { toss_boys_2_cel036, 2 },
    /* 006 */ { toss_boys_2_cel035, 24 },
    /* End */ END_ANIMATION
};

// [D_0892a604] Ball Dispenser - Close
struct Animation anim_toss_boys_2_dispenser_close[] = {
    /* 000 */ { toss_boys_2_cel066, 40 },
    /* 001 */ { toss_boys_2_cel065, 4 },
    /* 002 */ { toss_boys_2_cel064, 4 },
    /* 003 */ { toss_boys_2_cel063, 4 },
    /* 004 */ { toss_boys_2_cel062, 4 },
    /* 005 */ { toss_boys_2_cel061, 4 },
    /* 006 */ { toss_boys_2_cel060, 24 },
    /* End */ END_ANIMATION
};

// [D_0892a644] Ball
struct Animation anim_toss_boys_2_ball1[] = {
    /* 000 */ { toss_boys_2_cel067, 4 },
    /* End */ END_ANIMATION
};

// [D_0892a654] Ball (most frames are a silhouette)
struct Animation anim_toss_boys_2_ball2[] = {
    /* 000 */ { toss_boys_2_cel067, 8 },
    /* 001 */ { toss_boys_2_cel070, 8 },
    /* 002 */ { toss_boys_2_cel071, 8 },
    /* 003 */ { toss_boys_2_cel072, 8 },
    /* 004 */ { toss_boys_2_cel073, 8 },
    /* End */ END_ANIMATION
};

// [D_0892a684] Ball (White Glow)
struct Animation anim_toss_boys_2_ball_wobble[] = {
    /* 000 */ { toss_boys_2_cel074, 3 },
    /* 001 */ { toss_boys_2_cel075, 3 },
    /* 002 */ { toss_boys_2_cel076, 3 },
    /* 003 */ { toss_boys_2_cel075, 4 },
    /* End */ END_ANIMATION
};

// [D_0892a6ac] Aka-chan - Miss
struct Animation anim_toss_boys_2_miss_r[] = {
    /* 000 */ { toss_boys_2_cel048, 3 },
    /* 001 */ { toss_boys_2_cel049, 3 },
    /* 002 */ { toss_boys_2_cel050, 3 },
    /* 003 */ { toss_boys_2_cel051, 30 },
    /* End */ END_ANIMATION
};

// [D_0892a6d4] Ao-kun - Miss
struct Animation anim_toss_boys_2_miss_b[] = {
    /* 000 */ { toss_boys_2_cel052, 3 },
    /* 001 */ { toss_boys_2_cel053, 3 },
    /* 002 */ { toss_boys_2_cel054, 3 },
    /* 003 */ { toss_boys_2_cel055, 30 },
    /* End */ END_ANIMATION
};

// [D_0892a6fc] Kii-yan - Miss
struct Animation anim_toss_boys_2_miss_y[] = {
    /* 000 */ { toss_boys_2_cel056, 3 },
    /* 001 */ { toss_boys_2_cel057, 3 },
    /* 002 */ { toss_boys_2_cel058, 3 },
    /* 003 */ { toss_boys_2_cel059, 30 },
    /* End */ END_ANIMATION
};

// [D_0892a724] Ball (again)
struct Animation anim_toss_boys_2_ball3[] = {
    /* 000 */ { toss_boys_2_cel077, 4 },
    /* End */ END_ANIMATION
};

// [D_0892a734] Aka-chan - Toss (Crouching)
struct Animation anim_toss_boys_2_super_pass_r[] = {
    /* 000 */ { toss_boys_2_cel078, 2 },
    /* 001 */ { toss_boys_2_cel079, 2 },
    /* 002 */ { toss_boys_2_cel080, 2 },
    /* 003 */ { toss_boys_2_cel081, 2 },
    /* 004 */ { toss_boys_2_cel082, 2 },
    /* 005 */ { toss_boys_2_cel083, 2 },
    /* 006 */ { toss_boys_2_cel084, 24 },
    /* End */ END_ANIMATION
};

// [D_0892a774] Ao-kun - Toss (Crouching)
struct Animation anim_toss_boys_2_super_pass_b[] = {
    /* 000 */ { toss_boys_2_cel087, 2 },
    /* 001 */ { toss_boys_2_cel088, 2 },
    /* 002 */ { toss_boys_2_cel089, 2 },
    /* 003 */ { toss_boys_2_cel090, 2 },
    /* 004 */ { toss_boys_2_cel091, 2 },
    /* 005 */ { toss_boys_2_cel092, 2 },
    /* 006 */ { toss_boys_2_cel093, 24 },
    /* End */ END_ANIMATION
};

// [D_0892a7b4] Kii-yan - Toss (Crouching)
struct Animation anim_toss_boys_2_super_pass_y[] = {
    /* 000 */ { toss_boys_2_cel096, 2 },
    /* 001 */ { toss_boys_2_cel097, 2 },
    /* 002 */ { toss_boys_2_cel098, 2 },
    /* 003 */ { toss_boys_2_cel099, 2 },
    /* 004 */ { toss_boys_2_cel100, 2 },
    /* 005 */ { toss_boys_2_cel101, 2 },
    /* 006 */ { toss_boys_2_cel102, 24 },
    /* End */ END_ANIMATION
};

// [D_0892a7f4] Impact Effect
struct Animation anim_toss_boys_2_pop_effect[] = {
    /* 000 */ { toss_boys_2_cel105, 2 },
    /* 001 */ { toss_boys_2_cel106, 2 },
    /* 002 */ { toss_boys_2_cel107, 2 },
    /* 003 */ { toss_boys_2_cel108, 2 },
    /* 004 */ { toss_boys_2_cel109, 2 },
    /* 005 */ { toss_boys_2_cel110, 20 },
    /* End */ END_ANIMATION
};

// [D_0892a82c] Aka-chan - Beat (Crouching)
struct Animation anim_toss_boys_2_super_beat_r[] = {
    /* 000 */ { toss_boys_2_cel086, 3 },
    /* 001 */ { toss_boys_2_cel085, 3 },
    /* 002 */ { toss_boys_2_cel084, 40 },
    /* End */ END_ANIMATION
};

// [D_0892a84c] Ao-kun - Beat (Crouching)
struct Animation anim_toss_boys_2_super_beat_b[] = {
    /* 000 */ { toss_boys_2_cel095, 3 },
    /* 001 */ { toss_boys_2_cel094, 3 },
    /* 002 */ { toss_boys_2_cel093, 40 },
    /* End */ END_ANIMATION
};

// [D_0892a86c] Kii-yan - Beat (Crouching)
struct Animation anim_toss_boys_2_super_beat_y[] = {
    /* 000 */ { toss_boys_2_cel104, 3 },
    /* 001 */ { toss_boys_2_cel103, 3 },
    /* 002 */ { toss_boys_2_cel102, 30 },
    /* End */ END_ANIMATION
};

// [D_0892a88c] Ball (Flashing)
struct Animation anim_toss_boys_2_ball_flash[] = {
    /* 000 */ { toss_boys_2_cel068, 4 },
    /* 001 */ { toss_boys_2_cel069, 2 },
    /* End */ END_ANIMATION
};

// [D_0892a8a4] Aka-chan - Catch Ball
struct Animation anim_toss_boys_2_catch_r[] = {
    /* 000 */ { toss_boys_2_cel021, 2 },
    /* 001 */ { toss_boys_2_cel020, 2 },
    /* 002 */ { toss_boys_2_cel019, 2 },
    /* 003 */ { toss_boys_2_cel018, 2 },
    /* 004 */ { toss_boys_2_cel017, 2 },
    /* 005 */ { toss_boys_2_cel016, 20 },
    /* End */ END_ANIMATION
};

// [D_0892a8dc] Ao-kun - Catch Ball
struct Animation anim_toss_boys_2_catch_b[] = {
    /* 000 */ { toss_boys_2_cel034, 2 },
    /* 001 */ { toss_boys_2_cel033, 2 },
    /* 002 */ { toss_boys_2_cel032, 2 },
    /* 003 */ { toss_boys_2_cel031, 2 },
    /* 004 */ { toss_boys_2_cel030, 2 },
    /* 005 */ { toss_boys_2_cel029, 20 },
    /* End */ END_ANIMATION
};

// [D_0892a914] Kii-yan - Catch Ball
struct Animation anim_toss_boys_2_catch_y[] = {
    /* 000 */ { toss_boys_2_cel047, 2 },
    /* 001 */ { toss_boys_2_cel046, 2 },
    /* 002 */ { toss_boys_2_cel045, 2 },
    /* 003 */ { toss_boys_2_cel044, 2 },
    /* 004 */ { toss_boys_2_cel043, 2 },
    /* 005 */ { toss_boys_2_cel042, 20 },
    /* End */ END_ANIMATION
};

// [D_0892a94c] Kii-yan - Prepare to Pop Ball
struct Animation anim_toss_boys_2_ready_y[] = {
    /* 000 */ { toss_boys_2_cel111, 2 },
    /* 001 */ { toss_boys_2_cel112, 3 },
    /* 002 */ { toss_boys_2_cel113, 30 },
    /* End */ END_ANIMATION
};

// [D_0892a96c] Aka-chan - Prepare to Pop Ball
struct Animation anim_toss_boys_2_ready_r[] = {
    /* 000 */ { toss_boys_2_cel117, 2 },
    /* 001 */ { toss_boys_2_cel118, 3 },
    /* 002 */ { toss_boys_2_cel119, 30 },
    /* End */ END_ANIMATION
};

// [D_0892a98c] Ao-kun - Prepare to Pop Ball
struct Animation anim_toss_boys_2_ready_b[] = {
    /* 000 */ { toss_boys_2_cel123, 2 },
    /* 001 */ { toss_boys_2_cel124, 3 },
    /* 002 */ { toss_boys_2_cel125, 30 },
    /* End */ END_ANIMATION
};

// [D_0892a9ac] Kii-yan - Pop Ball
struct Animation anim_toss_boys_2_pop_y[] = {
    /* 000 */ { toss_boys_2_cel114, 2 },
    /* 001 */ { toss_boys_2_cel115, 2 },
    /* 002 */ { toss_boys_2_cel116, 40 },
    /* End */ END_ANIMATION
};

// [D_0892a9cc] Aka-chan - Pop Ball
struct Animation anim_toss_boys_2_pop_r[] = {
    /* 000 */ { toss_boys_2_cel120, 2 },
    /* 001 */ { toss_boys_2_cel121, 2 },
    /* 002 */ { toss_boys_2_cel122, 40 },
    /* End */ END_ANIMATION
};

// [D_0892a9ec] Ao-kun - Pop Ball
struct Animation anim_toss_boys_2_pop_b[] = {
    /* 000 */ { toss_boys_2_cel126, 2 },
    /* 001 */ { toss_boys_2_cel127, 2 },
    /* 002 */ { toss_boys_2_cel128, 40 },
    /* End */ END_ANIMATION
};

// [D_0892aa0c] "Start to Skip" Tutorial Text
struct Animation anim_toss_boys_2_text_skip_tutorial[] = {
    /* 000 */ { toss_boys_2_cel129, 4 },
    /* End */ END_ANIMATION
};

// [D_0892aa1c] Aka-chan - Barely
struct Animation anim_toss_boys_2_barely_r[] = {
    /* 000 */ { toss_boys_2_cel130, 2 },
    /* 001 */ { toss_boys_2_cel131, 2 },
    /* 002 */ { toss_boys_2_cel132, 2 },
    /* 003 */ { toss_boys_2_cel133, 2 },
    /* 004 */ { toss_boys_2_cel134, 2 },
    /* 005 */ { toss_boys_2_cel135, 2 },
    /* 006 */ { toss_boys_2_cel136, 24 },
    /* End */ END_ANIMATION
};

// [D_0892aa5c] Ao-kun - Barely
struct Animation anim_toss_boys_2_barely_b[] = {
    /* 000 */ { toss_boys_2_cel137, 2 },
    /* 001 */ { toss_boys_2_cel138, 2 },
    /* 002 */ { toss_boys_2_cel139, 2 },
    /* 003 */ { toss_boys_2_cel140, 2 },
    /* 004 */ { toss_boys_2_cel141, 2 },
    /* 005 */ { toss_boys_2_cel142, 2 },
    /* 006 */ { toss_boys_2_cel143, 24 },
    /* End */ END_ANIMATION
};

// [D_0892aa9c] Kii-yan - Barely
struct Animation anim_toss_boys_2_barely_y[] = {
    /* 000 */ { toss_boys_2_cel144, 2 },
    /* 001 */ { toss_boys_2_cel145, 2 },
    /* 002 */ { toss_boys_2_cel146, 2 },
    /* 003 */ { toss_boys_2_cel147, 2 },
    /* 004 */ { toss_boys_2_cel148, 2 },
    /* 005 */ { toss_boys_2_cel149, 2 },
    /* 006 */ { toss_boys_2_cel150, 24 },
    /* End */ END_ANIMATION
};

// [D_0892aadc] Aka-chan - Stand
struct Animation anim_toss_boys_2_stand_r[] = {
    /* 000 */ { toss_boys_2_cel000, 4 },
    /* End */ END_ANIMATION
};

// [D_0892aaec] Ao-kun - Stand
struct Animation anim_toss_boys_2_stand_b[] = {
    /* 000 */ { toss_boys_2_cel003, 4 },
    /* End */ END_ANIMATION
};

// [D_0892aafc] Kii-yan - Stand
struct Animation anim_toss_boys_2_stand_y[] = {
    /* 000 */ { toss_boys_2_cel006, 4 },
    /* End */ END_ANIMATION
};

// [D_0892ab0c] Start Indicator Arrow - Aka-chan
struct Animation anim_toss_boys_2_arrow_r[] = {
    /* 000 */ { toss_boys_2_cel151, 30 },
    /* End */ END_ANIMATION
};

// [D_0892ab1c] Start Indicator Arrow - Ao-kun
struct Animation anim_toss_boys_2_arrow_b[] = {
    /* 000 */ { toss_boys_2_cel152, 30 },
    /* End */ END_ANIMATION
};

// [D_0892ab2c] Start Indicator Arrow - Kii-yan
struct Animation anim_toss_boys_2_arrow_y[] = {
    /* 000 */ { toss_boys_2_cel153, 30 },
    /* End */ END_ANIMATION
};
