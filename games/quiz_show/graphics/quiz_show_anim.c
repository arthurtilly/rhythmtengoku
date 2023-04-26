#include "global.h"
#include "graphics.h"

#include "quiz_show_anim_cells.inc.c"

// [D_088f7f70] Contestant - Left Arm
struct Animation anim_quiz_show_player_press_button_l[] = {
    /* 000 */ { quiz_show_cel008, 2 },
    /* 001 */ { quiz_show_cel009, 2 },
    /* 002 */ { quiz_show_cel020, 2 },
    /* 003 */ { quiz_show_cel010, 3 },
    /* 004 */ { quiz_show_cel011, 3 },
    /* 005 */ { quiz_show_cel012, 4 },
    /* 006 */ { quiz_show_cel013, 4 },
    /* 007 */ { quiz_show_cel014, 40 },
    /* End */ END_ANIMATION
};

// [D_088f7fb8] Contestant - Right Arm
struct Animation anim_quiz_show_player_press_button_r[] = {
    /* 000 */ { quiz_show_cel018, 2 },
    /* 001 */ { quiz_show_cel019, 2 },
    /* 002 */ { quiz_show_cel021, 2 },
    /* 003 */ { quiz_show_cel022, 3 },
    /* 004 */ { quiz_show_cel023, 3 },
    /* 005 */ { quiz_show_cel024, 4 },
    /* 006 */ { quiz_show_cel025, 4 },
    /* 007 */ { quiz_show_cel026, 40 },
    /* End */ END_ANIMATION
};

// [D_088f8000] Host - Right Arm
struct Animation anim_quiz_show_host_press_button_r[] = {
    /* 000 */ { quiz_show_cel030, 2 },
    /* 001 */ { quiz_show_cel031, 2 },
    /* 002 */ { quiz_show_cel032, 2 },
    /* 003 */ { quiz_show_cel033, 3 },
    /* 004 */ { quiz_show_cel034, 3 },
    /* 005 */ { quiz_show_cel035, 4 },
    /* 006 */ { quiz_show_cel036, 4 },
    /* 007 */ { quiz_show_cel037, 40 },
    /* End */ END_ANIMATION
};

// [D_088f8048] Host - Left Arm
struct Animation anim_quiz_show_host_press_button_l[] = {
    /* 000 */ { quiz_show_cel041, 2 },
    /* 001 */ { quiz_show_cel042, 2 },
    /* 002 */ { quiz_show_cel043, 2 },
    /* 003 */ { quiz_show_cel044, 3 },
    /* 004 */ { quiz_show_cel045, 3 },
    /* 005 */ { quiz_show_cel046, 4 },
    /* 006 */ { quiz_show_cel047, 4 },
    /* 007 */ { quiz_show_cel048, 40 },
    /* End */ END_ANIMATION
};

// [D_088f8090] Podium Numbers
struct Animation anim_quiz_show_podium_num[] = {
    /* 000 */ { quiz_show_cel060, 4 },
    /* 001 */ { quiz_show_cel051, 4 },
    /* 002 */ { quiz_show_cel052, 4 },
    /* 003 */ { quiz_show_cel053, 4 },
    /* 004 */ { quiz_show_cel054, 4 },
    /* 005 */ { quiz_show_cel055, 4 },
    /* 006 */ { quiz_show_cel056, 4 },
    /* 007 */ { quiz_show_cel057, 4 },
    /* 008 */ { quiz_show_cel058, 4 },
    /* 009 */ { quiz_show_cel059, 4 },
    /* 010 */ { quiz_show_cel061, 4 },
    /* End */ END_ANIMATION
};

