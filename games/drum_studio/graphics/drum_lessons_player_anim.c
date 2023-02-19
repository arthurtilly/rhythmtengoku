#include "global.h"
#include "graphics.h"

#include "drum_lessons_player_anim_cells.inc.c"

// [D_088c5da0] Snare Drum
struct Animation anim_drum_student_kit_snare[] = {
    /* 000 */ { drum_lessons_player_cel026, 3 },
    /* 001 */ { drum_lessons_player_cel027, 2 },
    /* 002 */ { drum_lessons_player_cel028, 30 },
    /* End */ END_ANIMATION
};

// [D_088c5dc0] Bass Drum
struct Animation anim_drum_student_kit_bass[] = {
    /* 000 */ { drum_lessons_player_cel042, 2 },
    /* 001 */ { drum_lessons_player_cel043, 2 },
    /* 002 */ { drum_lessons_player_cel044, 30 },
    /* End */ END_ANIMATION
};

// [D_088c5de0] Hi-Hat
struct Animation anim_drum_student_kit_hihat[] = {
    /* 000 */ { drum_lessons_player_cel045, 1 },
    /* 001 */ { drum_lessons_player_cel046, 1 },
    /* 002 */ { drum_lessons_player_cel047, 1 },
    /* 003 */ { drum_lessons_player_cel048, 1 },
    /* End */ END_ANIMATION
};

// [D_088c5e08] Crash Cymbal
struct Animation anim_drum_student_kit_crash[] = {
    /* 000 */ { drum_lessons_player_cel049, 2 },
    /* 001 */ { drum_lessons_player_cel050, 2 },
    /* 002 */ { drum_lessons_player_cel051, 2 },
    /* 003 */ { drum_lessons_player_cel052, 2 },
    /* 004 */ { drum_lessons_player_cel053, 2 },
    /* 005 */ { drum_lessons_player_cel054, 3 },
    /* 006 */ { drum_lessons_player_cel053, 3 },
    /* 007 */ { drum_lessons_player_cel052, 3 },
    /* 008 */ { drum_lessons_player_cel051, 4 },
    /* 009 */ { drum_lessons_player_cel050, 4 },
    /* 010 */ { drum_lessons_player_cel052, 5 },
    /* 011 */ { drum_lessons_player_cel053, 6 },
    /* 012 */ { drum_lessons_player_cel054, 30 },
    /* End */ END_ANIMATION
};

// [D_088c5e78] Tom Drum
struct Animation anim_drum_student_kit_tom[] = {
    /* 000 */ { drum_lessons_player_cel057, 3 },
    /* 001 */ { drum_lessons_player_cel056, 2 },
    /* 002 */ { drum_lessons_player_cel055, 30 },
    /* End */ END_ANIMATION
};

// [D_088c5e98] Splash Cymbal
struct Animation anim_drum_student_kit_splash[] = {
    /* 000 */ { drum_lessons_player_cel058, 2 },
    /* 001 */ { drum_lessons_player_cel059, 2 },
    /* 002 */ { drum_lessons_player_cel060, 2 },
    /* 003 */ { drum_lessons_player_cel061, 2 },
    /* 004 */ { drum_lessons_player_cel062, 2 },
    /* 005 */ { drum_lessons_player_cel063, 3 },
    /* 006 */ { drum_lessons_player_cel062, 3 },
    /* 007 */ { drum_lessons_player_cel061, 3 },
    /* 008 */ { drum_lessons_player_cel060, 4 },
    /* 009 */ { drum_lessons_player_cel059, 4 },
    /* 010 */ { drum_lessons_player_cel061, 5 },
    /* 011 */ { drum_lessons_player_cel062, 6 },
    /* 012 */ { drum_lessons_player_cel063, 30 },
    /* End */ END_ANIMATION
};

// [D_088c5f08] Kick Pedal
struct Animation anim_drum_student_kit_pedal_r[] = {
    /* 000 */ { drum_lessons_player_cel064, 2 },
    /* 001 */ { drum_lessons_player_cel065, 1 },
    /* 002 */ { drum_lessons_player_cel066, 2 },
    /* 003 */ { drum_lessons_player_cel067, 2 },
    /* 004 */ { drum_lessons_player_cel068, 2 },
    /* 005 */ { drum_lessons_player_cel069, 30 },
    /* End */ END_ANIMATION
};

