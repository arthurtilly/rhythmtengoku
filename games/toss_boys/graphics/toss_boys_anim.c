#include "global.h"
#include "graphics.h"

#include "toss_boys_anim_cells.inc.c"

// [D_08923f68] Aka-chan - Beat
struct Animation anim_toss_boys_beat_r[] = {
    /* 000 */ { toss_boys_cel000, 4 },
    /* 001 */ { toss_boys_cel001, 4 },
    /* 002 */ { toss_boys_cel002, 24 },
    /* End */ END_ANIMATION
};

// [D_08923f88] Ao-kun - Beat
struct Animation anim_toss_boys_beat_b[] = {
    /* 000 */ { toss_boys_cel003, 4 },
    /* 001 */ { toss_boys_cel004, 4 },
    /* 002 */ { toss_boys_cel005, 24 },
    /* End */ END_ANIMATION
};

// [D_08923fa8] Kii-yan - Beat
struct Animation anim_toss_boys_beat_y[] = {
    /* 000 */ { toss_boys_cel006, 4 },
    /* 001 */ { toss_boys_cel007, 4 },
    /* 002 */ { toss_boys_cel008, 24 },
    /* End */ END_ANIMATION
};

// [D_08923fc8] Aka-chan - Toss
struct Animation anim_toss_boys_pass_r[] = {
    /* 000 */ { toss_boys_cel015, 2 },
    /* 001 */ { toss_boys_cel014, 2 },
    /* 002 */ { toss_boys_cel013, 2 },
    /* 003 */ { toss_boys_cel012, 2 },
    /* 004 */ { toss_boys_cel011, 2 },
    /* 005 */ { toss_boys_cel010, 2 },
    /* 006 */ { toss_boys_cel009, 24 },
    /* End */ END_ANIMATION
};

// [D_08924008] Ao-kun - Toss
struct Animation anim_toss_boys_pass_b[] = {
    /* 000 */ { toss_boys_cel028, 2 },
    /* 001 */ { toss_boys_cel027, 2 },
    /* 002 */ { toss_boys_cel026, 2 },
    /* 003 */ { toss_boys_cel025, 2 },
    /* 004 */ { toss_boys_cel024, 2 },
    /* 005 */ { toss_boys_cel023, 2 },
    /* 006 */ { toss_boys_cel022, 24 },
    /* End */ END_ANIMATION
};

// [D_08924048] Kii-yan - Toss
struct Animation anim_toss_boys_pass_y[] = {
    /* 000 */ { toss_boys_cel041, 2 },
    /* 001 */ { toss_boys_cel040, 2 },
    /* 002 */ { toss_boys_cel039, 2 },
    /* 003 */ { toss_boys_cel038, 2 },
    /* 004 */ { toss_boys_cel037, 2 },
    /* 005 */ { toss_boys_cel036, 2 },
    /* 006 */ { toss_boys_cel035, 24 },
    /* End */ END_ANIMATION
};

// [D_08924088] Ball Dispenser - Close
struct Animation anim_toss_boys_dispenser_close[] = {
    /* 000 */ { toss_boys_cel066, 40 },
    /* 001 */ { toss_boys_cel065, 4 },
    /* 002 */ { toss_boys_cel064, 4 },
    /* 003 */ { toss_boys_cel063, 4 },
    /* 004 */ { toss_boys_cel062, 4 },
    /* 005 */ { toss_boys_cel061, 4 },
    /* 006 */ { toss_boys_cel060, 24 },
    /* End */ END_ANIMATION
};

// [D_089240c8] Ball
struct Animation anim_toss_boys_ball1[] = {
    /* 000 */ { toss_boys_cel067, 4 },
    /* End */ END_ANIMATION
};

// [D_089240d8] Ball (most frames are a silhouette)
struct Animation anim_toss_boys_ball2[] = {
    /* 000 */ { toss_boys_cel067, 8 },
    /* 001 */ { toss_boys_cel070, 8 },
    /* 002 */ { toss_boys_cel071, 8 },
    /* 003 */ { toss_boys_cel072, 8 },
    /* 004 */ { toss_boys_cel073, 8 },
    /* End */ END_ANIMATION
};

