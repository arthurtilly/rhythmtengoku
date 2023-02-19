#include "global.h"
#include "graphics.h"

#include "bon_odori_anim_cells.inc.c"

// [D_088aa84c] Donpan 1 - Beat
struct Animation anim_bon_odori_donpan1_beat[] = {
    /* 000 */ { bon_odori_cel008, 4 },
    /* 001 */ { bon_odori_cel010, 4 },
    /* 002 */ { bon_odori_cel011, 7 },
    /* 003 */ { bon_odori_cel012, 99 },
    /* 004 */ { bon_odori_cel011, 7 },
    /* 005 */ { bon_odori_cel010, 4 },
    /* 006 */ { bon_odori_cel008, 99 },
    /* End */ END_ANIMATION
};

// [D_088aa88c] Blank
struct Animation anim_bon_odori_blank[] = {
    /* 000 */ { bon_odori_cel000, 20 },
    /* 001 */ { bon_odori_cel001, 20 },
    /* End */ END_ANIMATION
};

// [D_088aa8a4] Donpan 1 - Clap (Side)
struct Animation anim_bon_odori_donpan1_clap1[] = {
    /* 000 */ { bon_odori_cel002, 2 },
    /* 001 */ { bon_odori_cel003, 2 },
    /* 002 */ { bon_odori_cel004, 2 },
    /* 003 */ { bon_odori_cel005, 2 },
    /* 004 */ { bon_odori_cel006, 4 },
    /* 005 */ { bon_odori_cel007, 4 },
    /* 006 */ { bon_odori_cel009, 4 },
    /* 007 */ { bon_odori_cel008, 20 },
    /* End */ END_ANIMATION
};

// [D_088aa8ec] Donpan 1 - Clap (Front)
struct Animation anim_bon_odori_donpan1_clap2[] = {
    /* 000 */ { bon_odori_cel013, 4 },
    /* 001 */ { bon_odori_cel014, 4 },
    /* 002 */ { bon_odori_cel015, 4 },
    /* 003 */ { bon_odori_cel016, 4 },
    /* 004 */ { bon_odori_cel017, 4 },
    /* 005 */ { bon_odori_cel018, 20 },
    /* End */ END_ANIMATION
};

// [D_088aa924] Donpan 2 - Beat
struct Animation anim_bon_odori_donpan2_beat[] = {
    /* 000 */ { bon_odori_cel025, 4 },
    /* 001 */ { bon_odori_cel027, 4 },
    /* 002 */ { bon_odori_cel028, 7 },
    /* 003 */ { bon_odori_cel029, 99 },
    /* 004 */ { bon_odori_cel028, 7 },
    /* 005 */ { bon_odori_cel027, 4 },
    /* 006 */ { bon_odori_cel025, 99 },
    /* End */ END_ANIMATION
};

// [D_088aa964] Donpan 2 - Clap (Side)
struct Animation anim_bon_odori_donpan2_clap1[] = {
    /* 000 */ { bon_odori_cel019, 2 },
    /* 001 */ { bon_odori_cel020, 2 },
    /* 002 */ { bon_odori_cel021, 2 },
    /* 003 */ { bon_odori_cel022, 2 },
    /* 004 */ { bon_odori_cel023, 4 },
    /* 005 */ { bon_odori_cel024, 4 },
    /* 006 */ { bon_odori_cel025, 4 },
    /* 007 */ { bon_odori_cel026, 20 },
    /* End */ END_ANIMATION
};

// [D_088aa9ac] Donpan 2 - Clap (Front)
struct Animation anim_bon_odori_donpan2_clap2[] = {
    /* 000 */ { bon_odori_cel030, 4 },
    /* 001 */ { bon_odori_cel031, 4 },
    /* 002 */ { bon_odori_cel032, 4 },
    /* 003 */ { bon_odori_cel033, 4 },
    /* 004 */ { bon_odori_cel034, 4 },
    /* 005 */ { bon_odori_cel035, 20 },
    /* End */ END_ANIMATION
};

