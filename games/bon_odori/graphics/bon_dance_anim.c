#include "global.h"
#include "graphics.h"

#include "bon_dance_anim_cells.inc.c"

// [D_088a7140] Donpan 1 - Beat
struct Animation anim_bon_dance_donpan1_beat[] = {
    /* 000 */ { bon_dance_cel008, 4 },
    /* 001 */ { bon_dance_cel010, 4 },
    /* 002 */ { bon_dance_cel011, 7 },
    /* 003 */ { bon_dance_cel012, 99 },
    /* 004 */ { bon_dance_cel011, 7 },
    /* 005 */ { bon_dance_cel010, 4 },
    /* 006 */ { bon_dance_cel008, 99 },
    /* End */ END_ANIMATION
};

// [D_088a7180] Blank
struct Animation anim_bon_dance_blank[] = {
    /* 000 */ { bon_dance_cel000, 20 },
    /* 001 */ { bon_dance_cel001, 20 },
    /* End */ END_ANIMATION
};

// [D_088a7198] Donpan 1 - Clap (Side)
struct Animation anim_bon_dance_donpan1_clap1[] = {
    /* 000 */ { bon_dance_cel002, 2 },
    /* 001 */ { bon_dance_cel003, 2 },
    /* 002 */ { bon_dance_cel004, 2 },
    /* 003 */ { bon_dance_cel005, 2 },
    /* 004 */ { bon_dance_cel006, 4 },
    /* 005 */ { bon_dance_cel007, 4 },
    /* 006 */ { bon_dance_cel009, 4 },
    /* 007 */ { bon_dance_cel008, 20 },
    /* End */ END_ANIMATION
};

// [D_088a71e0] Donpan 1 - Clap (Front)
struct Animation anim_bon_dance_donpan1_clap2[] = {
    /* 000 */ { bon_dance_cel013, 4 },
    /* 001 */ { bon_dance_cel014, 4 },
    /* 002 */ { bon_dance_cel015, 4 },
    /* 003 */ { bon_dance_cel016, 4 },
    /* 004 */ { bon_dance_cel017, 4 },
    /* 005 */ { bon_dance_cel018, 20 },
    /* End */ END_ANIMATION
};

// [D_088a7218] Donpan 2 - Beat
struct Animation anim_bon_dance_donpan2_beat[] = {
    /* 000 */ { bon_dance_cel025, 4 },
    /* 001 */ { bon_dance_cel027, 4 },
    /* 002 */ { bon_dance_cel028, 7 },
    /* 003 */ { bon_dance_cel029, 99 },
    /* 004 */ { bon_dance_cel028, 7 },
    /* 005 */ { bon_dance_cel027, 4 },
    /* 006 */ { bon_dance_cel025, 99 },
    /* End */ END_ANIMATION
};

// [D_088a7258] Donpan 2 - Clap (Side)
struct Animation anim_bon_dance_donpan2_clap1[] = {
    /* 000 */ { bon_dance_cel019, 2 },
    /* 001 */ { bon_dance_cel020, 2 },
    /* 002 */ { bon_dance_cel021, 2 },
    /* 003 */ { bon_dance_cel022, 2 },
    /* 004 */ { bon_dance_cel023, 4 },
    /* 005 */ { bon_dance_cel024, 4 },
    /* 006 */ { bon_dance_cel025, 4 },
    /* 007 */ { bon_dance_cel026, 20 },
    /* End */ END_ANIMATION
};

// [D_088a72a0] Donpan 2 - Clap (Front)
struct Animation anim_bon_dance_donpan2_clap2[] = {
    /* 000 */ { bon_dance_cel030, 4 },
    /* 001 */ { bon_dance_cel031, 4 },
    /* 002 */ { bon_dance_cel032, 4 },
    /* 003 */ { bon_dance_cel033, 4 },
    /* 004 */ { bon_dance_cel034, 4 },
    /* 005 */ { bon_dance_cel035, 20 },
    /* End */ END_ANIMATION
};

