#include "global.h"
#include "graphics.h"

#include "tram_pauline_tutorial_anim_cells.inc.c"

// Note: Many animations/sprites seem to be initially taken from Tap Trial.

// [D_0892cd74] Fox - Cue Triple Tap
struct Animation anim_casual_fox_3cue[] = {
    /* 000 */ { tram_pauline_tutorial_cel004, 20 },
    /* 001 */ { tram_pauline_tutorial_cel005, 4 },
    /* 002 */ { tram_pauline_tutorial_cel006, 4 },
    /* 003 */ { tram_pauline_tutorial_cel007, 4 },
    /* 004 */ { tram_pauline_tutorial_cel008, 4 },
    /* 005 */ { tram_pauline_tutorial_cel009, 20 },
    /* End */ END_ANIMATION
};

// [D_0892cdac] Fox - Crouch
struct Animation anim_casual_fox_crouch[] = {
    /* 000 */ { tram_pauline_tutorial_cel001, 2 },
    /* 001 */ { tram_pauline_tutorial_cel010, 2 },
    /* 002 */ { tram_pauline_tutorial_cel011, 2 },
    /* 003 */ { tram_pauline_tutorial_cel012, 2 },
    /* 004 */ { tram_pauline_tutorial_cel013, 2 },
    /* 005 */ { tram_pauline_tutorial_cel014, 2 },
    /* 006 */ { tram_pauline_tutorial_cel015, 20 },
    /* End */ END_ANIMATION
};

// [D_0892cdec] Fox - Jump
struct Animation anim_casual_fox_jump[] = {
    /* 000 */ { tram_pauline_tutorial_cel019, 2 },
    /* End */ END_ANIMATION
};

// [D_0892cdfc] Fox - Beat
struct Animation anim_casual_fox_beat[] = {
    /* 000 */ { tram_pauline_tutorial_cel003, 3 },
    /* 001 */ { tram_pauline_tutorial_cel002, 3 },
    /* 002 */ { tram_pauline_tutorial_cel001, 24 },
    /* End */ END_ANIMATION
};

// [D_0892ce1c] Fox - Fall to Crouch
struct Animation anim_casual_fox_fall[] = {
    /* 000 */ { tram_pauline_tutorial_cel018, 2 },
    /* 001 */ { tram_pauline_tutorial_cel017, 2 },
    /* 002 */ { tram_pauline_tutorial_cel016, 2 },
    /* 003 */ { tram_pauline_tutorial_cel015, 2 },
    /* 004 */ { tram_pauline_tutorial_cel014, 2 },
    /* End */ END_ANIMATION
};

// [D_0892ce4c] Fox - Crouching Jump Tap
struct Animation anim_casual_fox_crouch_step[] = {
    /* 000 */ { tram_pauline_tutorial_cel024, 2 },
    /* 001 */ { tram_pauline_tutorial_cel015, 2 },
    /* 002 */ { tram_pauline_tutorial_cel014, 2 },
    /* End */ END_ANIMATION
};

// [D_0892ce6c] Shadow
struct Animation anim_casual_tram_pauline_shadow[] = {
    /* 000 */ { tram_pauline_tutorial_cel026, 4 },
    /* End */ END_ANIMATION
};

// [D_0892ce7c] "Start to Skip" Tutorial Text
struct Animation anim_casual_tram_pauline_text_skip[] = {
    /* 000 */ { tram_pauline_tutorial_cel029, 4 },
    /* End */ END_ANIMATION
};

// [D_0892ce8c] Trampoline
struct Animation anim_casual_tram_pauline_trampoline[] = {
    /* 000 */ { tram_pauline_tutorial_cel030, 4 },
    /* 001 */ { tram_pauline_tutorial_cel031, 4 },
    /* 002 */ { tram_pauline_tutorial_cel032, 4 },
    /* 003 */ { tram_pauline_tutorial_cel033, 4 },
    /* 004 */ { tram_pauline_tutorial_cel034, 4 },
    /* 005 */ { tram_pauline_tutorial_cel035, 4 },
    /* 006 */ { tram_pauline_tutorial_cel036, 4 },
    /* End */ END_ANIMATION
};

// [D_0892cecc] Transform to Fox
struct Animation anim_casual_fox_transform[] = {
    /* 000 */ { tram_pauline_tutorial_cel047, 2 },
    /* 001 */ { tram_pauline_tutorial_cel046, 2 },
    /* 002 */ { tram_pauline_tutorial_cel045, 2 },
    /* 003 */ { tram_pauline_tutorial_cel044, 2 },
    /* 004 */ { tram_pauline_tutorial_cel043, 2 },
    /* 005 */ { tram_pauline_tutorial_cel042, 2 },
    /* 006 */ { tram_pauline_tutorial_cel041, 2 },
    /* 007 */ { tram_pauline_tutorial_cel040, 2 },
    /* 008 */ { tram_pauline_tutorial_cel039, 2 },
    /* 009 */ { tram_pauline_tutorial_cel038, 2 },
    /* 010 */ { tram_pauline_tutorial_cel037, 20 },
    /* End */ END_ANIMATION
};