// [D_088f80f0] Podium Numbers (Unused. Lacks a "?" frame)
struct Animation anim_quiz_show_podium_num_dupe[] = {
    /* 000 */ { quiz_show_cel071, 4 },
    /* 001 */ { quiz_show_cel062, 4 },
    /* 002 */ { quiz_show_cel063, 4 },
    /* 003 */ { quiz_show_cel064, 4 },
    /* 004 */ { quiz_show_cel065, 4 },
    /* 005 */ { quiz_show_cel066, 4 },
    /* 006 */ { quiz_show_cel067, 4 },
    /* 007 */ { quiz_show_cel068, 4 },
    /* 008 */ { quiz_show_cel069, 4 },
    /* 009 */ { quiz_show_cel070, 4 },
    /* End */ END_ANIMATION
};

// [D_088f8148] Blank (Unused)
struct Animation anim_quiz_show_blank[] = {
    /* 000 */ { quiz_show_cel072, 40 },
    /* 001 */ { quiz_show_cel073, 40 },
    /* End */ END_ANIMATION
};

// [D_088f8160] Contestant Podium - Left Button
struct Animation anim_quiz_show_button_player_l[] = {
    /* 000 */ { quiz_show_cel076, 4 },
    /* 001 */ { quiz_show_cel075, 4 },
    /* 002 */ { quiz_show_cel074, 4 },
    /* End */ END_ANIMATION
};

// [D_088f8180] Contestant Podium - Right Button
struct Animation anim_quiz_show_button_player_r[] = {
    /* 000 */ { quiz_show_cel079, 4 },
    /* 001 */ { quiz_show_cel078, 4 },
    /* 002 */ { quiz_show_cel077, 4 },
    /* End */ END_ANIMATION
};

// [D_088f81a0] Host Podium - Left Button
struct Animation anim_quiz_show_button_host_l[] = {
    /* 000 */ { quiz_show_cel085, 4 },
    /* 001 */ { quiz_show_cel084, 4 },
    /* 002 */ { quiz_show_cel083, 4 },
    /* End */ END_ANIMATION
};

// [D_088f81c0] Host Podium - Right Button
struct Animation anim_quiz_show_button_host_r[] = {
    /* 000 */ { quiz_show_cel082, 4 },
    /* 001 */ { quiz_show_cel081, 4 },
    /* 002 */ { quiz_show_cel080, 4 },
    /* End */ END_ANIMATION
};

// [D_088f81e0] Host's Head - Neutral
struct Animation anim_quiz_show_host_head[] = {
    /* 000 */ { quiz_show_cel006, 21 },
    /* End */ END_ANIMATION
};

// [D_088f81f0] Host's Head - Success
struct Animation anim_quiz_show_host_head_success[] = {
    /* 000 */ { quiz_show_cel086, 4 },
    /* 001 */ { quiz_show_cel087, 3 },
    /* 002 */ { quiz_show_cel088, 3 },
    /* 003 */ { quiz_show_cel087, 3 },
    /* 004 */ { quiz_show_cel088, 3 },
    /* 005 */ { quiz_show_cel087, 3 },
    /* 006 */ { quiz_show_cel088, 3 },
    /* 007 */ { quiz_show_cel087, 3 },
    /* 008 */ { quiz_show_cel088, 3 },
    /* 009 */ { quiz_show_cel087, 3 },
    /* 010 */ { quiz_show_cel088, 20 },
    /* End */ END_ANIMATION
};

// [D_088f8250] Host's Head - Failure
struct Animation anim_quiz_show_host_head_failure[] = {
    /* 000 */ { quiz_show_cel095, 4 },
    /* 001 */ { quiz_show_cel096, 4 },
    /* 002 */ { quiz_show_cel097, 4 },
    /* 003 */ { quiz_show_cel098, 4 },
    /* 004 */ { quiz_show_cel099, 4 },
    /* 005 */ { quiz_show_cel100, 4 },
    /* 006 */ { quiz_show_cel101, 20 },
    /* End */ END_ANIMATION
};

// [D_088f8290] Contestant's Head - Neutral
struct Animation anim_quiz_show_player_head[] = {
    /* 000 */ { quiz_show_cel001, 21 },
    /* End */ END_ANIMATION
};

