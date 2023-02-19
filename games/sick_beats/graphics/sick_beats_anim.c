#include "global.h"
#include "graphics.h"

#include "sick_beats_anim_cells.inc.c"

// [D_0893189c] Virus
struct Animation anim_virus_appear[] = {
    /* 000 */ { sick_beats_cel003, 6 },
    /* 001 */ { sick_beats_cel004, 3 },
    /* End */ END_ANIMATION
};

// [D_089318b4] Virus - Look Both Ways Before Crossing the Street
struct Animation anim_virus_ready[] = {
    /* 000 */ { sick_beats_cel010, 1 },
    /* 001 */ { sick_beats_cel011, 1 },
    /* 002 */ { sick_beats_cel012, 1 },
    /* 003 */ { sick_beats_cel007, 8 },
    /* 004 */ { sick_beats_cel006, 1 },
    /* 005 */ { sick_beats_cel005, 1 },
    /* 006 */ { sick_beats_cel013, 6 },
    /* 007 */ { sick_beats_cel007, 1 },
    /* 008 */ { sick_beats_cel008, 1 },
    /* 009 */ { sick_beats_cel009, 1 },
    /* 010 */ { sick_beats_cel014, 6 },
    /* 011 */ { sick_beats_cel009, 1 },
    /* 012 */ { sick_beats_cel008, 1 },
    /* 013 */ { sick_beats_cel007, 1 },
    /* 014 */ { sick_beats_cel006, 1 },
    /* 015 */ { sick_beats_cel005, 1 },
    /* 016 */ { sick_beats_cel013, 6 },
    /* 017 */ { sick_beats_cel005, 1 },
    /* 018 */ { sick_beats_cel006, 1 },
    /* 019 */ { sick_beats_cel007, 1 },
    /* 020 */ { sick_beats_cel008, 1 },
    /* 021 */ { sick_beats_cel009, 1 },
    /* 022 */ { sick_beats_cel014, 5 },
    /* 023 */ { sick_beats_cel009, 1 },
    /* 024 */ { sick_beats_cel008, 1 },
    /* 025 */ { sick_beats_cel007, 20 },
    /* 026 */ { sick_beats_cel015, 3 },
    /* 027 */ { sick_beats_cel016, 3 },
    /* 028 */ { sick_beats_cel017, 3 },
    /* 029 */ { sick_beats_cel018, 3 },
    /* 030 */ { sick_beats_cel007, 20 },
    /* End */ END_ANIMATION
};

// [D_089319b4] Yellow Microbe - Beat
struct Animation anim_yellow_microbe_beat[] = {
    /* 000 */ { sick_beats_cel067, 3 },
    /* 001 */ { sick_beats_cel068, 4 },
    /* 002 */ { sick_beats_cel066, 22 },
    /* End */ END_ANIMATION
};

// [D_089319d4] Yellow Microbe - Under Attack
struct Animation anim_yellow_microbe_hurt[] = {
    /* 000 */ { sick_beats_cel075, 3 },
    /* 001 */ { sick_beats_cel069, 2 },
    /* 002 */ { sick_beats_cel075, 2 },
    /* 003 */ { sick_beats_cel069, 2 },
    /* End */ END_ANIMATION
};

// [D_089319fc] Yellow Microbe - Vanish
struct Animation anim_yellow_microbe_vanish[] = {
    /* 000 */ { sick_beats_cel070, 2 },
    /* 001 */ { sick_beats_cel071, 2 },
    /* 002 */ { sick_beats_cel072, 4 },
    /* 003 */ { sick_beats_cel073, 4 },
    /* 004 */ { sick_beats_cel074, 4 },
    /* End */ END_ANIMATION
};

// [D_08931a2c] Virus - Laugh
struct Animation anim_virus_attack[] = {
    /* 000 */ { sick_beats_cel000, 7 },
    /* 001 */ { sick_beats_cel079, 4 },
    /* 002 */ { sick_beats_cel000, 6 },
    /* 003 */ { sick_beats_cel079, 3 },
    /* 004 */ { sick_beats_cel000, 6 },
    /* 005 */ { sick_beats_cel079, 3 },
    /* End */ END_ANIMATION
};

// [D_08931a64] Yellow Microbe - Reappear
struct Animation anim_yellow_microbe_return[] = {
    /* 000 */ { sick_beats_cel076, 11 },
    /* 001 */ { sick_beats_cel077, 11 },
    /* 002 */ { sick_beats_cel078, 3 },
    /* 003 */ { sick_beats_cel066, 4 },
    /* End */ END_ANIMATION
};