// [D_08924108] Ball (White Glow)
struct Animation anim_toss_boys_ball_wobble[] = {
    /* 000 */ { toss_boys_cel074, 3 },
    /* 001 */ { toss_boys_cel075, 3 },
    /* 002 */ { toss_boys_cel076, 3 },
    /* 003 */ { toss_boys_cel075, 4 },
    /* End */ END_ANIMATION
};

// [D_08924130] Aka-chan - Miss
struct Animation anim_toss_boys_miss_r[] = {
    /* 000 */ { toss_boys_cel048, 3 },
    /* 001 */ { toss_boys_cel049, 3 },
    /* 002 */ { toss_boys_cel050, 3 },
    /* 003 */ { toss_boys_cel051, 30 },
    /* End */ END_ANIMATION
};

// [D_08924158] Ao-kun - Miss
struct Animation anim_toss_boys_miss_b[] = {
    /* 000 */ { toss_boys_cel052, 3 },
    /* 001 */ { toss_boys_cel053, 3 },
    /* 002 */ { toss_boys_cel054, 3 },
    /* 003 */ { toss_boys_cel055, 30 },
    /* End */ END_ANIMATION
};

// [D_08924180] Kii-yan - Miss
struct Animation anim_toss_boys_miss_y[] = {
    /* 000 */ { toss_boys_cel056, 3 },
    /* 001 */ { toss_boys_cel057, 3 },
    /* 002 */ { toss_boys_cel058, 3 },
    /* 003 */ { toss_boys_cel059, 30 },
    /* End */ END_ANIMATION
};

// [D_089241a8] Ball (again)
struct Animation anim_toss_boys_ball3[] = {
    /* 000 */ { toss_boys_cel077, 4 },
    /* End */ END_ANIMATION
};

// [D_089241b8] Aka-chan - Toss (Crouching)
struct Animation anim_toss_boys_super_pass_r[] = {
    /* 000 */ { toss_boys_cel078, 2 },
    /* 001 */ { toss_boys_cel079, 2 },
    /* 002 */ { toss_boys_cel080, 2 },
    /* 003 */ { toss_boys_cel081, 2 },
    /* 004 */ { toss_boys_cel082, 2 },
    /* 005 */ { toss_boys_cel083, 2 },
    /* 006 */ { toss_boys_cel084, 24 },
    /* End */ END_ANIMATION
};

// [D_089241f8] Ao-kun - Toss (Crouching)
struct Animation anim_toss_boys_super_pass_b[] = {
    /* 000 */ { toss_boys_cel087, 2 },
    /* 001 */ { toss_boys_cel088, 2 },
    /* 002 */ { toss_boys_cel089, 2 },
    /* 003 */ { toss_boys_cel090, 2 },
    /* 004 */ { toss_boys_cel091, 2 },
    /* 005 */ { toss_boys_cel092, 2 },
    /* 006 */ { toss_boys_cel093, 24 },
    /* End */ END_ANIMATION
};

// [D_08924238] Kii-yan - Toss (Crouching)
struct Animation anim_toss_boys_super_pass_y[] = {
    /* 000 */ { toss_boys_cel096, 2 },
    /* 001 */ { toss_boys_cel097, 2 },
    /* 002 */ { toss_boys_cel098, 2 },
    /* 003 */ { toss_boys_cel099, 2 },
    /* 004 */ { toss_boys_cel100, 2 },
    /* 005 */ { toss_boys_cel101, 2 },
    /* 006 */ { toss_boys_cel102, 24 },
    /* End */ END_ANIMATION
};

