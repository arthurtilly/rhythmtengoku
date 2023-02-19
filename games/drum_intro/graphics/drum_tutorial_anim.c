#include "global.h"
#include "graphics.h"

#include "drum_tutorial_anim_cells.inc.c"

// [D_088c29f0] Left Hand - Snare Drum
struct Animation anim_drum_player_use_snare_l[] = {
    /* 000 */ { drum_tutorial_cel016, 1 },
    /* 001 */ { drum_tutorial_cel017, 1 },
    /* 002 */ { drum_tutorial_cel018, 1 },
    /* 003 */ { drum_tutorial_cel019, 3 },
    /* 004 */ { drum_tutorial_cel020, 3 },
    /* 005 */ { drum_tutorial_cel021, 4 },
    /* 006 */ { drum_tutorial_cel022, 4 },
    /* 007 */ { drum_tutorial_cel023, 4 },
    /* 008 */ { drum_tutorial_cel024, 4 },
    /* 009 */ { drum_tutorial_cel025, 20 },
    /* End */ END_ANIMATION
};

// [D_088c2a48] Right Hand - Snare Drum
struct Animation anim_drum_player_use_snare_r[] = {
    /* 000 */ { drum_tutorial_cel026, 1 },
    /* 001 */ { drum_tutorial_cel027, 1 },
    /* 002 */ { drum_tutorial_cel028, 1 },
    /* 003 */ { drum_tutorial_cel029, 3 },
    /* 004 */ { drum_tutorial_cel030, 3 },
    /* 005 */ { drum_tutorial_cel031, 4 },
    /* 006 */ { drum_tutorial_cel032, 4 },
    /* 007 */ { drum_tutorial_cel033, 4 },
    /* 008 */ { drum_tutorial_cel034, 4 },
    /* 009 */ { drum_tutorial_cel035, 20 },
    /* End */ END_ANIMATION
};

// [D_088c2aa0] Right Hand - Crash Cymbal
struct Animation anim_drum_player_use_crash[] = {
    /* 000 */ { drum_tutorial_cel036, 1 },
    /* 001 */ { drum_tutorial_cel037, 1 },
    /* 002 */ { drum_tutorial_cel038, 1 },
    /* 003 */ { drum_tutorial_cel039, 3 },
    /* 004 */ { drum_tutorial_cel040, 3 },
    /* 005 */ { drum_tutorial_cel041, 4 },
    /* 006 */ { drum_tutorial_cel042, 4 },
    /* 007 */ { drum_tutorial_cel043, 4 },
    /* 008 */ { drum_tutorial_cel044, 4 },
    /* 009 */ { drum_tutorial_cel045, 4 },
    /* 010 */ { drum_tutorial_cel046, 20 },
    /* End */ END_ANIMATION
};

// [D_088c2b00] Left Hand - Splash Cymbal
struct Animation anim_drum_player_use_splash[] = {
    /* 000 */ { drum_tutorial_cel047, 2 },
    /* 001 */ { drum_tutorial_cel048, 1 },
    /* 002 */ { drum_tutorial_cel049, 1 },
    /* 003 */ { drum_tutorial_cel050, 2 },
    /* 004 */ { drum_tutorial_cel051, 2 },
    /* 005 */ { drum_tutorial_cel052, 3 },
    /* 006 */ { drum_tutorial_cel053, 3 },
    /* 007 */ { drum_tutorial_cel054, 3 },
    /* 008 */ { drum_tutorial_cel055, 3 },
    /* 009 */ { drum_tutorial_cel056, 3 },
    /* 010 */ { drum_tutorial_cel057, 20 },
    /* End */ END_ANIMATION
};

// [D_088c2b60] Left Hand - Tom Drum
struct Animation anim_drum_player_use_tom[] = {
    /* 000 */ { drum_tutorial_cel058, 2 },
    /* 001 */ { drum_tutorial_cel059, 1 },
    /* 002 */ { drum_tutorial_cel060, 1 },
    /* 003 */ { drum_tutorial_cel061, 2 },
    /* 004 */ { drum_tutorial_cel062, 2 },
    /* 005 */ { drum_tutorial_cel063, 3 },
    /* 006 */ { drum_tutorial_cel064, 3 },
    /* 007 */ { drum_tutorial_cel065, 3 },
    /* 008 */ { drum_tutorial_cel066, 3 },
    /* 009 */ { drum_tutorial_cel067, 3 },
    /* 010 */ { drum_tutorial_cel068, 20 },
    /* End */ END_ANIMATION
};

// [D_088c2bc0] Left Hand - Hi-Hat
struct Animation anim_drum_player_use_hihat[] = {
    /* 000 */ { drum_tutorial_cel069, 1 },
    /* 001 */ { drum_tutorial_cel070, 1 },
    /* 002 */ { drum_tutorial_cel071, 1 },
    /* 003 */ { drum_tutorial_cel072, 3 },
    /* 004 */ { drum_tutorial_cel073, 3 },
    /* 005 */ { drum_tutorial_cel074, 4 },
    /* 006 */ { drum_tutorial_cel075, 4 },
    /* 007 */ { drum_tutorial_cel076, 4 },
    /* 008 */ { drum_tutorial_cel077, 4 },
    /* 009 */ { drum_tutorial_cel078, 4 },
    /* 010 */ { drum_tutorial_cel079, 20 },
    /* End */ END_ANIMATION
};