// [D_088aa9e4] Player - Beat
struct Animation anim_bon_odori_player_beat[] = {
    /* 000 */ { bon_odori_cel041, 4 },
    /* 001 */ { bon_odori_cel043, 4 },
    /* 002 */ { bon_odori_cel044, 7 },
    /* 003 */ { bon_odori_cel045, 99 },
    /* 004 */ { bon_odori_cel044, 7 },
    /* 005 */ { bon_odori_cel043, 4 },
    /* 006 */ { bon_odori_cel041, 99 },
    /* End */ END_ANIMATION
};

// [D_088aaa24] Player - Clap (Side)
struct Animation anim_bon_odori_player_clap1[] = {
    /* 000 */ { bon_odori_cel036, 2 },
    /* 001 */ { bon_odori_cel037, 2 },
    /* 002 */ { bon_odori_cel038, 2 },
    /* 003 */ { bon_odori_cel039, 2 },
    /* 004 */ { bon_odori_cel040, 4 },
    /* 005 */ { bon_odori_cel041, 4 },
    /* 006 */ { bon_odori_cel042, 4 },
    /* 007 */ { bon_odori_cel041, 20 },
    /* End */ END_ANIMATION
};

// [D_088aaa6c] Player - Clap (Front)
struct Animation anim_bon_odori_player_clap2[] = {
    /* 000 */ { bon_odori_cel046, 4 },
    /* 001 */ { bon_odori_cel047, 4 },
    /* 002 */ { bon_odori_cel048, 4 },
    /* 003 */ { bon_odori_cel049, 4 },
    /* 004 */ { bon_odori_cel050, 4 },
    /* 005 */ { bon_odori_cel051, 20 },
    /* End */ END_ANIMATION
};

// [D_088aaaa4] Donpan 3 - Beat
struct Animation anim_bon_odori_donpan3_beat[] = {
    /* 000 */ { bon_odori_cel058, 4 },
    /* 001 */ { bon_odori_cel060, 4 },
    /* 002 */ { bon_odori_cel061, 7 },
    /* 003 */ { bon_odori_cel062, 99 },
    /* 004 */ { bon_odori_cel061, 7 },
    /* 005 */ { bon_odori_cel060, 4 },
    /* 006 */ { bon_odori_cel058, 99 },
    /* End */ END_ANIMATION
};

// [D_088aaae4] Donpan 3 - Clap (Side)
struct Animation anim_bon_odori_donpan3_clap1[] = {
    /* 000 */ { bon_odori_cel052, 2 },
    /* 001 */ { bon_odori_cel053, 2 },
    /* 002 */ { bon_odori_cel054, 2 },
    /* 003 */ { bon_odori_cel055, 2 },
    /* 004 */ { bon_odori_cel056, 4 },
    /* 005 */ { bon_odori_cel057, 4 },
    /* 006 */ { bon_odori_cel058, 4 },
    /* 007 */ { bon_odori_cel059, 20 },
    /* End */ END_ANIMATION
};

// [D_088aab2c] Donpan 3 - Clap (Front)
struct Animation anim_bon_odori_donpan3_clap2[] = {
    /* 000 */ { bon_odori_cel063, 4 },
    /* 001 */ { bon_odori_cel064, 4 },
    /* 002 */ { bon_odori_cel065, 4 },
    /* 003 */ { bon_odori_cel066, 4 },
    /* 004 */ { bon_odori_cel067, 4 },
    /* 005 */ { bon_odori_cel068, 20 },
    /* End */ END_ANIMATION
};

// [D_088aab64] Donpan 1 - Test Animation
struct Animation anim_bon_odori_donpan_test[] = {
    /* 000 */ { bon_odori_cel013, 2 },
    /* 001 */ { bon_odori_cel014, 2 },
    /* 002 */ { bon_odori_cel015, 2 },
    /* 003 */ { bon_odori_cel016, 2 },
    /* 004 */ { bon_odori_cel017, 2 },
    /* 005 */ { bon_odori_cel018, 4 },
    /* 006 */ { bon_odori_cel013, 2 },
    /* 007 */ { bon_odori_cel014, 2 },
    /* 008 */ { bon_odori_cel015, 2 },
    /* 009 */ { bon_odori_cel016, 2 },
    /* 010 */ { bon_odori_cel017, 2 },
    /* 011 */ { bon_odori_cel018, 4 },
    /* 012 */ { bon_odori_cel069, 4 },
    /* 013 */ { bon_odori_cel070, 4 },
    /* 014 */ { bon_odori_cel071, 4 },
    /* 015 */ { bon_odori_cel072, 20 },
    /* End */ END_ANIMATION
};

