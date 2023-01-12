#include "global.h"
#include "graphics.h"

#include "toss_boys_remix5_anim_cells.inc.c"

// [D_089277fc] Aka-chan - Beat
const struct Animation anim_toss_remix5_beat_r[] = {
    /* 000 */ { toss_boys_remix5_cel000, 4 },
    /* 001 */ { toss_boys_remix5_cel001, 4 },
    /* 002 */ { toss_boys_remix5_cel002, 24 },
    /* End */ END_ANIMATION
};

// [D_0892781c] Ao-kun - Beat
const struct Animation anim_toss_remix5_beat_b[] = {
    /* 000 */ { toss_boys_remix5_cel003, 4 },
    /* 001 */ { toss_boys_remix5_cel004, 4 },
    /* 002 */ { toss_boys_remix5_cel005, 24 },
    /* End */ END_ANIMATION
};

// [D_0892783c] Kii-yan - Beat
const struct Animation anim_toss_remix5_beat_y[] = {
    /* 000 */ { toss_boys_remix5_cel006, 4 },
    /* 001 */ { toss_boys_remix5_cel007, 4 },
    /* 002 */ { toss_boys_remix5_cel008, 24 },
    /* End */ END_ANIMATION
};

// [D_0892785c] Aka-chan - Toss
const struct Animation anim_toss_remix5_pass_r[] = {
    /* 000 */ { toss_boys_remix5_cel015, 2 },
    /* 001 */ { toss_boys_remix5_cel014, 2 },
    /* 002 */ { toss_boys_remix5_cel013, 2 },
    /* 003 */ { toss_boys_remix5_cel012, 2 },
    /* 004 */ { toss_boys_remix5_cel011, 2 },
    /* 005 */ { toss_boys_remix5_cel010, 2 },
    /* 006 */ { toss_boys_remix5_cel009, 24 },
    /* End */ END_ANIMATION
};

// [D_0892789c] Ao-kun - Toss
const struct Animation anim_toss_remix5_pass_b[] = {
    /* 000 */ { toss_boys_remix5_cel028, 2 },
    /* 001 */ { toss_boys_remix5_cel027, 2 },
    /* 002 */ { toss_boys_remix5_cel026, 2 },
    /* 003 */ { toss_boys_remix5_cel025, 2 },
    /* 004 */ { toss_boys_remix5_cel024, 2 },
    /* 005 */ { toss_boys_remix5_cel023, 2 },
    /* 006 */ { toss_boys_remix5_cel022, 24 },
    /* End */ END_ANIMATION
};

// [D_089278dc] Kii-yan - Toss
const struct Animation anim_toss_remix5_pass_y[] = {
    /* 000 */ { toss_boys_remix5_cel041, 2 },
    /* 001 */ { toss_boys_remix5_cel040, 2 },
    /* 002 */ { toss_boys_remix5_cel039, 2 },
    /* 003 */ { toss_boys_remix5_cel038, 2 },
    /* 004 */ { toss_boys_remix5_cel037, 2 },
    /* 005 */ { toss_boys_remix5_cel036, 2 },
    /* 006 */ { toss_boys_remix5_cel035, 24 },
    /* End */ END_ANIMATION
};

// [D_0892791c] Ball Dispenser - Close
const struct Animation anim_toss_remix5_dispenser_close[] = {
    /* 000 */ { toss_boys_remix5_cel066, 40 },
    /* 001 */ { toss_boys_remix5_cel065, 4 },
    /* 002 */ { toss_boys_remix5_cel064, 4 },
    /* 003 */ { toss_boys_remix5_cel063, 4 },
    /* 004 */ { toss_boys_remix5_cel062, 4 },
    /* 005 */ { toss_boys_remix5_cel061, 4 },
    /* 006 */ { toss_boys_remix5_cel060, 24 },
    /* End */ END_ANIMATION
};

// [D_0892795c] Ball
const struct Animation anim_toss_remix5_ball1[] = {
    /* 000 */ { toss_boys_remix5_cel067, 4 },
    /* End */ END_ANIMATION
};

// [D_0892796c] Ball (most frames are a silhouette)
const struct Animation anim_toss_remix5_ball2[] = {
    /* 000 */ { toss_boys_remix5_cel067, 8 },
    /* 001 */ { toss_boys_remix5_cel070, 8 },
    /* 002 */ { toss_boys_remix5_cel071, 8 },
    /* 003 */ { toss_boys_remix5_cel072, 8 },
    /* 004 */ { toss_boys_remix5_cel073, 8 },
    /* End */ END_ANIMATION
};

