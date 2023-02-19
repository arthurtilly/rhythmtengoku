#include "global.h"
#include "graphics.h"

#include "rat_race_anim_cells.inc.c"

// [D_088fdf9c] Rat - Run
struct Animation anim_rat_run[] = {
    /* 000 */ { rat_race_cel000, 2 },
    /* 001 */ { rat_race_cel001, 2 },
    /* 002 */ { rat_race_cel002, 2 },
    /* 003 */ { rat_race_cel003, 2 },
    /* End */ END_ANIMATION
};

// [D_088fdfc4] Rat - Stop
struct Animation anim_rat_stop[] = {
    /* 000 */ { rat_race_cel039, 4 },
    /* 001 */ { rat_race_cel020, 4 },
    /* End */ END_ANIMATION
};

// [D_088fdfdc] Rat - Duck
struct Animation anim_rat_duck[] = {
    /* 000 */ { rat_race_cel006, 4 },
    /* End */ END_ANIMATION
};

// [D_088fdfec] Rat - Bump Into Rat
struct Animation anim_rat_collide_run[] = {
    /* 000 */ { rat_race_cel007, 4 },
    /* 001 */ { rat_race_cel008, 4 },
    /* 002 */ { rat_race_cel009, 2 },
    /* 003 */ { rat_race_cel010, 2 },
    /* 004 */ { rat_race_cel011, 2 },
    /* 005 */ { rat_race_cel012, 2 },
    /* 006 */ { rat_race_cel013, 3 },
    /* 007 */ { rat_race_cel014, 4 },
    /* 008 */ { rat_race_cel015, 1 },
    /* 009 */ { rat_race_cel016, 1 },
    /* 010 */ { rat_race_cel017, 1 },
    /* 011 */ { rat_race_cel018, 1 },
    /* 012 */ { rat_race_cel019, 1 },
    /* End */ END_ANIMATION
};

// [D_088fe05c] Rat - Bumped By Rat
struct Animation anim_rat_collide_stop[] = {
    /* 000 */ { rat_race_cel039, 2 },
    /* 001 */ { rat_race_cel021, 2 },
    /* 002 */ { rat_race_cel022, 2 },
    /* 003 */ { rat_race_cel023, 3 },
    /* 004 */ { rat_race_cel024, 2 },
    /* 005 */ { rat_race_cel025, 1 },
    /* 006 */ { rat_race_cel026, 1 },
    /* 007 */ { rat_race_cel027, 1 },
    /* 008 */ { rat_race_cel028, 1 },
    /* 009 */ { rat_race_cel029, 1 },
    /* 010 */ { rat_race_cel030, 1 },
    /* 011 */ { rat_race_cel031, 2 },
    /* 012 */ { rat_race_cel076, 2 },
    /* 013 */ { rat_race_cel077, 2 },
    /* 014 */ { rat_race_cel078, 2 },
    /* End */ END_ANIMATION
};

// [D_088fe0dc] Rat - Prepare Dash
struct Animation anim_rat_prepare_dash[] = {
    /* 000 */ { rat_race_cel040, 2 },
    /* 001 */ { rat_race_cel041, 30 },
    /* End */ END_ANIMATION
};

// [D_088fe0f4] Rat - Cheer (In Place)
struct Animation anim_rat_cheer[] = {
    /* 000 */ { rat_race_cel068, 2 },
    /* 001 */ { rat_race_cel069, 2 },
    /* 002 */ { rat_race_cel070, 2 },
    /* 003 */ { rat_race_cel071, 2 },
    /* 004 */ { rat_race_cel068, 2 },
    /* 005 */ { rat_race_cel069, 2 },
    /* 006 */ { rat_race_cel070, 2 },
    /* 007 */ { rat_race_cel071, 2 },
    /* 008 */ { rat_race_cel068, 2 },
    /* 009 */ { rat_race_cel069, 2 },
    /* 010 */ { rat_race_cel070, 2 },
    /* 011 */ { rat_race_cel071, 2 },
    /* 012 */ { rat_race_cel068, 2 },
    /* 013 */ { rat_race_cel069, 2 },
    /* 014 */ { rat_race_cel070, 2 },
    /* 015 */ { rat_race_cel071, 2 },
    /* End */ END_ANIMATION
};

