#include "global.h"
#include "graphics.h"

#include "drum_lessons_teacher_anim_cells.inc.c"

// [D_088c7f78] Layout Test
struct Animation anim_drum_teacher_kit_layout_test[] = {
    /* 000 */ { drum_lessons_teacher_cel000, 40 },
    /* End */ END_ANIMATION
};

// [D_088c7f88] Bass Drum
struct Animation anim_drum_teacher_kit_bass[] = {
    /* 000 */ { drum_lessons_teacher_cel015, 2 },
    /* 001 */ { drum_lessons_teacher_cel014, 2 },
    /* 002 */ { drum_lessons_teacher_cel013, 40 },
    /* End */ END_ANIMATION
};

// [D_088c7fa8] Right Kick Pedal
struct Animation anim_drum_teacher_kit_pedal_r[] = {
    /* 000 */ { drum_lessons_teacher_cel041, 2 },
    /* 001 */ { drum_lessons_teacher_cel040, 1 },
    /* 002 */ { drum_lessons_teacher_cel039, 2 },
    /* 003 */ { drum_lessons_teacher_cel038, 3 },
    /* 004 */ { drum_lessons_teacher_cel037, 40 },
    /* End */ END_ANIMATION
};

// [D_088c7fd8] Left Kick Pedal
struct Animation anim_drum_teacher_kit_pedal_l[] = {
    /* 000 */ { drum_lessons_teacher_cel046, 2 },
    /* 001 */ { drum_lessons_teacher_cel045, 1 },
    /* 002 */ { drum_lessons_teacher_cel044, 2 },
    /* 003 */ { drum_lessons_teacher_cel043, 3 },
    /* 004 */ { drum_lessons_teacher_cel042, 40 },
    /* End */ END_ANIMATION
};

// [D_088c8008] Snare Drum
struct Animation anim_drum_teacher_kit_snare[] = {
    /* 000 */ { drum_lessons_teacher_cel018, 2 },
    /* 001 */ { drum_lessons_teacher_cel017, 2 },
    /* 002 */ { drum_lessons_teacher_cel016, 40 },
    /* End */ END_ANIMATION
};

// [D_088c8028] Tom Drum
struct Animation anim_drum_teacher_kit_tom[] = {
    /* 000 */ { drum_lessons_teacher_cel049, 2 },
    /* 001 */ { drum_lessons_teacher_cel048, 2 },
    /* 002 */ { drum_lessons_teacher_cel047, 40 },
    /* End */ END_ANIMATION
};

// [D_088c8048] Hi-Hat
struct Animation anim_drum_teacher_kit_hihat[] = {
    /* 000 */ { drum_lessons_teacher_cel062, 2 },
    /* 001 */ { drum_lessons_teacher_cel061, 1 },
    /* 002 */ { drum_lessons_teacher_cel061, 1 },
    /* 003 */ { drum_lessons_teacher_cel060, 2 },
    /* End */ END_ANIMATION
};

// [D_088c8070] Splash Cymbal
struct Animation anim_drum_teacher_kit_splash[] = {
    /* 000 */ { drum_lessons_teacher_cel071, 2 },
    /* 001 */ { drum_lessons_teacher_cel073, 3 },
    /* 002 */ { drum_lessons_teacher_cel072, 2 },
    /* 003 */ { drum_lessons_teacher_cel071, 6 },
    /* 004 */ { drum_lessons_teacher_cel072, 4 },
    /* 005 */ { drum_lessons_teacher_cel073, 7 },
    /* 006 */ { drum_lessons_teacher_cel072, 30 },
    /* End */ END_ANIMATION
};

// [D_088c80b0] Crash Cymbal
struct Animation anim_drum_teacher_kit_crash[] = {
    /* 000 */ { drum_lessons_teacher_cel085, 2 },
    /* 001 */ { drum_lessons_teacher_cel089, 3 },
    /* 002 */ { drum_lessons_teacher_cel087, 2 },
    /* 003 */ { drum_lessons_teacher_cel086, 6 },
    /* 004 */ { drum_lessons_teacher_cel087, 4 },
    /* 005 */ { drum_lessons_teacher_cel088, 7 },
    /* 006 */ { drum_lessons_teacher_cel087, 30 },
    /* End */ END_ANIMATION
};

// [D_088c80f0] Right Hand - Snare Drum
struct Animation anim_drum_teacher_use_snare_r[] = {
    /* 000 */ { drum_lessons_teacher_cel019, 2 },
    /* 001 */ { drum_lessons_teacher_cel020, 1 },
    /* 002 */ { drum_lessons_teacher_cel021, 1 },
    /* 003 */ { drum_lessons_teacher_cel022, 1 },
    /* 004 */ { drum_lessons_teacher_cel023, 2 },
    /* 005 */ { drum_lessons_teacher_cel024, 3 },
    /* 006 */ { drum_lessons_teacher_cel025, 4 },
    /* 007 */ { drum_lessons_teacher_cel026, 4 },
    /* 008 */ { drum_lessons_teacher_cel027, 3 },
    /* 009 */ { drum_lessons_teacher_cel028, 20 },
    /* End */ END_ANIMATION
};