// [D_088f82a0] Contestant's Head - Success
struct Animation anim_quiz_show_player_head_success[] = {
    /* 000 */ { quiz_show_cel102, 4 },
    /* 001 */ { quiz_show_cel103, 3 },
    /* 002 */ { quiz_show_cel104, 3 },
    /* 003 */ { quiz_show_cel103, 3 },
    /* 004 */ { quiz_show_cel104, 3 },
    /* 005 */ { quiz_show_cel103, 3 },
    /* 006 */ { quiz_show_cel104, 3 },
    /* 007 */ { quiz_show_cel103, 3 },
    /* 008 */ { quiz_show_cel104, 3 },
    /* 009 */ { quiz_show_cel103, 3 },
    /* 010 */ { quiz_show_cel104, 20 },
    /* End */ END_ANIMATION
};

// [D_088f8300] Contestant's Head - Failure
struct Animation anim_quiz_show_player_head_failure[] = {
    /* 000 */ { quiz_show_cel105, 4 },
    /* 001 */ { quiz_show_cel106, 4 },
    /* 002 */ { quiz_show_cel107, 4 },
    /* 003 */ { quiz_show_cel108, 4 },
    /* 004 */ { quiz_show_cel109, 4 },
    /* 005 */ { quiz_show_cel110, 4 },
    /* 006 */ { quiz_show_cel111, 20 },
    /* End */ END_ANIMATION
};

// [D_088f8340] Contestant's Body
struct Animation anim_quiz_show_player_body[] = {
    /* 000 */ { quiz_show_cel092, 3 },
    /* 001 */ { quiz_show_cel093, 3 },
    /* 002 */ { quiz_show_cel094, 210 },
    /* End */ END_ANIMATION
};

// [D_088f8360] Host's Body
struct Animation anim_quiz_show_host_body[] = {
    /* 000 */ { quiz_show_cel089, 3 },
    /* 001 */ { quiz_show_cel090, 3 },
    /* 002 */ { quiz_show_cel091, 210 },
    /* End */ END_ANIMATION
};

// [D_088f8380] Podium Number 0 (Unused)
struct Animation anim_quiz_show_num0_1[] = {
    /* 000 */ { quiz_show_cel060, 4 },
    /* End */ END_ANIMATION
};

// [D_088f8390] Podium Number 0 (Unused)
struct Animation anim_quiz_show_num0_2[] = {
    /* 000 */ { quiz_show_cel060, 4 },
    /* End */ END_ANIMATION
};

// [D_088f83a0] Podium Number 0 (Unused)
struct Animation anim_quiz_show_num0_3[] = {
    /* 000 */ { quiz_show_cel060, 4 },
    /* End */ END_ANIMATION
};

// [D_088f83b0] Podium Number 0 (Unused)
struct Animation anim_quiz_show_num0_4[] = {
    /* 000 */ { quiz_show_cel060, 4 },
    /* End */ END_ANIMATION
};

// [D_088f83c0] Contestant - Raise Left Arm
struct Animation anim_quiz_show_player_arm_l[] = {
    /* 000 */ { quiz_show_cel007, 40 },
    /* 001 */ { quiz_show_cel016, 4 },
    /* 002 */ { quiz_show_cel015, 4 },
    /* 003 */ { quiz_show_cel014, 40 },
    /* End */ END_ANIMATION
};

// [D_088f83e8] Contestant - Raise Right Arm
struct Animation anim_quiz_show_player_arm_r[] = {
    /* 000 */ { quiz_show_cel017, 40 },
    /* 001 */ { quiz_show_cel028, 4 },
    /* 002 */ { quiz_show_cel027, 4 },
    /* 003 */ { quiz_show_cel026, 40 },
    /* End */ END_ANIMATION
};

// [D_088f8410] Host - Raise Right Arm
struct Animation anim_quiz_show_host_arm_r[] = {
    /* 000 */ { quiz_show_cel029, 40 },
    /* 001 */ { quiz_show_cel039, 4 },
    /* 002 */ { quiz_show_cel038, 4 },
    /* 003 */ { quiz_show_cel037, 40 },
    /* End */ END_ANIMATION
};