// [D_088a72d8] Player - Beat
struct Animation anim_bon_dance_player_beat[] = {
    /* 000 */ { bon_dance_cel041, 4 },
    /* 001 */ { bon_dance_cel043, 4 },
    /* 002 */ { bon_dance_cel044, 7 },
    /* 003 */ { bon_dance_cel045, 99 },
    /* 004 */ { bon_dance_cel044, 7 },
    /* 005 */ { bon_dance_cel043, 4 },
    /* 006 */ { bon_dance_cel041, 99 },
    /* End */ END_ANIMATION
};

// [D_088a7318] Player - Clap (Side)
struct Animation anim_bon_dance_player_clap1[] = {
    /* 000 */ { bon_dance_cel036, 2 },
    /* 001 */ { bon_dance_cel037, 2 },
    /* 002 */ { bon_dance_cel038, 2 },
    /* 003 */ { bon_dance_cel039, 2 },
    /* 004 */ { bon_dance_cel040, 4 },
    /* 005 */ { bon_dance_cel041, 4 },
    /* 006 */ { bon_dance_cel042, 4 },
    /* 007 */ { bon_dance_cel041, 20 },
    /* End */ END_ANIMATION
};

// [D_088a7360] Player - Clap (Front)
struct Animation anim_bon_dance_player_clap2[] = {
    /* 000 */ { bon_dance_cel046, 4 },
    /* 001 */ { bon_dance_cel047, 4 },
    /* 002 */ { bon_dance_cel048, 4 },
    /* 003 */ { bon_dance_cel049, 4 },
    /* 004 */ { bon_dance_cel050, 4 },
    /* 005 */ { bon_dance_cel051, 20 },
    /* End */ END_ANIMATION
};

// [D_088a7398] Donpan 3 - Beat
struct Animation anim_bon_dance_donpan3_beat[] = {
    /* 000 */ { bon_dance_cel058, 4 },
    /* 001 */ { bon_dance_cel060, 4 },
    /* 002 */ { bon_dance_cel061, 7 },
    /* 003 */ { bon_dance_cel062, 99 },
    /* 004 */ { bon_dance_cel061, 7 },
    /* 005 */ { bon_dance_cel060, 4 },
    /* 006 */ { bon_dance_cel058, 99 },
    /* End */ END_ANIMATION
};

// [D_088a73d8] Donpan 3 - Clap (Side)
struct Animation anim_bon_dance_donpan3_clap1[] = {
    /* 000 */ { bon_dance_cel052, 2 },
    /* 001 */ { bon_dance_cel053, 2 },
    /* 002 */ { bon_dance_cel054, 2 },
    /* 003 */ { bon_dance_cel055, 2 },
    /* 004 */ { bon_dance_cel056, 4 },
    /* 005 */ { bon_dance_cel057, 4 },
    /* 006 */ { bon_dance_cel058, 4 },
    /* 007 */ { bon_dance_cel059, 20 },
    /* End */ END_ANIMATION
};

// [D_088a7420] Donpan 3 - Clap (Front)
struct Animation anim_bon_dance_donpan3_clap2[] = {
    /* 000 */ { bon_dance_cel063, 4 },
    /* 001 */ { bon_dance_cel064, 4 },
    /* 002 */ { bon_dance_cel065, 4 },
    /* 003 */ { bon_dance_cel066, 4 },
    /* 004 */ { bon_dance_cel067, 4 },
    /* 005 */ { bon_dance_cel068, 20 },
    /* End */ END_ANIMATION
};

// [D_088a7458] Donpan 1 - Test Animation
struct Animation anim_bon_dance_donpan_test[] = {
    /* 000 */ { bon_dance_cel013, 2 },
    /* 001 */ { bon_dance_cel014, 2 },
    /* 002 */ { bon_dance_cel015, 2 },
    /* 003 */ { bon_dance_cel016, 2 },
    /* 004 */ { bon_dance_cel017, 2 },
    /* 005 */ { bon_dance_cel018, 4 },
    /* 006 */ { bon_dance_cel013, 2 },
    /* 007 */ { bon_dance_cel014, 2 },
    /* 008 */ { bon_dance_cel015, 2 },
    /* 009 */ { bon_dance_cel016, 2 },
    /* 010 */ { bon_dance_cel017, 2 },
    /* 011 */ { bon_dance_cel018, 4 },
    /* 012 */ { bon_dance_cel069, 4 },
    /* 013 */ { bon_dance_cel070, 4 },
    /* 014 */ { bon_dance_cel071, 4 },
    /* 015 */ { bon_dance_cel072, 20 },
    /* End */ END_ANIMATION
};