// [D_088c8148] Right Hand - Crash Cymbal
struct Animation anim_drum_teacher_use_crash[] = {
    /* 000 */ { drum_lessons_teacher_cel090, 2 },
    /* 001 */ { drum_lessons_teacher_cel091, 1 },
    /* 002 */ { drum_lessons_teacher_cel092, 1 },
    /* 003 */ { drum_lessons_teacher_cel093, 2 },
    /* 004 */ { drum_lessons_teacher_cel094, 2 },
    /* 005 */ { drum_lessons_teacher_cel095, 2 },
    /* 006 */ { drum_lessons_teacher_cel096, 2 },
    /* 007 */ { drum_lessons_teacher_cel097, 2 },
    /* 008 */ { drum_lessons_teacher_cel098, 2 },
    /* 009 */ { drum_lessons_teacher_cel099, 2 },
    /* 010 */ { drum_lessons_teacher_cel100, 3 },
    /* 011 */ { drum_lessons_teacher_cel101, 40 },
    /* End */ END_ANIMATION
};

// [D_088c81b0] Left Hand - Snare Drum
struct Animation anim_drum_teacher_use_snare_l[] = {
    /* 000 */ { drum_lessons_teacher_cel029, 1 },
    /* 001 */ { drum_lessons_teacher_cel030, 1 },
    /* 002 */ { drum_lessons_teacher_cel031, 1 },
    /* 003 */ { drum_lessons_teacher_cel032, 1 },
    /* 004 */ { drum_lessons_teacher_cel033, 2 },
    /* 005 */ { drum_lessons_teacher_cel034, 3 },
    /* 006 */ { drum_lessons_teacher_cel035, 3 },
    /* 007 */ { drum_lessons_teacher_cel036, 40 },
    /* End */ END_ANIMATION
};

// [D_088c81f8] Left Hand - Tom Drum
struct Animation anim_drum_teacher_use_tom[] = {
    /* 000 */ { drum_lessons_teacher_cel050, 2 },
    /* 001 */ { drum_lessons_teacher_cel051, 1 },
    /* 002 */ { drum_lessons_teacher_cel052, 1 },
    /* 003 */ { drum_lessons_teacher_cel053, 1 },
    /* 004 */ { drum_lessons_teacher_cel054, 2 },
    /* 005 */ { drum_lessons_teacher_cel055, 3 },
    /* 006 */ { drum_lessons_teacher_cel056, 4 },
    /* 007 */ { drum_lessons_teacher_cel057, 3 },
    /* 008 */ { drum_lessons_teacher_cel058, 2 },
    /* 009 */ { drum_lessons_teacher_cel059, 40 },
    /* End */ END_ANIMATION
};

// [D_088c8250] Left Hand - Hi-Hat
struct Animation anim_drum_teacher_use_hihat[] = {
    /* 000 */ { drum_lessons_teacher_cel063, 2 },
    /* 001 */ { drum_lessons_teacher_cel064, 1 },
    /* 002 */ { drum_lessons_teacher_cel065, 1 },
    /* 003 */ { drum_lessons_teacher_cel066, 2 },
    /* 004 */ { drum_lessons_teacher_cel067, 3 },
    /* 005 */ { drum_lessons_teacher_cel068, 3 },
    /* 006 */ { drum_lessons_teacher_cel069, 3 },
    /* 007 */ { drum_lessons_teacher_cel070, 40 },
    /* End */ END_ANIMATION
};

// [D_088c8298] Left Hand - Splash Cymbal
struct Animation anim_drum_teacher_use_splash[] = {
    /* 000 */ { drum_lessons_teacher_cel074, 2 },
    /* 001 */ { drum_lessons_teacher_cel075, 1 },
    /* 002 */ { drum_lessons_teacher_cel076, 1 },
    /* 003 */ { drum_lessons_teacher_cel077, 2 },
    /* 004 */ { drum_lessons_teacher_cel078, 3 },
    /* 005 */ { drum_lessons_teacher_cel079, 4 },
    /* 006 */ { drum_lessons_teacher_cel080, 3 },
    /* 007 */ { drum_lessons_teacher_cel081, 2 },
    /* 008 */ { drum_lessons_teacher_cel082, 2 },
    /* 009 */ { drum_lessons_teacher_cel083, 1 },
    /* 010 */ { drum_lessons_teacher_cel084, 40 },
    /* End */ END_ANIMATION
};

