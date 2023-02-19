#include "global.h"
#include "graphics.h"

#include "drum_boys_anim_cells.inc.c"

// [D_088becd8] Drummer - Head
struct Animation anim_drum_boy_head[] = {
    /* 000 */ { drum_boys_cel002, 3 },
    /* 001 */ { drum_boys_cel001, 3 },
    /* 002 */ { drum_boys_cel000, 24 },
    /* End */ END_ANIMATION
};

// [D_088becf8] Drummer - Body
struct Animation anim_drum_boy_body[] = {
    /* 000 */ { drum_boys_cel003, 3 },
    /* 001 */ { drum_boys_cel004, 3 },
    /* 002 */ { drum_boys_cel005, 24 },
    /* End */ END_ANIMATION
};

// [D_088bed18] Blank
struct Animation anim_drum_boys_blank[] = {
    /* End */ END_ANIMATION
};

// [D_088bed20] Drummer - Left Hand - Splash Cymbal
struct Animation anim_drum_boy_use_splash[] = {
    /* 000 */ { drum_boys_cel015, 2 },
    /* 001 */ { drum_boys_cel016, 2 },
    /* 002 */ { drum_boys_cel017, 2 },
    /* 003 */ { drum_boys_cel018, 3 },
    /* 004 */ { drum_boys_cel019, 3 },
    /* 005 */ { drum_boys_cel020, 4 },
    /* 006 */ { drum_boys_cel021, 4 },
    /* 007 */ { drum_boys_cel022, 4 },
    /* 008 */ { drum_boys_cel023, 4 },
    /* 009 */ { drum_boys_cel034, 20 },
    /* End */ END_ANIMATION
};

// [D_088bed78] Drummer - Left Hand - Snare Drum
struct Animation anim_drum_boy_use_snare_l[] = {
    /* 000 */ { drum_boys_cel025, 2 },
    /* 001 */ { drum_boys_cel026, 2 },
    /* 002 */ { drum_boys_cel027, 2 },
    /* 003 */ { drum_boys_cel028, 3 },
    /* 004 */ { drum_boys_cel029, 3 },
    /* 005 */ { drum_boys_cel030, 4 },
    /* 006 */ { drum_boys_cel031, 4 },
    /* 007 */ { drum_boys_cel032, 4 },
    /* 008 */ { drum_boys_cel033, 4 },
    /* 009 */ { drum_boys_cel034, 20 },
    /* End */ END_ANIMATION
};

// [D_088bedd0] Drummer - Right Hand - Crash Cymbal
struct Animation anim_drum_boy_use_crash[] = {
    /* 000 */ { drum_boys_cel035, 2 },
    /* 001 */ { drum_boys_cel036, 2 },
    /* 002 */ { drum_boys_cel037, 2 },
    /* 003 */ { drum_boys_cel038, 3 },
    /* 004 */ { drum_boys_cel039, 3 },
    /* 005 */ { drum_boys_cel040, 4 },
    /* 006 */ { drum_boys_cel041, 4 },
    /* 007 */ { drum_boys_cel042, 4 },
    /* 008 */ { drum_boys_cel043, 4 },
    /* 009 */ { drum_boys_cel044, 20 },
    /* End */ END_ANIMATION
};

// [D_088bee28] Drummer - Right Hand - Snare Drum
struct Animation anim_drum_boy_use_snare_r[] = {
    /* 000 */ { drum_boys_cel046, 2 },
    /* 001 */ { drum_boys_cel047, 2 },
    /* 002 */ { drum_boys_cel048, 2 },
    /* 003 */ { drum_boys_cel049, 3 },
    /* 004 */ { drum_boys_cel050, 3 },
    /* 005 */ { drum_boys_cel051, 4 },
    /* 006 */ { drum_boys_cel052, 4 },
    /* 007 */ { drum_boys_cel053, 4 },
    /* 008 */ { drum_boys_cel054, 4 },
    /* 009 */ { drum_boys_cel055, 20 },
    /* End */ END_ANIMATION
};

