#include "global.h"
#include "graphics.h"

#include "drum_samurai_band_anim_cells.inc.c"

// [D_088a3114] Drummer - Head
struct Animation anim_band_drummer_head[] = {
    /* 000 */ { drum_samurai_band_cel002, 3 },
    /* 001 */ { drum_samurai_band_cel001, 3 },
    /* 002 */ { drum_samurai_band_cel000, 24 },
    /* End */ END_ANIMATION
};

// [D_088a3134] Drummer - Body
struct Animation anim_band_drummer_body[] = {
    /* 000 */ { drum_samurai_band_cel003, 3 },
    /* 001 */ { drum_samurai_band_cel004, 3 },
    /* 002 */ { drum_samurai_band_cel005, 24 },
    /* End */ END_ANIMATION
};

// [D_088a3154] Blank
struct Animation anim_drum_band_blank[] = {
    /* End */ END_ANIMATION
};

// [D_088a315c] Drummer - Left Hand - Splash Cymbal
struct Animation anim_band_drummer_use_splash[] = {
    /* 000 */ { drum_samurai_band_cel015, 2 },
    /* 001 */ { drum_samurai_band_cel016, 2 },
    /* 002 */ { drum_samurai_band_cel017, 2 },
    /* 003 */ { drum_samurai_band_cel018, 3 },
    /* 004 */ { drum_samurai_band_cel019, 3 },
    /* 005 */ { drum_samurai_band_cel020, 4 },
    /* 006 */ { drum_samurai_band_cel021, 4 },
    /* 007 */ { drum_samurai_band_cel022, 4 },
    /* 008 */ { drum_samurai_band_cel023, 4 },
    /* 009 */ { drum_samurai_band_cel034, 20 },
    /* End */ END_ANIMATION
};

// [D_088a31b4] Drummer - Left Hand - Snare Drum
struct Animation anim_band_drummer_use_snare_l[] = {
    /* 000 */ { drum_samurai_band_cel025, 2 },
    /* 001 */ { drum_samurai_band_cel026, 2 },
    /* 002 */ { drum_samurai_band_cel027, 2 },
    /* 003 */ { drum_samurai_band_cel028, 3 },
    /* 004 */ { drum_samurai_band_cel029, 3 },
    /* 005 */ { drum_samurai_band_cel030, 4 },
    /* 006 */ { drum_samurai_band_cel031, 4 },
    /* 007 */ { drum_samurai_band_cel032, 4 },
    /* 008 */ { drum_samurai_band_cel033, 4 },
    /* 009 */ { drum_samurai_band_cel034, 20 },
    /* End */ END_ANIMATION
};

// [D_088a320c] Drummer - Right Hand - Crash Cymbal
struct Animation anim_band_drummer_use_crash[] = {
    /* 000 */ { drum_samurai_band_cel035, 2 },
    /* 001 */ { drum_samurai_band_cel036, 2 },
    /* 002 */ { drum_samurai_band_cel037, 2 },
    /* 003 */ { drum_samurai_band_cel038, 3 },
    /* 004 */ { drum_samurai_band_cel039, 3 },
    /* 005 */ { drum_samurai_band_cel040, 4 },
    /* 006 */ { drum_samurai_band_cel041, 4 },
    /* 007 */ { drum_samurai_band_cel042, 4 },
    /* 008 */ { drum_samurai_band_cel043, 4 },
    /* 009 */ { drum_samurai_band_cel044, 20 },
    /* End */ END_ANIMATION
};

// [D_088a3264] Drummer - Right Hand - Snare Drum
struct Animation anim_band_drummer_use_snare_r[] = {
    /* 000 */ { drum_samurai_band_cel046, 2 },
    /* 001 */ { drum_samurai_band_cel047, 2 },
    /* 002 */ { drum_samurai_band_cel048, 2 },
    /* 003 */ { drum_samurai_band_cel049, 3 },
    /* 004 */ { drum_samurai_band_cel050, 3 },
    /* 005 */ { drum_samurai_band_cel051, 4 },
    /* 006 */ { drum_samurai_band_cel052, 4 },
    /* 007 */ { drum_samurai_band_cel053, 4 },
    /* 008 */ { drum_samurai_band_cel054, 4 },
    /* 009 */ { drum_samurai_band_cel055, 20 },
    /* End */ END_ANIMATION
};

