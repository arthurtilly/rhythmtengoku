#include "global.h"
#include "graphics.h"

#include "drum_girls_anim_cells.inc.c"

// [D_088c139c] Drummer - Head
struct Animation anim_drum_girl_head[] = {
    /* 000 */ { drum_girls_cel002, 3 },
    /* 001 */ { drum_girls_cel001, 3 },
    /* 002 */ { drum_girls_cel000, 24 },
    /* End */ END_ANIMATION
};

// [D_088c13bc] Drummer - Body
struct Animation anim_drum_girl_body[] = {
    /* 000 */ { drum_girls_cel003, 3 },
    /* 001 */ { drum_girls_cel004, 3 },
    /* 002 */ { drum_girls_cel005, 24 },
    /* End */ END_ANIMATION
};

// [D_088c13dc] Blank
struct Animation anim_drum_girls_blank[] = {
    /* End */ END_ANIMATION
};

// [D_088c13e4] Drummer - Left Hand - Splash Cymbal
struct Animation anim_drum_girl_use_splash[] = {
    /* 000 */ { drum_girls_cel015, 2 },
    /* 001 */ { drum_girls_cel016, 2 },
    /* 002 */ { drum_girls_cel017, 2 },
    /* 003 */ { drum_girls_cel018, 3 },
    /* 004 */ { drum_girls_cel019, 3 },
    /* 005 */ { drum_girls_cel020, 4 },
    /* 006 */ { drum_girls_cel021, 4 },
    /* 007 */ { drum_girls_cel022, 4 },
    /* 008 */ { drum_girls_cel023, 4 },
    /* 009 */ { drum_girls_cel034, 20 },
    /* End */ END_ANIMATION
};

// [D_088c143c] Drummer - Left Hand - Snare Drum
struct Animation anim_drum_girl_use_snare_l[] = {
    /* 000 */ { drum_girls_cel025, 2 },
    /* 001 */ { drum_girls_cel026, 2 },
    /* 002 */ { drum_girls_cel027, 2 },
    /* 003 */ { drum_girls_cel028, 3 },
    /* 004 */ { drum_girls_cel029, 3 },
    /* 005 */ { drum_girls_cel030, 4 },
    /* 006 */ { drum_girls_cel031, 4 },
    /* 007 */ { drum_girls_cel032, 4 },
    /* 008 */ { drum_girls_cel033, 4 },
    /* 009 */ { drum_girls_cel034, 20 },
    /* End */ END_ANIMATION
};

// [D_088c1494] Drummer - Right Hand - Crash Cymbal
struct Animation anim_drum_girl_use_crash[] = {
    /* 000 */ { drum_girls_cel035, 2 },
    /* 001 */ { drum_girls_cel036, 2 },
    /* 002 */ { drum_girls_cel037, 2 },
    /* 003 */ { drum_girls_cel038, 3 },
    /* 004 */ { drum_girls_cel039, 3 },
    /* 005 */ { drum_girls_cel040, 4 },
    /* 006 */ { drum_girls_cel041, 4 },
    /* 007 */ { drum_girls_cel042, 4 },
    /* 008 */ { drum_girls_cel043, 4 },
    /* 009 */ { drum_girls_cel044, 20 },
    /* End */ END_ANIMATION
};

// [D_088c14ec] Drummer - Right Hand - Snare Drum
struct Animation anim_drum_girl_use_snare_r[] = {
    /* 000 */ { drum_girls_cel046, 2 },
    /* 001 */ { drum_girls_cel047, 2 },
    /* 002 */ { drum_girls_cel048, 2 },
    /* 003 */ { drum_girls_cel049, 3 },
    /* 004 */ { drum_girls_cel050, 3 },
    /* 005 */ { drum_girls_cel051, 4 },
    /* 006 */ { drum_girls_cel052, 4 },
    /* 007 */ { drum_girls_cel053, 4 },
    /* 008 */ { drum_girls_cel054, 4 },
    /* 009 */ { drum_girls_cel055, 20 },
    /* End */ END_ANIMATION
};