// [D_088f8438] Host - Raise Left Arm
struct Animation anim_quiz_show_host_arm_l[] = {
    /* 000 */ { quiz_show_cel040, 40 },
    /* 001 */ { quiz_show_cel050, 4 },
    /* 002 */ { quiz_show_cel049, 4 },
    /* 003 */ { quiz_show_cel048, 40 },
    /* End */ END_ANIMATION
};

// [D_088f8460] Logo Explosion
struct Animation anim_quiz_show_explode_sign[] = {
    /* 000 */ { quiz_show_cel112, 1 },
    /* 001 */ { quiz_show_cel113, 1 },
    /* 002 */ { quiz_show_cel114, 1 },
    /* 003 */ { quiz_show_cel115, 1 },
    /* 004 */ { quiz_show_cel113, 1 },
    /* 005 */ { quiz_show_cel114, 1 },
    /* 006 */ { quiz_show_cel115, 1 },
    /* 007 */ { quiz_show_cel112, 1 },
    /* 008 */ { quiz_show_cel116, 2 },
    /* 009 */ { quiz_show_cel117, 4 },
    /* 010 */ { quiz_show_cel118, 4 },
    /* 011 */ { quiz_show_cel119, 4 },
    /* 012 */ { quiz_show_cel120, 6 },
    /* 013 */ { quiz_show_cel121, 6 },
    /* 014 */ { quiz_show_cel122, 6 },
    /* 015 */ { quiz_show_cel123, 6 },
    /* 016 */ { quiz_show_cel124, 6 },
    /* 017 */ { quiz_show_cel125, 100 },
    /* End */ END_ANIMATION
};

// [D_088f84f8] Contestant's Podium Explosion
struct Animation anim_quiz_show_explode_player_podium[] = {
    /* 000 */ { quiz_show_cel127, 4 },
    /* 001 */ { quiz_show_cel128, 4 },
    /* 002 */ { quiz_show_cel129, 4 },
    /* 003 */ { quiz_show_cel130, 4 },
    /* 004 */ { quiz_show_cel131, 4 },
    /* 005 */ { quiz_show_cel132, 4 },
    /* 006 */ { quiz_show_cel133, 4 },
    /* 007 */ { quiz_show_cel134, 6 },
    /* 008 */ { quiz_show_cel135, 6 },
    /* 009 */ { quiz_show_cel136, 6 },
    /* 010 */ { quiz_show_cel137, 6 },
    /* 011 */ { quiz_show_cel138, 100 },
    /* End */ END_ANIMATION
};

// [D_088f8560] Host's Podium Explosion
struct Animation anim_quiz_show_explode_host_podium[] = {
    /* 000 */ { quiz_show_cel139, 4 },
    /* 001 */ { quiz_show_cel140, 4 },
    /* 002 */ { quiz_show_cel141, 4 },
    /* 003 */ { quiz_show_cel142, 4 },
    /* 004 */ { quiz_show_cel143, 4 },
    /* 005 */ { quiz_show_cel144, 4 },
    /* 006 */ { quiz_show_cel145, 4 },
    /* 007 */ { quiz_show_cel146, 6 },
    /* 008 */ { quiz_show_cel147, 6 },
    /* 009 */ { quiz_show_cel148, 6 },
    /* 010 */ { quiz_show_cel149, 6 },
    /* 011 */ { quiz_show_cel150, 100 },
    /* End */ END_ANIMATION
};

// [D_088f85c8] Timer
struct Animation anim_quiz_show_clock[] = {
    /* 000 */ { quiz_show_cel151, 4 },
    /* End */ END_ANIMATION
};

// [D_088f85d8] Timer Hand
struct Animation anim_quiz_show_clock_hand[] = {
    /* 000 */ { quiz_show_cel152, 4 },
    /* End */ END_ANIMATION
};