// [D_088bee80] Drummer - Left Hand - Hi-Hat
struct Animation anim_drum_boy_use_hihat[] = {
    /* 000 */ { drum_boys_cel056, 2 },
    /* 001 */ { drum_boys_cel057, 2 },
    /* 002 */ { drum_boys_cel058, 2 },
    /* 003 */ { drum_boys_cel059, 3 },
    /* 004 */ { drum_boys_cel060, 3 },
    /* 005 */ { drum_boys_cel061, 4 },
    /* 006 */ { drum_boys_cel062, 4 },
    /* 007 */ { drum_boys_cel063, 4 },
    /* 008 */ { drum_boys_cel064, 4 },
    /* 009 */ { drum_boys_cel065, 4 },
    /* 010 */ { drum_boys_cel066, 20 },
    /* End */ END_ANIMATION
};

// [D_088beee0] Drummer - Left Hand - Tom Drum
struct Animation anim_drum_boy_use_tom[] = {
    /* 000 */ { drum_boys_cel067, 2 },
    /* 001 */ { drum_boys_cel068, 2 },
    /* 002 */ { drum_boys_cel069, 2 },
    /* 003 */ { drum_boys_cel070, 3 },
    /* 004 */ { drum_boys_cel071, 3 },
    /* 005 */ { drum_boys_cel072, 4 },
    /* 006 */ { drum_boys_cel073, 4 },
    /* 007 */ { drum_boys_cel074, 4 },
    /* 008 */ { drum_boys_cel075, 4 },
    /* 009 */ { drum_boys_cel066, 20 },
    /* End */ END_ANIMATION
};

// [D_088bef38] Splash Cymbal
struct Animation anim_drum_boy_kit_splash[] = {
    /* 000 */ { drum_boys_cel083, 2 },
    /* 001 */ { drum_boys_cel077, 2 },
    /* 002 */ { drum_boys_cel080, 2 },
    /* 003 */ { drum_boys_cel082, 2 },
    /* 004 */ { drum_boys_cel083, 3 },
    /* 005 */ { drum_boys_cel081, 3 },
    /* 006 */ { drum_boys_cel078, 4 },
    /* 007 */ { drum_boys_cel079, 3 },
    /* 008 */ { drum_boys_cel080, 3 },
    /* 009 */ { drum_boys_cel081, 6 },
    /* 010 */ { drum_boys_cel080, 4 },
    /* 011 */ { drum_boys_cel079, 3 },
    /* 012 */ { drum_boys_cel080, 30 },
    /* End */ END_ANIMATION
};

// [D_088befa8] Crash Cymbal
struct Animation anim_drum_boy_kit_crash[] = {
    /* 000 */ { drum_boys_cel090, 2 },
    /* 001 */ { drum_boys_cel084, 2 },
    /* 002 */ { drum_boys_cel087, 2 },
    /* 003 */ { drum_boys_cel089, 2 },
    /* 004 */ { drum_boys_cel090, 3 },
    /* 005 */ { drum_boys_cel088, 3 },
    /* 006 */ { drum_boys_cel085, 4 },
    /* 007 */ { drum_boys_cel086, 3 },
    /* 008 */ { drum_boys_cel087, 3 },
    /* 009 */ { drum_boys_cel088, 6 },
    /* 010 */ { drum_boys_cel087, 4 },
    /* 011 */ { drum_boys_cel086, 3 },
    /* 012 */ { drum_boys_cel087, 30 },
    /* End */ END_ANIMATION
};

// [D_088bf018] Left Bass Drum
struct Animation anim_drum_boy_kit_bass_l[] = {
    /* 000 */ { drum_boys_cel093, 2 },
    /* 001 */ { drum_boys_cel092, 2 },
    /* 002 */ { drum_boys_cel091, 30 },
    /* End */ END_ANIMATION
};

// [D_088bf038] Right Bass Drum
struct Animation anim_drum_boy_kit_bass_r[] = {
    /* 000 */ { drum_boys_cel096, 2 },
    /* 001 */ { drum_boys_cel095, 2 },
    /* 002 */ { drum_boys_cel094, 30 },
    /* End */ END_ANIMATION
};