// [D_0892799c] Ball (White Glow)
const struct Animation anim_toss_remix5_ball_wobble[] = {
    /* 000 */ { toss_boys_remix5_cel074, 3 },
    /* 001 */ { toss_boys_remix5_cel075, 3 },
    /* 002 */ { toss_boys_remix5_cel076, 3 },
    /* 003 */ { toss_boys_remix5_cel075, 4 },
    /* End */ END_ANIMATION
};

// [D_089279c4] Aka-chan - Miss
const struct Animation anim_toss_remix5_miss_r[] = {
    /* 000 */ { toss_boys_remix5_cel048, 3 },
    /* 001 */ { toss_boys_remix5_cel049, 3 },
    /* 002 */ { toss_boys_remix5_cel050, 3 },
    /* 003 */ { toss_boys_remix5_cel051, 30 },
    /* End */ END_ANIMATION
};

// [D_089279ec] Ao-kun - Miss
const struct Animation anim_toss_remix5_miss_b[] = {
    /* 000 */ { toss_boys_remix5_cel052, 3 },
    /* 001 */ { toss_boys_remix5_cel053, 3 },
    /* 002 */ { toss_boys_remix5_cel054, 3 },
    /* 003 */ { toss_boys_remix5_cel055, 30 },
    /* End */ END_ANIMATION
};

// [D_08927a14] Kii-yan - Miss
const struct Animation anim_toss_remix5_miss_y[] = {
    /* 000 */ { toss_boys_remix5_cel056, 3 },
    /* 001 */ { toss_boys_remix5_cel057, 3 },
    /* 002 */ { toss_boys_remix5_cel058, 3 },
    /* 003 */ { toss_boys_remix5_cel059, 30 },
    /* End */ END_ANIMATION
};

// [D_08927a3c] Ball (again)
const struct Animation anim_toss_remix5_ball3[] = {
    /* 000 */ { toss_boys_remix5_cel077, 4 },
    /* End */ END_ANIMATION
};

// [D_08927a4c] Aka-chan - Toss (Crouching)
const struct Animation anim_toss_remix5_super_pass_r[] = {
    /* 000 */ { toss_boys_remix5_cel078, 2 },
    /* 001 */ { toss_boys_remix5_cel079, 2 },
    /* 002 */ { toss_boys_remix5_cel080, 2 },
    /* 003 */ { toss_boys_remix5_cel081, 2 },
    /* 004 */ { toss_boys_remix5_cel082, 2 },
    /* 005 */ { toss_boys_remix5_cel083, 2 },
    /* 006 */ { toss_boys_remix5_cel084, 24 },
    /* End */ END_ANIMATION
};

// [D_08927a8c] Ao-kun - Toss (Crouching)
const struct Animation anim_toss_remix5_super_pass_b[] = {
    /* 000 */ { toss_boys_remix5_cel087, 2 },
    /* 001 */ { toss_boys_remix5_cel088, 2 },
    /* 002 */ { toss_boys_remix5_cel089, 2 },
    /* 003 */ { toss_boys_remix5_cel090, 2 },
    /* 004 */ { toss_boys_remix5_cel091, 2 },
    /* 005 */ { toss_boys_remix5_cel092, 2 },
    /* 006 */ { toss_boys_remix5_cel093, 24 },
    /* End */ END_ANIMATION
};

// [D_08927acc] Kii-yan - Toss (Crouching)
const struct Animation anim_toss_remix5_super_pass_y[] = {
    /* 000 */ { toss_boys_remix5_cel096, 2 },
    /* 001 */ { toss_boys_remix5_cel097, 2 },
    /* 002 */ { toss_boys_remix5_cel098, 2 },
    /* 003 */ { toss_boys_remix5_cel099, 2 },
    /* 004 */ { toss_boys_remix5_cel100, 2 },
    /* 005 */ { toss_boys_remix5_cel101, 2 },
    /* 006 */ { toss_boys_remix5_cel102, 24 },
    /* End */ END_ANIMATION
};