// [D_0892cf2c] Transform Effect
struct Animation anim_casual_fox_transform_effect[] = {
    /* 000 */ { tram_pauline_tutorial_cel057, 2 },
    /* 001 */ { tram_pauline_tutorial_cel056, 2 },
    /* 002 */ { tram_pauline_tutorial_cel055, 2 },
    /* 003 */ { tram_pauline_tutorial_cel054, 2 },
    /* 004 */ { tram_pauline_tutorial_cel053, 2 },
    /* 005 */ { tram_pauline_tutorial_cel052, 2 },
    /* 006 */ { tram_pauline_tutorial_cel051, 2 },
    /* 007 */ { tram_pauline_tutorial_cel050, 2 },
    /* 008 */ { tram_pauline_tutorial_cel049, 2 },
    /* 009 */ { tram_pauline_tutorial_cel048, 2 },
    /* End */ END_ANIMATION
};

// [D_0892cf84] Tram - Beat
struct Animation anim_casual_tram_beat[] = {
    /* 000 */ { tram_pauline_tutorial_cel058, 4 },
    /* 001 */ { tram_pauline_tutorial_cel059, 4 },
    /* 002 */ { tram_pauline_tutorial_cel058, 30 },
    /* End */ END_ANIMATION
};

// [D_0892cfa4] Pauline - Beat
struct Animation anim_casual_pauline_beat[] = {
    /* 000 */ { tram_pauline_tutorial_cel060, 4 },
    /* 001 */ { tram_pauline_tutorial_cel061, 4 },
    /* 002 */ { tram_pauline_tutorial_cel060, 30 },
    /* End */ END_ANIMATION
};

// [D_0892cfc4] Tram - Crouch
struct Animation anim_casual_tram_crouch[] = {
    /* 000 */ { tram_pauline_tutorial_cel058, 2 },
    /* 001 */ { tram_pauline_tutorial_cel062, 2 },
    /* 002 */ { tram_pauline_tutorial_cel063, 2 },
    /* 003 */ { tram_pauline_tutorial_cel064, 2 },
    /* 004 */ { tram_pauline_tutorial_cel065, 2 },
    /* 005 */ { tram_pauline_tutorial_cel066, 2 },
    /* 006 */ { tram_pauline_tutorial_cel067, 20 },
    /* End */ END_ANIMATION
};

// [D_0892d004] Tram - Cue Triple Tap
struct Animation anim_casual_tram_3cue[] = {
    /* 000 */ { tram_pauline_tutorial_cel069, 20 },
    /* 001 */ { tram_pauline_tutorial_cel069, 4 },
    /* 002 */ { tram_pauline_tutorial_cel070, 4 },
    /* 003 */ { tram_pauline_tutorial_cel071, 4 },
    /* 004 */ { tram_pauline_tutorial_cel072, 4 },
    /* 005 */ { tram_pauline_tutorial_cel073, 20 },
    /* End */ END_ANIMATION
};

// [D_0892d03c] Tram - Jump
struct Animation anim_casual_tram_jump[] = {
    /* 000 */ { tram_pauline_tutorial_cel068, 2 },
    /* End */ END_ANIMATION
};

// [D_0892d04c] Transform to Tram
struct Animation anim_casual_tram_transform[] = {
    /* 000 */ { tram_pauline_tutorial_cel074, 2 },
    /* 001 */ { tram_pauline_tutorial_cel074, 2 },
    /* 002 */ { tram_pauline_tutorial_cel075, 2 },
    /* 003 */ { tram_pauline_tutorial_cel076, 2 },
    /* 004 */ { tram_pauline_tutorial_cel077, 2 },
    /* 005 */ { tram_pauline_tutorial_cel078, 2 },
    /* 006 */ { tram_pauline_tutorial_cel068, 2 },
    /* 007 */ { tram_pauline_tutorial_cel068, 2 },
    /* 008 */ { tram_pauline_tutorial_cel068, 2 },
    /* 009 */ { tram_pauline_tutorial_cel068, 2 },
    /* 010 */ { tram_pauline_tutorial_cel068, 20 },
    /* End */ END_ANIMATION
};

// [D_0892d0ac] Tram - Crouching Jump Tap
struct Animation anim_casual_tram_crouch_step[] = {
    /* 000 */ { tram_pauline_tutorial_cel079, 2 },
    /* 001 */ { tram_pauline_tutorial_cel080, 2 },
    /* 002 */ { tram_pauline_tutorial_cel081, 2 },
    /* End */ END_ANIMATION
};