// [D_08931a8c] D-Pad - Press
struct Animation anim_fork_launcher[] = {
    /* 000 */ { sick_beats_cel020, 2 },
    /* 001 */ { sick_beats_cel019, 2 },
    /* End */ END_ANIMATION
};

// [D_08931aa4] Fork - Hit Virus
struct Animation anim_fork_hit_virus[] = {
    /* 000 */ { sick_beats_cel021, 1 },
    /* 001 */ { sick_beats_cel022, 3 },
    /* 002 */ { sick_beats_cel023, 4 },
    /* 003 */ { sick_beats_cel024, 30 },
    /* 004 */ { sick_beats_cel038, 1 },
    /* End */ END_ANIMATION
};

// [D_08931ad4] Fork - Hit Nothing
struct Animation anim_fork_hit_none1[] = {
    /* 000 */ { sick_beats_cel026, 1 },
    /* 001 */ { sick_beats_cel027, 1 },
    /* 002 */ { sick_beats_cel028, 2 },
    /* 003 */ { sick_beats_cel029, 2 },
    /* 004 */ { sick_beats_cel030, 2 },
    /* 005 */ { sick_beats_cel031, 20 },
    /* 006 */ { sick_beats_cel038, 1 },
    /* End */ END_ANIMATION
};

// [D_08931b14] Fork - Hit Nothing (less force..?)
struct Animation anim_fork_hit_none2[] = {
    /* 000 */ { sick_beats_cel027, 2 },
    /* 001 */ { sick_beats_cel028, 2 },
    /* 002 */ { sick_beats_cel029, 2 },
    /* 003 */ { sick_beats_cel030, 2 },
    /* 004 */ { sick_beats_cel031, 20 },
    /* End */ END_ANIMATION
};

// [D_08931b44] Virus - Dash Up (Full)
struct Animation anim_virus_dash_up_full[] = {
    /* 000 */ { sick_beats_cel032, 1 },
    /* 001 */ { sick_beats_cel033, 1 },
    /* 002 */ { sick_beats_cel034, 1 },
    /* 003 */ { sick_beats_cel038, 100 },
    /* End */ END_ANIMATION
};

// [D_08931b6c] Virus - Dash Up (Half)
struct Animation anim_virus_dash_up_half[] = {
    /* 000 */ { sick_beats_cel032, 1 },
    /* 001 */ { sick_beats_cel035, 1 },
    /* 002 */ { sick_beats_cel038, 40 },
    /* End */ END_ANIMATION
};

// [D_08931b8c] Virus - Dash Left (Full)
struct Animation anim_virus_dash_left_full[] = {
    /* 000 */ { sick_beats_cel036, 1 },
    /* 001 */ { sick_beats_cel037, 1 },
    /* 002 */ { sick_beats_cel038, 40 },
    /* End */ END_ANIMATION
};

// [D_08931bac] Virus - Dash Left (Half)
struct Animation anim_virus_dash_left_half[] = {
    /* 000 */ { sick_beats_cel036, 1 },
    /* End */ END_ANIMATION
};

// [D_08931bbc] Fork - Hit Virus Too Early
struct Animation anim_fork_hit_early[] = {
    /* 000 */ { sick_beats_cel021, 1 },
    /* 001 */ { sick_beats_cel022, 3 },
    /* 002 */ { sick_beats_cel039, 4 },
    /* 003 */ { sick_beats_cel040, 30 },
    /* 004 */ { sick_beats_cel038, 1 },
    /* End */ END_ANIMATION
};

// [D_08931bec] Fork - Hit Virus Too Late
struct Animation anim_fork_hit_late[] = {
    /* 000 */ { sick_beats_cel021, 1 },
    /* 001 */ { sick_beats_cel022, 3 },
    /* 002 */ { sick_beats_cel041, 4 },
    /* 003 */ { sick_beats_cel042, 30 },
    /* 004 */ { sick_beats_cel038, 1 },
    /* End */ END_ANIMATION
};

// [D_08931c1c] Doctor - Beat
struct Animation anim_virus_doctor_beat[] = {
    /* 000 */ { sick_beats_cel045, 3 },
    /* 001 */ { sick_beats_cel046, 2 },
    /* 002 */ { sick_beats_cel043, 5 },
    /* 003 */ { sick_beats_cel044, 40 },
    /* End */ END_ANIMATION
};

// [D_08931c44] Doctor - Fail
struct Animation anim_virus_doctor_fail[] = {
    /* 000 */ { sick_beats_cel048, 2 },
    /* 001 */ { sick_beats_cel049, 2 },
    /* 002 */ { sick_beats_cel048, 2 },
    /* 003 */ { sick_beats_cel049, 2 },
    /* 004 */ { sick_beats_cel048, 2 },
    /* 005 */ { sick_beats_cel049, 2 },
    /* 006 */ { sick_beats_cel048, 2 },
    /* 007 */ { sick_beats_cel049, 3 },
    /* 008 */ { sick_beats_cel048, 20 },
    /* 009 */ { sick_beats_cel050, 4 },
    /* 010 */ { sick_beats_cel051, 4 },
    /* 011 */ { sick_beats_cel052, 60 },
    /* End */ END_ANIMATION
};