// [D_088bf058] Snare Drum
struct Animation anim_drum_boy_kit_snare[] = {
    /* 000 */ { drum_boys_cel097, 3 },
    /* 001 */ { drum_boys_cel098, 2 },
    /* 002 */ { drum_boys_cel099, 30 },
    /* End */ END_ANIMATION
};

// [D_088bf078] Hi-Hat
struct Animation anim_drum_boy_kit_hihat[] = {
    /* 000 */ { drum_boys_cel102, 3 },
    /* 001 */ { drum_boys_cel101, 3 },
    /* 002 */ { drum_boys_cel100, 3 },
    /* End */ END_ANIMATION
};

// [D_088bf098] Tom Drum
struct Animation anim_drum_boy_kit_tom[] = {
    /* 000 */ { drum_boys_cel103, 2 },
    /* 001 */ { drum_boys_cel104, 2 },
    /* 002 */ { drum_boys_cel105, 2 },
    /* 003 */ { drum_boys_cel106, 30 },
    /* End */ END_ANIMATION
};

// [D_088bf0c0] Drum Kit Layout Test
struct Animation anim_drum_boy_kit_layout_test[] = {
    /* 000 */ { drum_boys_cel107, 4 },
    /* End */ END_ANIMATION
};

// [D_088bf0d0] Left Guitarist - Head
struct Animation anim_bass_boy_head[] = {
    /* 000 */ { drum_boys_cel108, 3 },
    /* 001 */ { drum_boys_cel109, 3 },
    /* 002 */ { drum_boys_cel110, 24 },
    /* End */ END_ANIMATION
};

// [D_088bf0f0] Left Guitarist - Torso
struct Animation anim_bass_boy_body[] = {
    /* 000 */ { drum_boys_cel111, 3 },
    /* 001 */ { drum_boys_cel112, 3 },
    /* 002 */ { drum_boys_cel113, 24 },
    /* End */ END_ANIMATION
};

// [D_088bf110] Left Guitarist - Legs
struct Animation anim_bass_boy_legs[] = {
    /* 000 */ { drum_boys_cel114, 3 },
    /* 001 */ { drum_boys_cel115, 3 },
    /* 002 */ { drum_boys_cel116, 24 },
    /* End */ END_ANIMATION
};

// [D_088bf130] Left Guitarist - Left Arm & Guitar
struct Animation anim_bass_boy_arm_l[] = {
    /* 000 */ { drum_boys_cel006, 3 },
    /* 001 */ { drum_boys_cel007, 3 },
    /* 002 */ { drum_boys_cel008, 3 },
    /* 003 */ { drum_boys_cel009, 120 },
    /* 004 */ { drum_boys_cel008, 4 },
    /* 005 */ { drum_boys_cel007, 4 },
    /* 006 */ { drum_boys_cel006, 120 },
    /* End */ END_ANIMATION
};

// [D_088bf170] Left Guitarist - Right Arm & Guitar
struct Animation anim_bass_boy_arm_r[] = {
    /* 000 */ { drum_boys_cel010, 4 },
    /* 001 */ { drum_boys_cel011, 4 },
    /* 002 */ { drum_boys_cel012, 4 },
    /* 003 */ { drum_boys_cel013, 4 },
    /* 004 */ { drum_boys_cel014, 4 },
    /* End */ END_ANIMATION
};

// [D_088bf1a0] Right Guitarist - Head
struct Animation anim_guitar_boy_head[] = {
    /* 000 */ { drum_boys_cel117, 3 },
    /* 001 */ { drum_boys_cel118, 3 },
    /* 002 */ { drum_boys_cel119, 24 },
    /* End */ END_ANIMATION
};

// [D_088bf1c0] Right Guitarist - Torso
struct Animation anim_guitar_boy_body[] = {
    /* 000 */ { drum_boys_cel120, 3 },
    /* 001 */ { drum_boys_cel121, 3 },
    /* 002 */ { drum_boys_cel122, 24 },
    /* End */ END_ANIMATION
};

