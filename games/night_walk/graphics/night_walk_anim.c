#include "global.h"
#include "graphics.h"

#include "night_walk_anim_cells.inc.c"

// [D_088c9a60] Play-Yan Blink
struct Animation anim_play_yan_blink[] = {
    /* 000 */ { night_walk_cel000, 90 },
    /* 001 */ { night_walk_cel001, 10 },
    /* 002 */ { night_walk_cel000, 30 },
    /* 003 */ { night_walk_cel001, 6 },
    /* 004 */ { night_walk_cel000, 6 },
    /* 005 */ { night_walk_cel001, 6 },
    /* End */ END_ANIMATION
};

// [D_088c9a98] Play-Yan Jump
struct Animation anim_play_yan_jump[] = {
    /* 000 */ { night_walk_cel002, 4 },
    /* End */ END_ANIMATION
};

// [D_088c9aa8] Play-Yan Crawl
struct Animation anim_play_yan_crawl[] = {
    /* 000 */ { night_walk_cel006, 4 },
    /* End */ END_ANIMATION
};

// [D_088c9ab8] Play-Yan Walk
struct Animation anim_play_yan_walk[] = {
    /* 000 */ { night_walk_cel007, 4 },
    /* 001 */ { night_walk_cel008, 4 },
    /* 002 */ { night_walk_cel009, 4 },
    /* 003 */ { night_walk_cel010, 4 },
    /* End */ END_ANIMATION
};

// [D_088c9ae0] Crab
struct Animation anim_night_walk_crab[] = {
    /* 000 */ { night_walk_cel018, 4 },
    /* 001 */ { night_walk_cel019, 4 },
    /* End */ END_ANIMATION
};

// [D_088c9af8] Swan
struct Animation anim_night_walk_swan[] = {
    /* 000 */ { night_walk_cel020, 4 },
    /* End */ END_ANIMATION
};

// [D_088c9b08] Electric Fish Idle
struct Animation anim_night_walk_fish[] = {
    /* 000 */ { night_walk_cel021, 4 },
    /* 001 */ { night_walk_cel022, 4 },
    /* 002 */ { night_walk_cel023, 4 },
    /* 003 */ { night_walk_cel024, 4 },
    /* 004 */ { night_walk_cel025, 4 },
    /* 005 */ { night_walk_cel026, 4 },
    /* End */ END_ANIMATION
};

// [D_088c9b40] Play-Yan Ooh
struct Animation anim_play_yan_ooh[] = {
    /* 000 */ { night_walk_cel011, 4 },
    /* End */ END_ANIMATION
};

// [D_088c9b50] Heart Box & Platform
struct Animation anim_night_walk_heart_bridge[] = {
    /* 000 */ { night_walk_cel029, 40 },
    /* 001 */ { night_walk_cel037, 1 },
    /* 002 */ { night_walk_cel038, 1 },
    /* 003 */ { night_walk_cel039, 2 },
    /* 004 */ { night_walk_cel040, 3 },
    /* 005 */ { night_walk_cel041, 40 },
    /* End */ END_ANIMATION
};

// [D_088c9b88] Level Layout Test
struct Animation anim_night_walk_layout_test[] = {
    /* 000 */ { night_walk_cel088, 4 },
    /* End */ END_ANIMATION
};

// [D_088c9b98] Play-Yan Short Hop
struct Animation anim_play_yan_short_hop[] = {
    /* 000 */ { night_walk_cel003, 1 },
    /* 001 */ { night_walk_cel004, 1 },
    /* 002 */ { night_walk_cel005, 3 },
    /* 003 */ { night_walk_cel004, 1 },
    /* 004 */ { night_walk_cel003, 1 },
    /* 005 */ { night_walk_cel007, 4 },
    /* 006 */ { night_walk_cel008, 4 },
    /* 007 */ { night_walk_cel009, 4 },
    /* 008 */ { night_walk_cel010, 4 },
    /* End */ END_ANIMATION
};

// [D_088c9be8] Heart Box
struct Animation anim_night_walk_heart_box[] = {
    /* 000 */ { night_walk_cel056, 40 },
    /* 001 */ { night_walk_cel067, 1 },
    /* 002 */ { night_walk_cel068, 1 },
    /* 003 */ { night_walk_cel069, 2 },
    /* 004 */ { night_walk_cel070, 3 },
    /* 005 */ { night_walk_cel071, 40 },
    /* End */ END_ANIMATION
};

