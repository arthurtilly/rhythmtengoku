#include "global.h"
#include "graphics.h"

#include "power_calligraphy_brush_anim_cells.inc.c"

// [D_088eec50] "Onore" Pattern
struct Animation anim_power_calligraphy_onore[] = {
    /* 000 */ { power_calligraphy_brush_cel001, 64 },
    /* 001 */ { power_calligraphy_brush_cel002, 16 },
    /* 002 */ { power_calligraphy_brush_cel003, 1 },
    /* 003 */ { power_calligraphy_brush_cel004, 15 },
    /* 004 */ { power_calligraphy_brush_cel005, 1 },
    /* 005 */ { power_calligraphy_brush_cel006, 15 },
    /* 006 */ { power_calligraphy_brush_cel007, 16 },
    /* 007 */ { power_calligraphy_brush_cel008, 1 },
    /* 008 */ { power_calligraphy_brush_cel009, 15 },
    /* 009 */ { power_calligraphy_brush_cel010, 1 },
    /* 010 */ { power_calligraphy_brush_cel011, 1 },
    /* 011 */ { power_calligraphy_brush_cel012, 1 },
    /* 012 */ { power_calligraphy_brush_cel013, 1 },
    /* 013 */ { power_calligraphy_brush_cel014, 1 },
    /* 014 */ { power_calligraphy_brush_cel015, 1 },
    /* 015 */ { power_calligraphy_brush_cel016, 26 },
    /* 016 */ { power_calligraphy_brush_cel017, 32 },
    /* End */ END_ANIMATION
};

// [D_088eece0] "Chikara" Pattern
struct Animation anim_power_calligraphy_chikara[] = {
    /* 000 */ { power_calligraphy_brush_cel021, 64 },
    /* 001 */ { power_calligraphy_brush_cel022, 32 },
    /* 002 */ { power_calligraphy_brush_cel023, 2 },
    /* 003 */ { power_calligraphy_brush_cel024, 14 },
    /* 004 */ { power_calligraphy_brush_cel025, 2 },
    /* 005 */ { power_calligraphy_brush_cel026, 2 },
    /* 006 */ { power_calligraphy_brush_cel027, 12 },
    /* 007 */ { power_calligraphy_brush_cel028, 16 },
    /* 008 */ { power_calligraphy_brush_cel029, 16 },
    /* 009 */ { power_calligraphy_brush_cel030, 2 },
    /* 010 */ { power_calligraphy_brush_cel031, 2 },
    /* 011 */ { power_calligraphy_brush_cel032, 44 },
    /* End */ END_ANIMATION
};

// [D_088eed48] "Sun" Pattern
struct Animation anim_power_calligraphy_sun[] = {
    /* 000 */ { power_calligraphy_brush_cel039, 64 },
    /* 001 */ { power_calligraphy_brush_cel040, 16 },
    /* 002 */ { power_calligraphy_brush_cel041, 2 },
    /* 003 */ { power_calligraphy_brush_cel042, 2 },
    /* 004 */ { power_calligraphy_brush_cel043, 28 },
    /* 005 */ { power_calligraphy_brush_cel044, 16 },
    /* 006 */ { power_calligraphy_brush_cel045, 2 },
    /* 007 */ { power_calligraphy_brush_cel046, 2 },
    /* 008 */ { power_calligraphy_brush_cel047, 28 },
    /* 009 */ { power_calligraphy_brush_cel048, 32 },
    /* 010 */ { power_calligraphy_brush_cel049, 64 },
    /* End */ END_ANIMATION
};