// [D_088bf1e0] Right Guitarist - Legs
struct Animation anim_guitar_boy_legs[] = {
    /* 000 */ { drum_boys_cel123, 3 },
    /* 001 */ { drum_boys_cel124, 3 },
    /* 002 */ { drum_boys_cel125, 24 },
    /* End */ END_ANIMATION
};

// [D_088bf200] Right Guitarist - Left Arm & Guitar
struct Animation anim_guitar_boy_arm_l[] = {
    /* 000 */ { drum_boys_cel126, 3 },
    /* 001 */ { drum_boys_cel127, 3 },
    /* 002 */ { drum_boys_cel128, 3 },
    /* 003 */ { drum_boys_cel129, 120 },
    /* 004 */ { drum_boys_cel128, 4 },
    /* 005 */ { drum_boys_cel127, 4 },
    /* 006 */ { drum_boys_cel126, 120 },
    /* End */ END_ANIMATION
};

// [D_088bf240] Right Guitarist - Right Arm & Guitar
struct Animation anim_guitar_boy_arm_r[] = {
    /* 000 */ { drum_boys_cel130, 5 },
    /* 001 */ { drum_boys_cel131, 5 },
    /* 002 */ { drum_boys_cel132, 5 },
    /* 003 */ { drum_boys_cel133, 5 },
    /* End */ END_ANIMATION
};

// [D_088bf268] Left Guitarist - Crouch
struct Animation anim_bass_boy_crouch[] = {
    /* 000 */ { drum_boys_cel135, 3 },
    /* 001 */ { drum_boys_cel136, 3 },
    /* 002 */ { drum_boys_cel137, 3 },
    /* 003 */ { drum_boys_cel138, 10 },
    /* End */ END_ANIMATION
};

// [D_088bf290] Left Guitarist - Jump
struct Animation anim_bass_boy_jump[] = {
    /* 000 */ { drum_boys_cel139, 4 },
    /* End */ END_ANIMATION
};

// [D_088bf2a0] Right Guitarist - Crouch
struct Animation anim_guitar_boy_crouch[] = {
    /* 000 */ { drum_boys_cel141, 3 },
    /* 001 */ { drum_boys_cel142, 3 },
    /* 002 */ { drum_boys_cel143, 3 },
    /* 003 */ { drum_boys_cel144, 10 },
    /* End */ END_ANIMATION
};

// [D_088bf2c8] Right Guitarist - Jump
struct Animation anim_guitar_boy_jump[] = {
    /* 000 */ { drum_boys_cel145, 4 },
    /* End */ END_ANIMATION
};

// [D_088bf2d8] Right Guitarist - Jump & Strum
struct Animation anim_guitar_boy_jump_strum[] = {
    /* 000 */ { drum_boys_cel146, 2 },
    /* 001 */ { drum_boys_cel147, 6 },
    /* 002 */ { drum_boys_cel148, 5 },
    /* 003 */ { drum_boys_cel149, 4 },
    /* 004 */ { drum_boys_cel150, 3 },
    /* 005 */ { drum_boys_cel151, 3 },
    /* 006 */ { drum_boys_cel152, 3 },
    /* 007 */ { drum_boys_cel153, 3 },
    /* 008 */ { drum_boys_cel154, 3 },
    /* 009 */ { drum_boys_cel155, 40 },
    /* End */ END_ANIMATION
};

// [D_088bf330] Right Guitarist - Head Turn Right to Front
struct Animation anim_guitar_boy_head_turn_r[] = {
    /* 000 */ { drum_boys_cel156, 10 },
    /* 001 */ { drum_boys_cel157, 4 },
    /* 002 */ { drum_boys_cel158, 4 },
    /* 003 */ { drum_boys_cel159, 30 },
    /* End */ END_ANIMATION
};

// [D_088bf358] Right Guitarist - Head Turn Left to Front
struct Animation anim_guitar_boy_head_turn_l[] = {
    /* 000 */ { drum_boys_cel160, 10 },
    /* 001 */ { drum_boys_cel161, 4 },
    /* 002 */ { drum_boys_cel162, 4 },
    /* 003 */ { drum_boys_cel159, 30 },
    /* End */ END_ANIMATION
};