// [D_08924278] Impact Effect
struct Animation anim_toss_boys_pop_effect[] = {
    /* 000 */ { toss_boys_cel105, 2 },
    /* 001 */ { toss_boys_cel106, 2 },
    /* 002 */ { toss_boys_cel107, 2 },
    /* 003 */ { toss_boys_cel108, 2 },
    /* 004 */ { toss_boys_cel109, 2 },
    /* 005 */ { toss_boys_cel110, 20 },
    /* End */ END_ANIMATION
};

// [D_089242b0] Aka-chan - Beat (Crouching)
struct Animation anim_toss_boys_super_beat_r[] = {
    /* 000 */ { toss_boys_cel086, 3 },
    /* 001 */ { toss_boys_cel085, 3 },
    /* 002 */ { toss_boys_cel084, 40 },
    /* End */ END_ANIMATION
};

// [D_089242d0] Ao-kun - Beat (Crouching)
struct Animation anim_toss_boys_super_beat_b[] = {
    /* 000 */ { toss_boys_cel095, 3 },
    /* 001 */ { toss_boys_cel094, 3 },
    /* 002 */ { toss_boys_cel093, 40 },
    /* End */ END_ANIMATION
};

// [D_089242f0] Kii-yan - Beat (Crouching)
struct Animation anim_toss_boys_super_beat_y[] = {
    /* 000 */ { toss_boys_cel104, 3 },
    /* 001 */ { toss_boys_cel103, 3 },
    /* 002 */ { toss_boys_cel102, 30 },
    /* End */ END_ANIMATION
};

// [D_08924310] Ball (Flashing)
struct Animation anim_toss_boys_ball_flash[] = {
    /* 000 */ { toss_boys_cel068, 4 },
    /* 001 */ { toss_boys_cel069, 2 },
    /* End */ END_ANIMATION
};

// [D_08924328] Aka-chan - Catch Ball
struct Animation anim_toss_boys_catch_r[] = {
    /* 000 */ { toss_boys_cel021, 2 },
    /* 001 */ { toss_boys_cel020, 2 },
    /* 002 */ { toss_boys_cel019, 2 },
    /* 003 */ { toss_boys_cel018, 2 },
    /* 004 */ { toss_boys_cel017, 2 },
    /* 005 */ { toss_boys_cel016, 20 },
    /* End */ END_ANIMATION
};

// [D_08924360] Ao-kun - Catch Ball
struct Animation anim_toss_boys_catch_b[] = {
    /* 000 */ { toss_boys_cel034, 2 },
    /* 001 */ { toss_boys_cel033, 2 },
    /* 002 */ { toss_boys_cel032, 2 },
    /* 003 */ { toss_boys_cel031, 2 },
    /* 004 */ { toss_boys_cel030, 2 },
    /* 005 */ { toss_boys_cel029, 20 },
    /* End */ END_ANIMATION
};

// [D_08924398] Kii-yan - Catch Ball
struct Animation anim_toss_boys_catch_y[] = {
    /* 000 */ { toss_boys_cel047, 2 },
    /* 001 */ { toss_boys_cel046, 2 },
    /* 002 */ { toss_boys_cel045, 2 },
    /* 003 */ { toss_boys_cel044, 2 },
    /* 004 */ { toss_boys_cel043, 2 },
    /* 005 */ { toss_boys_cel042, 20 },
    /* End */ END_ANIMATION
};

// [D_089243d0] Kii-yan - Prepare to Pop Ball
struct Animation anim_toss_boys_ready_y[] = {
    /* 000 */ { toss_boys_cel111, 2 },
    /* 001 */ { toss_boys_cel112, 3 },
    /* 002 */ { toss_boys_cel113, 30 },
    /* End */ END_ANIMATION
};

// [D_089243f0] Aka-chan - Prepare to Pop Ball
struct Animation anim_toss_boys_ready_r[] = {
    /* 000 */ { toss_boys_cel117, 2 },
    /* 001 */ { toss_boys_cel118, 3 },
    /* 002 */ { toss_boys_cel119, 30 },
    /* End */ END_ANIMATION
};