// [D_088c1544] Drummer - Left Hand - Hi-Hat
struct Animation anim_drum_girl_use_hihat[] = {
    /* 000 */ { drum_girls_cel056, 2 },
    /* 001 */ { drum_girls_cel057, 2 },
    /* 002 */ { drum_girls_cel058, 2 },
    /* 003 */ { drum_girls_cel059, 3 },
    /* 004 */ { drum_girls_cel060, 3 },
    /* 005 */ { drum_girls_cel061, 4 },
    /* 006 */ { drum_girls_cel062, 4 },
    /* 007 */ { drum_girls_cel063, 4 },
    /* 008 */ { drum_girls_cel064, 4 },
    /* 009 */ { drum_girls_cel065, 4 },
    /* 010 */ { drum_girls_cel066, 20 },
    /* End */ END_ANIMATION
};

// [D_088c15a4] Drummer - Left Hand - Tom Drum
struct Animation anim_drum_girl_use_tom[] = {
    /* 000 */ { drum_girls_cel067, 2 },
    /* 001 */ { drum_girls_cel068, 2 },
    /* 002 */ { drum_girls_cel069, 2 },
    /* 003 */ { drum_girls_cel070, 3 },
    /* 004 */ { drum_girls_cel071, 3 },
    /* 005 */ { drum_girls_cel072, 4 },
    /* 006 */ { drum_girls_cel073, 4 },
    /* 007 */ { drum_girls_cel074, 4 },
    /* 008 */ { drum_girls_cel075, 4 },
    /* 009 */ { drum_girls_cel066, 20 },
    /* End */ END_ANIMATION
};

// [D_088c15fc] Splash Cymbal
struct Animation anim_drum_girl_kit_splash[] = {
    /* 000 */ { drum_girls_cel083, 2 },
    /* 001 */ { drum_girls_cel077, 2 },
    /* 002 */ { drum_girls_cel080, 2 },
    /* 003 */ { drum_girls_cel082, 2 },
    /* 004 */ { drum_girls_cel083, 3 },
    /* 005 */ { drum_girls_cel081, 3 },
    /* 006 */ { drum_girls_cel078, 4 },
    /* 007 */ { drum_girls_cel079, 3 },
    /* 008 */ { drum_girls_cel080, 3 },
    /* 009 */ { drum_girls_cel081, 6 },
    /* 010 */ { drum_girls_cel080, 4 },
    /* 011 */ { drum_girls_cel079, 3 },
    /* 012 */ { drum_girls_cel080, 30 },
    /* End */ END_ANIMATION
};

// [D_088c166c] Crash Cymbal
struct Animation anim_drum_girl_kit_crash[] = {
    /* 000 */ { drum_girls_cel090, 2 },
    /* 001 */ { drum_girls_cel084, 2 },
    /* 002 */ { drum_girls_cel087, 2 },
    /* 003 */ { drum_girls_cel089, 2 },
    /* 004 */ { drum_girls_cel090, 3 },
    /* 005 */ { drum_girls_cel088, 3 },
    /* 006 */ { drum_girls_cel085, 4 },
    /* 007 */ { drum_girls_cel086, 3 },
    /* 008 */ { drum_girls_cel087, 3 },
    /* 009 */ { drum_girls_cel088, 6 },
    /* 010 */ { drum_girls_cel087, 4 },
    /* 011 */ { drum_girls_cel086, 3 },
    /* 012 */ { drum_girls_cel087, 30 },
    /* End */ END_ANIMATION
};

// [D_088c16dc] Left Bass Drum
struct Animation anim_drum_girl_kit_bass_l[] = {
    /* 000 */ { drum_girls_cel093, 2 },
    /* 001 */ { drum_girls_cel092, 2 },
    /* 002 */ { drum_girls_cel091, 30 },
    /* End */ END_ANIMATION
};

// [D_088c16fc] Right Bass Drum
struct Animation anim_drum_girl_kit_bass_r[] = {
    /* 000 */ { drum_girls_cel096, 2 },
    /* 001 */ { drum_girls_cel095, 2 },
    /* 002 */ { drum_girls_cel094, 30 },
    /* End */ END_ANIMATION
};

