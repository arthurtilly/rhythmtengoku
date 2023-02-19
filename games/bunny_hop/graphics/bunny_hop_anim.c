#include "global.h"
#include "graphics.h"

#include "bunny_hop_anim_cells.inc.c"

// [D_088f8ce0] Bunny - Hop
struct Animation anim_bunny_hop_jump[] = {
    /* 000 */ { bunny_hop_cel003, 4 },
    /* 001 */ { bunny_hop_cel004, 2 },
    /* 002 */ { bunny_hop_cel005, 12 },
    /* 003 */ { bunny_hop_cel006, 12 },
    /* End */ END_ANIMATION
};

// [D_088f8d08] Bunny - Run
struct Animation anim_bunny_hop_run[] = {
    /* 000 */ { bunny_hop_cel000, 6 },
    /* 001 */ { bunny_hop_cel001, 6 },
    /* 002 */ { bunny_hop_cel002, 6 },
    /* End */ END_ANIMATION
};

// [D_088f8d28] Turtle
struct Animation anim_bunny_hop_1beat_turtle[] = {
    /* 000 */ { bunny_hop_cel011, 12 },
    /* 001 */ { bunny_hop_cel012, 12 },
    /* End */ END_ANIMATION
};

// [D_088f8d40] Whale (Wait 2 Beats)
struct Animation anim_bunny_hop_2beat_whale[] = {
    /* 000 */ { bunny_hop_cel013, 12 },
    /* 001 */ { bunny_hop_cel014, 12 },
    /* End */ END_ANIMATION
};

// [D_088f8d58] Whale (Upright, Beat 2)
struct Animation anim_bunny_hop_1beat_whale[] = {
    /* 000 */ { bunny_hop_cel015, 16 },
    /* 001 */ { bunny_hop_cel016, 16 },
    /* End */ END_ANIMATION
};

// [D_088f8d70] Whale Tail (Wait 4 Beats)
struct Animation anim_bunny_hop_4beat_whale[] = {
    /* 000 */ { bunny_hop_cel025, 12 },
    /* 001 */ { bunny_hop_cel026, 12 },
    /* End */ END_ANIMATION
};

// [D_088f8d88] Whale Tail Bounce (Wait 4 Beats)
struct Animation anim_bunny_hop_4beat_whale_bounce[] = {
    /* 000 */ { bunny_hop_cel027, 32 },
    /* 001 */ { bunny_hop_cel026, 2 },
    /* 002 */ { bunny_hop_cel028, 2 },
    /* 003 */ { bunny_hop_cel029, 1 },
    /* 004 */ { bunny_hop_cel030, 2 },
    /* 005 */ { bunny_hop_cel029, 3 },
    /* 006 */ { bunny_hop_cel030, 4 },
    /* 007 */ { bunny_hop_cel029, 8 },
    /* 008 */ { bunny_hop_cel030, 12 },
    /* 009 */ { bunny_hop_cel029, 127 },
    /* End */ END_ANIMATION
};

// [D_088f8de0] Whale (Final)
struct Animation anim_bunny_hop_last_whale[] = {
    /* 000 */ { bunny_hop_cel031, 12 },
    /* 001 */ { bunny_hop_cel032, 12 },
    /* End */ END_ANIMATION
};

// [D_088f8df8] Whale (Final) Spout Start
struct Animation anim_bunny_hop_water_spout_start[] = {
    /* 000 */ { bunny_hop_cel033, 3 },
    /* 001 */ { bunny_hop_cel034, 2 },
    /* 002 */ { bunny_hop_cel035, 1 },
    /* 003 */ { bunny_hop_cel036, 1 },
    /* 004 */ { bunny_hop_cel037, 1 },
    /* 005 */ { bunny_hop_cel039, 1 },
    /* End */ END_ANIMATION
};

// [D_088f8e30] Whale (Final) Spout Loop
struct Animation anim_bunny_hop_water_spout_loop[] = {
    /* 000 */ { bunny_hop_cel039, 4 },
    /* 001 */ { bunny_hop_cel040, 4 },
    /* End */ END_ANIMATION
};