// [D_08927b0c] Impact Effect
const struct Animation anim_toss_remix5_pop_effect[] = {
    /* 000 */ { toss_boys_remix5_cel105, 2 },
    /* 001 */ { toss_boys_remix5_cel106, 2 },
    /* 002 */ { toss_boys_remix5_cel107, 2 },
    /* 003 */ { toss_boys_remix5_cel108, 2 },
    /* 004 */ { toss_boys_remix5_cel109, 2 },
    /* 005 */ { toss_boys_remix5_cel110, 20 },
    /* End */ END_ANIMATION
};

// [D_08927b44] Aka-chan - Beat (Crouching)
const struct Animation anim_toss_remix5_super_beat_r[] = {
    /* 000 */ { toss_boys_remix5_cel086, 3 },
    /* 001 */ { toss_boys_remix5_cel085, 3 },
    /* 002 */ { toss_boys_remix5_cel084, 40 },
    /* End */ END_ANIMATION
};

// [D_08927b64] Ao-kun - Beat (Crouching)
const struct Animation anim_toss_remix5_super_beat_b[] = {
    /* 000 */ { toss_boys_remix5_cel095, 3 },
    /* 001 */ { toss_boys_remix5_cel094, 3 },
    /* 002 */ { toss_boys_remix5_cel093, 40 },
    /* End */ END_ANIMATION
};

// [D_08927b84] Kii-yan - Beat (Crouching)
const struct Animation anim_toss_remix5_super_beat_y[] = {
    /* 000 */ { toss_boys_remix5_cel104, 3 },
    /* 001 */ { toss_boys_remix5_cel103, 3 },
    /* 002 */ { toss_boys_remix5_cel102, 30 },
    /* End */ END_ANIMATION
};

// [D_08927ba4] Ball (Flashing)
const struct Animation anim_toss_remix5_ball_flash[] = {
    /* 000 */ { toss_boys_remix5_cel068, 4 },
    /* 001 */ { toss_boys_remix5_cel069, 2 },
    /* End */ END_ANIMATION
};

// [D_08927bbc] Aka-chan - Catch Ball
const struct Animation anim_toss_remix5_catch_r[] = {
    /* 000 */ { toss_boys_remix5_cel021, 2 },
    /* 001 */ { toss_boys_remix5_cel020, 2 },
    /* 002 */ { toss_boys_remix5_cel019, 2 },
    /* 003 */ { toss_boys_remix5_cel018, 2 },
    /* 004 */ { toss_boys_remix5_cel017, 2 },
    /* 005 */ { toss_boys_remix5_cel016, 20 },
    /* End */ END_ANIMATION
};

// [D_08927bf4] Ao-kun - Catch Ball
const struct Animation anim_toss_remix5_catch_b[] = {
    /* 000 */ { toss_boys_remix5_cel034, 2 },
    /* 001 */ { toss_boys_remix5_cel033, 2 },
    /* 002 */ { toss_boys_remix5_cel032, 2 },
    /* 003 */ { toss_boys_remix5_cel031, 2 },
    /* 004 */ { toss_boys_remix5_cel030, 2 },
    /* 005 */ { toss_boys_remix5_cel029, 20 },
    /* End */ END_ANIMATION
};

// [D_08927c2c] Kii-yan - Catch Ball
const struct Animation anim_toss_remix5_catch_y[] = {
    /* 000 */ { toss_boys_remix5_cel047, 2 },
    /* 001 */ { toss_boys_remix5_cel046, 2 },
    /* 002 */ { toss_boys_remix5_cel045, 2 },
    /* 003 */ { toss_boys_remix5_cel044, 2 },
    /* 004 */ { toss_boys_remix5_cel043, 2 },
    /* 005 */ { toss_boys_remix5_cel042, 20 },
    /* End */ END_ANIMATION
};

// [D_08927c64] Kii-yan - Prepare to Pop Ball
const struct Animation anim_toss_remix5_ready_y[] = {
    /* 000 */ { toss_boys_remix5_cel111, 2 },
    /* 001 */ { toss_boys_remix5_cel112, 3 },
    /* 002 */ { toss_boys_remix5_cel113, 30 },
    /* End */ END_ANIMATION
};

// [D_08927c84] Aka-chan - Prepare to Pop Ball
const struct Animation anim_toss_remix5_ready_r[] = {
    /* 000 */ { toss_boys_remix5_cel117, 2 },
    /* 001 */ { toss_boys_remix5_cel118, 3 },
    /* 002 */ { toss_boys_remix5_cel119, 30 },
    /* End */ END_ANIMATION
};