// [D_088c171c] Snare Drum
struct Animation anim_drum_girl_kit_snare[] = {
    /* 000 */ { drum_girls_cel097, 3 },
    /* 001 */ { drum_girls_cel098, 2 },
    /* 002 */ { drum_girls_cel099, 30 },
    /* End */ END_ANIMATION
};

// [D_088c173c] Hi-Hat
struct Animation anim_drum_girl_kit_hihat[] = {
    /* 000 */ { drum_girls_cel102, 3 },
    /* 001 */ { drum_girls_cel101, 3 },
    /* 002 */ { drum_girls_cel100, 3 },
    /* End */ END_ANIMATION
};

// [D_088c175c] Tom Drum
struct Animation anim_drum_girl_kit_tom[] = {
    /* 000 */ { drum_girls_cel103, 2 },
    /* 001 */ { drum_girls_cel104, 2 },
    /* 002 */ { drum_girls_cel105, 2 },
    /* 003 */ { drum_girls_cel106, 30 },
    /* End */ END_ANIMATION
};

// [D_088c1784] Drum Kit Layout Test
struct Animation anim_drum_girl_kit_layout_test[] = {
    /* 000 */ { drum_girls_cel107, 4 },
    /* End */ END_ANIMATION
};

// [D_088c1794] Left Guitarist - Head
struct Animation anim_bass_girl_head[] = {
    /* 000 */ { drum_girls_cel108, 3 },
    /* 001 */ { drum_girls_cel109, 3 },
    /* 002 */ { drum_girls_cel110, 24 },
    /* End */ END_ANIMATION
};

// [D_088c17b4] Left Guitarist - Torso
struct Animation anim_bass_girl_body[] = {
    /* 000 */ { drum_girls_cel111, 3 },
    /* 001 */ { drum_girls_cel112, 3 },
    /* 002 */ { drum_girls_cel113, 24 },
    /* End */ END_ANIMATION
};

// [D_088c17d4] Left Guitarist - Legs
struct Animation anim_bass_girl_legs[] = {
    /* 000 */ { drum_girls_cel114, 3 },
    /* 001 */ { drum_girls_cel115, 3 },
    /* 002 */ { drum_girls_cel116, 24 },
    /* End */ END_ANIMATION
};

// [D_088c17f4] Left Guitarist - Left Arm & Guitar
struct Animation anim_bass_girl_arm_l[] = {
    /* 000 */ { drum_girls_cel006, 3 },
    /* 001 */ { drum_girls_cel007, 3 },
    /* 002 */ { drum_girls_cel008, 3 },
    /* 003 */ { drum_girls_cel009, 120 },
    /* 004 */ { drum_girls_cel008, 4 },
    /* 005 */ { drum_girls_cel007, 4 },
    /* 006 */ { drum_girls_cel006, 120 },
    /* End */ END_ANIMATION
};

// [D_088c1834] Left Guitarist - Right Arm & Guitar
struct Animation anim_bass_girl_arm_r[] = {
    /* 000 */ { drum_girls_cel010, 4 },
    /* 001 */ { drum_girls_cel011, 4 },
    /* 002 */ { drum_girls_cel012, 4 },
    /* 003 */ { drum_girls_cel013, 4 },
    /* 004 */ { drum_girls_cel014, 4 },
    /* End */ END_ANIMATION
};

// [D_088c1864] Right Guitarist - Head
struct Animation anim_guitar_girl_head[] = {
    /* 000 */ { drum_girls_cel117, 3 },
    /* 001 */ { drum_girls_cel118, 3 },
    /* 002 */ { drum_girls_cel119, 24 },
    /* End */ END_ANIMATION
};

// [D_088c1884] Right Guitarist - Torso
struct Animation anim_guitar_girl_body[] = {
    /* 000 */ { drum_girls_cel120, 3 },
    /* 001 */ { drum_girls_cel121, 3 },
    /* 002 */ { drum_girls_cel122, 24 },
    /* End */ END_ANIMATION
};

