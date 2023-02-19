#include "global.h"
#include "graphics.h"

#include "tram_pauline_anim_cells.inc.c"

// Note: Many animations/sprites seem to be initially taken from Tap Trial.

// [D_0892f520] Fox - Cue Triple Tap
struct Animation anim_circus_fox_3cue[] = {
    /* 000 */ { tram_pauline_cel004, 20 },
    /* 001 */ { tram_pauline_cel005, 4 },
    /* 002 */ { tram_pauline_cel006, 4 },
    /* 003 */ { tram_pauline_cel007, 4 },
    /* 004 */ { tram_pauline_cel008, 4 },
    /* 005 */ { tram_pauline_cel009, 20 },
    /* End */ END_ANIMATION
};

// [D_0892f558] Fox - Crouch
struct Animation anim_circus_fox_crouch[] = {
    /* 000 */ { tram_pauline_cel001, 2 },
    /* 001 */ { tram_pauline_cel010, 2 },
    /* 002 */ { tram_pauline_cel011, 2 },
    /* 003 */ { tram_pauline_cel012, 2 },
    /* 004 */ { tram_pauline_cel013, 2 },
    /* 005 */ { tram_pauline_cel014, 2 },
    /* 006 */ { tram_pauline_cel015, 20 },
    /* End */ END_ANIMATION
};

// [D_0892f598] Fox - Jump
struct Animation anim_circus_fox_jump[] = {
    /* 000 */ { tram_pauline_cel019, 2 },
    /* End */ END_ANIMATION
};

// [D_0892f5a8] Fox - Beat
struct Animation anim_circus_fox_beat[] = {
    /* 000 */ { tram_pauline_cel003, 3 },
    /* 001 */ { tram_pauline_cel002, 3 },
    /* 002 */ { tram_pauline_cel001, 24 },
    /* End */ END_ANIMATION
};

// [D_0892f5c8] Fox - Fall to Crouch
struct Animation anim_circus_fox_fall[] = {
    /* 000 */ { tram_pauline_cel018, 2 },
    /* 001 */ { tram_pauline_cel017, 2 },
    /* 002 */ { tram_pauline_cel016, 2 },
    /* 003 */ { tram_pauline_cel015, 2 },
    /* 004 */ { tram_pauline_cel014, 2 },
    /* End */ END_ANIMATION
};

// [D_0892f5f8] Fox - Crouching Jump Tap
struct Animation anim_circus_fox_crouch_step[] = {
    /* 000 */ { tram_pauline_cel024, 2 },
    /* 001 */ { tram_pauline_cel015, 2 },
    /* 002 */ { tram_pauline_cel014, 2 },
    /* End */ END_ANIMATION
};

// [D_0892f618] Shadow
struct Animation anim_circus_tram_pauline_shadow[] = {
    /* 000 */ { tram_pauline_cel026, 4 },
    /* End */ END_ANIMATION
};

// [D_0892f628] "Start to Skip" Tutorial Text
struct Animation anim_circus_tram_pauline_text_skip[] = {
    /* 000 */ { tram_pauline_cel029, 4 },
    /* End */ END_ANIMATION
};

// [D_0892f638] Trampoline
struct Animation anim_circus_tram_pauline_trampoline1[] = {
    /* 000 */ { tram_pauline_cel030, 4 },
    /* 001 */ { tram_pauline_cel031, 4 },
    /* 002 */ { tram_pauline_cel032, 4 },
    /* 003 */ { tram_pauline_cel033, 4 },
    /* 004 */ { tram_pauline_cel034, 4 },
    /* End */ END_ANIMATION
};

// [D_0892f668] Transform to Fox
struct Animation anim_circus_fox_transform[] = {
    /* 000 */ { tram_pauline_cel045, 2 },
    /* 001 */ { tram_pauline_cel044, 2 },
    /* 002 */ { tram_pauline_cel043, 2 },
    /* 003 */ { tram_pauline_cel042, 2 },
    /* 004 */ { tram_pauline_cel041, 2 },
    /* 005 */ { tram_pauline_cel040, 2 },
    /* 006 */ { tram_pauline_cel039, 2 },
    /* 007 */ { tram_pauline_cel038, 2 },
    /* 008 */ { tram_pauline_cel037, 2 },
    /* 009 */ { tram_pauline_cel036, 2 },
    /* 010 */ { tram_pauline_cel035, 20 },
    /* End */ END_ANIMATION
};

