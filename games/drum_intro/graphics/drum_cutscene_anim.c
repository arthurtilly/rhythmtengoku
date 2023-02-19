#include "global.h"
#include "graphics.h"

#include "drum_cutscene_anim_cells.inc.c"

// [D_088c3d2c] Left Hand - Snare Drum
struct Animation anim_drum_samurai_use_snare_l[] = {
    /* 000 */ { drum_cutscene_cel016, 1 },
    /* 001 */ { drum_cutscene_cel017, 1 },
    /* 002 */ { drum_cutscene_cel018, 1 },
    /* 003 */ { drum_cutscene_cel019, 3 },
    /* 004 */ { drum_cutscene_cel020, 3 },
    /* 005 */ { drum_cutscene_cel021, 4 },
    /* 006 */ { drum_cutscene_cel022, 4 },
    /* 007 */ { drum_cutscene_cel023, 4 },
    /* 008 */ { drum_cutscene_cel024, 4 },
    /* 009 */ { drum_cutscene_cel025, 20 },
    /* End */ END_ANIMATION
};

// [D_088c3d84] Right Hand - Snare Drum
struct Animation anim_drum_samurai_use_snare_r[] = {
    /* 000 */ { drum_cutscene_cel026, 1 },
    /* 001 */ { drum_cutscene_cel027, 1 },
    /* 002 */ { drum_cutscene_cel028, 1 },
    /* 003 */ { drum_cutscene_cel029, 3 },
    /* 004 */ { drum_cutscene_cel030, 3 },
    /* 005 */ { drum_cutscene_cel031, 4 },
    /* 006 */ { drum_cutscene_cel032, 4 },
    /* 007 */ { drum_cutscene_cel033, 4 },
    /* 008 */ { drum_cutscene_cel034, 4 },
    /* 009 */ { drum_cutscene_cel035, 20 },
    /* End */ END_ANIMATION
};

// [D_088c3ddc] Right Hand - Crash Cymbal
struct Animation anim_drum_samurai_use_crash[] = {
    /* 000 */ { drum_cutscene_cel036, 1 },
    /* 001 */ { drum_cutscene_cel037, 1 },
    /* 002 */ { drum_cutscene_cel038, 1 },
    /* 003 */ { drum_cutscene_cel039, 3 },
    /* 004 */ { drum_cutscene_cel040, 3 },
    /* 005 */ { drum_cutscene_cel041, 4 },
    /* 006 */ { drum_cutscene_cel042, 4 },
    /* 007 */ { drum_cutscene_cel043, 4 },
    /* 008 */ { drum_cutscene_cel044, 4 },
    /* 009 */ { drum_cutscene_cel045, 4 },
    /* 010 */ { drum_cutscene_cel046, 20 },
    /* End */ END_ANIMATION
};

// [D_088c3e3c] Left Hand - Splash Cymbal
struct Animation anim_drum_samurai_use_splash[] = {
    /* 000 */ { drum_cutscene_cel047, 2 },
    /* 001 */ { drum_cutscene_cel048, 1 },
    /* 002 */ { drum_cutscene_cel049, 1 },
    /* 003 */ { drum_cutscene_cel050, 2 },
    /* 004 */ { drum_cutscene_cel051, 2 },
    /* 005 */ { drum_cutscene_cel052, 3 },
    /* 006 */ { drum_cutscene_cel053, 3 },
    /* 007 */ { drum_cutscene_cel054, 3 },
    /* 008 */ { drum_cutscene_cel055, 3 },
    /* 009 */ { drum_cutscene_cel056, 3 },
    /* 010 */ { drum_cutscene_cel057, 20 },
    /* End */ END_ANIMATION
};

// [D_088c3e9c] Left Hand - Tom Drum
struct Animation anim_drum_samurai_use_tom[] = {
    /* 000 */ { drum_cutscene_cel058, 2 },
    /* 001 */ { drum_cutscene_cel059, 1 },
    /* 002 */ { drum_cutscene_cel060, 1 },
    /* 003 */ { drum_cutscene_cel061, 2 },
    /* 004 */ { drum_cutscene_cel062, 2 },
    /* 005 */ { drum_cutscene_cel063, 3 },
    /* 006 */ { drum_cutscene_cel064, 3 },
    /* 007 */ { drum_cutscene_cel065, 3 },
    /* 008 */ { drum_cutscene_cel066, 3 },
    /* 009 */ { drum_cutscene_cel067, 3 },
    /* 010 */ { drum_cutscene_cel068, 20 },
    /* End */ END_ANIMATION
};

