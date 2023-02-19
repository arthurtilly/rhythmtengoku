#include "global.h"
#include "graphics.h"

#include "mannequin_factory_anim_cells.inc.c"

// [D_088ba0fc] Mannequin - Base? (Unused)
struct Animation anim_mannequin_base[] = {
    /* 000 */ { mannequin_factory_cel002, 10 },
    /* End */ END_ANIMATION
};

// [D_088ba10c] Mannequin - Head
struct Animation anim_mannequin_head[] = {
    /* 000 */ { mannequin_factory_cel003, 40 },
    /* 001 */ { mannequin_factory_cel006, 40 },
    /* 002 */ { mannequin_factory_cel009, 40 },
    /* 003 */ { mannequin_factory_cel001, 40 },
    /* End */ END_ANIMATION
};

// [D_088ba134] Mannequin - Left Eye
struct Animation anim_mannequin_eye_l[] = {
    /* 000 */ { mannequin_factory_cel000, 40 },
    /* 001 */ { mannequin_factory_cel013, 20 },
    /* 002 */ { mannequin_factory_cel016, 40 },
    /* 003 */ { mannequin_factory_cel000, 40 },
    /* End */ END_ANIMATION
};

// [D_088ba15c] Mannequin - Right Eye
struct Animation anim_mannequin_eye_r[] = {
    /* 000 */ { mannequin_factory_cel017, 40 },
    /* 001 */ { mannequin_factory_cel020, 20 },
    /* 002 */ { mannequin_factory_cel000, 40 },
    /* 003 */ { mannequin_factory_cel000, 40 },
    /* End */ END_ANIMATION
};

// [D_088ba184] Right Hand
struct Animation anim_mannequin_hand_r[] = {
    /* 000 */ { mannequin_factory_cel024, 1 },
    /* 001 */ { mannequin_factory_cel025, 2 },
    /* 002 */ { mannequin_factory_cel026, 2 },
    /* 003 */ { mannequin_factory_cel027, 10 },
    /* 004 */ { mannequin_factory_cel024, 40 },
    /* End */ END_ANIMATION
};

// [D_088ba1b4] Left Hand
struct Animation anim_mannequin_hand_l[] = {
    /* 000 */ { mannequin_factory_cel030, 1 },
    /* 001 */ { mannequin_factory_cel031, 2 },
    /* 002 */ { mannequin_factory_cel032, 2 },
    /* 003 */ { mannequin_factory_cel033, 4 },
    /* 004 */ { mannequin_factory_cel030, 40 },
    /* End */ END_ANIMATION
};

// [D_088ba1e4] Left Eye Stamp
struct Animation anim_mannequin_stamp_l[] = {
    /* 000 */ { mannequin_factory_cel036, 1 },
    /* 001 */ { mannequin_factory_cel037, 1 },
    /* 002 */ { mannequin_factory_cel038, 2 },
    /* 003 */ { mannequin_factory_cel039, 2 },
    /* 004 */ { mannequin_factory_cel040, 2 },
    /* 005 */ { mannequin_factory_cel041, 2 },
    /* 006 */ { mannequin_factory_cel042, 2 },
    /* 007 */ { mannequin_factory_cel043, 2 },
    /* 008 */ { mannequin_factory_cel044, 2 },
    /* 009 */ { mannequin_factory_cel045, 2 },
    /* 010 */ { mannequin_factory_cel046, 40 },
    /* End */ END_ANIMATION
};

// [D_088ba244] Right Eye Stamp
struct Animation anim_mannequin_stamp_r[] = {
    /* 000 */ { mannequin_factory_cel048, 1 },
    /* 001 */ { mannequin_factory_cel049, 1 },
    /* 002 */ { mannequin_factory_cel050, 2 },
    /* 003 */ { mannequin_factory_cel051, 2 },
    /* 004 */ { mannequin_factory_cel052, 2 },
    /* 005 */ { mannequin_factory_cel053, 2 },
    /* 006 */ { mannequin_factory_cel054, 2 },
    /* 007 */ { mannequin_factory_cel055, 2 },
    /* 008 */ { mannequin_factory_cel056, 2 },
    /* 009 */ { mannequin_factory_cel057, 2 },
    /* 010 */ { mannequin_factory_cel058, 20 },
    /* End */ END_ANIMATION
};

// [D_088ba2a4] Blank Mannequin
struct Animation anim_mannequin_head_blank[] = {
    /* 000 */ { mannequin_factory_cel001, 4 },
    /* End */ END_ANIMATION
};

// [D_088ba2b4] Right Hand Slap Effect
struct Animation anim_mannequin_slap_effect_r[] = {
    /* 000 */ { mannequin_factory_cel028, 2 },
    /* 001 */ { mannequin_factory_cel029, 2 },
    /* 002 */ { mannequin_factory_cel000, 2 },
    /* End */ END_ANIMATION
};