// [D_088bf380] Left Guitarist - Head Turn Left to Front
struct Animation anim_bass_boy_head_turn_l[] = {
    /* 000 */ { drum_boys_cel163, 10 },
    /* 001 */ { drum_boys_cel164, 4 },
    /* 002 */ { drum_boys_cel165, 4 },
    /* 003 */ { drum_boys_cel108, 30 },
    /* End */ END_ANIMATION
};

// [D_088bf3a8] Left Guitarist - Head Turn Right to Front
struct Animation anim_bass_boy_head_turn_r[] = {
    /* 000 */ { drum_boys_cel168, 10 },
    /* 001 */ { drum_boys_cel167, 4 },
    /* 002 */ { drum_boys_cel166, 4 },
    /* 003 */ { drum_boys_cel108, 30 },
    /* End */ END_ANIMATION
};

// [D_088bf3d0] Drummer - Head Turn Left to Front
struct Animation anim_drum_boy_head_turn_l[] = {
    /* 000 */ { drum_boys_cel169, 10 },
    /* 001 */ { drum_boys_cel170, 4 },
    /* 002 */ { drum_boys_cel171, 4 },
    /* 003 */ { drum_boys_cel002, 30 },
    /* End */ END_ANIMATION
};

// [D_088bf3f8] Drummer - Head Turn Right to Front
struct Animation anim_drum_boy_head_turn_r[] = {
    /* 000 */ { drum_boys_cel172, 10 },
    /* 001 */ { drum_boys_cel173, 4 },
    /* 002 */ { drum_boys_cel174, 4 },
    /* 003 */ { drum_boys_cel002, 30 },
    /* End */ END_ANIMATION
};

// [D_088bf420] Left Guitarist - Jump & Strum
struct Animation anim_bass_boy_jump_strum[] = {
    /* 000 */ { drum_boys_cel184, 2 },
    /* 001 */ { drum_boys_cel183, 6 },
    /* 002 */ { drum_boys_cel182, 5 },
    /* 003 */ { drum_boys_cel181, 4 },
    /* 004 */ { drum_boys_cel180, 4 },
    /* 005 */ { drum_boys_cel179, 3 },
    /* 006 */ { drum_boys_cel178, 3 },
    /* 007 */ { drum_boys_cel177, 2 },
    /* 008 */ { drum_boys_cel176, 2 },
    /* 009 */ { drum_boys_cel175, 40 },
    /* End */ END_ANIMATION
};

// [D_088bf478] REC/PLAY
struct Animation anim_drum_boys_rec_mode_icon[] = {
    /* 000 */ { drum_boys_cel185, 40 },
    /* 001 */ { drum_boys_cel186, 40 },
    /* End */ END_ANIMATION
};

// [D_088bf490] Adjust Off/On
struct Animation anim_drum_boys_adjust_mode_icon[] = {
    /* 000 */ { drum_boys_cel187, 40 },
    /* 001 */ { drum_boys_cel188, 40 },
    /* End */ END_ANIMATION
};

// [D_088bf4a8] Busy
struct Animation anim_drum_boys_busy_icon[] = {
    /* 000 */ { drum_boys_cel189, 4 },
    /* End */ END_ANIMATION
};

// [D_088bf4b8] Microphone
struct Animation anim_drum_boys_microphone[] = {
    /* 000 */ { drum_boys_cel190, 4 },
    /* End */ END_ANIMATION
};

// [D_088bf4c8] Stage Light Flash
struct Animation anim_drum_boys_light_flash[] = {
    /* 000 */ { drum_boys_cel191, 2 },
    /* 001 */ { drum_boys_cel192, 1 },
    /* 002 */ { drum_boys_cel193, 1 },
    /* 003 */ { drum_boys_cel194, 1 },
    /* 004 */ { drum_boys_cel195, 1 },
    /* 005 */ { drum_boys_cel196, 7 },
    /* 006 */ { drum_boys_cel197, 4 },
    /* 007 */ { drum_boys_cel198, 4 },
    /* End */ END_ANIMATION
};