// [D_088eeda8] "Kokoro" Pattern
struct Animation anim_power_calligraphy_kokoro[] = {
    /* 000 */ { power_calligraphy_brush_cel056, 64 },
    /* 001 */ { power_calligraphy_brush_cel057, 1 },
    /* 002 */ { power_calligraphy_brush_cel058, 1 },
    /* 003 */ { power_calligraphy_brush_cel059, 30 },
    /* 004 */ { power_calligraphy_brush_cel060, 1 },
    /* 005 */ { power_calligraphy_brush_cel061, 1 },
    /* 006 */ { power_calligraphy_brush_cel062, 1 },
    /* 007 */ { power_calligraphy_brush_cel063, 1 },
    /* 008 */ { power_calligraphy_brush_cel064, 1 },
    /* 009 */ { power_calligraphy_brush_cel065, 27 },
    /* 010 */ { power_calligraphy_brush_cel066, 32 },
    /* 011 */ { power_calligraphy_brush_cel067, 16 },
    /* 012 */ { power_calligraphy_brush_cel068, 16 },
    /* 013 */ { power_calligraphy_brush_cel069, 32 },
    /* End */ END_ANIMATION
};

// [D_088eee20] "Onore" Player Stroke 1
struct Animation anim_power_calligraphy_onore_input1[] = {
    /* 000 */ { power_calligraphy_brush_cel018, 40 },
    /* 001 */ { power_calligraphy_brush_cel019, 40 },
    /* 002 */ { power_calligraphy_brush_cel020, 40 },
    /* End */ END_ANIMATION
};

// [D_088eee40] "Chikara" Player Stroke 1
struct Animation anim_power_calligraphy_chikara_input1[] = {
    /* 000 */ { power_calligraphy_brush_cel033, 4 },
    /* 001 */ { power_calligraphy_brush_cel034, 4 },
    /* 002 */ { power_calligraphy_brush_cel035, 4 },
    /* End */ END_ANIMATION
};

// [D_088eee60] "Chikara" Player Stroke 2
struct Animation anim_power_calligraphy_chikara_input2[] = {
    /* 000 */ { power_calligraphy_brush_cel036, 4 },
    /* 001 */ { power_calligraphy_brush_cel037, 4 },
    /* 002 */ { power_calligraphy_brush_cel038, 4 },
    /* End */ END_ANIMATION
};

// [D_088eee80] "Sun" Player Stroke 1
struct Animation anim_power_calligraphy_sun_input1[] = {
    /* 000 */ { power_calligraphy_brush_cel050, 4 },
    /* 001 */ { power_calligraphy_brush_cel051, 4 },
    /* 002 */ { power_calligraphy_brush_cel052, 4 },
    /* End */ END_ANIMATION
};

// [D_088eeea0] "Sun" Player Stroke 2
struct Animation anim_power_calligraphy_sun_input2[] = {
    /* 000 */ { power_calligraphy_brush_cel053, 4 },
    /* 001 */ { power_calligraphy_brush_cel054, 4 },
    /* 002 */ { power_calligraphy_brush_cel055, 4 },
    /* End */ END_ANIMATION
};

// [D_088eeec0] "Kokoro" Player Stroke 1
struct Animation anim_power_calligraphy_kokoro_input1[] = {
    /* 000 */ { power_calligraphy_brush_cel070, 4 },
    /* 001 */ { power_calligraphy_brush_cel071, 4 },
    /* 002 */ { power_calligraphy_brush_cel072, 4 },
    /* End */ END_ANIMATION
};

// [D_088eeee0] "Kokoro" Player Stroke 2 (Unused)
struct Animation anim_power_calligraphy_kokoro_input2[] = {
    /* 000 */ { power_calligraphy_brush_cel073, 4 },
    /* 001 */ { power_calligraphy_brush_cel075, 4 },
    /* 002 */ { power_calligraphy_brush_cel076, 4 },
    /* 003 */ { power_calligraphy_brush_cel074, 4 },
    /* End */ END_ANIMATION
};

// [D_088eef08] "Kokoro" Player Stroke 3
struct Animation anim_power_calligraphy_kokoro_input3[] = {
    /* 000 */ { power_calligraphy_brush_cel077, 4 },
    /* 001 */ { power_calligraphy_brush_cel078, 4 },
    /* 002 */ { power_calligraphy_brush_cel079, 4 },
    /* End */ END_ANIMATION
};