// [D_088fe17c] Rat - Angry (Bumped from Ahead, Running)
struct Animation anim_rat_angry_run_l[] = {
    /* 000 */ { rat_race_cel060, 2 },
    /* 001 */ { rat_race_cel061, 2 },
    /* 002 */ { rat_race_cel062, 2 },
    /* 003 */ { rat_race_cel063, 2 },
    /* 004 */ { rat_race_cel060, 2 },
    /* 005 */ { rat_race_cel061, 2 },
    /* 006 */ { rat_race_cel062, 2 },
    /* 007 */ { rat_race_cel063, 2 },
    /* End */ END_ANIMATION
};

// [D_088fe1c4] Rat - Angry (Bumped from Behind, Running)
struct Animation anim_rat_angry_run_r[] = {
    /* 000 */ { rat_race_cel064, 2 },
    /* 001 */ { rat_race_cel065, 2 },
    /* 002 */ { rat_race_cel066, 2 },
    /* 003 */ { rat_race_cel067, 2 },
    /* 004 */ { rat_race_cel064, 2 },
    /* 005 */ { rat_race_cel065, 2 },
    /* 006 */ { rat_race_cel066, 2 },
    /* 007 */ { rat_race_cel067, 2 },
    /* End */ END_ANIMATION
};

// [D_088fe20c] Rat - Angry (Bumped from Behind, Sitting)
struct Animation anim_rat_angry_stop_r[] = {
    /* 000 */ { rat_race_cel072, 2 },
    /* 001 */ { rat_race_cel073, 2 },
    /* 002 */ { rat_race_cel074, 2 },
    /* 003 */ { rat_race_cel075, 2 },
    /* 004 */ { rat_race_cel072, 2 },
    /* 005 */ { rat_race_cel073, 2 },
    /* 006 */ { rat_race_cel074, 2 },
    /* 007 */ { rat_race_cel075, 2 },
    /* End */ END_ANIMATION
};

// [D_088fe254] Rat - Cheer (Full Animation)
struct Animation anim_rat_cheer_full[] = {
    /* 000 */ { rat_race_cel089, 2 },
    /* 001 */ { rat_race_cel090, 2 },
    /* 002 */ { rat_race_cel091, 2 },
    /* 003 */ { rat_race_cel092, 2 },
    /* 004 */ { rat_race_cel093, 2 },
    /* 005 */ { rat_race_cel094, 4 },
    /* 006 */ { rat_race_cel095, 4 },
    /* 007 */ { rat_race_cel094, 4 },
    /* 008 */ { rat_race_cel095, 4 },
    /* 009 */ { rat_race_cel094, 4 },
    /* 010 */ { rat_race_cel095, 4 },
    /* 011 */ { rat_race_cel094, 4 },
    /* 012 */ { rat_race_cel095, 4 },
    /* 013 */ { rat_race_cel096, 2 },
    /* 014 */ { rat_race_cel097, 2 },
    /* 015 */ { rat_race_cel098, 2 },
    /* 016 */ { rat_race_cel099, 2 },
    /* 017 */ { rat_race_cel100, 2 },
    /* 018 */ { rat_race_cel101, 2 },
    /* 019 */ { rat_race_cel102, 4 },
    /* 020 */ { rat_race_cel103, 4 },
    /* 021 */ { rat_race_cel102, 4 },
    /* 022 */ { rat_race_cel103, 4 },
    /* 023 */ { rat_race_cel102, 4 },
    /* 024 */ { rat_race_cel103, 4 },
    /* 025 */ { rat_race_cel102, 4 },
    /* 026 */ { rat_race_cel103, 4 },
    /* End */ END_ANIMATION
};

