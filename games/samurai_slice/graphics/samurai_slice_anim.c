#include "global.h"
#include "graphics.h"

#include "samurai_slice_anim_cells.inc.c"

// [D_088eb804] Samurai - Beat (Low Power)
struct Animation anim_samurai_beat_1[] = {
    /* 000 */ { samurai_slice_cel020, 4 },
    /* 001 */ { samurai_slice_cel019, 3 },
    /* 002 */ { samurai_slice_cel018, 3 },
    /* 003 */ { samurai_slice_cel017, 30 },
    /* End */ END_ANIMATION
};

// [D_088eb82c] Samurai - Beat (Mid. Power)
struct Animation anim_samurai_beat_2[] = {
    /* 000 */ { samurai_slice_cel031, 4 },
    /* 001 */ { samurai_slice_cel030, 3 },
    /* 002 */ { samurai_slice_cel028, 3 },
    /* 003 */ { samurai_slice_cel029, 30 },
    /* End */ END_ANIMATION
};

// [D_088eb854] Samurai - Beat (Full Power)
struct Animation anim_samurai_beat_3[] = {
    /* 000 */ { samurai_slice_cel043, 4 },
    /* 001 */ { samurai_slice_cel042, 3 },
    /* 002 */ { samurai_slice_cel041, 3 },
    /* 003 */ { samurai_slice_cel040, 30 },
    /* End */ END_ANIMATION
};

// [D_088eb87c] Flames
struct Animation anim_samurai_flames[] = {
    /* 000 */ { samurai_slice_cel000, 6 },
    /* 001 */ { samurai_slice_cel002, 6 },
    /* 002 */ { samurai_slice_cel001, 6 },
    /* End */ END_ANIMATION
};

// [D_088eb89c] Samurai - Slice (Low Power)
struct Animation anim_samurai_slice_1[] = {
    /* 000 */ { samurai_slice_cel020, 64 },
    /* 001 */ { samurai_slice_cel021, 2 },
    /* 002 */ { samurai_slice_cel022, 1 },
    /* 003 */ { samurai_slice_cel023, 1 },
    /* 004 */ { samurai_slice_cel022, 6 },
    /* 005 */ { samurai_slice_cel024, 1 },
    /* 006 */ { samurai_slice_cel025, 1 },
    /* 007 */ { samurai_slice_cel026, 1 },
    /* 008 */ { samurai_slice_cel027, 1 },
    /* End */ END_ANIMATION
};

// [D_088eb8ec] Samurai - Slice (Mid. Power)
struct Animation anim_samurai_slice_2[] = {
    /* 000 */ { samurai_slice_cel030, 64 },
    /* 001 */ { samurai_slice_cel033, 2 },
    /* 002 */ { samurai_slice_cel034, 1 },
    /* 003 */ { samurai_slice_cel035, 1 },
    /* 004 */ { samurai_slice_cel034, 1 },
    /* 005 */ { samurai_slice_cel035, 1 },
    /* 006 */ { samurai_slice_cel034, 4 },
    /* 007 */ { samurai_slice_cel036, 1 },
    /* 008 */ { samurai_slice_cel037, 1 },
    /* 009 */ { samurai_slice_cel038, 1 },
    /* 010 */ { samurai_slice_cel039, 1 },
    /* End */ END_ANIMATION
};

// [D_088eb94c] Samurai - Slice (Full Power)
struct Animation anim_samurai_slice_3[] = {
    /* 000 */ { samurai_slice_cel042, 64 },
    /* 001 */ { samurai_slice_cel044, 2 },
    /* 002 */ { samurai_slice_cel045, 1 },
    /* 003 */ { samurai_slice_cel046, 1 },
    /* 004 */ { samurai_slice_cel045, 1 },
    /* 005 */ { samurai_slice_cel046, 1 },
    /* 006 */ { samurai_slice_cel045, 1 },
    /* 007 */ { samurai_slice_cel046, 1 },
    /* 008 */ { samurai_slice_cel045, 1 },
    /* 009 */ { samurai_slice_cel046, 1 },
    /* 010 */ { samurai_slice_cel047, 1 },
    /* 011 */ { samurai_slice_cel048, 1 },
    /* 012 */ { samurai_slice_cel049, 1 },
    /* 013 */ { samurai_slice_cel050, 1 },
    /* End */ END_ANIMATION
};