// [D_088c9c20] Lollipop Box & Platform
struct Animation anim_night_walk_lollipop_bridge[] = {
    /* 000 */ { night_walk_cel029, 40 },
    /* 001 */ { night_walk_cel043, 1 },
    /* 002 */ { night_walk_cel044, 1 },
    /* 003 */ { night_walk_cel045, 2 },
    /* 004 */ { night_walk_cel046, 3 },
    /* 005 */ { night_walk_cel047, 40 },
    /* End */ END_ANIMATION
};

// [D_088c9c58] Umbrella Box & Platform
struct Animation anim_night_walk_umbrella_bridge[] = {
    /* 000 */ { night_walk_cel029, 40 },
    /* 001 */ { night_walk_cel050, 1 },
    /* 002 */ { night_walk_cel051, 1 },
    /* 003 */ { night_walk_cel052, 1 },
    /* 004 */ { night_walk_cel053, 2 },
    /* 005 */ { night_walk_cel054, 3 },
    /* 006 */ { night_walk_cel055, 40 },
    /* End */ END_ANIMATION
};

// [D_088c9c98] Lollipop Box
struct Animation anim_night_walk_lollipop_box[] = {
    /* 000 */ { night_walk_cel056, 40 },
    /* 001 */ { night_walk_cel073, 1 },
    /* 002 */ { night_walk_cel074, 1 },
    /* 003 */ { night_walk_cel075, 2 },
    /* 004 */ { night_walk_cel076, 3 },
    /* 005 */ { night_walk_cel077, 40 },
    /* End */ END_ANIMATION
};

// [D_088c9cd0] Umbrella Box
struct Animation anim_night_walk_umbrella_box[] = {
    /* 000 */ { night_walk_cel056, 40 },
    /* 001 */ { night_walk_cel080, 1 },
    /* 002 */ { night_walk_cel081, 1 },
    /* 003 */ { night_walk_cel082, 1 },
    /* 004 */ { night_walk_cel083, 2 },
    /* 005 */ { night_walk_cel084, 3 },
    /* 006 */ { night_walk_cel085, 40 },
    /* End */ END_ANIMATION
};

// [D_088c9d10] Note Box & Platform
struct Animation anim_night_walk_note_bridge[] = {
    /* 000 */ { night_walk_cel030, 40 },
    /* 001 */ { night_walk_cel031, 1 },
    /* 002 */ { night_walk_cel032, 2 },
    /* 003 */ { night_walk_cel033, 2 },
    /* 004 */ { night_walk_cel034, 3 },
    /* 005 */ { night_walk_cel035, 6 },
    /* 006 */ { night_walk_cel034, 3 },
    /* 007 */ { night_walk_cel033, 6 },
    /* End */ END_ANIMATION
};

// [D_088c9d58] Play-Yan Fall
struct Animation anim_play_yan_fall[] = {
    /* 000 */ { night_walk_cel012, 4 },
    /* 001 */ { night_walk_cel013, 4 },
    /* 002 */ { night_walk_cel014, 4 },
    /* 003 */ { night_walk_cel015, 4 },
    /* 004 */ { night_walk_cel014, 4 },
    /* End */ END_ANIMATION
};

// [D_088c9d88] Balloon
struct Animation anim_night_walk_balloon[] = {
    /* 000 */ { night_walk_cel089, 6 },
    /* 001 */ { night_walk_cel090, 6 },
    /* 002 */ { night_walk_cel090, 6 },
    /* 003 */ { night_walk_cel089, 6 },
    /* 004 */ { night_walk_cel091, 6 },
    /* 005 */ { night_walk_cel091, 6 },
    /* End */ END_ANIMATION
};

// [D_088c9dc0] Balloon Pop
struct Animation anim_night_walk_balloon_pop[] = {
    /* 000 */ { night_walk_cel092, 2 },
    /* End */ END_ANIMATION
};

// [D_088c9dd0] Box & Platform Disappear
struct Animation anim_night_walk_bridge_disappear[] = {
    /* 000 */ { night_walk_cel093, 2 },
    /* End */ END_ANIMATION
};

// [D_088c9de0] Box Disappear
struct Animation anim_night_walk_box_disappear[] = {
    /* 000 */ { night_walk_cel094, 2 },
    /* End */ END_ANIMATION
};