// [D_088a74e0] Donpan 1 - Bow
struct Animation anim_bon_dance_donpan1_bow[] = {
    /* 000 */ { bon_dance_cel069, 4 },
    /* 001 */ { bon_dance_cel070, 4 },
    /* 002 */ { bon_dance_cel071, 4 },
    /* 003 */ { bon_dance_cel072, 20 },
    /* End */ END_ANIMATION
};

// [D_088a7508] Donpan 2 - Bow
struct Animation anim_bon_dance_donpan2_bow[] = {
    /* 000 */ { bon_dance_cel073, 4 },
    /* 001 */ { bon_dance_cel074, 4 },
    /* 002 */ { bon_dance_cel075, 4 },
    /* 003 */ { bon_dance_cel076, 20 },
    /* End */ END_ANIMATION
};

// [D_088a7530] Player - Bow
struct Animation anim_bon_dance_player_bow[] = {
    /* 000 */ { bon_dance_cel077, 4 },
    /* 001 */ { bon_dance_cel078, 4 },
    /* 002 */ { bon_dance_cel079, 4 },
    /* 003 */ { bon_dance_cel080, 20 },
    /* End */ END_ANIMATION
};

// [D_088a7558] Donpan 3 - Bow
struct Animation anim_bon_dance_donpan3_bow[] = {
    /* 000 */ { bon_dance_cel081, 4 },
    /* 001 */ { bon_dance_cel082, 4 },
    /* 002 */ { bon_dance_cel083, 4 },
    /* 003 */ { bon_dance_cel084, 20 },
    /* End */ END_ANIMATION
};

// [D_088a7580] Donpan 2 - Unimpressed
struct Animation anim_bon_dance_donpan2_glare[] = {
    /* 000 */ { bon_dance_cel089, 4 },
    /* 001 */ { bon_dance_cel087, 4 },
    /* 002 */ { bon_dance_cel086, 7 },
    /* 003 */ { bon_dance_cel085, 99 },
    /* 004 */ { bon_dance_cel086, 7 },
    /* 005 */ { bon_dance_cel087, 4 },
    /* 006 */ { bon_dance_cel089, 99 },
    /* End */ END_ANIMATION
};

// [D_088a75c0] Donpan 1 - Unimpressed
struct Animation anim_bon_dance_donpan1_glare[] = {
    /* 000 */ { bon_dance_cel094, 4 },
    /* 001 */ { bon_dance_cel092, 4 },
    /* 002 */ { bon_dance_cel091, 7 },
    /* 003 */ { bon_dance_cel090, 99 },
    /* 004 */ { bon_dance_cel091, 7 },
    /* 005 */ { bon_dance_cel092, 4 },
    /* 006 */ { bon_dance_cel094, 99 },
    /* End */ END_ANIMATION
};

// [D_088a7600] Donpan 3 - Unimpressed
struct Animation anim_bon_dance_donpan3_glare[] = {
    /* 000 */ { bon_dance_cel099, 4 },
    /* 001 */ { bon_dance_cel097, 4 },
    /* 002 */ { bon_dance_cel096, 7 },
    /* 003 */ { bon_dance_cel095, 99 },
    /* 004 */ { bon_dance_cel096, 7 },
    /* 005 */ { bon_dance_cel097, 4 },
    /* 006 */ { bon_dance_cel099, 99 },
    /* End */ END_ANIMATION
};

// [D_088a7640] Yagura-chan - Beat
struct Animation anim_bon_dance_yagura_beat[] = {
    /* 000 */ { bon_dance_cel102, 3 },
    /* 001 */ { bon_dance_cel101, 3 },
    /* 002 */ { bon_dance_cel100, 24 },
    /* End */ END_ANIMATION
};

// [D_088a7660] Yagura-chan - Speak
struct Animation anim_bon_dance_yagura_speak[] = {
    /* 000 */ { bon_dance_cel103, 4 },
    /* 001 */ { bon_dance_cel104, 24 },
    /* End */ END_ANIMATION
};