// [D_08931cac] Doctor - Hit Virus
struct Animation anim_virus_doctor_hit1[] = {
    /* 000 */ { sick_beats_cel054, 17 },
    /* 001 */ { sick_beats_cel055, 2 },
    /* 002 */ { sick_beats_cel058, 2 },
    /* 003 */ { sick_beats_cel043, 60 },
    /* End */ END_ANIMATION
};

// [D_08931cd4] Doctor - Hit Consecutive Virus
struct Animation anim_virus_doctor_hit2[] = {
    /* 000 */ { sick_beats_cel062, 10 },
    /* 001 */ { sick_beats_cel063, 6 },
    /* 002 */ { sick_beats_cel064, 3 },
    /* 003 */ { sick_beats_cel065, 3 },
    /* 004 */ { sick_beats_cel044, 40 },
    /* End */ END_ANIMATION
};

// [D_08931d04] Radio
struct Animation anim_sick_beats_radio[] = {
    /* 000 */ { sick_beats_cel059, 3 },
    /* 001 */ { sick_beats_cel060, 2 },
    /* 002 */ { sick_beats_cel038, 40 },
    /* End */ END_ANIMATION
};

// [D_08931d24] Doctor - Animation Test
struct Animation anim_virus_doctor_test[] = {
    /* 000 */ { sick_beats_cel048, 2 },
    /* 001 */ { sick_beats_cel049, 1 },
    /* 002 */ { sick_beats_cel048, 1 },
    /* 003 */ { sick_beats_cel049, 1 },
    /* 004 */ { sick_beats_cel048, 1 },
    /* 005 */ { sick_beats_cel049, 1 },
    /* 006 */ { sick_beats_cel048, 2 },
    /* 007 */ { sick_beats_cel049, 3 },
    /* 008 */ { sick_beats_cel048, 20 },
    /* 009 */ { sick_beats_cel050, 4 },
    /* 010 */ { sick_beats_cel051, 4 },
    /* 011 */ { sick_beats_cel052, 10 },
    /* 012 */ { sick_beats_cel053, 40 },
    /* 013 */ { sick_beats_cel054, 40 },
    /* 014 */ { sick_beats_cel055, 4 },
    /* 015 */ { sick_beats_cel043, 60 },
    /* End */ END_ANIMATION
};

// [D_08931dac] Doctor - Hit Virus (Fast)
struct Animation anim_virus_doctor_hit1_fast[] = {
    /* 000 */ { sick_beats_cel053, 6 },
    /* 001 */ { sick_beats_cel054, 17 },
    /* 002 */ { sick_beats_cel055, 1 },
    /* 003 */ { sick_beats_cel058, 1 },
    /* 004 */ { sick_beats_cel043, 60 },
    /* End */ END_ANIMATION
};

// [D_08931ddc] Yellow Microbe - Beat (Fast)
struct Animation anim_yellow_microbe_beat_fast[] = {
    /* 000 */ { sick_beats_cel066, 22 },
    /* 001 */ { sick_beats_cel067, 3 },
    /* 002 */ { sick_beats_cel068, 4 },
    /* End */ END_ANIMATION
};

// [D_08931dfc] Yellow Microbe - Vanish (Fast)
struct Animation anim_yellow_microbe_vanish_fast[] = {
    /* 000 */ { sick_beats_cel070, 2 },
    /* 001 */ { sick_beats_cel071, 2 },
    /* 002 */ { sick_beats_cel072, 4 },
    /* 003 */ { sick_beats_cel073, 4 },
    /* 004 */ { sick_beats_cel074, 4 },
    /* End */ END_ANIMATION
};

// [D_08931e2c] Yellow Microbe - Reappear (Fast)
struct Animation anim_yellow_microbe_return_fast[] = {
    /* 000 */ { sick_beats_cel076, 11 },
    /* 001 */ { sick_beats_cel077, 11 },
    /* 002 */ { sick_beats_cel078, 3 },
    /* 003 */ { sick_beats_cel066, 4 },
    /* End */ END_ANIMATION
};

// [D_08931e54] Yellow Microbe - Under Attack (Fast)
struct Animation anim_yellow_microbe_hurt_fast[] = {
    /* 000 */ { sick_beats_cel075, 3 },
    /* 001 */ { sick_beats_cel069, 2 },
    /* 002 */ { sick_beats_cel075, 2 },
    /* 003 */ { sick_beats_cel069, 2 },
    /* End */ END_ANIMATION
};