// [D_088a32bc] Drummer - Left Hand - Hi-Hat
struct Animation anim_band_drummer_use_hihat[] = {
    /* 000 */ { drum_samurai_band_cel056, 2 },
    /* 001 */ { drum_samurai_band_cel057, 2 },
    /* 002 */ { drum_samurai_band_cel058, 2 },
    /* 003 */ { drum_samurai_band_cel059, 3 },
    /* 004 */ { drum_samurai_band_cel060, 3 },
    /* 005 */ { drum_samurai_band_cel061, 4 },
    /* 006 */ { drum_samurai_band_cel062, 4 },
    /* 007 */ { drum_samurai_band_cel063, 4 },
    /* 008 */ { drum_samurai_band_cel064, 4 },
    /* 009 */ { drum_samurai_band_cel065, 4 },
    /* 010 */ { drum_samurai_band_cel066, 20 },
    /* End */ END_ANIMATION
};

// [D_088a331c] Drummer - Left Hand - Tom Drum
struct Animation anim_band_drummer_use_tom[] = {
    /* 000 */ { drum_samurai_band_cel067, 2 },
    /* 001 */ { drum_samurai_band_cel068, 2 },
    /* 002 */ { drum_samurai_band_cel069, 2 },
    /* 003 */ { drum_samurai_band_cel070, 3 },
    /* 004 */ { drum_samurai_band_cel071, 3 },
    /* 005 */ { drum_samurai_band_cel072, 4 },
    /* 006 */ { drum_samurai_band_cel073, 4 },
    /* 007 */ { drum_samurai_band_cel074, 4 },
    /* 008 */ { drum_samurai_band_cel075, 4 },
    /* 009 */ { drum_samurai_band_cel066, 20 },
    /* End */ END_ANIMATION
};

// [D_088a3374] Splash Cymbal
struct Animation anim_band_drum_kit_splash[] = {
    /* 000 */ { drum_samurai_band_cel083, 2 },
    /* 001 */ { drum_samurai_band_cel077, 2 },
    /* 002 */ { drum_samurai_band_cel080, 2 },
    /* 003 */ { drum_samurai_band_cel082, 2 },
    /* 004 */ { drum_samurai_band_cel083, 3 },
    /* 005 */ { drum_samurai_band_cel081, 3 },
    /* 006 */ { drum_samurai_band_cel078, 4 },
    /* 007 */ { drum_samurai_band_cel079, 3 },
    /* 008 */ { drum_samurai_band_cel080, 3 },
    /* 009 */ { drum_samurai_band_cel081, 6 },
    /* 010 */ { drum_samurai_band_cel080, 4 },
    /* 011 */ { drum_samurai_band_cel079, 3 },
    /* 012 */ { drum_samurai_band_cel080, 30 },
    /* End */ END_ANIMATION
};

// [D_088a33e4] Crash Cymbal
struct Animation anim_band_drum_kit_crash[] = {
    /* 000 */ { drum_samurai_band_cel090, 2 },
    /* 001 */ { drum_samurai_band_cel084, 2 },
    /* 002 */ { drum_samurai_band_cel087, 2 },
    /* 003 */ { drum_samurai_band_cel089, 2 },
    /* 004 */ { drum_samurai_band_cel090, 3 },
    /* 005 */ { drum_samurai_band_cel088, 3 },
    /* 006 */ { drum_samurai_band_cel085, 4 },
    /* 007 */ { drum_samurai_band_cel086, 3 },
    /* 008 */ { drum_samurai_band_cel087, 3 },
    /* 009 */ { drum_samurai_band_cel088, 6 },
    /* 010 */ { drum_samurai_band_cel087, 4 },
    /* 011 */ { drum_samurai_band_cel086, 3 },
    /* 012 */ { drum_samurai_band_cel087, 30 },
    /* End */ END_ANIMATION
};

// [D_088a3454] Left Bass Drum
struct Animation anim_band_drum_kit_bass_l[] = {
    /* 000 */ { drum_samurai_band_cel093, 2 },
    /* 001 */ { drum_samurai_band_cel092, 2 },
    /* 002 */ { drum_samurai_band_cel091, 30 },
    /* End */ END_ANIMATION
};

// [D_088a3474] Right Bass Drum
struct Animation anim_band_drum_kit_bass_r[] = {
    /* 000 */ { drum_samurai_band_cel096, 2 },
    /* 001 */ { drum_samurai_band_cel095, 2 },
    /* 002 */ { drum_samurai_band_cel094, 30 },
    /* End */ END_ANIMATION
};

// [D_088a3494] Snare Drum
struct Animation anim_band_drum_kit_snare[] = {
    /* 000 */ { drum_samurai_band_cel097, 3 },
    /* 001 */ { drum_samurai_band_cel098, 2 },
    /* 002 */ { drum_samurai_band_cel099, 30 },
    /* End */ END_ANIMATION
};