// [D_088ba2d4] Left Hand Slap Effect
struct Animation anim_mannequin_slap_effect_l[] = {
    /* 000 */ { mannequin_factory_cel034, 2 },
    /* 001 */ { mannequin_factory_cel035, 2 },
    /* 002 */ { mannequin_factory_cel000, 2 },
    /* End */ END_ANIMATION
};

// [D_088ba2f4] Left Eye Stamp Effect
struct Animation anim_mannequin_stamp_effect_l[] = {
    /* 000 */ { mannequin_factory_cel047, 2 },
    /* 001 */ { mannequin_factory_cel000, 2 },
    /* End */ END_ANIMATION
};

// [D_088ba30c] Right Eye Stamp Effect
struct Animation anim_mannequin_stamp_effect_r[] = {
    /* 000 */ { mannequin_factory_cel059, 2 },
    /* 001 */ { mannequin_factory_cel000, 2 },
    /* End */ END_ANIMATION
};

// [D_088ba324] Mannequin with Smooth Rotation
struct Animation anim_mannequin_head_smooth_rotation[] = {
    /* 000 */ { mannequin_factory_cel003, 40 },
    /* 001 */ { mannequin_factory_cel004, 1 },
    /* 002 */ { mannequin_factory_cel005, 1 },
    /* 003 */ { mannequin_factory_cel006, 20 },
    /* 004 */ { mannequin_factory_cel007, 1 },
    /* 005 */ { mannequin_factory_cel008, 1 },
    /* 006 */ { mannequin_factory_cel009, 40 },
    /* End */ END_ANIMATION
};

// [D_088ba364] "No Good" Effect
struct Animation anim_mannequin_ng_effect[] = {
    /* 000 */ { mannequin_factory_cel060, 2 },
    /* 001 */ { mannequin_factory_cel061, 1 },
    /* 002 */ { mannequin_factory_cel062, 1 },
    /* 003 */ { mannequin_factory_cel063, 10 },
    /* 004 */ { mannequin_factory_cel000, 40 },
    /* End */ END_ANIMATION
};

// [D_088ba394] Surprised Left Eye
struct Animation anim_mannequin_ng_eye_l[] = {
    /* 000 */ { mannequin_factory_cel064, 4 },
    /* End */ END_ANIMATION
};

// [D_088ba3a4] Surprised Right Eye
struct Animation anim_mannequin_ng_eye_r[] = {
    /* 000 */ { mannequin_factory_cel065, 4 },
    /* End */ END_ANIMATION
};

// [D_088ba3b4] Surprised Mannequin Effect
struct Animation anim_mannequin_ng_head_effect[] = {
    /* 000 */ { mannequin_factory_cel066, 2 },
    /* 001 */ { mannequin_factory_cel000, 4 },
    /* End */ END_ANIMATION
};

// [D_088ba3cc] "OK" Speech Bubble
struct Animation anim_mannequin_emote_ok[] = {
    /* 000 */ { mannequin_factory_cel067, 12 },
    /* 001 */ { mannequin_factory_cel000, 60 },
    /* End */ END_ANIMATION
};

// [D_088ba3e4] Score Count Numbers
struct Animation anim_mannequin_score_num[] = {
    /* 000 */ { mannequin_factory_cel068, 4 },
    /* 001 */ { mannequin_factory_cel069, 4 },
    /* 002 */ { mannequin_factory_cel070, 4 },
    /* 003 */ { mannequin_factory_cel071, 4 },
    /* 004 */ { mannequin_factory_cel072, 4 },
    /* 005 */ { mannequin_factory_cel073, 4 },
    /* 006 */ { mannequin_factory_cel074, 4 },
    /* 007 */ { mannequin_factory_cel075, 4 },
    /* 008 */ { mannequin_factory_cel076, 4 },
    /* 009 */ { mannequin_factory_cel077, 4 },
    /* 010 */ { mannequin_factory_cel000, 4 },
    /* End */ END_ANIMATION
};

// [D_088ba444] Star Score Meter
struct Animation anim_mannequin_score_stars[] = {
    /* 000 */ { mannequin_factory_cel000, 4 },
    /* 001 */ { mannequin_factory_cel088, 4 },
    /* 002 */ { mannequin_factory_cel089, 4 },
    /* 003 */ { mannequin_factory_cel090, 4 },
    /* 004 */ { mannequin_factory_cel091, 4 },
    /* End */ END_ANIMATION
};

// [D_088ba474] Music Note Speech Bubble (Right)
struct Animation anim_mannequin_emote_music_note_r[] = {
    /* 000 */ { mannequin_factory_cel092, 9 },
    /* 001 */ { mannequin_factory_cel000, 40 },
    /* End */ END_ANIMATION
};