// [D_088fe334] Sweat Particles Spanning Whole Group (Unused)
struct Animation anim_rat_fear_particles_all[] = {
    /* 000 */ { rat_race_cel036, 4 },
    /* 001 */ { rat_race_cel079, 4 },
    /* 002 */ { rat_race_cel080, 4 },
    /* 003 */ { rat_race_cel081, 4 },
    /* 004 */ { rat_race_cel082, 4 },
    /* 005 */ { rat_race_cel083, 4 },
    /* 006 */ { rat_race_cel084, 4 },
    /* 007 */ { rat_race_cel085, 4 },
    /* 008 */ { rat_race_cel086, 4 },
    /* End */ END_ANIMATION
};

// [D_088fe384] Sweat Particles (Barely)
struct Animation anim_rat_fear_particles_barely[] = {
    /* 000 */ { rat_race_cel107, 3 },
    /* 001 */ { rat_race_cel108, 3 },
    /* 002 */ { rat_race_cel109, 3 },
    /* End */ END_ANIMATION
};

// [D_088fe3a4] Sweat Particles (Not Hidden)
struct Animation anim_rat_fear_particles_miss[] = {
    /* 000 */ { rat_race_cel110, 4 },
    /* 001 */ { rat_race_cel111, 4 },
    /* 002 */ { rat_race_cel112, 4 },
    /* 003 */ { rat_race_cel113, 4 },
    /* 004 */ { rat_race_cel114, 4 },
    /* End */ END_ANIMATION
};

// [D_088fe3d4] Cat - Pupils
struct Animation anim_cat_pupils[] = {
    /* 000 */ { rat_race_cel115, 10 },
    /* 001 */ { rat_race_cel116, 1 },
    /* 002 */ { rat_race_cel117, 1 },
    /* 003 */ { rat_race_cel118, 1 },
    /* 004 */ { rat_race_cel119, 10 },
    /* 005 */ { rat_race_cel120, 1 },
    /* 006 */ { rat_race_cel121, 1 },
    /* 007 */ { rat_race_cel122, 1 },
    /* 008 */ { rat_race_cel123, 10 },
    /* End */ END_ANIMATION
};

// [D_088fe424] Cat - Eyelids
struct Animation anim_cat_eyelids[] = {
    /* 000 */ { rat_race_cel127, 2 },
    /* 001 */ { rat_race_cel126, 2 },
    /* 002 */ { rat_race_cel125, 2 },
    /* 003 */ { rat_race_cel124, 2 },
    /* 004 */ { rat_race_cel125, 2 },
    /* 005 */ { rat_race_cel126, 2 },
    /* 006 */ { rat_race_cel127, 2 },
    /* End */ END_ANIMATION
};

// [D_088fe464] Cat - Paw
struct Animation anim_cat_paw[] = {
    /* 000 */ { rat_race_cel128, 2 },
    /* 001 */ { rat_race_cel129, 2 },
    /* 002 */ { rat_race_cel130, 2 },
    /* 003 */ { rat_race_cel131, 64 },
    /* End */ END_ANIMATION
};

// [D_088fe48c] Crockery - Various
struct Animation anim_rat_race_crockery[] = {
    /* 000 */ { rat_race_cel032, 4 },
    /* 001 */ { rat_race_cel035, 4 },
    /* End */ END_ANIMATION
};

// [D_088fe4a4] Crockery - Stacked Plates (3, 2, 1)
struct Animation anim_rat_race_plates[] = {
    /* 000 */ { rat_race_cel032, 2 },
    /* 001 */ { rat_race_cel033, 4 },
    /* 002 */ { rat_race_cel034, 4 },
    /* End */ END_ANIMATION
};

// [D_088fe4c4] Speech Bubble (Front Rat)
struct Animation anim_rat_text_bubble_r[] = {
    /* 000 */ { rat_race_cel044, 2 },
    /* 001 */ { rat_race_cel045, 1 },
    /* 002 */ { rat_race_cel046, 1 },
    /* 003 */ { rat_race_cel047, 1 },
    /* 004 */ { rat_race_cel048, 1 },
    /* 005 */ { rat_race_cel049, 1 },
    /* 006 */ { rat_race_cel050, 1 },
    /* 007 */ { rat_race_cel051, 1 },
    /* End */ END_ANIMATION
};