// [D_088a7678] Donpan 1 - Happy
struct Animation anim_bon_dance_donpan1_happy1[] = {
    /* 000 */ { bon_dance_cel105, 4 },
    /* 001 */ { bon_dance_cel107, 4 },
    /* 002 */ { bon_dance_cel108, 7 },
    /* 003 */ { bon_dance_cel109, 99 },
    /* 004 */ { bon_dance_cel108, 7 },
    /* 005 */ { bon_dance_cel107, 4 },
    /* 006 */ { bon_dance_cel105, 99 },
    /* End */ END_ANIMATION
};

// [D_088a76b8] Donpan 2 - Happy
struct Animation anim_bon_dance_donpan2_happy1[] = {
    /* 000 */ { bon_dance_cel110, 4 },
    /* 001 */ { bon_dance_cel112, 4 },
    /* 002 */ { bon_dance_cel113, 7 },
    /* 003 */ { bon_dance_cel114, 99 },
    /* 004 */ { bon_dance_cel113, 7 },
    /* 005 */ { bon_dance_cel112, 4 },
    /* 006 */ { bon_dance_cel110, 99 },
    /* End */ END_ANIMATION
};

// [D_088a76f8] Player - Happy
struct Animation anim_bon_dance_player_happy1[] = {
    /* 000 */ { bon_dance_cel115, 4 },
    /* 001 */ { bon_dance_cel117, 4 },
    /* 002 */ { bon_dance_cel118, 7 },
    /* 003 */ { bon_dance_cel119, 99 },
    /* 004 */ { bon_dance_cel118, 7 },
    /* 005 */ { bon_dance_cel117, 4 },
    /* 006 */ { bon_dance_cel115, 99 },
    /* End */ END_ANIMATION
};

// [D_088a7738] Donpan 3 - Happy
struct Animation anim_bon_dance_donpan3_happy1[] = {
    /* 000 */ { bon_dance_cel120, 4 },
    /* 001 */ { bon_dance_cel122, 4 },
    /* 002 */ { bon_dance_cel123, 7 },
    /* 003 */ { bon_dance_cel124, 99 },
    /* 004 */ { bon_dance_cel123, 7 },
    /* 005 */ { bon_dance_cel122, 4 },
    /* 006 */ { bon_dance_cel120, 99 },
    /* End */ END_ANIMATION
};

// [D_088a7778] Donpan 1 - Very Happy
struct Animation anim_bon_dance_donpan1_happy2[] = {
    /* 000 */ { bon_dance_cel125, 4 },
    /* 001 */ { bon_dance_cel126, 4 },
    /* 002 */ { bon_dance_cel127, 7 },
    /* 003 */ { bon_dance_cel127, 99 },
    /* 004 */ { bon_dance_cel127, 7 },
    /* 005 */ { bon_dance_cel126, 4 },
    /* 006 */ { bon_dance_cel125, 99 },
    /* End */ END_ANIMATION
};

// [D_088a77b8] Donpan 2 - Very Happy
struct Animation anim_bon_dance_donpan2_happy2[] = {
    /* 000 */ { bon_dance_cel128, 4 },
    /* 001 */ { bon_dance_cel129, 4 },
    /* 002 */ { bon_dance_cel130, 7 },
    /* 003 */ { bon_dance_cel130, 99 },
    /* 004 */ { bon_dance_cel130, 7 },
    /* 005 */ { bon_dance_cel129, 4 },
    /* 006 */ { bon_dance_cel128, 99 },
    /* End */ END_ANIMATION
};

// [D_088a77f8] Player - Very Happy
struct Animation anim_bon_dance_player_happy2[] = {
    /* 000 */ { bon_dance_cel131, 4 },
    /* 001 */ { bon_dance_cel132, 4 },
    /* 002 */ { bon_dance_cel133, 7 },
    /* 003 */ { bon_dance_cel133, 99 },
    /* 004 */ { bon_dance_cel133, 7 },
    /* 005 */ { bon_dance_cel132, 4 },
    /* 006 */ { bon_dance_cel131, 99 },
    /* End */ END_ANIMATION
};