// [D_08927ca4] Ao-kun - Prepare to Pop Ball
const struct Animation anim_toss_remix5_ready_b[] = {
    /* 000 */ { toss_boys_remix5_cel123, 2 },
    /* 001 */ { toss_boys_remix5_cel124, 3 },
    /* 002 */ { toss_boys_remix5_cel125, 30 },
    /* End */ END_ANIMATION
};

// [D_08927cc4] Kii-yan - Pop Ball
const struct Animation anim_toss_remix5_pop_y[] = {
    /* 000 */ { toss_boys_remix5_cel114, 2 },
    /* 001 */ { toss_boys_remix5_cel115, 2 },
    /* 002 */ { toss_boys_remix5_cel116, 40 },
    /* End */ END_ANIMATION
};

// [D_08927ce4] Aka-chan - Pop Ball
const struct Animation anim_toss_remix5_pop_r[] = {
    /* 000 */ { toss_boys_remix5_cel120, 2 },
    /* 001 */ { toss_boys_remix5_cel121, 2 },
    /* 002 */ { toss_boys_remix5_cel122, 40 },
    /* End */ END_ANIMATION
};

// [D_08927d04] Ao-kun - Pop Ball
const struct Animation anim_toss_remix5_pop_b[] = {
    /* 000 */ { toss_boys_remix5_cel126, 2 },
    /* 001 */ { toss_boys_remix5_cel127, 2 },
    /* 002 */ { toss_boys_remix5_cel128, 40 },
    /* End */ END_ANIMATION
};

// [D_08927d24] "Start to Skip" Tutorial Text
const struct Animation anim_toss_remix5_text_skip_tutorial[] = {
    /* 000 */ { toss_boys_remix5_cel129, 4 },
    /* End */ END_ANIMATION
};

// [D_08927d34] Aka-chan - Barely
const struct Animation anim_toss_remix5_barely_r[] = {
    /* 000 */ { toss_boys_remix5_cel130, 2 },
    /* 001 */ { toss_boys_remix5_cel131, 2 },
    /* 002 */ { toss_boys_remix5_cel132, 2 },
    /* 003 */ { toss_boys_remix5_cel133, 2 },
    /* 004 */ { toss_boys_remix5_cel134, 2 },
    /* 005 */ { toss_boys_remix5_cel135, 2 },
    /* 006 */ { toss_boys_remix5_cel136, 24 },
    /* End */ END_ANIMATION
};

// [D_08927d74] Ao-kun - Barely
const struct Animation anim_toss_remix5_barely_b[] = {
    /* 000 */ { toss_boys_remix5_cel137, 2 },
    /* 001 */ { toss_boys_remix5_cel138, 2 },
    /* 002 */ { toss_boys_remix5_cel139, 2 },
    /* 003 */ { toss_boys_remix5_cel140, 2 },
    /* 004 */ { toss_boys_remix5_cel141, 2 },
    /* 005 */ { toss_boys_remix5_cel142, 2 },
    /* 006 */ { toss_boys_remix5_cel143, 24 },
    /* End */ END_ANIMATION
};

// [D_08927db4] Kii-yan - Barely
const struct Animation anim_toss_remix5_barely_y[] = {
    /* 000 */ { toss_boys_remix5_cel144, 2 },
    /* 001 */ { toss_boys_remix5_cel145, 2 },
    /* 002 */ { toss_boys_remix5_cel146, 2 },
    /* 003 */ { toss_boys_remix5_cel147, 2 },
    /* 004 */ { toss_boys_remix5_cel148, 2 },
    /* 005 */ { toss_boys_remix5_cel149, 2 },
    /* 006 */ { toss_boys_remix5_cel150, 24 },
    /* End */ END_ANIMATION
};

// [D_08927df4] Soshi - Left Arm & Guitar
const struct Animation anim_toss_remix5_soshi_arm_l[] = {
    /* 000 */ { toss_boys_remix5_cel163, 3 },
    /* 001 */ { toss_boys_remix5_cel162, 3 },
    /* 002 */ { toss_boys_remix5_cel161, 3 },
    /* 003 */ { toss_boys_remix5_cel160, 120 },
    /* 004 */ { toss_boys_remix5_cel161, 4 },
    /* 005 */ { toss_boys_remix5_cel162, 4 },
    /* 006 */ { toss_boys_remix5_cel163, 120 },
    /* End */ END_ANIMATION
};