// [D_088aabec] Donpan 1 - Bow
struct Animation anim_bon_odori_donpan1_bow[] = {
    /* 000 */ { bon_odori_cel069, 4 },
    /* 001 */ { bon_odori_cel070, 4 },
    /* 002 */ { bon_odori_cel071, 4 },
    /* 003 */ { bon_odori_cel072, 20 },
    /* End */ END_ANIMATION
};

// [D_088aac14] Donpan 2 - Bow
struct Animation anim_bon_odori_donpan2_bow[] = {
    /* 000 */ { bon_odori_cel073, 4 },
    /* 001 */ { bon_odori_cel074, 4 },
    /* 002 */ { bon_odori_cel075, 4 },
    /* 003 */ { bon_odori_cel076, 20 },
    /* End */ END_ANIMATION
};

// [D_088aac3c] Player - Bow
struct Animation anim_bon_odori_player_bow[] = {
    /* 000 */ { bon_odori_cel077, 4 },
    /* 001 */ { bon_odori_cel078, 4 },
    /* 002 */ { bon_odori_cel079, 4 },
    /* 003 */ { bon_odori_cel080, 20 },
    /* End */ END_ANIMATION
};

// [D_088aac64] Donpan 3 - Bow
struct Animation anim_bon_odori_donpan3_bow[] = {
    /* 000 */ { bon_odori_cel081, 4 },
    /* 001 */ { bon_odori_cel082, 4 },
    /* 002 */ { bon_odori_cel083, 4 },
    /* 003 */ { bon_odori_cel084, 20 },
    /* End */ END_ANIMATION
};

// [D_088aac8c] Donpan 2 - Unimpressed
struct Animation anim_bon_odori_donpan2_glare[] = {
    /* 000 */ { bon_odori_cel089, 4 },
    /* 001 */ { bon_odori_cel087, 4 },
    /* 002 */ { bon_odori_cel086, 7 },
    /* 003 */ { bon_odori_cel085, 99 },
    /* 004 */ { bon_odori_cel086, 7 },
    /* 005 */ { bon_odori_cel087, 4 },
    /* 006 */ { bon_odori_cel089, 99 },
    /* End */ END_ANIMATION
};

// [D_088aaccc] Donpan 1 - Unimpressed
struct Animation anim_bon_odori_donpan1_glare[] = {
    /* 000 */ { bon_odori_cel094, 4 },
    /* 001 */ { bon_odori_cel092, 4 },
    /* 002 */ { bon_odori_cel091, 7 },
    /* 003 */ { bon_odori_cel090, 99 },
    /* 004 */ { bon_odori_cel091, 7 },
    /* 005 */ { bon_odori_cel092, 4 },
    /* 006 */ { bon_odori_cel094, 99 },
    /* End */ END_ANIMATION
};

// [D_088aad0c] Donpan 3 - Unimpressed
struct Animation anim_bon_odori_donpan3_glare[] = {
    /* 000 */ { bon_odori_cel099, 4 },
    /* 001 */ { bon_odori_cel097, 4 },
    /* 002 */ { bon_odori_cel096, 7 },
    /* 003 */ { bon_odori_cel095, 99 },
    /* 004 */ { bon_odori_cel096, 7 },
    /* 005 */ { bon_odori_cel097, 4 },
    /* 006 */ { bon_odori_cel099, 99 },
    /* End */ END_ANIMATION
};

// [D_088aad4c] Yagura-chan - Beat
struct Animation anim_bon_odori_yagura_beat[] = {
    /* 000 */ { bon_odori_cel102, 3 },
    /* 001 */ { bon_odori_cel101, 3 },
    /* 002 */ { bon_odori_cel100, 24 },
    /* End */ END_ANIMATION
};

// [D_088aad6c] Yagura-chan - Speak
struct Animation anim_bon_odori_yagura_speak[] = {
    /* 000 */ { bon_odori_cel103, 4 },
    /* 001 */ { bon_odori_cel104, 24 },
    /* End */ END_ANIMATION
};