// [D_0892f6c8] Transform Effect
struct Animation anim_circus_fox_transform_effect[] = {
    /* 000 */ { tram_pauline_cel055, 2 },
    /* 001 */ { tram_pauline_cel054, 2 },
    /* 002 */ { tram_pauline_cel053, 2 },
    /* 003 */ { tram_pauline_cel052, 2 },
    /* 004 */ { tram_pauline_cel051, 2 },
    /* 005 */ { tram_pauline_cel050, 2 },
    /* 006 */ { tram_pauline_cel049, 2 },
    /* 007 */ { tram_pauline_cel048, 2 },
    /* 008 */ { tram_pauline_cel047, 2 },
    /* 009 */ { tram_pauline_cel046, 2 },
    /* End */ END_ANIMATION
};

// [D_0892f720] Tram - Beat
struct Animation anim_circus_tram_beat[] = {
    /* 000 */ { tram_pauline_cel056, 4 },
    /* 001 */ { tram_pauline_cel057, 4 },
    /* 002 */ { tram_pauline_cel056, 30 },
    /* End */ END_ANIMATION
};

// [D_0892f740] Pauline - Beat
struct Animation anim_circus_pauline_beat[] = {
    /* 000 */ { tram_pauline_cel058, 4 },
    /* 001 */ { tram_pauline_cel059, 4 },
    /* 002 */ { tram_pauline_cel058, 30 },
    /* End */ END_ANIMATION
};

// [D_0892f760] Tram - Crouch
struct Animation anim_circus_tram_crouch[] = {
    /* 000 */ { tram_pauline_cel056, 2 },
    /* 001 */ { tram_pauline_cel060, 2 },
    /* 002 */ { tram_pauline_cel061, 2 },
    /* 003 */ { tram_pauline_cel062, 2 },
    /* 004 */ { tram_pauline_cel063, 2 },
    /* 005 */ { tram_pauline_cel064, 2 },
    /* 006 */ { tram_pauline_cel065, 20 },
    /* End */ END_ANIMATION
};

// [D_0892f7a0] Tram - Cue Triple Tap
struct Animation anim_circus_tram_3cue[] = {
    /* 000 */ { tram_pauline_cel067, 20 },
    /* 001 */ { tram_pauline_cel067, 4 },
    /* 002 */ { tram_pauline_cel068, 4 },
    /* 003 */ { tram_pauline_cel069, 4 },
    /* 004 */ { tram_pauline_cel070, 4 },
    /* 005 */ { tram_pauline_cel071, 20 },
    /* End */ END_ANIMATION
};

// [D_0892f7d8] Tram - Jump
struct Animation anim_circus_tram_jump[] = {
    /* 000 */ { tram_pauline_cel066, 2 },
    /* End */ END_ANIMATION
};

// [D_0892f7e8] Transform to Tram
struct Animation anim_circus_tram_transform[] = {
    /* 000 */ { tram_pauline_cel072, 2 },
    /* 001 */ { tram_pauline_cel072, 2 },
    /* 002 */ { tram_pauline_cel073, 2 },
    /* 003 */ { tram_pauline_cel074, 2 },
    /* 004 */ { tram_pauline_cel075, 2 },
    /* 005 */ { tram_pauline_cel076, 2 },
    /* 006 */ { tram_pauline_cel066, 2 },
    /* 007 */ { tram_pauline_cel066, 2 },
    /* 008 */ { tram_pauline_cel066, 2 },
    /* 009 */ { tram_pauline_cel066, 2 },
    /* 010 */ { tram_pauline_cel066, 20 },
    /* End */ END_ANIMATION
};

// [D_0892f848] Tram - Crouching Jump Tap
struct Animation anim_circus_tram_crouch_step[] = {
    /* 000 */ { tram_pauline_cel077, 2 },
    /* 001 */ { tram_pauline_cel078, 2 },
    /* 002 */ { tram_pauline_cel079, 2 },
    /* End */ END_ANIMATION
};

// [D_0892f868] Pauline - Crouch
struct Animation anim_circus_pauline_crouch[] = {
    /* 000 */ { tram_pauline_cel058, 2 },
    /* 001 */ { tram_pauline_cel080, 2 },
    /* 002 */ { tram_pauline_cel081, 2 },
    /* 003 */ { tram_pauline_cel082, 2 },
    /* 004 */ { tram_pauline_cel083, 2 },
    /* 005 */ { tram_pauline_cel084, 2 },
    /* 006 */ { tram_pauline_cel085, 20 },
    /* End */ END_ANIMATION
};