// [D_088c5f40] Seat
struct Animation anim_drum_student_kit_seat[] = {
    /* 000 */ { drum_lessons_player_cel107, 4 },
    /* End */ END_ANIMATION
};

// [D_088c5f50] Layout Test
struct Animation anim_drum_student_kit_layout_test[] = {
    /* 000 */ { drum_lessons_player_cel000, 4 },
    /* End */ END_ANIMATION
};

// [D_088c5f60] Right Hand - Crash Cymbal
struct Animation anim_drum_student_use_crash[] = {
    /* 000 */ { drum_lessons_player_cel006, 1 },
    /* 001 */ { drum_lessons_player_cel007, 1 },
    /* 002 */ { drum_lessons_player_cel008, 3 },
    /* 003 */ { drum_lessons_player_cel009, 2 },
    /* 004 */ { drum_lessons_player_cel010, 3 },
    /* 005 */ { drum_lessons_player_cel011, 4 },
    /* 006 */ { drum_lessons_player_cel012, 4 },
    /* 007 */ { drum_lessons_player_cel013, 4 },
    /* 008 */ { drum_lessons_player_cel099, 20 },
    /* End */ END_ANIMATION
};

// [D_088c5fb0] Right Hand - Snare Drum
struct Animation anim_drum_student_use_snare_r[] = {
    /* 000 */ { drum_lessons_player_cel135, 1 },
    /* 001 */ { drum_lessons_player_cel136, 1 },
    /* 002 */ { drum_lessons_player_cel137, 1 },
    /* 003 */ { drum_lessons_player_cel138, 1 },
    /* 004 */ { drum_lessons_player_cel139, 2 },
    /* 005 */ { drum_lessons_player_cel140, 3 },
    /* 006 */ { drum_lessons_player_cel141, 4 },
    /* 007 */ { drum_lessons_player_cel142, 4 },
    /* 008 */ { drum_lessons_player_cel099, 20 },
    /* End */ END_ANIMATION
};

// [D_088c6000] Left Hand - Snare Drum
struct Animation anim_drum_student_use_snare_l[] = {
    /* 000 */ { drum_lessons_player_cel029, 1 },
    /* 001 */ { drum_lessons_player_cel030, 1 },
    /* 002 */ { drum_lessons_player_cel031, 1 },
    /* 003 */ { drum_lessons_player_cel032, 3 },
    /* 004 */ { drum_lessons_player_cel033, 3 },
    /* 005 */ { drum_lessons_player_cel034, 4 },
    /* 006 */ { drum_lessons_player_cel035, 4 },
    /* 007 */ { drum_lessons_player_cel036, 4 },
    /* 008 */ { drum_lessons_player_cel037, 4 },
    /* 009 */ { drum_lessons_player_cel038, 20 },
    /* End */ END_ANIMATION
};

// [D_088c6058] Left Hand - Hi-Hat
struct Animation anim_drum_student_use_hihat[] = {
    /* 000 */ { drum_lessons_player_cel081, 1 },
    /* 001 */ { drum_lessons_player_cel082, 1 },
    /* 002 */ { drum_lessons_player_cel083, 1 },
    /* 003 */ { drum_lessons_player_cel084, 3 },
    /* 004 */ { drum_lessons_player_cel085, 3 },
    /* 005 */ { drum_lessons_player_cel086, 4 },
    /* 006 */ { drum_lessons_player_cel087, 4 },
    /* 007 */ { drum_lessons_player_cel088, 4 },
    /* 008 */ { drum_lessons_player_cel089, 20 },
    /* End */ END_ANIMATION
};