// [D_088c3efc] Left Hand - Hi-Hat
struct Animation anim_drum_samurai_use_hihat[] = {
    /* 000 */ { drum_cutscene_cel069, 1 },
    /* 001 */ { drum_cutscene_cel070, 1 },
    /* 002 */ { drum_cutscene_cel071, 1 },
    /* 003 */ { drum_cutscene_cel072, 3 },
    /* 004 */ { drum_cutscene_cel073, 3 },
    /* 005 */ { drum_cutscene_cel074, 4 },
    /* 006 */ { drum_cutscene_cel075, 4 },
    /* 007 */ { drum_cutscene_cel076, 4 },
    /* 008 */ { drum_cutscene_cel077, 4 },
    /* 009 */ { drum_cutscene_cel078, 4 },
    /* 010 */ { drum_cutscene_cel079, 20 },
    /* End */ END_ANIMATION
};

// [D_088c3f5c] Head
struct Animation anim_drum_samurai_head[] = {
    /* 000 */ { drum_cutscene_cel001, 3 },
    /* 001 */ { drum_cutscene_cel002, 3 },
    /* 002 */ { drum_cutscene_cel003, 30 },
    /* End */ END_ANIMATION
};

// [D_088c3f7c] Torso
struct Animation anim_drum_samurai_body[] = {
    /* 000 */ { drum_cutscene_cel004, 3 },
    /* 001 */ { drum_cutscene_cel005, 2 },
    /* 002 */ { drum_cutscene_cel006, 3 },
    /* End */ END_ANIMATION
};

// [D_088c3f9c] Waist
struct Animation anim_drum_samurai_waist[] = {
    /* 000 */ { drum_cutscene_cel011, 3 },
    /* 001 */ { drum_cutscene_cel012, 2 },
    /* 002 */ { drum_cutscene_cel013, 30 },
    /* End */ END_ANIMATION
};

// [D_088c3fbc] Left Leg - Kick Pedal
struct Animation anim_drum_samurai_use_pedal_l[] = {
    /* 000 */ { drum_cutscene_cel007, 3 },
    /* 001 */ { drum_cutscene_cel008, 2 },
    /* 002 */ { drum_cutscene_cel008, 30 },
    /* End */ END_ANIMATION
};

// [D_088c3fdc] Right Leg - Kick Pedal
struct Animation anim_drum_samurai_use_pedal_r[] = {
    /* 000 */ { drum_cutscene_cel009, 3 },
    /* 001 */ { drum_cutscene_cel010, 2 },
    /* 002 */ { drum_cutscene_cel010, 30 },
    /* End */ END_ANIMATION
};

// [D_088c3ffc] Crash Cymbal
struct Animation anim_drum_samurai_kit_crash[] = {
    /* 000 */ { drum_cutscene_cel080, 2 },
    /* 001 */ { drum_cutscene_cel081, 2 },
    /* 002 */ { drum_cutscene_cel082, 2 },
    /* 003 */ { drum_cutscene_cel083, 2 },
    /* 004 */ { drum_cutscene_cel084, 2 },
    /* 005 */ { drum_cutscene_cel085, 3 },
    /* 006 */ { drum_cutscene_cel084, 3 },
    /* 007 */ { drum_cutscene_cel083, 3 },
    /* 008 */ { drum_cutscene_cel082, 4 },
    /* 009 */ { drum_cutscene_cel081, 4 },
    /* 010 */ { drum_cutscene_cel083, 5 },
    /* 011 */ { drum_cutscene_cel084, 6 },
    /* 012 */ { drum_cutscene_cel085, 30 },
    /* End */ END_ANIMATION
};

// [D_088c406c] Splash Cymbal
struct Animation anim_drum_samurai_kit_splash[] = {
    /* 000 */ { drum_cutscene_cel086, 2 },
    /* 001 */ { drum_cutscene_cel087, 2 },
    /* 002 */ { drum_cutscene_cel088, 2 },
    /* 003 */ { drum_cutscene_cel089, 2 },
    /* 004 */ { drum_cutscene_cel090, 2 },
    /* 005 */ { drum_cutscene_cel091, 3 },
    /* 006 */ { drum_cutscene_cel090, 3 },
    /* 007 */ { drum_cutscene_cel089, 3 },
    /* 008 */ { drum_cutscene_cel088, 4 },
    /* 009 */ { drum_cutscene_cel087, 4 },
    /* 010 */ { drum_cutscene_cel089, 5 },
    /* 011 */ { drum_cutscene_cel090, 6 },
    /* 012 */ { drum_cutscene_cel091, 30 },
    /* End */ END_ANIMATION
};

// [D_088c40dc] Right Bass Drum
struct Animation anim_drum_samurai_kit_bass_r[] = {
    /* 000 */ { drum_cutscene_cel092, 3 },
    /* 001 */ { drum_cutscene_cel093, 2 },
    /* 002 */ { drum_cutscene_cel094, 30 },
    /* End */ END_ANIMATION
};

// [D_088c40fc] Left Bass Drum
struct Animation anim_drum_samurai_kit_bass_l[] = {
    /* 000 */ { drum_cutscene_cel095, 3 },
    /* 001 */ { drum_cutscene_cel096, 2 },
    /* 002 */ { drum_cutscene_cel097, 30 },
    /* End */ END_ANIMATION
};