// [D_088fe50c] Speech Bubble (Back Rat)
struct Animation anim_rat_text_bubble_l[] = {
    /* 000 */ { rat_race_cel052, 2 },
    /* 001 */ { rat_race_cel053, 1 },
    /* 002 */ { rat_race_cel054, 1 },
    /* 003 */ { rat_race_cel055, 1 },
    /* 004 */ { rat_race_cel056, 1 },
    /* 005 */ { rat_race_cel057, 1 },
    /* 006 */ { rat_race_cel058, 1 },
    /* 007 */ { rat_race_cel059, 1 },
    /* End */ END_ANIMATION
};

// [D_088fe554] Small Speech Bubble (Front Rat)
struct Animation anim_rat_emote_bubble_r[] = {
    /* 000 */ { rat_race_cel044, 2 },
    /* 001 */ { rat_race_cel045, 1 },
    /* End */ END_ANIMATION
};

// [D_088fe56c] Small Speech Bubble (Back Rat)
struct Animation anim_rat_emote_bubble_l[] = {
    /* 000 */ { rat_race_cel052, 2 },
    /* 001 */ { rat_race_cel053, 1 },
    /* End */ END_ANIMATION
};

// [D_088fe584] Blank (Used)
struct Animation anim_rat_race_blank[] = {
    /* 000 */ { rat_race_cel087, 4 },
    /* End */ END_ANIMATION
};

// [D_088fe594] Dash Particle
struct Animation anim_rat_dash_particle[] = {
    /* 000 */ { rat_race_cel104, 4 },
    /* 001 */ { rat_race_cel105, 4 },
    /* 002 */ { rat_race_cel106, 4 },
    /* End */ END_ANIMATION
};

// [D_088fe5b4] Traffic Light
struct Animation anim_rat_traffic_light[] = {
    /* 000 */ { rat_race_cel132, 32 },
    /* 001 */ { rat_race_cel133, 32 },
    /* 002 */ { rat_race_cel134, 32 },
    /* 003 */ { rat_race_cel135, 32 },
    /* 004 */ { rat_race_cel136, 32 },
    /* End */ END_ANIMATION
};

// [D_088fe5e4] "You" Text
struct Animation anim_rat_race_player_label[] = {
    /* 000 */ { rat_race_cel137, 4 },
    /* End */ END_ANIMATION
};

// [D_088fe5f4] Barely (Sit)
struct Animation anim_rat_stop_barely[] = {
    /* 000 */ { rat_race_cel146, 2 },
    /* 001 */ { rat_race_cel145, 8 },
    /* 002 */ { rat_race_cel146, 2 },
    /* 003 */ { rat_race_cel147, 2 },
    /* 004 */ { rat_race_cel005, 2 },
    /* 005 */ { rat_race_cel020, 40 },
    /* End */ END_ANIMATION
};

// [D_088fe62c] Miss (Duck)
struct Animation anim_rat_stop_miss[] = {
    /* 000 */ { rat_race_cel146, 2 },
    /* 001 */ { rat_race_cel145, 8 },
    /* 002 */ { rat_race_cel146, 2 },
    /* 003 */ { rat_race_cel147, 2 },
    /* 004 */ { rat_race_cel006, 40 },
    /* End */ END_ANIMATION
};

// [D_088fe65c] Stumble (Unused)
struct Animation anim_rat_stumble[] = {
    /* 000 */ { rat_race_cel139, 4 },
    /* 001 */ { rat_race_cel140, 4 },
    /* 002 */ { rat_race_cel141, 4 },
    /* 003 */ { rat_race_cel141, 4 },
    /* 004 */ { rat_race_cel142, 4 },
    /* 005 */ { rat_race_cel143, 4 },
    /* 006 */ { rat_race_cel144, 4 },
    /* 007 */ { rat_race_cel142, 3 },
    /* 008 */ { rat_race_cel143, 2 },
    /* 009 */ { rat_race_cel144, 3 },
    /* 010 */ { rat_race_cel142, 3 },
    /* 011 */ { rat_race_cel143, 2 },
    /* 012 */ { rat_race_cel144, 40 },
    /* End */ END_ANIMATION
};