// [D_088eb9c4] Samurai - Hurt
struct Animation anim_samurai_hurt[] = {
    /* 000 */ { samurai_slice_cel051, 2 },
    /* 001 */ { samurai_slice_cel052, 32 },
    /* End */ END_ANIMATION
};

// [D_088eb9dc] Slice Effect
struct Animation anim_samurai_slice_effect[] = {
    /* 000 */ { samurai_slice_cel088, 1 },
    /* 001 */ { samurai_slice_cel089, 4 },
    /* 002 */ { samurai_slice_cel090, 2 },
    /* End */ END_ANIMATION
};

// [D_088eb9fc] Small Demon - Hop
struct Animation anim_small_demon_hop[] = {
    /* 000 */ { samurai_slice_cel070, 8 },
    /* 001 */ { samurai_slice_cel067, 2 },
    /* 002 */ { samurai_slice_cel068, 4 },
    /* 003 */ { samurai_slice_cel069, 4 },
    /* End */ END_ANIMATION
};

// [D_088eba24] Small Demon - Hit (Mask)
struct Animation anim_small_demon_hit[] = {
    /* 000 */ { samurai_slice_cel078, 4 },
    /* End */ END_ANIMATION
};

// [D_088eba34] Small Demon - Barely
struct Animation anim_small_demon_barely[] = {
    /* 000 */ { samurai_slice_cel076, 4 },
    /* End */ END_ANIMATION
};

// [D_088eba44] Demon Shadow
struct Animation anim_demon_shadow[] = {
    /* 000 */ { samurai_slice_cel080, 4 },
    /* End */ END_ANIMATION
};

// [D_088eba54] Medium Demon - Hop
struct Animation anim_med_demon_hop[] = {
    /* 000 */ { samurai_slice_cel058, 8 },
    /* 001 */ { samurai_slice_cel053, 2 },
    /* 002 */ { samurai_slice_cel054, 4 },
    /* 003 */ { samurai_slice_cel055, 4 },
    /* End */ END_ANIMATION
};

// [D_088eba7c] Medium Demon - Hit (Mask)
struct Animation anim_med_demon_hit[] = {
    /* 000 */ { samurai_slice_cel064, 8 },
    /* End */ END_ANIMATION
};

// [D_088eba8c] Medium Demon - Barely
struct Animation anim_med_demon_barely[] = {
    /* 000 */ { samurai_slice_cel056, 4 },
    /* End */ END_ANIMATION
};

// [D_088eba9c] Propeller Demon - Hover
struct Animation anim_propeller_demon_hover[] = {
    /* 000 */ { samurai_slice_cel071, 3 },
    /* 001 */ { samurai_slice_cel072, 3 },
    /* 002 */ { samurai_slice_cel073, 3 },
    /* 003 */ { samurai_slice_cel074, 3 },
    /* 004 */ { samurai_slice_cel075, 3 },
    /* End */ END_ANIMATION
};

// [D_088ebacc] Propeller Demon - Hit (Propeller)
struct Animation anim_propeller_demon_hit[] = {
    /* 000 */ { samurai_slice_cel079, 4 },
    /* End */ END_ANIMATION
};

// [D_088ebadc] Propeller Demon - Barely
struct Animation anim_propeller_demon_barely[] = {
    /* 000 */ { samurai_slice_cel077, 4 },
    /* End */ END_ANIMATION
};

// [D_088ebaec] Winged Demon - Fly
struct Animation anim_winged_demon_fly[] = {
    /* 000 */ { samurai_slice_cel059, 6 },
    /* 001 */ { samurai_slice_cel060, 4 },
    /* 002 */ { samurai_slice_cel061, 4 },
    /* 003 */ { samurai_slice_cel062, 3 },
    /* 004 */ { samurai_slice_cel063, 2 },
    /* End */ END_ANIMATION
};