// [D_088c411c] Hi-Hat
struct Animation anim_drum_samurai_kit_hihat[] = {
    /* 000 */ { drum_cutscene_cel098, 3 },
    /* 001 */ { drum_cutscene_cel099, 2 },
    /* 002 */ { drum_cutscene_cel100, 2 },
    /* End */ END_ANIMATION
};

// [D_088c413c] Snare Drum
struct Animation anim_drum_samurai_kit_snare[] = {
    /* 000 */ { drum_cutscene_cel101, 3 },
    /* 001 */ { drum_cutscene_cel102, 2 },
    /* 002 */ { drum_cutscene_cel103, 30 },
    /* End */ END_ANIMATION
};

// [D_088c415c] Tom Drum
struct Animation anim_drum_samurai_kit_tom[] = {
    /* 000 */ { drum_cutscene_cel104, 3 },
    /* 001 */ { drum_cutscene_cel105, 2 },
    /* 002 */ { drum_cutscene_cel106, 30 },
    /* End */ END_ANIMATION
};

// [D_088c417c] Seat
struct Animation anim_drum_samurai_kit_seat[] = {
    /* 000 */ { drum_cutscene_cel107, 4 },
    /* End */ END_ANIMATION
};

// [D_088c418c] Left Hand - Drum Roll
struct Animation anim_drum_samurai_snare_roll[] = {
    /* 000 */ { drum_cutscene_cel014, 2 },
    /* 001 */ { drum_cutscene_cel015, 2 },
    /* 002 */ { drum_cutscene_cel014, 2 },
    /* 003 */ { drum_cutscene_cel015, 3 },
    /* 004 */ { drum_cutscene_cel017, 3 },
    /* 005 */ { drum_cutscene_cel018, 3 },
    /* 006 */ { drum_cutscene_cel023, 4 },
    /* 007 */ { drum_cutscene_cel024, 4 },
    /* 008 */ { drum_cutscene_cel025, 20 },
    /* End */ END_ANIMATION
};

// [D_088c41dc] Head (Forward, Blinking)
struct Animation anim_drum_samurai_face_blink[] = {
    /* 000 */ { drum_cutscene_cel116, 60 },
    /* 001 */ { drum_cutscene_cel117, 8 },
    /* 002 */ { drum_cutscene_cel116, 80 },
    /* 003 */ { drum_cutscene_cel117, 4 },
    /* 004 */ { drum_cutscene_cel116, 10 },
    /* 005 */ { drum_cutscene_cel117, 4 },
    /* End */ END_ANIMATION
};

// [D_088c4214] Head (Forward, Talking)
struct Animation anim_drum_samurai_face_talk[] = {
    /* 000 */ { drum_cutscene_cel116, 20 },
    /* 001 */ { drum_cutscene_cel118, 10 },
    /* 002 */ { drum_cutscene_cel116, 10 },
    /* 003 */ { drum_cutscene_cel118, 10 },
    /* 004 */ { drum_cutscene_cel116, 8 },
    /* 005 */ { drum_cutscene_cel118, 5 },
    /* 006 */ { drum_cutscene_cel116, 20 },
    /* 007 */ { drum_cutscene_cel118, 10 },
    /* 008 */ { drum_cutscene_cel116, 5 },
    /* 009 */ { drum_cutscene_cel118, 7 },
    /* End */ END_ANIMATION
};

// [D_088c426c] ?
struct Animation anim_drum_samurai_unk22[] = {
    /* 000 */ { drum_cutscene_cel120, 4 },
    /* 001 */ { drum_cutscene_cel119, 2 },
    /* 002 */ { drum_cutscene_cel120, 30 },
    /* End */ END_ANIMATION
};

// [D_088c428c] ?
struct Animation anim_drum_samurai_unk23[] = {
    /* 000 */ { drum_cutscene_cel121, 1 },
    /* 001 */ { drum_cutscene_cel122, 1 },
    /* 002 */ { drum_cutscene_cel123, 1 },
    /* 003 */ { drum_cutscene_cel124, 3 },
    /* 004 */ { drum_cutscene_cel125, 3 },
    /* 005 */ { drum_cutscene_cel126, 4 },
    /* 006 */ { drum_cutscene_cel127, 4 },
    /* 007 */ { drum_cutscene_cel128, 4 },
    /* 008 */ { drum_cutscene_cel130, 20 },
    /* End */ END_ANIMATION
};

// [D_088c42dc] "Start to Skip" Tutorial Text (Unused)
struct Animation anim_drum_samurai_text_skip_tutorial[] = {
    /* 000 */ { drum_cutscene_cel131, 4 },
    /* End */ END_ANIMATION
};

// [D_088c42ec] Text Advance Icon
struct Animation anim_drum_samurai_text_adv_icon[] = {
    /* 000 */ { drum_cutscene_cel132, 3 },
    /* 001 */ { drum_cutscene_cel133, 3 },
    /* 002 */ { drum_cutscene_cel134, 30 },
    /* End */ END_ANIMATION
};
