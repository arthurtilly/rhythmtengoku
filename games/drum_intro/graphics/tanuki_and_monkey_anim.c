#include "global.h"
#include "graphics.h"

#include "tanuki_and_monkey_anim_cells.inc.c"

// [D_08914818] Tanuki - Right Arm
struct Animation anim_drum_tanuki_use_tom_r[] = {
    /* 000 */ { tanuki_and_monkey_cel008, 1 },
    /* 001 */ { tanuki_and_monkey_cel009, 1 },
    /* 002 */ { tanuki_and_monkey_cel010, 1 },
    /* 003 */ { tanuki_and_monkey_cel011, 3 },
    /* 004 */ { tanuki_and_monkey_cel012, 3 },
    /* 005 */ { tanuki_and_monkey_cel013, 4 },
    /* 006 */ { tanuki_and_monkey_cel014, 4 },
    /* 007 */ { tanuki_and_monkey_cel015, 4 },
    /* 008 */ { tanuki_and_monkey_cel016, 4 },
    /* 009 */ { tanuki_and_monkey_cel017, 20 },
    /* End */ END_ANIMATION
};

// [D_08914870] Tanuki - Left Arm
struct Animation anim_drum_tanuki_use_tom_l[] = {
    /* 000 */ { tanuki_and_monkey_cel021, 1 },
    /* 001 */ { tanuki_and_monkey_cel022, 1 },
    /* 002 */ { tanuki_and_monkey_cel023, 1 },
    /* 003 */ { tanuki_and_monkey_cel024, 3 },
    /* 004 */ { tanuki_and_monkey_cel025, 3 },
    /* 005 */ { tanuki_and_monkey_cel026, 4 },
    /* 006 */ { tanuki_and_monkey_cel027, 4 },
    /* 007 */ { tanuki_and_monkey_cel028, 4 },
    /* 008 */ { tanuki_and_monkey_cel029, 4 },
    /* 009 */ { tanuki_and_monkey_cel030, 20 },
    /* End */ END_ANIMATION
};

// [D_089148c8] Monkey - Right Arm
struct Animation anim_drum_monkey_use_snare_r[] = {
    /* 000 */ { tanuki_and_monkey_cel045, 1 },
    /* 001 */ { tanuki_and_monkey_cel044, 1 },
    /* 002 */ { tanuki_and_monkey_cel043, 1 },
    /* 003 */ { tanuki_and_monkey_cel042, 3 },
    /* 004 */ { tanuki_and_monkey_cel041, 3 },
    /* 005 */ { tanuki_and_monkey_cel040, 4 },
    /* 006 */ { tanuki_and_monkey_cel039, 4 },
    /* 007 */ { tanuki_and_monkey_cel038, 4 },
    /* 008 */ { tanuki_and_monkey_cel037, 4 },
    /* 009 */ { tanuki_and_monkey_cel036, 20 },
    /* End */ END_ANIMATION
};

// [D_08914920] Monkey - Left Arm
struct Animation anim_drum_monkey_use_snare_l[] = {
    /* 000 */ { tanuki_and_monkey_cel046, 1 },
    /* 001 */ { tanuki_and_monkey_cel047, 1 },
    /* 002 */ { tanuki_and_monkey_cel048, 1 },
    /* 003 */ { tanuki_and_monkey_cel049, 3 },
    /* 004 */ { tanuki_and_monkey_cel050, 3 },
    /* 005 */ { tanuki_and_monkey_cel051, 4 },
    /* 006 */ { tanuki_and_monkey_cel052, 4 },
    /* 007 */ { tanuki_and_monkey_cel053, 4 },
    /* 008 */ { tanuki_and_monkey_cel054, 4 },
    /* 009 */ { tanuki_and_monkey_cel055, 20 },
    /* End */ END_ANIMATION
};

// [D_08914978] Tanuki - Beat
struct Animation anim_drum_tanuki_beat[] = {
    /* 000 */ { tanuki_and_monkey_cel002, 4 },
    /* 001 */ { tanuki_and_monkey_cel000, 2 },
    /* 002 */ { tanuki_and_monkey_cel001, 30 },
    /* End */ END_ANIMATION
};

// [D_08914998] Monkey - Beat
struct Animation anim_drum_monkey_beat[] = {
    /* 000 */ { tanuki_and_monkey_cel020, 0 },
    /* 001 */ { tanuki_and_monkey_cel019, 4 },
    /* 002 */ { tanuki_and_monkey_cel018, 2 },
    /* 003 */ { tanuki_and_monkey_cel019, 30 },
    /* End */ END_ANIMATION
};

// [D_089149c0] Anger Smoke Cloud
struct Animation anim_drum_monkey_anger_puff[] = {
    /* 000 */ { tanuki_and_monkey_cel062, 4 },
    /* 001 */ { tanuki_and_monkey_cel063, 5 },
    /* 002 */ { tanuki_and_monkey_cel064, 4 },
    /* 003 */ { tanuki_and_monkey_cel065, 4 },
    /* 004 */ { tanuki_and_monkey_cel066, 4 },
    /* 005 */ { tanuki_and_monkey_cel067, 4 },
    /* End */ END_ANIMATION
};

// [D_089149f8] Snare Drum
struct Animation anim_drum_monkey_kit_snare1[] = {
    /* 000 */ { tanuki_and_monkey_cel031, 3 },
    /* 001 */ { tanuki_and_monkey_cel032, 2 },
    /* 002 */ { tanuki_and_monkey_cel031, 30 },
    /* End */ END_ANIMATION
};

// [D_08914a18] Tom Drum
struct Animation anim_drum_tanuki_kit_tom1[] = {
    /* 000 */ { tanuki_and_monkey_cel056, 3 },
    /* 001 */ { tanuki_and_monkey_cel057, 2 },
    /* 002 */ { tanuki_and_monkey_cel058, 30 },
    /* End */ END_ANIMATION
};

// [D_08914a38] Snare Drum (Alt. Palette)
struct Animation anim_drum_monkey_kit_snare2[] = {
    /* 000 */ { tanuki_and_monkey_cel033, 3 },
    /* 001 */ { tanuki_and_monkey_cel034, 2 },
    /* 002 */ { tanuki_and_monkey_cel033, 30 },
    /* End */ END_ANIMATION
};

// [D_08914a58] Tom Drum (Alt. Palette)
struct Animation anim_drum_tanuki_kit_tom2[] = {
    /* 000 */ { tanuki_and_monkey_cel059, 3 },
    /* 001 */ { tanuki_and_monkey_cel060, 2 },
    /* 002 */ { tanuki_and_monkey_cel061, 30 },
    /* End */ END_ANIMATION
};

// [D_08914a78] Tanuki - Sigh
struct Animation anim_drum_tanuki_sigh[] = {
    /* 000 */ { tanuki_and_monkey_cel001, 8 },
    /* 001 */ { tanuki_and_monkey_cel003, 8 },
    /* 002 */ { tanuki_and_monkey_cel004, 8 },
    /* 003 */ { tanuki_and_monkey_cel005, 8 },
    /* 004 */ { tanuki_and_monkey_cel006, 8 },
    /* 005 */ { tanuki_and_monkey_cel007, 20 },
    /* End */ END_ANIMATION
};