// [D_088ba48c] Music Note Speech Bubble (Left)
struct Animation anim_mannequin_emote_music_note_l[] = {
    /* 000 */ { mannequin_factory_cel093, 9 },
    /* 001 */ { mannequin_factory_cel000, 40 },
    /* End */ END_ANIMATION
};

// [D_088ba4a4] Cowbell
struct Animation anim_mannequin_cowbell[] = {
    /* 000 */ { mannequin_factory_cel094, 2 },
    /* 001 */ { mannequin_factory_cel095, 2 },
    /* 002 */ { mannequin_factory_cel096, 2 },
    /* 003 */ { mannequin_factory_cel097, 2 },
    /* 004 */ { mannequin_factory_cel098, 20 },
    /* End */ END_ANIMATION
};

// [D_088ba4d4] Five Blank Mannequins in a Row
struct Animation anim_mannequin_council[] = {
    /* 000 */ { mannequin_factory_cel099, 4 },
    /* End */ END_ANIMATION
};

// [D_088ba4e4] Mannequin Dash Effect
struct Animation anim_mannequin_dash_effect[] = {
    /* 000 */ { mannequin_factory_cel100, 2 },
    /* End */ END_ANIMATION
};

// [D_088ba4f4] Stamp Mannequin (Facing Forward)
struct Animation anim_mannequin_complete_c[] = {
    /* 000 */ { mannequin_factory_cel101, 2 },
    /* 001 */ { mannequin_factory_cel102, 2 },
    /* 002 */ { mannequin_factory_cel103, 3 },
    /* 003 */ { mannequin_factory_cel104, 4 },
    /* 004 */ { mannequin_factory_cel105, 10 },
    /* 005 */ { mannequin_factory_cel106, 2 },
    /* 006 */ { mannequin_factory_cel107, 2 },
    /* 007 */ { mannequin_factory_cel108, 2 },
    /* 008 */ { mannequin_factory_cel109, 100 },
    /* End */ END_ANIMATION
};

// [D_088ba544] Stamp Mannequin (Facing Left)
struct Animation anim_mannequin_complete_l[] = {
    /* 000 */ { mannequin_factory_cel112, 2 },
    /* 001 */ { mannequin_factory_cel113, 2 },
    /* 002 */ { mannequin_factory_cel114, 3 },
    /* 003 */ { mannequin_factory_cel115, 4 },
    /* 004 */ { mannequin_factory_cel116, 40 },
    /* End */ END_ANIMATION
};

// [D_088ba574] Stamp Mannequin (Facing Right)
struct Animation anim_mannequin_complete_r[] = {
    /* 000 */ { mannequin_factory_cel117, 2 },
    /* 001 */ { mannequin_factory_cel118, 2 },
    /* 002 */ { mannequin_factory_cel119, 3 },
    /* 003 */ { mannequin_factory_cel120, 4 },
    /* 004 */ { mannequin_factory_cel121, 40 },
    /* End */ END_ANIMATION
};

// [D_088ba5a4] Crane Holding Mannequin
struct Animation anim_mannequin_crane[] = {
    /* 000 */ { mannequin_factory_cel110, 100 },
    /* End */ END_ANIMATION
};

// [D_088ba5b4] Crane Dash Effect
struct Animation anim_mannequin_crane_dash_effect[] = {
    /* 000 */ { mannequin_factory_cel111, 2 },
    /* End */ END_ANIMATION
};

// [D_088ba5c4] "Game Over" Icon
struct Animation anim_mannequin_game_over[] = {
    /* 000 */ { mannequin_factory_cel122, 4 },
    /* 001 */ { mannequin_factory_cel123, 10 },
    /* 002 */ { mannequin_factory_cel122, 4 },
    /* 003 */ { mannequin_factory_cel124, 10 },
    /* End */ END_ANIMATION
};

// [D_088ba5ec] High Score Count Numbers
struct Animation anim_mannequin_high_score_num[] = {
    /* 000 */ { mannequin_factory_cel078, 4 },
    /* 001 */ { mannequin_factory_cel079, 4 },
    /* 002 */ { mannequin_factory_cel080, 4 },
    /* 003 */ { mannequin_factory_cel081, 4 },
    /* 004 */ { mannequin_factory_cel082, 4 },
    /* 005 */ { mannequin_factory_cel083, 4 },
    /* 006 */ { mannequin_factory_cel084, 4 },
    /* 007 */ { mannequin_factory_cel085, 4 },
    /* 008 */ { mannequin_factory_cel086, 4 },
    /* 009 */ { mannequin_factory_cel087, 4 },
    /* 010 */ { mannequin_factory_cel000, 4 },
    /* End */ END_ANIMATION
};