// [D_088c60a8] Left Hand - Tom Drum
struct Animation anim_drum_student_use_tom[] = {
    /* 000 */ { drum_lessons_player_cel090, 1 },
    /* 001 */ { drum_lessons_player_cel091, 1 },
    /* 002 */ { drum_lessons_player_cel091, 1 },
    /* 003 */ { drum_lessons_player_cel092, 3 },
    /* 004 */ { drum_lessons_player_cel093, 3 },
    /* 005 */ { drum_lessons_player_cel094, 4 },
    /* 006 */ { drum_lessons_player_cel095, 4 },
    /* 007 */ { drum_lessons_player_cel096, 4 },
    /* 008 */ { drum_lessons_player_cel097, 4 },
    /* 009 */ { drum_lessons_player_cel098, 20 },
    /* End */ END_ANIMATION
};

// [D_088c6100] Left Hand - Splash Cymbal
struct Animation anim_drum_student_use_splash[] = {
    /* 000 */ { drum_lessons_player_cel100, 1 },
    /* 001 */ { drum_lessons_player_cel101, 1 },
    /* 002 */ { drum_lessons_player_cel101, 2 },
    /* 003 */ { drum_lessons_player_cel102, 2 },
    /* 004 */ { drum_lessons_player_cel103, 3 },
    /* 005 */ { drum_lessons_player_cel104, 4 },
    /* 006 */ { drum_lessons_player_cel105, 4 },
    /* 007 */ { drum_lessons_player_cel106, 4 },
    /* 008 */ { drum_lessons_player_cel089, 20 },
    /* End */ END_ANIMATION
};

// [D_088c6150] Head
struct Animation anim_drum_student_head[] = {
    /* 000 */ { drum_lessons_player_cel004, 3 },
    /* 001 */ { drum_lessons_player_cel003, 3 },
    /* 002 */ { drum_lessons_player_cel002, 24 },
    /* End */ END_ANIMATION
};

// [D_088c6170] Torso
struct Animation anim_drum_student_body[] = {
    /* 000 */ { drum_lessons_player_cel039, 3 },
    /* 001 */ { drum_lessons_player_cel040, 3 },
    /* 002 */ { drum_lessons_player_cel041, 24 },
    /* End */ END_ANIMATION
};

// [D_088c6190] Right Leg - Kick Pedal
struct Animation anim_drum_student_use_pedal_r[] = {
    /* 000 */ { drum_lessons_player_cel080, 3 },
    /* 001 */ { drum_lessons_player_cel079, 2 },
    /* 002 */ { drum_lessons_player_cel078, 30 },
    /* End */ END_ANIMATION
};

// [D_088c61b0] Layout Test Duplicate
struct Animation anim_drum_student_use_layout_test[] = {
    /* 000 */ { drum_lessons_player_cel000, 4 },
    /* End */ END_ANIMATION
};

// [D_088c61c0] Out Of Memory Warning?
struct Animation anim_drum_studio_memory_warning[] = {
    /* 000 */ { drum_lessons_player_cel108, 40 },
    /* 001 */ { drum_lessons_player_cel109, 20 },
    /* End */ END_ANIMATION
};

// [D_088c61d8] Song Title Bubble
struct Animation anim_drum_studio_song_title_bubble[] = {
    /* 000 */ { drum_lessons_player_cel110, 60 },
    /* 001 */ { drum_lessons_player_cel111, 60 },
    /* End */ END_ANIMATION
};

// [D_088c61f0] Save Replay Options - Save
struct Animation anim_drum_studio_save_option_y[] = {
    /* 000 */ { drum_lessons_player_cel112, 2 },
    /* 001 */ { drum_lessons_player_cel113, 2 },
    /* 002 */ { drum_lessons_player_cel114, 30 },
    /* End */ END_ANIMATION
};

// [D_088c6210] Save Replay Options - Don't Save
struct Animation anim_drum_studio_save_option_n[] = {
    /* 000 */ { drum_lessons_player_cel115, 2 },
    /* 001 */ { drum_lessons_player_cel116, 2 },
    /* 002 */ { drum_lessons_player_cel117, 30 },
    /* End */ END_ANIMATION
};