// [D_088c82f8] Head
struct Animation anim_drum_teacher_head[] = {
    /* 000 */ { drum_lessons_teacher_cel001, 3 },
    /* 001 */ { drum_lessons_teacher_cel002, 2 },
    /* 002 */ { drum_lessons_teacher_cel003, 40 },
    /* End */ END_ANIMATION
};

// [D_088c8318] Torso
struct Animation anim_drum_teacher_body[] = {
    /* 000 */ { drum_lessons_teacher_cel004, 3 },
    /* 001 */ { drum_lessons_teacher_cel004, 2 },
    /* 002 */ { drum_lessons_teacher_cel005, 40 },
    /* End */ END_ANIMATION
};

// [D_088c8338] Right Leg - Kick Pedal
struct Animation anim_drum_teacher_use_pedal_r[] = {
    /* 000 */ { drum_lessons_teacher_cel006, 3 },
    /* 001 */ { drum_lessons_teacher_cel007, 2 },
    /* 002 */ { drum_lessons_teacher_cel008, 43 },
    /* End */ END_ANIMATION
};

// [D_088c8358] Left Leg - Kick Pedal
struct Animation anim_drum_teacher_use_pedal_l[] = {
    /* 000 */ { drum_lessons_teacher_cel009, 3 },
    /* 001 */ { drum_lessons_teacher_cel010, 2 },
    /* 002 */ { drum_lessons_teacher_cel011, 43 },
    /* End */ END_ANIMATION
};

// [D_088c8378] Seat
struct Animation anim_drum_teacher_kit_seat[] = {
    /* 000 */ { drum_lessons_teacher_cel012, 4 },
    /* End */ END_ANIMATION
};

// [D_088c8388] Left Hand - Drum Roll
struct Animation anim_drum_teacher_snare_roll[] = {
    /* 000 */ { drum_lessons_teacher_cel029, 2 },
    /* 001 */ { drum_lessons_teacher_cel031, 1 },
    /* 002 */ { drum_lessons_teacher_cel030, 2 },
    /* 003 */ { drum_lessons_teacher_cel029, 2 },
    /* 004 */ { drum_lessons_teacher_cel030, 2 },
    /* 005 */ { drum_lessons_teacher_cel029, 2 },
    /* 006 */ { drum_lessons_teacher_cel030, 2 },
    /* 007 */ { drum_lessons_teacher_cel031, 1 },
    /* 008 */ { drum_lessons_teacher_cel032, 1 },
    /* 009 */ { drum_lessons_teacher_cel033, 2 },
    /* 010 */ { drum_lessons_teacher_cel034, 3 },
    /* 011 */ { drum_lessons_teacher_cel035, 3 },
    /* 012 */ { drum_lessons_teacher_cel036, 40 },
    /* End */ END_ANIMATION
};

// [D_088c83f8] Head - Watching
struct Animation anim_drum_teacher_watching[] = {
    /* 000 */ { drum_lessons_teacher_cel103, 4 },
    /* End */ END_ANIMATION
};

// [D_088c8408] Pattern Complete - Head
struct Animation anim_drum_teacher_finish_pattern_face[] = {
    /* 000 */ { drum_lessons_teacher_cel105, 4 },
    /* End */ END_ANIMATION
};

// [D_088c8418] Pattern Complete - Thumbs Up
struct Animation anim_drum_teacher_finish_pattern_arm[] = {
    /* 000 */ { drum_lessons_teacher_cel106, 4 },
    /* End */ END_ANIMATION
};

// [D_088c8428] Pattern Failed - Head
struct Animation anim_drum_teacher_fail_pattern_face[] = {
    /* 000 */ { drum_lessons_teacher_cel108, 60 },
    /* 001 */ { drum_lessons_teacher_cel103, 60 },
    /* End */ END_ANIMATION
};

// [D_088c8440] Pattern Failed - Shrug Right Arm
struct Animation anim_drum_teacher_fail_pattern_arm_r[] = {
    /* 000 */ { drum_lessons_teacher_cel109, 60 },
    /* 001 */ { drum_lessons_teacher_cel028, 60 },
    /* End */ END_ANIMATION
};

// [D_088c8458] Pattern Failed - Shrug Left Arm
struct Animation anim_drum_teacher_fail_pattern_arm_l[] = {
    /* 000 */ { drum_lessons_teacher_cel110, 60 },
    /* 001 */ { drum_lessons_teacher_cel036, 60 },
    /* End */ END_ANIMATION
};

// [D_088c8470] Lesson Complete - Head
struct Animation anim_drum_teacher_finish_lesson_face[] = {
    /* 000 */ { drum_lessons_teacher_cel112, 4 },
    /* End */ END_ANIMATION
};

// [D_088c8480] Lesson Complete - Thumbs Up
struct Animation anim_drum_teacher_finish_lesson_arm[] = {
    /* 000 */ { drum_lessons_teacher_cel113, 4 },
    /* End */ END_ANIMATION
};