// [D_0892f8a8] Pauline - Cue Triple Tap
struct Animation anim_circus_pauline_3cue[] = {
    /* 000 */ { tram_pauline_cel086, 20 },
    /* 001 */ { tram_pauline_cel086, 4 },
    /* 002 */ { tram_pauline_cel087, 4 },
    /* 003 */ { tram_pauline_cel088, 4 },
    /* 004 */ { tram_pauline_cel089, 4 },
    /* 005 */ { tram_pauline_cel090, 20 },
    /* End */ END_ANIMATION
};

// [D_0892f8e0] Pauline - Jump
struct Animation anim_circus_pauline_jump[] = {
    /* 000 */ { tram_pauline_cel091, 2 },
    /* End */ END_ANIMATION
};

// [D_0892f8f0] Transform to Pauline
struct Animation anim_circus_pauline_transform[] = {
    /* 000 */ { tram_pauline_cel072, 2 },
    /* 001 */ { tram_pauline_cel072, 2 },
    /* 002 */ { tram_pauline_cel092, 2 },
    /* 003 */ { tram_pauline_cel093, 2 },
    /* 004 */ { tram_pauline_cel094, 2 },
    /* 005 */ { tram_pauline_cel095, 2 },
    /* 006 */ { tram_pauline_cel091, 2 },
    /* 007 */ { tram_pauline_cel091, 2 },
    /* 008 */ { tram_pauline_cel091, 2 },
    /* 009 */ { tram_pauline_cel091, 2 },
    /* 010 */ { tram_pauline_cel091, 20 },
    /* End */ END_ANIMATION
};

// [D_0892f950] Pauline - Crouching Jump Tap
struct Animation anim_circus_pauline_crouch_step[] = {
    /* 000 */ { tram_pauline_cel096, 2 },
    /* 001 */ { tram_pauline_cel097, 2 },
    /* 002 */ { tram_pauline_cel098, 2 },
    /* End */ END_ANIMATION
};

// [D_0892f970] Half-Tram - Beat
struct Animation anim_circus_half_tram_beat[] = {
    /* 000 */ { tram_pauline_cel099, 4 },
    /* 001 */ { tram_pauline_cel100, 4 },
    /* 002 */ { tram_pauline_cel099, 30 },
    /* End */ END_ANIMATION
};

// [D_0892f990] Half-Pauline - Beat
struct Animation anim_circus_half_pauline_beat[] = {
    /* 000 */ { tram_pauline_cel101, 4 },
    /* 001 */ { tram_pauline_cel102, 4 },
    /* 002 */ { tram_pauline_cel101, 30 },
    /* End */ END_ANIMATION
};

// [D_0892f9b0] Half-Tram - Crouch
struct Animation anim_circus_half_tram_crouch[] = {
    /* 000 */ { tram_pauline_cel099, 2 },
    /* 001 */ { tram_pauline_cel103, 2 },
    /* 002 */ { tram_pauline_cel104, 2 },
    /* 003 */ { tram_pauline_cel105, 2 },
    /* 004 */ { tram_pauline_cel106, 2 },
    /* 005 */ { tram_pauline_cel107, 2 },
    /* 006 */ { tram_pauline_cel108, 20 },
    /* End */ END_ANIMATION
};

// [D_0892f9f0] Half-Tram - Cue Triple Tap
struct Animation anim_circus_half_tram_3cue[] = {
    /* 000 */ { tram_pauline_cel110, 20 },
    /* 001 */ { tram_pauline_cel111, 4 },
    /* 002 */ { tram_pauline_cel112, 4 },
    /* 003 */ { tram_pauline_cel113, 4 },
    /* 004 */ { tram_pauline_cel114, 4 },
    /* 005 */ { tram_pauline_cel115, 20 },
    /* End */ END_ANIMATION
};

// [D_0892fa28] Half-Tram - Jump
struct Animation anim_circus_half_tram_jump[] = {
    /* 000 */ { tram_pauline_cel109, 2 },
    /* End */ END_ANIMATION
};

// [D_0892fa38] Transform to Half-Tram
struct Animation anim_circus_half_tram_transform[] = {
    /* 000 */ { tram_pauline_cel072, 2 },
    /* 001 */ { tram_pauline_cel072, 2 },
    /* 002 */ { tram_pauline_cel116, 2 },
    /* 003 */ { tram_pauline_cel117, 2 },
    /* 004 */ { tram_pauline_cel118, 2 },
    /* 005 */ { tram_pauline_cel119, 2 },
    /* 006 */ { tram_pauline_cel109, 2 },
    /* 007 */ { tram_pauline_cel109, 2 },
    /* 008 */ { tram_pauline_cel109, 2 },
    /* 009 */ { tram_pauline_cel109, 2 },
    /* 010 */ { tram_pauline_cel109, 20 },
    /* End */ END_ANIMATION
};