// [D_088f8e48] Water Splash
struct Animation anim_bunny_hop_splash[] = {
    /* 000 */ { bunny_hop_cel041, 4 },
    /* 001 */ { bunny_hop_cel042, 4 },
    /* 002 */ { bunny_hop_cel043, 4 },
    /* 003 */ { bunny_hop_cel044, 4 },
    /* 004 */ { bunny_hop_cel045, 4 },
    /* 005 */ { bunny_hop_cel046, 4 },
    /* 006 */ { bunny_hop_cel047, 4 },
    /* 007 */ { bunny_hop_cel048, 4 },
    /* 008 */ { bunny_hop_cel049, 4 },
    /* 009 */ { bunny_hop_cel050, 2 },
    /* 010 */ { bunny_hop_cel051, 2 },
    /* 011 */ { bunny_hop_cel052, 2 },
    /* 012 */ { bunny_hop_cel053, 2 },
    /* End */ END_ANIMATION
};

// [D_088f8eb8] Water Particle
struct Animation anim_bunny_hop_splash_particle[] = {
    /* 000 */ { bunny_hop_cel054, 4 },
    /* 001 */ { bunny_hop_cel055, 4 },
    /* End */ END_ANIMATION
};

// [D_088f8ed0] Clouds
struct Animation anim_bunny_hop_cloud[] = {
    /* 000 */ { bunny_hop_cel056, 127 },
    /* 001 */ { bunny_hop_cel057, 127 },
    /* End */ END_ANIMATION
};

// [D_088f8ee8] Button Icons
struct Animation anim_bunny_hop_button_icons[] = {
    /* 000 */ { bunny_hop_cel058, 6 },
    /* 001 */ { bunny_hop_cel059, 6 },
    /* End */ END_ANIMATION
};

// [D_088f8f00] Bunny - Miss
struct Animation anim_bunny_hop_miss[] = {
    /* 000 */ { bunny_hop_cel009, 4 },
    /* 001 */ { bunny_hop_cel010, 4 },
    /* End */ END_ANIMATION
};

// [D_088f8f18] Whale Bounce (Wait 8 Beats)
struct Animation anim_bunny_hop_8beat_whale_bounce[] = {
    /* 000 */ { bunny_hop_cel017, 32 },
    /* 001 */ { bunny_hop_cel019, 2 },
    /* 002 */ { bunny_hop_cel020, 2 },
    /* 003 */ { bunny_hop_cel024, 3 },
    /* 004 */ { bunny_hop_cel021, 6 },
    /* 005 */ { bunny_hop_cel024, 9 },
    /* 006 */ { bunny_hop_cel022, 12 },
    /* 007 */ { bunny_hop_cel024, 16 },
    /* 008 */ { bunny_hop_cel022, 20 },
    /* 009 */ { bunny_hop_cel024, 111 },
    /* End */ END_ANIMATION
};

// [D_088f8f70] Moon
struct Animation anim_bunny_hop_moon[] = {
    /* 000 */ { bunny_hop_cel060, 64 },
    /* 001 */ { bunny_hop_cel061, 64 },
    /* End */ END_ANIMATION
};

// [D_088f8f88] Whale (Wait 8 Beats)
struct Animation anim_bunny_hop_8beat_whale[] = {
    /* 000 */ { bunny_hop_cel017, 12 },
    /* 001 */ { bunny_hop_cel018, 12 },
    /* End */ END_ANIMATION
};

// [D_088f8fa0] Sparkle
struct Animation anim_bunny_hop_sparkle[] = {
    /* 000 */ { bunny_hop_cel063, 5 },
    /* 001 */ { bunny_hop_cel064, 5 },
    /* End */ END_ANIMATION
};

// [D_088f8fb8] Bunny - Eyes Closed (Unused)
struct Animation anim_bunny_hop_unused[] = {
    /* 000 */ { bunny_hop_cel007, 3 },
    /* End */ END_ANIMATION
};