// [D_088c8490] Text Advance Button Icon
struct Animation anim_drum_lessons_text_adv_icon[] = {
    /* 000 */ { drum_lessons_teacher_cel114, 2 },
    /* 001 */ { drum_lessons_teacher_cel115, 2 },
    /* 002 */ { drum_lessons_teacher_cel116, 30 },
    /* End */ END_ANIMATION
};

// [D_088c84b0] SLOW Mode Icon
struct Animation anim_drum_lessons_slow_icon[] = {
    /* 000 */ { drum_lessons_teacher_cel117, 6 },
    /* 001 */ { drum_lessons_teacher_cel118, 16 },
    /* 002 */ { drum_lessons_teacher_cel117, 6 },
    /* 003 */ { drum_lessons_teacher_cel119, 16 },
    /* End */ END_ANIMATION
};

// [D_088c84d8] Accuracy Meter - All Lights
struct Animation anim_drum_lessons_accuracy_light_all[] = {
    /* 000 */ { drum_lessons_teacher_cel120, 2 },
    /* 001 */ { drum_lessons_teacher_cel121, 2 },
    /* 002 */ { drum_lessons_teacher_cel122, 2 },
    /* 003 */ { drum_lessons_teacher_cel123, 2 },
    /* 004 */ { drum_lessons_teacher_cel124, 40 },
    /* End */ END_ANIMATION
};

// [D_088c8508] Accuracy Meter - Light 1 (Red)
struct Animation anim_drum_lessons_accuracy_light1[] = {
    /* 000 */ { drum_lessons_teacher_cel125, 4 },
    /* 001 */ { drum_lessons_teacher_cel126, 4 },
    /* 002 */ { drum_lessons_teacher_cel127, 4 },
    /* 003 */ { drum_lessons_teacher_cel128, 4 },
    /* End */ END_ANIMATION
};

// [D_088c8530] Accuracy Meter - Light 2 (Yellow)
struct Animation anim_drum_lessons_accuracy_light2[] = {
    /* 000 */ { drum_lessons_teacher_cel130, 4 },
    /* 001 */ { drum_lessons_teacher_cel131, 4 },
    /* 002 */ { drum_lessons_teacher_cel132, 4 },
    /* 003 */ { drum_lessons_teacher_cel133, 4 },
    /* End */ END_ANIMATION
};

// [D_088c8558] Accuracy Meter - Light 3 (Yellow)
struct Animation anim_drum_lessons_accuracy_light3[] = {
    /* 000 */ { drum_lessons_teacher_cel130, 4 },
    /* 001 */ { drum_lessons_teacher_cel131, 4 },
    /* 002 */ { drum_lessons_teacher_cel132, 4 },
    /* 003 */ { drum_lessons_teacher_cel133, 4 },
    /* End */ END_ANIMATION
};

// [D_088c8580] Accuracy Meter - Light 4 (Green)
struct Animation anim_drum_lessons_accuracy_light4[] = {
    /* 000 */ { drum_lessons_teacher_cel135, 4 },
    /* 001 */ { drum_lessons_teacher_cel136, 4 },
    /* 002 */ { drum_lessons_teacher_cel137, 4 },
    /* 003 */ { drum_lessons_teacher_cel138, 4 },
    /* End */ END_ANIMATION
};

// [D_088c85a8] Accuracy Meter - Light 5 (Yellow)
struct Animation anim_drum_lessons_accuracy_light5[] = {
    /* 000 */ { drum_lessons_teacher_cel130, 4 },
    /* 001 */ { drum_lessons_teacher_cel131, 4 },
    /* 002 */ { drum_lessons_teacher_cel132, 4 },
    /* 003 */ { drum_lessons_teacher_cel133, 4 },
    /* End */ END_ANIMATION
};

// [D_088c85d0] Accuracy Meter - Light 6 (Yellow)
struct Animation anim_drum_lessons_accuracy_light6[] = {
    /* 000 */ { drum_lessons_teacher_cel130, 4 },
    /* 001 */ { drum_lessons_teacher_cel131, 4 },
    /* 002 */ { drum_lessons_teacher_cel132, 4 },
    /* 003 */ { drum_lessons_teacher_cel133, 4 },
    /* End */ END_ANIMATION
};

// [D_088c85f8] Accuracy Meter - Light 7 (Red)
struct Animation anim_drum_lessons_accuracy_light7[] = {
    /* 000 */ { drum_lessons_teacher_cel125, 4 },
    /* 001 */ { drum_lessons_teacher_cel126, 4 },
    /* 002 */ { drum_lessons_teacher_cel127, 4 },
    /* 003 */ { drum_lessons_teacher_cel128, 4 },
    /* End */ END_ANIMATION
};