// [D_088c2c20] Head
struct Animation anim_drum_player_head[] = {
    /* 000 */ { drum_tutorial_cel001, 3 },
    /* 001 */ { drum_tutorial_cel002, 3 },
    /* 002 */ { drum_tutorial_cel003, 30 },
    /* End */ END_ANIMATION
};

// [D_088c2c40] Torso
struct Animation anim_drum_player_body[] = {
    /* 000 */ { drum_tutorial_cel004, 3 },
    /* 001 */ { drum_tutorial_cel005, 2 },
    /* 002 */ { drum_tutorial_cel006, 3 },
    /* End */ END_ANIMATION
};

// [D_088c2c60] Waist
struct Animation anim_drum_player_waist[] = {
    /* 000 */ { drum_tutorial_cel011, 3 },
    /* 001 */ { drum_tutorial_cel012, 2 },
    /* 002 */ { drum_tutorial_cel013, 30 },
    /* End */ END_ANIMATION
};

// [D_088c2c80] Left Leg - Kick Pedal
struct Animation anim_drum_player_use_pedal_l[] = {
    /* 000 */ { drum_tutorial_cel007, 3 },
    /* 001 */ { drum_tutorial_cel008, 2 },
    /* 002 */ { drum_tutorial_cel008, 30 },
    /* End */ END_ANIMATION
};

// [D_088c2ca0] Right Leg - Kick Pedal
struct Animation anim_drum_player_use_pedal_r[] = {
    /* 000 */ { drum_tutorial_cel009, 3 },
    /* 001 */ { drum_tutorial_cel010, 2 },
    /* 002 */ { drum_tutorial_cel010, 30 },
    /* End */ END_ANIMATION
};

// [D_088c2cc0] Crash Cymbal
struct Animation anim_drum_player_kit_crash[] = {
    /* 000 */ { drum_tutorial_cel080, 2 },
    /* 001 */ { drum_tutorial_cel081, 2 },
    /* 002 */ { drum_tutorial_cel082, 2 },
    /* 003 */ { drum_tutorial_cel083, 2 },
    /* 004 */ { drum_tutorial_cel084, 2 },
    /* 005 */ { drum_tutorial_cel085, 3 },
    /* 006 */ { drum_tutorial_cel084, 3 },
    /* 007 */ { drum_tutorial_cel083, 3 },
    /* 008 */ { drum_tutorial_cel082, 4 },
    /* 009 */ { drum_tutorial_cel081, 4 },
    /* 010 */ { drum_tutorial_cel083, 5 },
    /* 011 */ { drum_tutorial_cel084, 6 },
    /* 012 */ { drum_tutorial_cel085, 30 },
    /* End */ END_ANIMATION
};

// [D_088c2d30] Splash Cymbal
struct Animation anim_drum_player_kit_splash[] = {
    /* 000 */ { drum_tutorial_cel086, 2 },
    /* 001 */ { drum_tutorial_cel087, 2 },
    /* 002 */ { drum_tutorial_cel088, 2 },
    /* 003 */ { drum_tutorial_cel089, 2 },
    /* 004 */ { drum_tutorial_cel090, 2 },
    /* 005 */ { drum_tutorial_cel091, 3 },
    /* 006 */ { drum_tutorial_cel090, 3 },
    /* 007 */ { drum_tutorial_cel089, 3 },
    /* 008 */ { drum_tutorial_cel088, 4 },
    /* 009 */ { drum_tutorial_cel087, 4 },
    /* 010 */ { drum_tutorial_cel089, 5 },
    /* 011 */ { drum_tutorial_cel090, 6 },
    /* 012 */ { drum_tutorial_cel091, 30 },
    /* End */ END_ANIMATION
};

// [D_088c2da0] Right Bass Drum
struct Animation anim_drum_player_kit_bass_r[] = {
    /* 000 */ { drum_tutorial_cel092, 3 },
    /* 001 */ { drum_tutorial_cel093, 2 },
    /* 002 */ { drum_tutorial_cel094, 30 },
    /* End */ END_ANIMATION
};

// [D_088c2dc0] Left Bass Drum
struct Animation anim_drum_player_kit_bass_l[] = {
    /* 000 */ { drum_tutorial_cel095, 3 },
    /* 001 */ { drum_tutorial_cel096, 2 },
    /* 002 */ { drum_tutorial_cel097, 30 },
    /* End */ END_ANIMATION
};

// [D_088c2de0] Hi-Hat
struct Animation anim_drum_player_kit_hihat[] = {
    /* 000 */ { drum_tutorial_cel098, 3 },
    /* 001 */ { drum_tutorial_cel099, 2 },
    /* 002 */ { drum_tutorial_cel100, 2 },
    /* End */ END_ANIMATION
};