// [D_088aad84] Donpan 1 - Happy
struct Animation anim_bon_odori_donpan1_happy1[] = {
    /* 000 */ { bon_odori_cel105, 4 },
    /* 001 */ { bon_odori_cel107, 4 },
    /* 002 */ { bon_odori_cel108, 7 },
    /* 003 */ { bon_odori_cel109, 99 },
    /* 004 */ { bon_odori_cel108, 7 },
    /* 005 */ { bon_odori_cel107, 4 },
    /* 006 */ { bon_odori_cel105, 99 },
    /* End */ END_ANIMATION
};

// [D_088aadc4] Donpan 2 - Happy
struct Animation anim_bon_odori_donpan2_happy1[] = {
    /* 000 */ { bon_odori_cel110, 4 },
    /* 001 */ { bon_odori_cel112, 4 },
    /* 002 */ { bon_odori_cel113, 7 },
    /* 003 */ { bon_odori_cel114, 99 },
    /* 004 */ { bon_odori_cel113, 7 },
    /* 005 */ { bon_odori_cel112, 4 },
    /* 006 */ { bon_odori_cel110, 99 },
    /* End */ END_ANIMATION
};

// [D_088aae04] Player - Happy
struct Animation anim_bon_odori_player_happy1[] = {
    /* 000 */ { bon_odori_cel115, 4 },
    /* 001 */ { bon_odori_cel117, 4 },
    /* 002 */ { bon_odori_cel118, 7 },
    /* 003 */ { bon_odori_cel119, 99 },
    /* 004 */ { bon_odori_cel118, 7 },
    /* 005 */ { bon_odori_cel117, 4 },
    /* 006 */ { bon_odori_cel115, 99 },
    /* End */ END_ANIMATION
};

// [D_088aae44] Donpan 3 - Happy
struct Animation anim_bon_odori_donpan3_happy1[] = {
    /* 000 */ { bon_odori_cel120, 4 },
    /* 001 */ { bon_odori_cel122, 4 },
    /* 002 */ { bon_odori_cel123, 7 },
    /* 003 */ { bon_odori_cel124, 99 },
    /* 004 */ { bon_odori_cel123, 7 },
    /* 005 */ { bon_odori_cel122, 4 },
    /* 006 */ { bon_odori_cel120, 99 },
    /* End */ END_ANIMATION
};

// [D_088aae84] Donpan 1 - Very Happy
struct Animation anim_bon_odori_donpan1_happy2[] = {
    /* 000 */ { bon_odori_cel125, 4 },
    /* 001 */ { bon_odori_cel126, 4 },
    /* 002 */ { bon_odori_cel127, 7 },
    /* 003 */ { bon_odori_cel127, 99 },
    /* 004 */ { bon_odori_cel127, 7 },
    /* 005 */ { bon_odori_cel126, 4 },
    /* 006 */ { bon_odori_cel125, 99 },
    /* End */ END_ANIMATION
};

// [D_088aaec4] Donpan 2 - Very Happy
struct Animation anim_bon_odori_donpan2_happy2[] = {
    /* 000 */ { bon_odori_cel128, 4 },
    /* 001 */ { bon_odori_cel129, 4 },
    /* 002 */ { bon_odori_cel130, 7 },
    /* 003 */ { bon_odori_cel130, 99 },
    /* 004 */ { bon_odori_cel130, 7 },
    /* 005 */ { bon_odori_cel129, 4 },
    /* 006 */ { bon_odori_cel128, 99 },
    /* End */ END_ANIMATION
};

// [D_088aaf04] Player - Very Happy
struct Animation anim_bon_odori_player_happy2[] = {
    /* 000 */ { bon_odori_cel131, 4 },
    /* 001 */ { bon_odori_cel132, 4 },
    /* 002 */ { bon_odori_cel133, 7 },
    /* 003 */ { bon_odori_cel133, 99 },
    /* 004 */ { bon_odori_cel133, 7 },
    /* 005 */ { bon_odori_cel132, 4 },
    /* 006 */ { bon_odori_cel131, 99 },
    /* End */ END_ANIMATION
};