// [D_088a34b4] Hi-Hat
struct Animation anim_band_drum_kit_hihat[] = {
    /* 000 */ { drum_samurai_band_cel102, 3 },
    /* 001 */ { drum_samurai_band_cel101, 3 },
    /* 002 */ { drum_samurai_band_cel100, 3 },
    /* End */ END_ANIMATION
};

// [D_088a34d4] Tom Drum
struct Animation anim_band_drum_kit_tom[] = {
    /* 000 */ { drum_samurai_band_cel103, 2 },
    /* 001 */ { drum_samurai_band_cel104, 2 },
    /* 002 */ { drum_samurai_band_cel105, 2 },
    /* 003 */ { drum_samurai_band_cel106, 30 },
    /* End */ END_ANIMATION
};

// [D_088a34fc] Drum Kit Layout Test
struct Animation anim_band_drum_kit_layout_test[] = {
    /* 000 */ { drum_samurai_band_cel107, 4 },
    /* End */ END_ANIMATION
};

// [D_088a350c] Left Guitarist - Head
struct Animation anim_band_bassist_head[] = {
    /* 000 */ { drum_samurai_band_cel108, 3 },
    /* 001 */ { drum_samurai_band_cel109, 3 },
    /* 002 */ { drum_samurai_band_cel110, 24 },
    /* End */ END_ANIMATION
};

// [D_088a352c] Left Guitarist - Torso
struct Animation anim_band_bassist_body[] = {
    /* 000 */ { drum_samurai_band_cel111, 3 },
    /* 001 */ { drum_samurai_band_cel112, 3 },
    /* 002 */ { drum_samurai_band_cel113, 24 },
    /* End */ END_ANIMATION
};

// [D_088a354c] Left Guitarist - Legs
struct Animation anim_band_bassist_legs[] = {
    /* 000 */ { drum_samurai_band_cel114, 3 },
    /* 001 */ { drum_samurai_band_cel115, 3 },
    /* 002 */ { drum_samurai_band_cel116, 24 },
    /* End */ END_ANIMATION
};

// [D_088a356c] Left Guitarist - Left Arm & Guitar
struct Animation anim_band_bassist_arm_l[] = {
    /* 000 */ { drum_samurai_band_cel006, 3 },
    /* 001 */ { drum_samurai_band_cel007, 3 },
    /* 002 */ { drum_samurai_band_cel008, 3 },
    /* 003 */ { drum_samurai_band_cel009, 120 },
    /* 004 */ { drum_samurai_band_cel008, 4 },
    /* 005 */ { drum_samurai_band_cel007, 4 },
    /* 006 */ { drum_samurai_band_cel006, 120 },
    /* End */ END_ANIMATION
};

// [D_088a35ac] Left Guitarist - Right Arm & Guitar
struct Animation anim_band_bassist_arm_r[] = {
    /* 000 */ { drum_samurai_band_cel010, 4 },
    /* 001 */ { drum_samurai_band_cel011, 4 },
    /* 002 */ { drum_samurai_band_cel012, 4 },
    /* 003 */ { drum_samurai_band_cel013, 4 },
    /* 004 */ { drum_samurai_band_cel014, 4 },
    /* End */ END_ANIMATION
};

// [D_088a35dc] Right Guitarist - Head
struct Animation anim_band_guitarist_head[] = {
    /* 000 */ { drum_samurai_band_cel117, 3 },
    /* 001 */ { drum_samurai_band_cel118, 3 },
    /* 002 */ { drum_samurai_band_cel119, 24 },
    /* End */ END_ANIMATION
};

// [D_088a35fc] Right Guitarist - Torso
struct Animation anim_band_guitarist_body[] = {
    /* 000 */ { drum_samurai_band_cel120, 3 },
    /* 001 */ { drum_samurai_band_cel121, 3 },
    /* 002 */ { drum_samurai_band_cel122, 24 },
    /* End */ END_ANIMATION
};

// [D_088a361c] Right Guitarist - Legs
struct Animation anim_band_guitarist_legs[] = {
    /* 000 */ { drum_samurai_band_cel123, 3 },
    /* 001 */ { drum_samurai_band_cel124, 3 },
    /* 002 */ { drum_samurai_band_cel125, 24 },
    /* End */ END_ANIMATION
};