// [D_088c9df0] Small Star
struct Animation anim_night_walk_star_small[] = {
    /* 000 */ { night_walk_cel097, 4 },
    /* 001 */ { night_walk_cel097, 4 },
    /* 002 */ { night_walk_cel097, 4 },
    /* 003 */ { night_walk_cel097, 4 },
    /* 004 */ { night_walk_cel097, 4 },
    /* 005 */ { night_walk_cel097, 4 },
    /* 006 */ { night_walk_cel097, 4 },
    /* 007 */ { night_walk_cel098, 2 },
    /* End */ END_ANIMATION
};

// [D_088c9e38] Medium Star
struct Animation anim_night_walk_star_med[] = {
    /* 000 */ { night_walk_cel099, 4 },
    /* 001 */ { night_walk_cel099, 4 },
    /* 002 */ { night_walk_cel099, 4 },
    /* 003 */ { night_walk_cel099, 4 },
    /* 004 */ { night_walk_cel099, 4 },
    /* 005 */ { night_walk_cel099, 4 },
    /* 006 */ { night_walk_cel099, 4 },
    /* 007 */ { night_walk_cel100, 2 },
    /* End */ END_ANIMATION
};

// [D_088c9e80] Large Star
struct Animation anim_night_walk_star_big[] = {
    /* 000 */ { night_walk_cel101, 4 },
    /* 001 */ { night_walk_cel101, 4 },
    /* 002 */ { night_walk_cel101, 4 },
    /* 003 */ { night_walk_cel101, 4 },
    /* 004 */ { night_walk_cel101, 4 },
    /* 005 */ { night_walk_cel101, 4 },
    /* 006 */ { night_walk_cel101, 4 },
    /* 007 */ { night_walk_cel102, 2 },
    /* End */ END_ANIMATION
};

// [D_088c9ec8] Very Small Star
struct Animation anim_night_walk_star_tiny[] = {
    /* 000 */ { night_walk_cel095, 4 },
    /* 001 */ { night_walk_cel095, 4 },
    /* 002 */ { night_walk_cel095, 4 },
    /* 003 */ { night_walk_cel095, 4 },
    /* 004 */ { night_walk_cel095, 4 },
    /* 005 */ { night_walk_cel095, 4 },
    /* 006 */ { night_walk_cel095, 4 },
    /* 007 */ { night_walk_cel096, 2 },
    /* End */ END_ANIMATION
};

// [D_088c9f10] Very Large Star
struct Animation anim_night_walk_star_huge[] = {
    /* 000 */ { night_walk_cel103, 4 },
    /* 001 */ { night_walk_cel103, 4 },
    /* 002 */ { night_walk_cel103, 4 },
    /* 003 */ { night_walk_cel103, 4 },
    /* 004 */ { night_walk_cel103, 4 },
    /* 005 */ { night_walk_cel103, 4 },
    /* 006 */ { night_walk_cel103, 4 },
    /* 007 */ { night_walk_cel104, 2 },
    /* End */ END_ANIMATION
};

// [D_088c9f58] Star Disappear
struct Animation anim_night_walk_star_disappear[] = {
    /* 000 */ { night_walk_cel105, 2 },
    /* 001 */ { night_walk_cel106, 1 },
    /* 002 */ { night_walk_cel107, 1 },
    /* 003 */ { night_walk_cel108, 1 },
    /* 004 */ { night_walk_cel109, 1 },
    /* 005 */ { night_walk_cel110, 40 },
    /* End */ END_ANIMATION
};

// [D_088c9f90] Play-Yan Star Wand
struct Animation anim_play_yan_star_wand[] = {
    /* 000 */ { night_walk_cel111, 30 },
    /* 001 */ { night_walk_cel112, 2 },
    /* 002 */ { night_walk_cel111, 10 },
    /* 003 */ { night_walk_cel112, 2 },
    /* End */ END_ANIMATION
};

// [D_088c9fb8] Text
struct Animation anim_night_walk_text[] = {
    /* 000 */ { night_walk_cel113, 60 },
    /* 001 */ { night_walk_cel113, 60 },
    /* 002 */ { night_walk_cel113, 60 },
    /* 003 */ { night_walk_cel113, 60 },
    /* 004 */ { night_walk_cel113, 60 },
    /* End */ END_ANIMATION
};