// [D_088aaf44] Donpan 3 - Very Happy
struct Animation anim_bon_odori_donpan3_happy2[] = {
    /* 000 */ { bon_odori_cel134, 4 },
    /* 001 */ { bon_odori_cel135, 4 },
    /* 002 */ { bon_odori_cel136, 7 },
    /* 003 */ { bon_odori_cel136, 99 },
    /* 004 */ { bon_odori_cel136, 7 },
    /* 005 */ { bon_odori_cel135, 4 },
    /* 006 */ { bon_odori_cel134, 99 },
    /* End */ END_ANIMATION
};

// [D_088aaf84] Donpan 1 - Spin
struct Animation anim_bon_odori_donpan1_spin[] = {
    /* 000 */ { bon_odori_cel139, 1 },
    /* 001 */ { bon_odori_cel140, 2 },
    /* 002 */ { bon_odori_cel141, 3 },
    /* 003 */ { bon_odori_cel142, 3 },
    /* 004 */ { bon_odori_cel143, 3 },
    /* 005 */ { bon_odori_cel144, 3 },
    /* 006 */ { bon_odori_cel145, 3 },
    /* 007 */ { bon_odori_cel138, 2 },
    /* 008 */ { bon_odori_cel137, 1 },
    /* 009 */ { bon_odori_cel008, 4 },
    /* 010 */ { bon_odori_cel009, 10 },
    /* End */ END_ANIMATION
};

// [D_088aafe4] Donpan 2 - Spin
struct Animation anim_bon_odori_donpan2_spin[] = {
    /* 000 */ { bon_odori_cel148, 1 },
    /* 001 */ { bon_odori_cel149, 2 },
    /* 002 */ { bon_odori_cel150, 3 },
    /* 003 */ { bon_odori_cel151, 3 },
    /* 004 */ { bon_odori_cel152, 3 },
    /* 005 */ { bon_odori_cel153, 3 },
    /* 006 */ { bon_odori_cel154, 3 },
    /* 007 */ { bon_odori_cel147, 2 },
    /* 008 */ { bon_odori_cel146, 1 },
    /* 009 */ { bon_odori_cel025, 4 },
    /* 010 */ { bon_odori_cel026, 10 },
    /* End */ END_ANIMATION
};

// [D_088ab044] Donpan 3 - Spin
struct Animation anim_bon_odori_donpan3_spin[] = {
    /* 000 */ { bon_odori_cel157, 1 },
    /* 001 */ { bon_odori_cel158, 2 },
    /* 002 */ { bon_odori_cel159, 3 },
    /* 003 */ { bon_odori_cel160, 3 },
    /* 004 */ { bon_odori_cel161, 3 },
    /* 005 */ { bon_odori_cel162, 3 },
    /* 006 */ { bon_odori_cel163, 3 },
    /* 007 */ { bon_odori_cel156, 2 },
    /* 008 */ { bon_odori_cel155, 1 },
    /* 009 */ { bon_odori_cel058, 4 },
    /* 010 */ { bon_odori_cel059, 10 },
    /* End */ END_ANIMATION
};

// [D_088ab0a4] Donpan 4 - Spin
struct Animation anim_bon_odori_player_spin[] = {
    /* 000 */ { bon_odori_cel166, 1 },
    /* 001 */ { bon_odori_cel167, 2 },
    /* 002 */ { bon_odori_cel168, 3 },
    /* 003 */ { bon_odori_cel169, 3 },
    /* 004 */ { bon_odori_cel170, 3 },
    /* 005 */ { bon_odori_cel171, 3 },
    /* 006 */ { bon_odori_cel172, 3 },
    /* 007 */ { bon_odori_cel164, 2 },
    /* 008 */ { bon_odori_cel165, 1 },
    /* 009 */ { bon_odori_cel041, 4 },
    /* 010 */ { bon_odori_cel042, 10 },
    /* End */ END_ANIMATION
};

// [D_088ab104] Yagura-chan - Unhappy
struct Animation anim_bon_odori_yagura_frown[] = {
    /* 000 */ { bon_odori_cel173, 3 },
    /* 001 */ { bon_odori_cel174, 3 },
    /* 002 */ { bon_odori_cel175, 24 },
    /* End */ END_ANIMATION
};