// [D_088a363c] Right Guitarist - Left Arm & Guitar
struct Animation anim_band_guitarist_arm_l[] = {
    /* 000 */ { drum_samurai_band_cel126, 3 },
    /* 001 */ { drum_samurai_band_cel127, 3 },
    /* 002 */ { drum_samurai_band_cel128, 3 },
    /* 003 */ { drum_samurai_band_cel129, 120 },
    /* 004 */ { drum_samurai_band_cel128, 4 },
    /* 005 */ { drum_samurai_band_cel127, 4 },
    /* 006 */ { drum_samurai_band_cel126, 120 },
    /* End */ END_ANIMATION
};

// [D_088a367c] Right Guitarist - Right Arm & Guitar
struct Animation anim_band_guitarist_arm_r[] = {
    /* 000 */ { drum_samurai_band_cel130, 5 },
    /* 001 */ { drum_samurai_band_cel131, 5 },
    /* 002 */ { drum_samurai_band_cel132, 5 },
    /* 003 */ { drum_samurai_band_cel133, 5 },
    /* End */ END_ANIMATION
};

// [D_088a36a4] Left Guitarist - Crouch
struct Animation anim_band_bassist_crouch[] = {
    /* 000 */ { drum_samurai_band_cel135, 4 },
    /* 001 */ { drum_samurai_band_cel136, 4 },
    /* 002 */ { drum_samurai_band_cel137, 4 },
    /* 003 */ { drum_samurai_band_cel138, 24 },
    /* End */ END_ANIMATION
};

// [D_088a36cc] Left Guitarist - Jump
struct Animation anim_band_bassist_jump[] = {
    /* 000 */ { drum_samurai_band_cel139, 4 },
    /* End */ END_ANIMATION
};

// [D_088a36dc] Right Guitarist - Crouch
struct Animation anim_band_guitarist_crouch[] = {
    /* 000 */ { drum_samurai_band_cel141, 4 },
    /* 001 */ { drum_samurai_band_cel142, 4 },
    /* 002 */ { drum_samurai_band_cel143, 4 },
    /* 003 */ { drum_samurai_band_cel144, 24 },
    /* End */ END_ANIMATION
};

// [D_088a3704] Right Guitarist - Jump
struct Animation anim_band_guitarist_jump[] = {
    /* 000 */ { drum_samurai_band_cel145, 4 },
    /* End */ END_ANIMATION
};

// [D_088a3714] Right Guitarist - Jump & Strum
struct Animation anim_band_guitarist_jump_strum[] = {
    /* 000 */ { drum_samurai_band_cel146, 2 },
    /* 001 */ { drum_samurai_band_cel147, 6 },
    /* 002 */ { drum_samurai_band_cel148, 5 },
    /* 003 */ { drum_samurai_band_cel149, 4 },
    /* 004 */ { drum_samurai_band_cel150, 3 },
    /* 005 */ { drum_samurai_band_cel151, 3 },
    /* 006 */ { drum_samurai_band_cel152, 3 },
    /* 007 */ { drum_samurai_band_cel153, 3 },
    /* 008 */ { drum_samurai_band_cel154, 3 },
    /* 009 */ { drum_samurai_band_cel155, 40 },
    /* End */ END_ANIMATION
};

// [D_088a376c] Right Guitarist - Head Turn Right to Front
struct Animation anim_band_guitarist_head_turn_r[] = {
    /* 000 */ { drum_samurai_band_cel156, 10 },
    /* 001 */ { drum_samurai_band_cel157, 4 },
    /* 002 */ { drum_samurai_band_cel158, 4 },
    /* 003 */ { drum_samurai_band_cel159, 30 },
    /* End */ END_ANIMATION
};

// [D_088a3794] Right Guitarist - Head Turn Left to Front
struct Animation anim_band_guitarist_head_turn_l[] = {
    /* 000 */ { drum_samurai_band_cel160, 10 },
    /* 001 */ { drum_samurai_band_cel161, 4 },
    /* 002 */ { drum_samurai_band_cel162, 4 },
    /* 003 */ { drum_samurai_band_cel159, 30 },
    /* End */ END_ANIMATION
};

// [D_088a37bc] Left Guitarist - Head Turn Left to Front
struct Animation anim_band_bassist_head_turn_l[] = {
    /* 000 */ { drum_samurai_band_cel163, 10 },
    /* 001 */ { drum_samurai_band_cel164, 4 },
    /* 002 */ { drum_samurai_band_cel165, 4 },
    /* 003 */ { drum_samurai_band_cel108, 30 },
    /* End */ END_ANIMATION
};