// [D_088c6230] Left Hand - Stick Twirl
struct Animation anim_drum_student_stick_twirl[] = {
    /* 000 */ { drum_lessons_player_cel118, 2 },
    /* 001 */ { drum_lessons_player_cel119, 2 },
    /* 002 */ { drum_lessons_player_cel120, 1 },
    /* 003 */ { drum_lessons_player_cel121, 1 },
    /* 004 */ { drum_lessons_player_cel119, 1 },
    /* 005 */ { drum_lessons_player_cel120, 1 },
    /* 006 */ { drum_lessons_player_cel121, 1 },
    /* 007 */ { drum_lessons_player_cel122, 1 },
    /* 008 */ { drum_lessons_player_cel123, 1 },
    /* 009 */ { drum_lessons_player_cel124, 1 },
    /* 010 */ { drum_lessons_player_cel125, 1 },
    /* 011 */ { drum_lessons_player_cel126, 1 },
    /* 012 */ { drum_lessons_player_cel127, 1 },
    /* 013 */ { drum_lessons_player_cel128, 1 },
    /* 014 */ { drum_lessons_player_cel129, 1 },
    /* 015 */ { drum_lessons_player_cel130, 1 },
    /* 016 */ { drum_lessons_player_cel131, 1 },
    /* 017 */ { drum_lessons_player_cel119, 10 },
    /* 018 */ { drum_lessons_player_cel118, 20 },
    /* End */ END_ANIMATION
};

// [D_088c62d0] Left Leg - Kick Pedal
struct Animation anim_drum_student_use_pedal_l[] = {
    /* 000 */ { drum_lessons_player_cel134, 3 },
    /* 001 */ { drum_lessons_player_cel133, 2 },
    /* 002 */ { drum_lessons_player_cel132, 30 },
    /* End */ END_ANIMATION
};

// [D_088c62f0] Left Kick Pedal
struct Animation anim_drum_student_kit_pedal_l[] = {
    /* 000 */ { drum_lessons_player_cel070, 2 },
    /* 001 */ { drum_lessons_player_cel071, 1 },
    /* 002 */ { drum_lessons_player_cel072, 2 },
    /* 003 */ { drum_lessons_player_cel073, 2 },
    /* 004 */ { drum_lessons_player_cel074, 2 },
    /* 005 */ { drum_lessons_player_cel075, 26 },
    /* End */ END_ANIMATION
};

// [D_088c6328] Left Hand - Drum Roll
struct Animation anim_drum_student_snare_roll[] = {
    /* 000 */ { drum_lessons_player_cel144, 2 },
    /* 001 */ { drum_lessons_player_cel145, 2 },
    /* 002 */ { drum_lessons_player_cel144, 2 },
    /* 003 */ { drum_lessons_player_cel145, 3 },
    /* 004 */ { drum_lessons_player_cel032, 3 },
    /* 005 */ { drum_lessons_player_cel033, 3 },
    /* 006 */ { drum_lessons_player_cel034, 4 },
    /* 007 */ { drum_lessons_player_cel035, 4 },
    /* 008 */ { drum_lessons_player_cel038, 20 },
    /* End */ END_ANIMATION
};

// [D_088c6378] Coffee Steam Particle
struct Animation anim_drum_student_coffee_steam[] = {
    /* 000 */ { drum_lessons_player_cel146, 8 },
    /* 001 */ { drum_lessons_player_cel147, 8 },
    /* 002 */ { drum_lessons_player_cel148, 8 },
    /* 003 */ { drum_lessons_player_cel149, 8 },
    /* 004 */ { drum_lessons_player_cel150, 8 },
    /* 005 */ { drum_lessons_player_cel151, 8 },
    /* 006 */ { drum_lessons_player_cel152, 8 },
    /* 007 */ { drum_lessons_player_cel153, 8 },
    /* 008 */ { drum_lessons_player_cel154, 8 },
    /* 009 */ { drum_lessons_player_cel155, 8 },
    /* 010 */ { drum_lessons_player_cel156, 8 },
    /* 011 */ { drum_lessons_player_cel157, 8 },
    /* 012 */ { drum_lessons_player_cel158, 8 },
    /* 013 */ { drum_lessons_player_cel159, 20 },
    /* End */ END_ANIMATION
};