// [D_0892d0cc] Pauline - Crouch
struct Animation anim_casual_pauline_crouch[] = {
    /* 000 */ { tram_pauline_tutorial_cel060, 2 },
    /* 001 */ { tram_pauline_tutorial_cel082, 2 },
    /* 002 */ { tram_pauline_tutorial_cel083, 2 },
    /* 003 */ { tram_pauline_tutorial_cel084, 2 },
    /* 004 */ { tram_pauline_tutorial_cel085, 2 },
    /* 005 */ { tram_pauline_tutorial_cel086, 2 },
    /* 006 */ { tram_pauline_tutorial_cel087, 20 },
    /* End */ END_ANIMATION
};

// [D_0892d10c] Pauline - Cue Triple Tap
struct Animation anim_casual_pauline_3cue[] = {
    /* 000 */ { tram_pauline_tutorial_cel088, 20 },
    /* 001 */ { tram_pauline_tutorial_cel088, 4 },
    /* 002 */ { tram_pauline_tutorial_cel089, 4 },
    /* 003 */ { tram_pauline_tutorial_cel090, 4 },
    /* 004 */ { tram_pauline_tutorial_cel091, 4 },
    /* 005 */ { tram_pauline_tutorial_cel092, 20 },
    /* End */ END_ANIMATION
};

// [D_0892d144] Pauline - Jump
struct Animation anim_casual_pauline_jump[] = {
    /* 000 */ { tram_pauline_tutorial_cel093, 2 },
    /* End */ END_ANIMATION
};

// [D_0892d154] Transform to Pauline
struct Animation anim_casual_pauline_transform[] = {
    /* 000 */ { tram_pauline_tutorial_cel074, 2 },
    /* 001 */ { tram_pauline_tutorial_cel074, 2 },
    /* 002 */ { tram_pauline_tutorial_cel094, 2 },
    /* 003 */ { tram_pauline_tutorial_cel095, 2 },
    /* 004 */ { tram_pauline_tutorial_cel096, 2 },
    /* 005 */ { tram_pauline_tutorial_cel097, 2 },
    /* 006 */ { tram_pauline_tutorial_cel093, 2 },
    /* 007 */ { tram_pauline_tutorial_cel093, 2 },
    /* 008 */ { tram_pauline_tutorial_cel093, 2 },
    /* 009 */ { tram_pauline_tutorial_cel093, 2 },
    /* 010 */ { tram_pauline_tutorial_cel093, 20 },
    /* End */ END_ANIMATION
};

// [D_0892d1b4] Pauline - Crouching Jump Tap
struct Animation anim_casual_pauline_crouch_step[] = {
    /* 000 */ { tram_pauline_tutorial_cel098, 2 },
    /* 001 */ { tram_pauline_tutorial_cel099, 2 },
    /* 002 */ { tram_pauline_tutorial_cel100, 2 },
    /* End */ END_ANIMATION
};

// [D_0892d1d4] Half-Tram - Beat
struct Animation anim_casual_half_tram_beat[] = {
    /* 000 */ { tram_pauline_tutorial_cel101, 4 },
    /* 001 */ { tram_pauline_tutorial_cel102, 4 },
    /* 002 */ { tram_pauline_tutorial_cel101, 30 },
    /* End */ END_ANIMATION
};

// [D_0892d1f4] Half-Pauline - Beat
struct Animation anim_casual_half_pauline_beat[] = {
    /* 000 */ { tram_pauline_tutorial_cel103, 4 },
    /* 001 */ { tram_pauline_tutorial_cel104, 4 },
    /* 002 */ { tram_pauline_tutorial_cel103, 30 },
    /* End */ END_ANIMATION
};

// [D_0892d214] Half-Tram - Crouch
struct Animation anim_casual_half_tram_crouch[] = {
    /* 000 */ { tram_pauline_tutorial_cel101, 2 },
    /* 001 */ { tram_pauline_tutorial_cel105, 2 },
    /* 002 */ { tram_pauline_tutorial_cel106, 2 },
    /* 003 */ { tram_pauline_tutorial_cel107, 2 },
    /* 004 */ { tram_pauline_tutorial_cel108, 2 },
    /* 005 */ { tram_pauline_tutorial_cel109, 2 },
    /* 006 */ { tram_pauline_tutorial_cel110, 20 },
    /* End */ END_ANIMATION
};

// [D_0892d254] Half-Tram - Cue Triple Tap
struct Animation anim_casual_half_tram_3cue[] = {
    /* 000 */ { tram_pauline_tutorial_cel112, 20 },
    /* 001 */ { tram_pauline_tutorial_cel113, 4 },
    /* 002 */ { tram_pauline_tutorial_cel114, 4 },
    /* 003 */ { tram_pauline_tutorial_cel115, 4 },
    /* 004 */ { tram_pauline_tutorial_cel116, 4 },
    /* 005 */ { tram_pauline_tutorial_cel117, 20 },
    /* End */ END_ANIMATION
};