// [D_08931e7c] Virus - Laugh (Duplicate)
struct Animation anim_virus_attack_fast[] = {
    /* 000 */ { sick_beats_cel000, 7 },
    /* 001 */ { sick_beats_cel079, 4 },
    /* 002 */ { sick_beats_cel000, 6 },
    /* 003 */ { sick_beats_cel079, 3 },
    /* 004 */ { sick_beats_cel000, 6 },
    /* 005 */ { sick_beats_cel079, 3 },
    /* End */ END_ANIMATION
};

// [D_08931eb4] Null
struct Animation anim_sick_beats_null1[] = {
    /* End */ END_ANIMATION
};

// [D_08931ebc] Null
struct Animation anim_sick_beats_null2[] = {
    /* End */ END_ANIMATION
};

// [D_08931ec4] Null
struct Animation anim_sick_beats_null3[] = {
    /* End */ END_ANIMATION
};

// [D_08931ecc] Null
struct Animation anim_sick_beats_null4[] = {
    /* End */ END_ANIMATION
};

// [D_08931ed4] Null
struct Animation anim_sick_beats_null5[] = {
    /* End */ END_ANIMATION
};

// [D_08931edc] Tough Virus Hit Effect
struct Animation anim_tough_virus_hit_effect[] = {
    /* 000 */ { sick_beats_cel080, 2 },
    /* 001 */ { sick_beats_cel081, 2 },
    /* 002 */ { sick_beats_cel082, 2 },
    /* 003 */ { sick_beats_cel083, 3 },
    /* 004 */ { sick_beats_cel084, 3 },
    /* 005 */ { sick_beats_cel038, 68 },
    /* End */ END_ANIMATION
};

// [D_08931f14] Fork - Hit Tough Virus
struct Animation anim_fork_hit_tough_virus[] = {
    /* 000 */ { sick_beats_cel085, 3 },
    /* 001 */ { sick_beats_cel086, 12 },
    /* 002 */ { sick_beats_cel088, 2 },
    /* 003 */ { sick_beats_cel089, 2 },
    /* 004 */ { sick_beats_cel090, 23 },
    /* 005 */ { sick_beats_cel038, 38 },
    /* End */ END_ANIMATION
};

// [D_08931f4c] Game Over Text
struct Animation anim_sick_beats_game_over[] = {
    /* 000 */ { sick_beats_cel091, 4 },
    /* 001 */ { sick_beats_cel092, 4 },
    /* 002 */ { sick_beats_cel093, 4 },
    /* End */ END_ANIMATION
};

// [D_08931f6c] Score Count Numbers
struct Animation anim_sick_beats_score_num[] = {
    /* 000 */ { sick_beats_cel094, 4 },
    /* 001 */ { sick_beats_cel095, 4 },
    /* 002 */ { sick_beats_cel096, 4 },
    /* 003 */ { sick_beats_cel097, 4 },
    /* 004 */ { sick_beats_cel098, 4 },
    /* 005 */ { sick_beats_cel099, 4 },
    /* 006 */ { sick_beats_cel100, 4 },
    /* 007 */ { sick_beats_cel101, 4 },
    /* 008 */ { sick_beats_cel102, 4 },
    /* 009 */ { sick_beats_cel103, 4 },
    /* End */ END_ANIMATION
};

// [D_08931fc4] Score Counter
struct Animation anim_sick_beats_score_counter[] = {
    /* 000 */ { sick_beats_cel104, 4 },
    /* End */ END_ANIMATION
};

// [D_08931fd4] High Score Counter
struct Animation anim_sick_beats_high_score_counter[] = {
    /* 000 */ { sick_beats_cel105, 4 },
    /* End */ END_ANIMATION
};

// [D_08931fe4] Endless Mode Particles
struct Animation anim_sick_beats_endless_particle[] = {
    /* 000 */ { sick_beats_cel106, 4 },
    /* 001 */ { sick_beats_cel107, 4 },
    /* 002 */ { sick_beats_cel108, 4 },
    /* 003 */ { sick_beats_cel109, 4 },
    /* 004 */ { sick_beats_cel110, 4 },
    /* 005 */ { sick_beats_cel111, 4 },
    /* 006 */ { sick_beats_cel112, 4 },
    /* 007 */ { sick_beats_cel113, 4 },
    /* 008 */ { sick_beats_cel114, 4 },
    /* 009 */ { sick_beats_cel115, 4 },
    /* 010 */ { sick_beats_cel116, 4 },
    /* End */ END_ANIMATION
};