// [D_088c63f0] Drinking Coffee
struct Animation anim_drum_student_drink_coffee[] = {
    /* 000 */ { drum_lessons_player_cel160, 100 },
    /* 001 */ { drum_lessons_player_cel160, 100 },
    /* 002 */ { drum_lessons_player_cel160, 100 },
    /* 003 */ { drum_lessons_player_cel160, 100 },
    /* 004 */ { drum_lessons_player_cel160, 100 },
    /* 005 */ { drum_lessons_player_cel161, 6 },
    /* 006 */ { drum_lessons_player_cel162, 4 },
    /* 007 */ { drum_lessons_player_cel163, 4 },
    /* 008 */ { drum_lessons_player_cel164, 3 },
    /* 009 */ { drum_lessons_player_cel165, 2 },
    /* 010 */ { drum_lessons_player_cel166, 40 },
    /* 011 */ { drum_lessons_player_cel165, 2 },
    /* 012 */ { drum_lessons_player_cel164, 3 },
    /* 013 */ { drum_lessons_player_cel163, 4 },
    /* 014 */ { drum_lessons_player_cel162, 4 },
    /* 015 */ { drum_lessons_player_cel161, 6 },
    /* 016 */ { drum_lessons_player_cel160, 100 },
    /* 017 */ { drum_lessons_player_cel160, 100 },
    /* 018 */ { drum_lessons_player_cel160, 100 },
    /* 019 */ { drum_lessons_player_cel161, 6 },
    /* 020 */ { drum_lessons_player_cel162, 4 },
    /* 021 */ { drum_lessons_player_cel163, 4 },
    /* 022 */ { drum_lessons_player_cel164, 3 },
    /* 023 */ { drum_lessons_player_cel165, 2 },
    /* 024 */ { drum_lessons_player_cel166, 40 },
    /* 025 */ { drum_lessons_player_cel165, 2 },
    /* 026 */ { drum_lessons_player_cel164, 3 },
    /* 027 */ { drum_lessons_player_cel163, 4 },
    /* 028 */ { drum_lessons_player_cel162, 4 },
    /* 029 */ { drum_lessons_player_cel161, 6 },
    /* End */ END_ANIMATION
};

// [D_088c64e8] Layout Test (Half)
struct Animation anim_drum_student_layout_test_partial[] = {
    /* 000 */ { drum_lessons_player_cel167, 4 },
    /* End */ END_ANIMATION
};

// [D_088c64f8] Heel Hi-Hat
struct Animation anim_drum_student_kit_pedal_hihat[] = {
    /* 000 */ { drum_lessons_player_cel171, 1 },
    /* 001 */ { drum_lessons_player_cel170, 1 },
    /* 002 */ { drum_lessons_player_cel169, 1 },
    /* 003 */ { drum_lessons_player_cel168, 1 },
    /* End */ END_ANIMATION
};

// [D_088c6520] Right Leg - Heel Pedal
struct Animation anim_drum_student_use_pedal_hihat[] = {
    /* 000 */ { drum_lessons_player_cel077, 3 },
    /* 001 */ { drum_lessons_player_cel076, 3 },
    /* End */ END_ANIMATION
};

// [D_088c6538] Smile
struct Animation anim_drum_student_happy[] = {
    /* 000 */ { drum_lessons_player_cel005, 4 },
    /* End */ END_ANIMATION
};

// [D_088c6548] Rank S
struct Animation anim_drum_lessons_rank_s[] = {
    /* 000 */ { drum_lessons_player_cel172, 5 },
    /* 001 */ { drum_lessons_player_cel174, 5 },
    /* 002 */ { drum_lessons_player_cel173, 5 },
    /* End */ END_ANIMATION
};

// [D_088c6568] Rank A
struct Animation anim_drum_lessons_rank_a[] = {
    /* 000 */ { drum_lessons_player_cel175, 4 },
    /* End */ END_ANIMATION
};

// [D_088c6578] Rank B
struct Animation anim_drum_lessons_rank_b[] = {
    /* 000 */ { drum_lessons_player_cel176, 4 },
    /* End */ END_ANIMATION
};

// [D_088c6588] Rank C
struct Animation anim_drum_lessons_rank_c[] = {
    /* 000 */ { drum_lessons_player_cel177, 4 },
    /* End */ END_ANIMATION
};