// [D_0892d28c] Half-Tram - Jump
struct Animation anim_casual_half_tram_jump[] = {
    /* 000 */ { tram_pauline_tutorial_cel111, 2 },
    /* End */ END_ANIMATION
};

// [D_0892d29c] Transform to Half-Tram
struct Animation anim_casual_half_tram_transform[] = {
    /* 000 */ { tram_pauline_tutorial_cel074, 2 },
    /* 001 */ { tram_pauline_tutorial_cel074, 2 },
    /* 002 */ { tram_pauline_tutorial_cel118, 2 },
    /* 003 */ { tram_pauline_tutorial_cel119, 2 },
    /* 004 */ { tram_pauline_tutorial_cel120, 2 },
    /* 005 */ { tram_pauline_tutorial_cel121, 2 },
    /* 006 */ { tram_pauline_tutorial_cel111, 2 },
    /* 007 */ { tram_pauline_tutorial_cel111, 2 },
    /* 008 */ { tram_pauline_tutorial_cel111, 2 },
    /* 009 */ { tram_pauline_tutorial_cel111, 2 },
    /* 010 */ { tram_pauline_tutorial_cel111, 20 },
    /* End */ END_ANIMATION
};

// [D_0892d2fc] Half-Tram - Crouching Jump Tap
struct Animation anim_casual_half_tram_crouch_step[] = {
    /* 000 */ { tram_pauline_tutorial_cel122, 2 },
    /* 001 */ { tram_pauline_tutorial_cel123, 2 },
    /* 002 */ { tram_pauline_tutorial_cel124, 2 },
    /* End */ END_ANIMATION
};

// [D_0892d31c] Half-Pauline - Crouch
struct Animation anim_casual_half_pauline_crouch[] = {
    /* 000 */ { tram_pauline_tutorial_cel103, 2 },
    /* 001 */ { tram_pauline_tutorial_cel125, 2 },
    /* 002 */ { tram_pauline_tutorial_cel126, 2 },
    /* 003 */ { tram_pauline_tutorial_cel127, 2 },
    /* 004 */ { tram_pauline_tutorial_cel128, 2 },
    /* 005 */ { tram_pauline_tutorial_cel129, 2 },
    /* 006 */ { tram_pauline_tutorial_cel130, 20 },
    /* End */ END_ANIMATION
};

// [D_0892d35c] Half-Pauline - Cue Triple Tap
struct Animation anim_casual_half_pauline_3cue[] = {
    /* 000 */ { tram_pauline_tutorial_cel131, 20 },
    /* 001 */ { tram_pauline_tutorial_cel132, 4 },
    /* 002 */ { tram_pauline_tutorial_cel133, 4 },
    /* 003 */ { tram_pauline_tutorial_cel134, 4 },
    /* 004 */ { tram_pauline_tutorial_cel135, 4 },
    /* 005 */ { tram_pauline_tutorial_cel136, 20 },
    /* End */ END_ANIMATION
};

// [D_0892d394] Half-Pauline - Jump
struct Animation anim_casual_half_pauline_jump[] = {
    /* 000 */ { tram_pauline_tutorial_cel137, 2 },
    /* End */ END_ANIMATION
};

// [D_0892d3a4] Transform to Half-Pauline
struct Animation anim_casual_half_pauline_transform[] = {
    /* 000 */ { tram_pauline_tutorial_cel074, 2 },
    /* 001 */ { tram_pauline_tutorial_cel074, 2 },
    /* 002 */ { tram_pauline_tutorial_cel138, 2 },
    /* 003 */ { tram_pauline_tutorial_cel139, 2 },
    /* 004 */ { tram_pauline_tutorial_cel140, 2 },
    /* 005 */ { tram_pauline_tutorial_cel141, 2 },
    /* 006 */ { tram_pauline_tutorial_cel137, 2 },
    /* 007 */ { tram_pauline_tutorial_cel137, 2 },
    /* 008 */ { tram_pauline_tutorial_cel137, 2 },
    /* 009 */ { tram_pauline_tutorial_cel137, 2 },
    /* 010 */ { tram_pauline_tutorial_cel137, 20 },
    /* End */ END_ANIMATION
};

// [D_0892d404] Half-Pauline - Crouching Jump Tap
struct Animation anim_casual_half_pauline_crouch_step[] = {
    /* 000 */ { tram_pauline_tutorial_cel142, 2 },
    /* 001 */ { tram_pauline_tutorial_cel143, 2 },
    /* 002 */ { tram_pauline_tutorial_cel144, 2 },
    /* End */ END_ANIMATION
};