// [D_088c2e00] Snare Drum
struct Animation anim_drum_player_kit_snare[] = {
    /* 000 */ { drum_tutorial_cel101, 3 },
    /* 001 */ { drum_tutorial_cel102, 2 },
    /* 002 */ { drum_tutorial_cel103, 30 },
    /* End */ END_ANIMATION
};

// [D_088c2e20] Tom Drum
struct Animation anim_drum_player_kit_tom[] = {
    /* 000 */ { drum_tutorial_cel104, 3 },
    /* 001 */ { drum_tutorial_cel105, 2 },
    /* 002 */ { drum_tutorial_cel106, 30 },
    /* End */ END_ANIMATION
};

// [D_088c2e40] Seat
struct Animation anim_drum_player_kit_seat[] = {
    /* 000 */ { drum_tutorial_cel107, 4 },
    /* End */ END_ANIMATION
};

// [D_088c2e50] Left Hand - Drum Roll
struct Animation anim_drum_player_snare_roll[] = {
    /* 000 */ { drum_tutorial_cel014, 2 },
    /* 001 */ { drum_tutorial_cel015, 2 },
    /* 002 */ { drum_tutorial_cel014, 2 },
    /* 003 */ { drum_tutorial_cel015, 3 },
    /* 004 */ { drum_tutorial_cel017, 3 },
    /* 005 */ { drum_tutorial_cel018, 3 },
    /* 006 */ { drum_tutorial_cel023, 4 },
    /* 007 */ { drum_tutorial_cel024, 4 },
    /* 008 */ { drum_tutorial_cel025, 20 },
    /* End */ END_ANIMATION
};

// [D_088c2ea0] Head (Forward, Blinking)
struct Animation anim_drum_player_face_blink[] = {
    /* 000 */ { drum_tutorial_cel116, 60 },
    /* 001 */ { drum_tutorial_cel117, 8 },
    /* 002 */ { drum_tutorial_cel116, 80 },
    /* 003 */ { drum_tutorial_cel117, 4 },
    /* 004 */ { drum_tutorial_cel116, 10 },
    /* 005 */ { drum_tutorial_cel117, 4 },
    /* End */ END_ANIMATION
};

// [D_088c2ed8] Head (Forward, Talking)
struct Animation anim_drum_player_face_talk[] = {
    /* 000 */ { drum_tutorial_cel116, 20 },
    /* 001 */ { drum_tutorial_cel118, 10 },
    /* 002 */ { drum_tutorial_cel116, 10 },
    /* 003 */ { drum_tutorial_cel118, 10 },
    /* 004 */ { drum_tutorial_cel116, 8 },
    /* 005 */ { drum_tutorial_cel118, 5 },
    /* 006 */ { drum_tutorial_cel116, 20 },
    /* 007 */ { drum_tutorial_cel118, 10 },
    /* 008 */ { drum_tutorial_cel116, 5 },
    /* 009 */ { drum_tutorial_cel118, 7 },
    /* End */ END_ANIMATION
};

// [D_088c2f30] Blank
struct Animation anim_drum_player_blank1[] = {
    /* End */ END_ANIMATION
};

// [D_088c2f38] Blank
struct Animation anim_drum_player_blank2[] = {
    /* End */ END_ANIMATION
};

// [D_088c2f40] ?
struct Animation anim_drum_player_unk24[] = {
    /* 000 */ { drum_tutorial_cel120, 7 },
    /* 001 */ { drum_tutorial_cel119, 50 },
    /* End */ END_ANIMATION
};

// [D_088c2f58] ?
struct Animation anim_drum_player_unk25[] = {
    /* 000 */ { drum_tutorial_cel121, 7 },
    /* 001 */ { drum_tutorial_cel119, 7 },
    /* 002 */ { drum_tutorial_cel121, 10 },
    /* 003 */ { drum_tutorial_cel119, 34 },
    /* 004 */ { drum_tutorial_cel121, 11 },
    /* 005 */ { drum_tutorial_cel119, 12 },
    /* 006 */ { drum_tutorial_cel121, 8 },
    /* 007 */ { drum_tutorial_cel119, 9 },
    /* 008 */ { drum_tutorial_cel121, 8 },
    /* 009 */ { drum_tutorial_cel119, 20 },
    /* End */ END_ANIMATION
};

// [D_088c2fb0] "Start to Skip" Tutorial Text (Unused)
struct Animation anim_drum_player_text_skip_tutorial[] = {
    /* 000 */ { drum_tutorial_cel122, 4 },
    /* End */ END_ANIMATION
};

// [D_088c2fc0] Text Advance Icon
struct Animation anim_drum_player_text_adv_icon[] = {
    /* 000 */ { drum_tutorial_cel123, 3 },
    /* 001 */ { drum_tutorial_cel124, 3 },
    /* 002 */ { drum_tutorial_cel125, 30 },
    /* End */ END_ANIMATION
};