// [D_088a7838] Donpan 3 - Very Happy
struct Animation anim_bon_dance_donpan3_happy2[] = {
    /* 000 */ { bon_dance_cel134, 4 },
    /* 001 */ { bon_dance_cel135, 4 },
    /* 002 */ { bon_dance_cel136, 7 },
    /* 003 */ { bon_dance_cel136, 99 },
    /* 004 */ { bon_dance_cel136, 7 },
    /* 005 */ { bon_dance_cel135, 4 },
    /* 006 */ { bon_dance_cel134, 99 },
    /* End */ END_ANIMATION
};

// [D_088a7878] Donpan 1 - Spin
struct Animation anim_bon_dance_donpan1_spin[] = {
    /* 000 */ { bon_dance_cel139, 1 },
    /* 001 */ { bon_dance_cel140, 2 },
    /* 002 */ { bon_dance_cel141, 3 },
    /* 003 */ { bon_dance_cel142, 3 },
    /* 004 */ { bon_dance_cel143, 3 },
    /* 005 */ { bon_dance_cel144, 3 },
    /* 006 */ { bon_dance_cel145, 3 },
    /* 007 */ { bon_dance_cel138, 2 },
    /* 008 */ { bon_dance_cel137, 1 },
    /* 009 */ { bon_dance_cel008, 4 },
    /* 010 */ { bon_dance_cel009, 10 },
    /* End */ END_ANIMATION
};

// [D_088a78d8] Donpan 2 - Spin
struct Animation anim_bon_dance_donpan2_spin[] = {
    /* 000 */ { bon_dance_cel148, 1 },
    /* 001 */ { bon_dance_cel149, 2 },
    /* 002 */ { bon_dance_cel150, 3 },
    /* 003 */ { bon_dance_cel151, 3 },
    /* 004 */ { bon_dance_cel152, 3 },
    /* 005 */ { bon_dance_cel153, 3 },
    /* 006 */ { bon_dance_cel154, 3 },
    /* 007 */ { bon_dance_cel147, 2 },
    /* 008 */ { bon_dance_cel146, 1 },
    /* 009 */ { bon_dance_cel025, 4 },
    /* 010 */ { bon_dance_cel026, 10 },
    /* End */ END_ANIMATION
};

// [D_088a7938] Donpan 3 - Spin
struct Animation anim_bon_dance_donpan3_spin[] = {
    /* 000 */ { bon_dance_cel157, 1 },
    /* 001 */ { bon_dance_cel158, 2 },
    /* 002 */ { bon_dance_cel159, 3 },
    /* 003 */ { bon_dance_cel160, 3 },
    /* 004 */ { bon_dance_cel161, 3 },
    /* 005 */ { bon_dance_cel162, 3 },
    /* 006 */ { bon_dance_cel163, 3 },
    /* 007 */ { bon_dance_cel156, 2 },
    /* 008 */ { bon_dance_cel155, 1 },
    /* 009 */ { bon_dance_cel058, 4 },
    /* 010 */ { bon_dance_cel059, 10 },
    /* End */ END_ANIMATION
};

// [D_088a7998] Donpan 4 - Spin
struct Animation anim_bon_dance_player_spin[] = {
    /* 000 */ { bon_dance_cel166, 1 },
    /* 001 */ { bon_dance_cel167, 2 },
    /* 002 */ { bon_dance_cel168, 3 },
    /* 003 */ { bon_dance_cel169, 3 },
    /* 004 */ { bon_dance_cel170, 3 },
    /* 005 */ { bon_dance_cel171, 3 },
    /* 006 */ { bon_dance_cel172, 3 },
    /* 007 */ { bon_dance_cel164, 2 },
    /* 008 */ { bon_dance_cel165, 1 },
    /* 009 */ { bon_dance_cel041, 4 },
    /* 010 */ { bon_dance_cel042, 10 },
    /* End */ END_ANIMATION
};

// [D_088a79f8] Yagura-chan - Unhappy
struct Animation anim_bon_dance_yagura_frown[] = {
    /* 000 */ { bon_dance_cel173, 3 },
    /* 001 */ { bon_dance_cel174, 3 },
    /* 002 */ { bon_dance_cel175, 24 },
    /* End */ END_ANIMATION
};