// [D_088eef28] Brush - Idle
struct Animation anim_power_calligraphy_brush[] = {
    /* 000 */ { power_calligraphy_brush_cel128, 4 },
    /* 001 */ { power_calligraphy_brush_cel129, 4 },
    /* End */ END_ANIMATION
};

// [D_088eef40] Brush - Idle (Unused)
struct Animation anim_power_calligraphy_brush_still[] = {
    /* 000 */ { power_calligraphy_brush_cel128, 2 },
    /* End */ END_ANIMATION
};

// [D_088eef50] Brush - Charge Stroke
struct Animation anim_power_calligraphy_brush_charge1[] = {
    /* 000 */ { power_calligraphy_brush_cel129, 60 },
    /* 001 */ { power_calligraphy_brush_cel130, 1 },
    /* 002 */ { power_calligraphy_brush_cel131, 1 },
    /* 003 */ { power_calligraphy_brush_cel132, 1 },
    /* 004 */ { power_calligraphy_brush_cel133, 2 },
    /* 005 */ { power_calligraphy_brush_cel134, 2 },
    /* 006 */ { power_calligraphy_brush_cel135, 2 },
    /* 007 */ { power_calligraphy_brush_cel136, 2 },
    /* 008 */ { power_calligraphy_brush_cel137, 2 },
    /* End */ END_ANIMATION
};

// [D_088eefa0] Brush - Charge Comma
struct Animation anim_power_calligraphy_brush_charge2[] = {
    /* 000 */ { power_calligraphy_brush_cel138, 3 },
    /* 001 */ { power_calligraphy_brush_cel139, 3 },
    /* 002 */ { power_calligraphy_brush_cel140, 3 },
    /* 003 */ { power_calligraphy_brush_cel141, 3 },
    /* 004 */ { power_calligraphy_brush_cel142, 3 },
    /* 005 */ { power_calligraphy_brush_cel143, 3 },
    /* End */ END_ANIMATION
};

// [D_088eefd8] Ink Dot
struct Animation anim_power_calligraphy_ink_dot[] = {
    /* 000 */ { power_calligraphy_brush_cel144, 3 },
    /* 001 */ { power_calligraphy_brush_cel145, 3 },
    /* 002 */ { power_calligraphy_brush_cel146, 3 },
    /* 003 */ { power_calligraphy_brush_cel147, 3 },
    /* 004 */ { power_calligraphy_brush_cel148, 3 },
    /* 005 */ { power_calligraphy_brush_cel149, 3 },
    /* 006 */ { power_calligraphy_brush_cel150, 40 },
    /* End */ END_ANIMATION
};

// [D_088ef018] "Re" Pattern
struct Animation anim_power_calligraphy_re[] = {
    /* 000 */ { power_calligraphy_brush_cel080, 32 },
    /* 001 */ { power_calligraphy_brush_cel081, 32 },
    /* 002 */ { power_calligraphy_brush_cel082, 1 },
    /* 003 */ { power_calligraphy_brush_cel083, 1 },
    /* 004 */ { power_calligraphy_brush_cel084, 30 },
    /* 005 */ { power_calligraphy_brush_cel085, 64 },
    /* End */ END_ANIMATION
};

// [D_088ef050] "Re" Player Stroke 1
struct Animation anim_power_calligraphy_re_input1[] = {
    /* 000 */ { power_calligraphy_brush_cel085, 4 },
    /* 001 */ { power_calligraphy_brush_cel086, 4 },
    /* 002 */ { power_calligraphy_brush_cel087, 4 },
    /* End */ END_ANIMATION
};

// [D_088ef070] Comma Pattern
struct Animation anim_power_calligraphy_comma[] = {
    /* 000 */ { power_calligraphy_brush_cel088, 64 },
    /* 001 */ { power_calligraphy_brush_cel089, 64 },
    /* End */ END_ANIMATION
};

// [D_088ef088] Comma Player Stroke 1
struct Animation anim_power_calligraphy_comma_input1[] = {
    /* 000 */ { power_calligraphy_brush_cel089, 4 },
    /* 001 */ { power_calligraphy_brush_cel090, 4 },
    /* 002 */ { power_calligraphy_brush_cel091, 4 },
    /* End */ END_ANIMATION
};