// [D_088c18a4] Right Guitarist - Legs
struct Animation anim_guitar_girl_legs[] = {
    /* 000 */ { drum_girls_cel123, 3 },
    /* 001 */ { drum_girls_cel124, 3 },
    /* 002 */ { drum_girls_cel125, 24 },
    /* End */ END_ANIMATION
};

// [D_088c18c4] Right Guitarist - Left Arm & Guitar
struct Animation anim_guitar_girl_arm_l[] = {
    /* 000 */ { drum_girls_cel126, 3 },
    /* 001 */ { drum_girls_cel127, 3 },
    /* 002 */ { drum_girls_cel128, 3 },
    /* 003 */ { drum_girls_cel129, 120 },
    /* 004 */ { drum_girls_cel128, 4 },
    /* 005 */ { drum_girls_cel127, 4 },
    /* 006 */ { drum_girls_cel126, 120 },
    /* End */ END_ANIMATION
};

// [D_088c1904] Right Guitarist - Right Arm & Guitar
struct Animation anim_guitar_girl_arm_r[] = {
    /* 000 */ { drum_girls_cel130, 5 },
    /* 001 */ { drum_girls_cel131, 5 },
    /* 002 */ { drum_girls_cel132, 5 },
    /* 003 */ { drum_girls_cel133, 5 },
    /* End */ END_ANIMATION
};

// [D_088c192c] Left Guitarist - Crouch
struct Animation anim_bass_girl_crouch[] = {
    /* 000 */ { drum_girls_cel135, 3 },
    /* 001 */ { drum_girls_cel136, 3 },
    /* 002 */ { drum_girls_cel137, 3 },
    /* 003 */ { drum_girls_cel138, 10 },
    /* End */ END_ANIMATION
};

// [D_088c1954] Left Guitarist - Jump
struct Animation anim_bass_girl_jump[] = {
    /* 000 */ { drum_girls_cel139, 4 },
    /* End */ END_ANIMATION
};

// [D_088c1964] Right Guitarist - Crouch
struct Animation anim_guitar_girl_crouch[] = {
    /* 000 */ { drum_girls_cel141, 3 },
    /* 001 */ { drum_girls_cel142, 3 },
    /* 002 */ { drum_girls_cel143, 3 },
    /* 003 */ { drum_girls_cel144, 10 },
    /* End */ END_ANIMATION
};

// [D_088c198c] Right Guitarist - Jump
struct Animation anim_guitar_girl_jump[] = {
    /* 000 */ { drum_girls_cel145, 4 },
    /* End */ END_ANIMATION
};

// [D_088c199c] Right Guitarist - Jump & Strum
struct Animation anim_guitar_girl_jump_strum[] = {
    /* 000 */ { drum_girls_cel146, 2 },
    /* 001 */ { drum_girls_cel147, 6 },
    /* 002 */ { drum_girls_cel148, 5 },
    /* 003 */ { drum_girls_cel149, 4 },
    /* 004 */ { drum_girls_cel150, 3 },
    /* 005 */ { drum_girls_cel151, 3 },
    /* 006 */ { drum_girls_cel152, 3 },
    /* 007 */ { drum_girls_cel153, 3 },
    /* 008 */ { drum_girls_cel154, 3 },
    /* 009 */ { drum_girls_cel155, 40 },
    /* End */ END_ANIMATION
};

// [D_088c19f4] Right Guitarist - Head Turn Right to Front
struct Animation anim_guitar_girl_head_turn_r[] = {
    /* 000 */ { drum_girls_cel156, 10 },
    /* 001 */ { drum_girls_cel157, 4 },
    /* 002 */ { drum_girls_cel158, 4 },
    /* 003 */ { drum_girls_cel159, 30 },
    /* End */ END_ANIMATION
};

// [D_088c1a1c] Right Guitarist - Head Turn Left to Front
struct Animation anim_guitar_girl_head_turn_l[] = {
    /* 000 */ { drum_girls_cel160, 10 },
    /* 001 */ { drum_girls_cel161, 4 },
    /* 002 */ { drum_girls_cel162, 4 },
    /* 003 */ { drum_girls_cel159, 30 },
    /* End */ END_ANIMATION
};