// [D_0892fa98] Half-Tram - Crouching Jump Tap
struct Animation anim_circus_half_tram_crouch_step[] = {
    /* 000 */ { tram_pauline_cel120, 2 },
    /* 001 */ { tram_pauline_cel121, 2 },
    /* 002 */ { tram_pauline_cel122, 2 },
    /* End */ END_ANIMATION
};

// [D_0892fab8] Half-Pauline - Crouch
struct Animation anim_circus_half_pauline_crouch[] = {
    /* 000 */ { tram_pauline_cel101, 2 },
    /* 001 */ { tram_pauline_cel123, 2 },
    /* 002 */ { tram_pauline_cel124, 2 },
    /* 003 */ { tram_pauline_cel125, 2 },
    /* 004 */ { tram_pauline_cel126, 2 },
    /* 005 */ { tram_pauline_cel127, 2 },
    /* 006 */ { tram_pauline_cel128, 20 },
    /* End */ END_ANIMATION
};

// [D_0892faf8] Half-Pauline - Cue Triple Tap
struct Animation anim_circus_half_pauline_3cue[] = {
    /* 000 */ { tram_pauline_cel129, 20 },
    /* 001 */ { tram_pauline_cel130, 4 },
    /* 002 */ { tram_pauline_cel131, 4 },
    /* 003 */ { tram_pauline_cel132, 4 },
    /* 004 */ { tram_pauline_cel133, 4 },
    /* 005 */ { tram_pauline_cel134, 20 },
    /* End */ END_ANIMATION
};

// [D_0892fb30] Half-Pauline - Jump
struct Animation anim_circus_half_pauline_jump[] = {
    /* 000 */ { tram_pauline_cel135, 2 },
    /* End */ END_ANIMATION
};

// [D_0892fb40] Transform to Half-Pauline
struct Animation anim_circus_half_pauline_transform[] = {
    /* 000 */ { tram_pauline_cel072, 2 },
    /* 001 */ { tram_pauline_cel072, 2 },
    /* 002 */ { tram_pauline_cel136, 2 },
    /* 003 */ { tram_pauline_cel137, 2 },
    /* 004 */ { tram_pauline_cel138, 2 },
    /* 005 */ { tram_pauline_cel139, 2 },
    /* 006 */ { tram_pauline_cel135, 2 },
    /* 007 */ { tram_pauline_cel135, 2 },
    /* 008 */ { tram_pauline_cel135, 2 },
    /* 009 */ { tram_pauline_cel135, 2 },
    /* 010 */ { tram_pauline_cel135, 20 },
    /* End */ END_ANIMATION
};

// [D_0892fba0] Half-Pauline - Crouching Jump Tap
struct Animation anim_circus_half_pauline_crouch_step[] = {
    /* 000 */ { tram_pauline_cel140, 2 },
    /* 001 */ { tram_pauline_cel141, 2 },
    /* 002 */ { tram_pauline_cel142, 2 },
    /* End */ END_ANIMATION
};

// [D_0892fbc0] Fox - Stumble
struct Animation anim_circus_fox_stumble[] = {
    /* 000 */ { tram_pauline_cel143, 3 },
    /* 001 */ { tram_pauline_cel144, 3 },
    /* 002 */ { tram_pauline_cel145, 3 },
    /* 003 */ { tram_pauline_cel144, 3 },
    /* End */ END_ANIMATION
};

// [D_0892fbe8] Fox - Silly "Yikes!"-sort of Expression
struct Animation anim_circus_fox_goof[] = {
    /* 000 */ { tram_pauline_cel148, 3 },
    /* 001 */ { tram_pauline_cel147, 3 },
    /* 002 */ { tram_pauline_cel146, 24 },
    /* End */ END_ANIMATION
};

// [D_0892fc08] Trampoline (Greater Vertical Bounce Mat Stretch)
struct Animation anim_circus_tram_pauline_trampoline2[] = {
    /* 000 */ { tram_pauline_cel150, 4 },
    /* 001 */ { tram_pauline_cel031, 4 },
    /* 002 */ { tram_pauline_cel032, 4 },
    /* 003 */ { tram_pauline_cel033, 4 },
    /* 004 */ { tram_pauline_cel149, 4 },
    /* End */ END_ANIMATION
};

// [D_0892fc38] Fox - Twitch
struct Animation anim_circus_fox_twitch[] = {
    /* 000 */ { tram_pauline_cel003, 6 },
    /* 001 */ { tram_pauline_cel151, 6 },
    /* 002 */ { tram_pauline_cel152, 6 },
    /* End */ END_ANIMATION
};