// [D_088f85e8] Host's Head - Endless 2
struct Animation anim_quiz_show_host_head_endless2[] = {
    /* 000 */ { quiz_show_cel153, 3 },
    /* 001 */ { quiz_show_cel154, 4 },
    /* 002 */ { quiz_show_cel086, 6 },
    /* 003 */ { quiz_show_cel006, 20 },
    /* End */ END_ANIMATION
};

// [D_088f8610] Host's Head - Endless 3
struct Animation anim_quiz_show_host_head_endless3[] = {
    /* 000 */ { quiz_show_cel155, 2 },
    /* 001 */ { quiz_show_cel156, 5 },
    /* 002 */ { quiz_show_cel153, 3 },
    /* 003 */ { quiz_show_cel086, 6 },
    /* 004 */ { quiz_show_cel006, 20 },
    /* End */ END_ANIMATION
};

// [D_088f8640] Contestant's Head - Endless 2
struct Animation anim_quiz_show_player_head_endless2[] = {
    /* 000 */ { quiz_show_cel159, 20 },
    /* 001 */ { quiz_show_cel001, 40 },
    /* End */ END_ANIMATION
};

// [D_088f8658] Contestant's Head - Endless 3
struct Animation anim_quiz_show_player_head_endless3[] = {
    /* 000 */ { quiz_show_cel160, 2 },
    /* 001 */ { quiz_show_cel161, 20 },
    /* 002 */ { quiz_show_cel159, 6 },
    /* 003 */ { quiz_show_cel001, 40 },
    /* End */ END_ANIMATION
};

// [D_088f8680] Host's Head - Endless 1
struct Animation anim_quiz_show_host_head_endless1[] = {
    /* 000 */ { quiz_show_cel086, 30 },
    /* 001 */ { quiz_show_cel006, 40 },
    /* End */ END_ANIMATION
};

// [D_088f8698] Current Score Label
struct Animation anim_quiz_show_current_score_label[] = {
    /* 000 */ { quiz_show_cel164, 4 },
    /* End */ END_ANIMATION
};

// [D_088f86a8] High Score Label
struct Animation anim_quiz_show_high_score_label[] = {
    /* 000 */ { quiz_show_cel165, 4 },
    /* End */ END_ANIMATION
};

// [D_088f86b8] Score Numbers
struct Animation anim_quiz_show_score_num[] = {
    /* 000 */ { quiz_show_cel166, 4 },
    /* 001 */ { quiz_show_cel167, 4 },
    /* 002 */ { quiz_show_cel168, 4 },
    /* 003 */ { quiz_show_cel169, 4 },
    /* 004 */ { quiz_show_cel170, 4 },
    /* 005 */ { quiz_show_cel171, 4 },
    /* 006 */ { quiz_show_cel172, 4 },
    /* 007 */ { quiz_show_cel173, 4 },
    /* 008 */ { quiz_show_cel174, 4 },
    /* 009 */ { quiz_show_cel175, 4 },
    /* 010 */ { quiz_show_cel000, 4 },
    /* End */ END_ANIMATION
};

// [D_088f8718] Host's Head - Endless 4
struct Animation anim_quiz_show_host_head_endless4[] = {
    /* 000 */ { quiz_show_cel157, 2 },
    /* 001 */ { quiz_show_cel158, 5 },
    /* 002 */ { quiz_show_cel155, 2 },
    /* 003 */ { quiz_show_cel156, 5 },
    /* 004 */ { quiz_show_cel153, 3 },
    /* 005 */ { quiz_show_cel086, 6 },
    /* 006 */ { quiz_show_cel006, 20 },
    /* End */ END_ANIMATION
};

// [D_088f8758] Contestant's Head - Endless 4
struct Animation anim_quiz_show_player_head_endless4[] = {
    /* 000 */ { quiz_show_cel162, 2 },
    /* 001 */ { quiz_show_cel163, 20 },
    /* 002 */ { quiz_show_cel161, 6 },
    /* 003 */ { quiz_show_cel159, 6 },
    /* 004 */ { quiz_show_cel001, 40 },
    /* End */ END_ANIMATION
};