// [D_088c9fe8] NG Heart Box & Platform
struct Animation anim_night_walk_ng_heart_bridge[] = {
    /* 000 */ { night_walk_cel036, 30 },
    /* 001 */ { night_walk_cel037, 100 },
    /* End */ END_ANIMATION
};

// [D_088ca000] NG Lollipop Box & Platform
struct Animation anim_night_walk_ng_lollipop_bridge[] = {
    /* 000 */ { night_walk_cel042, 30 },
    /* 001 */ { night_walk_cel043, 100 },
    /* End */ END_ANIMATION
};

// [D_088ca018] NG Umbrella Box & Platform
struct Animation anim_night_walk_ng_umbrella_bridge[] = {
    /* 000 */ { night_walk_cel049, 30 },
    /* 001 */ { night_walk_cel050, 100 },
    /* End */ END_ANIMATION
};

// [D_088ca030] NG Heart Box
struct Animation anim_night_walk_ng_heart_box[] = {
    /* 000 */ { night_walk_cel066, 30 },
    /* 001 */ { night_walk_cel067, 100 },
    /* End */ END_ANIMATION
};

// [D_088ca048] NG Lollipop Box
struct Animation anim_night_walk_ng_lollipop_box[] = {
    /* 000 */ { night_walk_cel072, 30 },
    /* 001 */ { night_walk_cel073, 100 },
    /* End */ END_ANIMATION
};

// [D_088ca060] NG Umbrella Box
struct Animation anim_night_walk_ng_umbrella_box[] = {
    /* 000 */ { night_walk_cel079, 30 },
    /* 001 */ { night_walk_cel080, 100 },
    /* End */ END_ANIMATION
};

// [D_088ca078] Very Small Star -> Small Star
struct Animation anim_night_walk_star_tiny_to_small[] = {
    /* 000 */ { night_walk_cel099, 3 },
    /* 001 */ { night_walk_cel114, 3 },
    /* End */ END_ANIMATION
};

// [D_088ca090] Small Star -> Medium Star
struct Animation anim_night_walk_star_small_to_med[] = {
    /* 000 */ { night_walk_cel101, 3 },
    /* 001 */ { night_walk_cel115, 3 },
    /* End */ END_ANIMATION
};

// [D_088ca0a8] Medium Star -> Large Star
struct Animation anim_night_walk_star_med_to_big[] = {
    /* 000 */ { night_walk_cel107, 3 },
    /* 001 */ { night_walk_cel116, 3 },
    /* End */ END_ANIMATION
};

// [D_088ca0c0] Large Star -> Very Large Star
struct Animation anim_night_walk_star_big_to_huge[] = {
    /* 000 */ { night_walk_cel105, 3 },
    /* 001 */ { night_walk_cel117, 3 },
    /* End */ END_ANIMATION
};

// [D_088ca0d8] Star Wand Box
struct Animation anim_night_walk_wand_box[] = {
    /* 000 */ { night_walk_cel057, 1 },
    /* 001 */ { night_walk_cel058, 1 },
    /* 002 */ { night_walk_cel059, 1 },
    /* 003 */ { night_walk_cel060, 1 },
    /* 004 */ { night_walk_cel061, 1 },
    /* 005 */ { night_walk_cel062, 1 },
    /* 006 */ { night_walk_cel063, 1 },
    /* 007 */ { night_walk_cel064, 1 },
    /* End */ END_ANIMATION
};

// [D_088ca120] NG Star Wand Box
struct Animation anim_night_walk_ng_wand_box[] = {
    /* 000 */ { night_walk_cel065, 40 },
    /* 001 */ { night_walk_cel086, 2 },
    /* 002 */ { night_walk_cel087, 20 },
    /* End */ END_ANIMATION
};

// [D_088ca140] Electric Fish Zap
struct Animation anim_night_walk_fish_zap[] = {
    /* 000 */ { night_walk_cel028, 3 },
    /* 001 */ { night_walk_cel027, 3 },
    /* End */ END_ANIMATION
};

// [D_088ca158] Play-Yan Violent Electrocution
struct Animation anim_play_yan_violent_electrocution[] = {
    /* 000 */ { night_walk_cel017, 3 },
    /* 001 */ { night_walk_cel016, 3 },
    /* End */ END_ANIMATION
};