// [D_08924410] Ao-kun - Prepare to Pop Ball
struct Animation anim_toss_boys_ready_b[] = {
    /* 000 */ { toss_boys_cel123, 2 },
    /* 001 */ { toss_boys_cel124, 3 },
    /* 002 */ { toss_boys_cel125, 30 },
    /* End */ END_ANIMATION
};

// [D_08924430] Kii-yan - Pop Ball
struct Animation anim_toss_boys_pop_y[] = {
    /* 000 */ { toss_boys_cel114, 2 },
    /* 001 */ { toss_boys_cel115, 2 },
    /* 002 */ { toss_boys_cel116, 40 },
    /* End */ END_ANIMATION
};

// [D_08924450] Aka-chan - Pop Ball
struct Animation anim_toss_boys_pop_r[] = {
    /* 000 */ { toss_boys_cel120, 2 },
    /* 001 */ { toss_boys_cel121, 2 },
    /* 002 */ { toss_boys_cel122, 40 },
    /* End */ END_ANIMATION
};

// [D_08924470] Ao-kun - Pop Ball
struct Animation anim_toss_boys_pop_b[] = {
    /* 000 */ { toss_boys_cel126, 2 },
    /* 001 */ { toss_boys_cel127, 2 },
    /* 002 */ { toss_boys_cel128, 40 },
    /* End */ END_ANIMATION
};

// [D_08924490] "Start to Skip" Tutorial Text
struct Animation anim_toss_boys_text_skip_tutorial[] = {
    /* 000 */ { toss_boys_cel129, 4 },
    /* End */ END_ANIMATION
};

// [D_089244a0] Aka-chan - Barely
struct Animation anim_toss_boys_barely_r[] = {
    /* 000 */ { toss_boys_cel130, 2 },
    /* 001 */ { toss_boys_cel131, 2 },
    /* 002 */ { toss_boys_cel132, 2 },
    /* 003 */ { toss_boys_cel133, 2 },
    /* 004 */ { toss_boys_cel134, 2 },
    /* 005 */ { toss_boys_cel135, 2 },
    /* 006 */ { toss_boys_cel136, 24 },
    /* End */ END_ANIMATION
};

// [D_089244e0] Ao-kun - Barely
struct Animation anim_toss_boys_barely_b[] = {
    /* 000 */ { toss_boys_cel137, 2 },
    /* 001 */ { toss_boys_cel138, 2 },
    /* 002 */ { toss_boys_cel139, 2 },
    /* 003 */ { toss_boys_cel140, 2 },
    /* 004 */ { toss_boys_cel141, 2 },
    /* 005 */ { toss_boys_cel142, 2 },
    /* 006 */ { toss_boys_cel143, 24 },
    /* End */ END_ANIMATION
};

// [D_08924520] Kii-yan - Barely
struct Animation anim_toss_boys_barely_y[] = {
    /* 000 */ { toss_boys_cel144, 2 },
    /* 001 */ { toss_boys_cel145, 2 },
    /* 002 */ { toss_boys_cel146, 2 },
    /* 003 */ { toss_boys_cel147, 2 },
    /* 004 */ { toss_boys_cel148, 2 },
    /* 005 */ { toss_boys_cel149, 2 },
    /* 006 */ { toss_boys_cel150, 24 },
    /* End */ END_ANIMATION
};

// [D_08924560] Start Indicator Arrow - Aka-chan
struct Animation anim_toss_boys_arrow_r[] = {
    /* 000 */ { toss_boys_cel151, 30 },
    /* End */ END_ANIMATION
};

// [D_08924570] Start Indicator Arrow - Ao-kun
struct Animation anim_toss_boys_arrow_b[] = {
    /* 000 */ { toss_boys_cel152, 30 },
    /* End */ END_ANIMATION
};

// [D_08924580] Start Indicator Arrow - Kii-yan
struct Animation anim_toss_boys_arrow_y[] = {
    /* 000 */ { toss_boys_cel153, 30 },
    /* End */ END_ANIMATION
};