// [D_088ef0a8] Face Pattern
struct Animation anim_power_calligraphy_face[] = {
    /* 000 */ { power_calligraphy_brush_cel092, 32 },
    /* 001 */ { power_calligraphy_brush_cel093, 1 },
    /* 002 */ { power_calligraphy_brush_cel094, 1 },
    /* 003 */ { power_calligraphy_brush_cel095, 1 },
    /* 004 */ { power_calligraphy_brush_cel096, 1 },
    /* 005 */ { power_calligraphy_brush_cel097, 28 },
    /* 006 */ { power_calligraphy_brush_cel098, 8 },
    /* 007 */ { power_calligraphy_brush_cel099, 24 },
    /* 008 */ { power_calligraphy_brush_cel100, 3 },
    /* 009 */ { power_calligraphy_brush_cel101, 3 },
    /* 010 */ { power_calligraphy_brush_cel102, 3 },
    /* 011 */ { power_calligraphy_brush_cel103, 23 },
    /* 012 */ { power_calligraphy_brush_cel104, 2 },
    /* 013 */ { power_calligraphy_brush_cel105, 14 },
    /* 014 */ { power_calligraphy_brush_cel106, 2 },
    /* 015 */ { power_calligraphy_brush_cel107, 2 },
    /* 016 */ { power_calligraphy_brush_cel108, 28 },
    /* 017 */ { power_calligraphy_brush_cel109, 16 },
    /* 018 */ { power_calligraphy_brush_cel110, 32 },
    /* 019 */ { power_calligraphy_brush_cel111, 3 },
    /* 020 */ { power_calligraphy_brush_cel112, 3 },
    /* 021 */ { power_calligraphy_brush_cel113, 3 },
    /* 022 */ { power_calligraphy_brush_cel114, 23 },
    /* 023 */ { power_calligraphy_brush_cel115, 3 },
    /* 024 */ { power_calligraphy_brush_cel116, 3 },
    /* 025 */ { power_calligraphy_brush_cel117, 3 },
    /* 026 */ { power_calligraphy_brush_cel118, 23 },
    /* 027 */ { power_calligraphy_brush_cel119, 8 },
    /* 028 */ { power_calligraphy_brush_cel120, 24 },
    /* 029 */ { power_calligraphy_brush_cel121, 32 },
    /* 030 */ { power_calligraphy_brush_cel122, 32 },
    /* 031 */ { power_calligraphy_brush_cel123, 64 },
    /* End */ END_ANIMATION
};

// [D_088ef1b0] Face Player Stroke 1
struct Animation anim_power_calligraphy_face_input1[] = {
    /* 000 */ { power_calligraphy_brush_cel124, 4 },
    /* 001 */ { power_calligraphy_brush_cel125, 4 },
    /* 002 */ { power_calligraphy_brush_cel126, 4 },
    /* End */ END_ANIMATION
};

// [D_088ef1d0] "Kan" End Kanji
struct Animation anim_power_calligraphy_end_kanji[] = {
    /* 000 */ { power_calligraphy_brush_cel127, 4 },
    /* End */ END_ANIMATION
};

// [D_088ef1e0] "Start to Skip" Tutorial Text (Unused)
struct Animation anim_power_calligraphy_skip_icon[] = {
    /* 000 */ { power_calligraphy_brush_cel151, 4 },
    /* End */ END_ANIMATION
};

// [D_088ef1f0] Brush Charging Particles
struct Animation anim_power_calligraphy_brush_charge_effect[] = {
    /* 000 */ { power_calligraphy_brush_cel152, 2 },
    /* 001 */ { power_calligraphy_brush_cel153, 2 },
    /* 002 */ { power_calligraphy_brush_cel154, 2 },
    /* 003 */ { power_calligraphy_brush_cel155, 2 },
    /* 004 */ { power_calligraphy_brush_cel156, 2 },
    /* 005 */ { power_calligraphy_brush_cel000, 40 },
    /* End */ END_ANIMATION
};