// [D_088ebb1c] Winged Demon - Fly (Cut-Off Halfway)
struct Animation anim_winged_demon_fly_half[] = {
    /* 000 */ { samurai_slice_cel059, 6 },
    /* 001 */ { samurai_slice_cel060, 4 },
    /* 002 */ { samurai_slice_cel061, 64 },
    /* End */ END_ANIMATION
};

// [D_088ebb3c] Winged Demon - Hit
struct Animation anim_winged_demon_hit[] = {
    /* 000 */ { samurai_slice_cel065, 4 },
    /* End */ END_ANIMATION
};

// [D_088ebb4c] Winged Demon - Barely
struct Animation anim_winged_demon_barely[] = {
    /* 000 */ { samurai_slice_cel057, 4 },
    /* End */ END_ANIMATION
};

// [D_088ebb5c] Large Demon - Walk
struct Animation anim_large_demon_walk[] = {
    /* 000 */ { samurai_slice_cel084, 12 },
    /* 001 */ { samurai_slice_cel085, 12 },
    /* End */ END_ANIMATION
};

// [D_088ebb74] Large Demon Shadow
struct Animation anim_large_demon_shadow[] = {
    /* 000 */ { samurai_slice_cel087, 4 },
    /* End */ END_ANIMATION
};

// [D_088ebb84] Large Demon - Hit (Upper Half)
struct Animation anim_large_demon_hit1[] = {
    /* 000 */ { samurai_slice_cel082, 8 },
    /* End */ END_ANIMATION
};

// [D_088ebb94] Large Demon - Hit (Lower Half)
struct Animation anim_large_demon_hit2[] = {
    /* 000 */ { samurai_slice_cel083, 8 },
    /* End */ END_ANIMATION
};

// [D_088ebba4] Large Demon - Barely
struct Animation anim_large_demon_barely[] = {
    /* 000 */ { samurai_slice_cel086, 4 },
    /* End */ END_ANIMATION
};

// [D_088ebbb4] Demon - Hit (Lower Half)
struct Animation anim_demon_hurt[] = {
    /* 000 */ { samurai_slice_cel066, 4 },
    /* End */ END_ANIMATION
};

// [D_088ebbc4] Demon Chain (Unused)
struct Animation anim_demon_chain_walk[] = {
    /* 000 */ { samurai_slice_cel091, 12 },
    /* 001 */ { samurai_slice_cel092, 12 },
    /* End */ END_ANIMATION
};

// [D_088ebbdc] Samurai - Look Up
struct Animation anim_samurai_finish1[] = {
    /* 000 */ { samurai_slice_cel028, 4 },
    /* 001 */ { samurai_slice_cel017, 4 },
    /* End */ END_ANIMATION
};

// [D_088ebbf4] Samurai - Breathe
struct Animation anim_samurai_finish2[] = {
    /* 000 */ { samurai_slice_cel003, 2 },
    /* 001 */ { samurai_slice_cel004, 2 },
    /* 002 */ { samurai_slice_cel005, 2 },
    /* 003 */ { samurai_slice_cel006, 2 },
    /* 004 */ { samurai_slice_cel007, 4 },
    /* 005 */ { samurai_slice_cel008, 4 },
    /* 006 */ { samurai_slice_cel009, 4 },
    /* 007 */ { samurai_slice_cel010, 4 },
    /* 008 */ { samurai_slice_cel011, 4 },
    /* 009 */ { samurai_slice_cel012, 4 },
    /* 010 */ { samurai_slice_cel013, 4 },
    /* 011 */ { samurai_slice_cel014, 4 },
    /* 012 */ { samurai_slice_cel015, 4 },
    /* 013 */ { samurai_slice_cel016, 32 },
    /* 014 */ { samurai_slice_cel004, 127 },
    /* End */ END_ANIMATION
};