// [D_088c1a44] Left Guitarist - Head Turn Left to Front
struct Animation anim_bass_girl_head_turn_l[] = {
    /* 000 */ { drum_girls_cel163, 10 },
    /* 001 */ { drum_girls_cel164, 4 },
    /* 002 */ { drum_girls_cel165, 4 },
    /* 003 */ { drum_girls_cel108, 30 },
    /* End */ END_ANIMATION
};

// [D_088c1a6c] Left Guitarist - Head Turn Right to Front
struct Animation anim_bass_girl_head_turn_r[] = {
    /* 000 */ { drum_girls_cel168, 10 },
    /* 001 */ { drum_girls_cel167, 4 },
    /* 002 */ { drum_girls_cel166, 4 },
    /* 003 */ { drum_girls_cel108, 30 },
    /* End */ END_ANIMATION
};

// [D_088c1a94] Drummer - Head Turn Left to Front
struct Animation anim_drum_girl_head_turn_l[] = {
    /* 000 */ { drum_girls_cel169, 10 },
    /* 001 */ { drum_girls_cel170, 4 },
    /* 002 */ { drum_girls_cel171, 4 },
    /* 003 */ { drum_girls_cel002, 30 },
    /* End */ END_ANIMATION
};

// [D_088c1abc] Drummer - Head Turn Right to Front
struct Animation anim_drum_girl_head_turn_r[] = {
    /* 000 */ { drum_girls_cel172, 10 },
    /* 001 */ { drum_girls_cel173, 4 },
    /* 002 */ { drum_girls_cel174, 4 },
    /* 003 */ { drum_girls_cel002, 30 },
    /* End */ END_ANIMATION
};

// [D_088c1ae4] Left Guitarist - Jump & Strum
struct Animation anim_bass_girl_jump_strum[] = {
    /* 000 */ { drum_girls_cel184, 2 },
    /* 001 */ { drum_girls_cel183, 6 },
    /* 002 */ { drum_girls_cel182, 5 },
    /* 003 */ { drum_girls_cel181, 4 },
    /* 004 */ { drum_girls_cel180, 4 },
    /* 005 */ { drum_girls_cel179, 3 },
    /* 006 */ { drum_girls_cel178, 3 },
    /* 007 */ { drum_girls_cel177, 2 },
    /* 008 */ { drum_girls_cel176, 2 },
    /* 009 */ { drum_girls_cel175, 40 },
    /* End */ END_ANIMATION
};

// [D_088c1b3c] REC/PLAY
struct Animation anim_drum_girls_rec_mode_icon[] = {
    /* 000 */ { drum_girls_cel185, 40 },
    /* 001 */ { drum_girls_cel186, 40 },
    /* End */ END_ANIMATION
};

// [D_088c1b54] Adjust Off/On
struct Animation anim_drum_girls_adjust_mode_icon[] = {
    /* 000 */ { drum_girls_cel187, 40 },
    /* 001 */ { drum_girls_cel188, 40 },
    /* End */ END_ANIMATION
};

// [D_088c1b6c] Busy
struct Animation anim_drum_girls_busy_icon[] = {
    /* 000 */ { drum_girls_cel189, 4 },
    /* End */ END_ANIMATION
};

// [D_088c1b7c] Microphone
struct Animation anim_drum_girls_microphone[] = {
    /* 000 */ { drum_girls_cel190, 4 },
    /* End */ END_ANIMATION
};

// [D_088c1b8c] Stage Light Flash
struct Animation anim_drum_girls_light_flash[] = {
    /* 000 */ { drum_girls_cel191, 2 },
    /* 001 */ { drum_girls_cel192, 1 },
    /* 002 */ { drum_girls_cel193, 1 },
    /* 003 */ { drum_girls_cel194, 1 },
    /* 004 */ { drum_girls_cel195, 1 },
    /* 005 */ { drum_girls_cel196, 7 },
    /* 006 */ { drum_girls_cel197, 4 },
    /* 007 */ { drum_girls_cel198, 4 },
    /* End */ END_ANIMATION
};