// [D_088a37e4] Left Guitarist - Head Turn Right to Front
struct Animation anim_band_bassist_head_turn_r[] = {
    /* 000 */ { drum_samurai_band_cel168, 10 },
    /* 001 */ { drum_samurai_band_cel167, 4 },
    /* 002 */ { drum_samurai_band_cel166, 4 },
    /* 003 */ { drum_samurai_band_cel108, 30 },
    /* End */ END_ANIMATION
};

// [D_088a380c] Drummer - Head Turn Left to Front
struct Animation anim_band_drummer_head_turn_l[] = {
    /* 000 */ { drum_samurai_band_cel169, 10 },
    /* 001 */ { drum_samurai_band_cel170, 4 },
    /* 002 */ { drum_samurai_band_cel171, 4 },
    /* 003 */ { drum_samurai_band_cel002, 30 },
    /* End */ END_ANIMATION
};

// [D_088a3834] Drummer - Head Turn Right to Front
struct Animation anim_band_drummer_head_turn_r[] = {
    /* 000 */ { drum_samurai_band_cel172, 10 },
    /* 001 */ { drum_samurai_band_cel173, 4 },
    /* 002 */ { drum_samurai_band_cel174, 4 },
    /* 003 */ { drum_samurai_band_cel002, 30 },
    /* End */ END_ANIMATION
};

// [D_088a385c] Left Guitarist - Jump & Strum
struct Animation anim_band_bassist_jump_strum[] = {
    /* 000 */ { drum_samurai_band_cel184, 2 },
    /* 001 */ { drum_samurai_band_cel183, 6 },
    /* 002 */ { drum_samurai_band_cel182, 5 },
    /* 003 */ { drum_samurai_band_cel181, 4 },
    /* 004 */ { drum_samurai_band_cel180, 4 },
    /* 005 */ { drum_samurai_band_cel179, 3 },
    /* 006 */ { drum_samurai_band_cel178, 3 },
    /* 007 */ { drum_samurai_band_cel177, 2 },
    /* 008 */ { drum_samurai_band_cel176, 2 },
    /* 009 */ { drum_samurai_band_cel175, 40 },
    /* End */ END_ANIMATION
};

// [D_088a38b4] REC/PLAY
struct Animation anim_drum_band_rec_mode_icon[] = {
    /* 000 */ { drum_samurai_band_cel185, 40 },
    /* 001 */ { drum_samurai_band_cel186, 40 },
    /* End */ END_ANIMATION
};

// [D_088a38cc] Adjust Off/On
struct Animation anim_drum_band_adjust_mode_icon[] = {
    /* 000 */ { drum_samurai_band_cel187, 40 },
    /* 001 */ { drum_samurai_band_cel188, 40 },
    /* End */ END_ANIMATION
};

// [D_088a38e4] Busy
struct Animation anim_drum_band_busy_icon[] = {
    /* 000 */ { drum_samurai_band_cel189, 4 },
    /* End */ END_ANIMATION
};

// [D_088a38f4] Microphone
struct Animation anim_drum_band_microphone[] = {
    /* 000 */ { drum_samurai_band_cel190, 4 },
    /* End */ END_ANIMATION
};

// [D_088a3904] Stage Light Flash
struct Animation anim_drum_band_light_flash[] = {
    /* 000 */ { drum_samurai_band_cel191, 2 },
    /* 001 */ { drum_samurai_band_cel192, 1 },
    /* 002 */ { drum_samurai_band_cel193, 1 },
    /* 003 */ { drum_samurai_band_cel194, 1 },
    /* 004 */ { drum_samurai_band_cel195, 1 },
    /* 005 */ { drum_samurai_band_cel196, 7 },
    /* 006 */ { drum_samurai_band_cel197, 4 },
    /* 007 */ { drum_samurai_band_cel198, 4 },
    /* End */ END_ANIMATION
};

// [D_088a394c] Saxophonists - Play
struct Animation anim_band_saxophonists_play[] = {
    /* 000 */ { drum_samurai_band_cel203, 20 },
    /* 001 */ { drum_samurai_band_cel202, 6 },
    /* 002 */ { drum_samurai_band_cel201, 10 },
    /* 003 */ { drum_samurai_band_cel202, 6 },
    /* End */ END_ANIMATION
};

// [D_088a3974] Trumpeters - Play
struct Animation anim_band_trumpeters_play[] = {
    /* 000 */ { drum_samurai_band_cel206, 20 },
    /* 001 */ { drum_samurai_band_cel205, 6 },
    /* 002 */ { drum_samurai_band_cel204, 10 },
    /* 003 */ { drum_samurai_band_cel205, 6 },
    /* End */ END_ANIMATION
};