// [D_08927e34] Soshi - Right Arm & Guitar
const struct Animation anim_toss_remix5_soshi_arm_r[] = {
    /* 000 */ { toss_boys_remix5_cel164, 5 },
    /* 001 */ { toss_boys_remix5_cel165, 5 },
    /* 002 */ { toss_boys_remix5_cel166, 5 },
    /* 003 */ { toss_boys_remix5_cel167, 5 },
    /* End */ END_ANIMATION
};

// [D_08927e5c] Soshi - Body
const struct Animation anim_toss_remix5_soshi_body[] = {
    /* 000 */ { toss_boys_remix5_cel168, 3 },
    /* 001 */ { toss_boys_remix5_cel169, 3 },
    /* 002 */ { toss_boys_remix5_cel170, 24 },
    /* End */ END_ANIMATION
};

// [D_08927e7c] Soshi - Head (Beat)
const struct Animation anim_toss_remix5_soshi_head[] = {
    /* 000 */ { toss_boys_remix5_cel173, 3 },
    /* 001 */ { toss_boys_remix5_cel172, 3 },
    /* 002 */ { toss_boys_remix5_cel171, 24 },
    /* End */ END_ANIMATION
};

// [D_08927e9c] Soshi - Head (Blink)
const struct Animation anim_toss_remix5_soshi_head_blink[] = {
    /* 000 */ { toss_boys_remix5_cel174, 8 },
    /* 001 */ { toss_boys_remix5_cel171, 8 },
    /* 002 */ { toss_boys_remix5_cel171, 30 },
    /* 003 */ { toss_boys_remix5_cel174, 8 },
    /* 004 */ { toss_boys_remix5_cel171, 20 },
    /* End */ END_ANIMATION
};

// [D_08927ecc] Soshi - Strum (Ball Launched)
const struct Animation anim_toss_remix5_soshi_strum_launch[] = {
    /* 000 */ { toss_boys_remix5_cel185, 2 },
    /* 001 */ { toss_boys_remix5_cel184, 2 },
    /* 002 */ { toss_boys_remix5_cel183, 3 },
    /* 003 */ { toss_boys_remix5_cel182, 3 },
    /* 004 */ { toss_boys_remix5_cel181, 3 },
    /* 005 */ { toss_boys_remix5_cel180, 3 },
    /* 006 */ { toss_boys_remix5_cel179, 3 },
    /* 007 */ { toss_boys_remix5_cel178, 2 },
    /* 008 */ { toss_boys_remix5_cel177, 1 },
    /* 009 */ { toss_boys_remix5_cel176, 3 },
    /* 010 */ { toss_boys_remix5_cel175, 120 },
    /* End */ END_ANIMATION
};

// [D_08927f2c] Soshi - Strum (Ball Popped)
const struct Animation anim_toss_remix5_soshi_strum_pop[] = {
    /* 000 */ { toss_boys_remix5_cel152, 3 },
    /* 001 */ { toss_boys_remix5_cel153, 3 },
    /* 002 */ { toss_boys_remix5_cel154, 3 },
    /* 003 */ { toss_boys_remix5_cel155, 40 },
    /* 004 */ { toss_boys_remix5_cel156, 4 },
    /* 005 */ { toss_boys_remix5_cel157, 4 },
    /* 006 */ { toss_boys_remix5_cel158, 20 },
    /* 007 */ { toss_boys_remix5_cel159, 8 },
    /* 008 */ { toss_boys_remix5_cel158, 40 },
    /* 009 */ { toss_boys_remix5_cel159, 8 },
    /* 010 */ { toss_boys_remix5_cel158, 20 },
    /* End */ END_ANIMATION
};

// [D_08927f8c] Start Indicator Arrow - Aka-chan
const struct Animation anim_toss_remix5_arrow_r[] = {
    /* 000 */ { toss_boys_remix5_cel186, 30 },
    /* End */ END_ANIMATION
};

// [D_08927f9c] Start Indicator Arrow - Ao-kun
const struct Animation anim_toss_remix5_arrow_b[] = {
    /* 000 */ { toss_boys_remix5_cel187, 30 },
    /* End */ END_ANIMATION
};

// [D_08927fac] Start Indicator Arrow - Kii-yan
const struct Animation anim_toss_remix5_arrow_y[] = {
    /* 000 */ { toss_boys_remix5_cel188, 30 },
    /* End */ END_ANIMATION
};
