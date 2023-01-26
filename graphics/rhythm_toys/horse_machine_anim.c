#include "global.h"
#include "graphics.h"

#include "horse_machine_anim_cells.inc.c"

// [D_089303c0] Walk (Horse)
const struct Animation anim_horse_walk[] = {
    /* 000 */ { horse_machine_cel005, 16 },
    /* 001 */ { horse_machine_cel002, 16 },
    /* 002 */ { horse_machine_cel003, 16 },
    /* 003 */ { horse_machine_cel004, 16 },
    /* End */ END_ANIMATION
};

// [D_089303e8] Walk (Jockey)
const struct Animation anim_horse_walk_jockey[] = {
    /* 000 */ { horse_machine_cel010, 16 },
    /* 001 */ { horse_machine_cel011, 16 },
    /* 002 */ { horse_machine_cel010, 16 },
    /* 003 */ { horse_machine_cel011, 16 },
    /* End */ END_ANIMATION
};

// [D_08930410] Trot (Horse)
const struct Animation anim_horse_trot[] = {
    /* 000 */ { horse_machine_cel007, 12 },
    /* 001 */ { horse_machine_cel008, 12 },
    /* 002 */ { horse_machine_cel009, 12 },
    /* 003 */ { horse_machine_cel006, 12 },
    /* End */ END_ANIMATION
};

// [D_08930438] Trot (Jockey)
const struct Animation anim_horse_trot_jockey[] = {
    /* 000 */ { horse_machine_cel010, 12 },
    /* 001 */ { horse_machine_cel011, 12 },
    /* 002 */ { horse_machine_cel010, 12 },
    /* 003 */ { horse_machine_cel011, 12 },
    /* End */ END_ANIMATION
};

// [D_08930460] Canter (Horse)
const struct Animation anim_horse_canter[] = {
    /* 000 */ { horse_machine_cel015, 8 },
    /* 001 */ { horse_machine_cel012, 8 },
    /* 002 */ { horse_machine_cel013, 8 },
    /* 003 */ { horse_machine_cel014, 8 },
    /* End */ END_ANIMATION
};

// [D_08930488] Canter (Jockey)
const struct Animation anim_horse_canter_jockey[] = {
    /* 000 */ { horse_machine_cel019, 8 },
    /* 001 */ { horse_machine_cel016, 8 },
    /* 002 */ { horse_machine_cel017, 8 },
    /* 003 */ { horse_machine_cel018, 8 },
    /* End */ END_ANIMATION
};

// [D_089304b0] Gallop (Horse)
const struct Animation anim_horse_gallop[] = {
    /* 000 */ { horse_machine_cel021, 6 },
    /* 001 */ { horse_machine_cel022, 6 },
    /* 002 */ { horse_machine_cel023, 6 },
    /* 003 */ { horse_machine_cel024, 6 },
    /* 004 */ { horse_machine_cel025, 6 },
    /* End */ END_ANIMATION
};

// [D_089304e0] Gallop (Jockey)
const struct Animation anim_horse_gallop_jockey[] = {
    /* 000 */ { horse_machine_cel019, 6 },
    /* 001 */ { horse_machine_cel016, 6 },
    /* 002 */ { horse_machine_cel017, 6 },
    /* 003 */ { horse_machine_cel017, 6 },
    /* 004 */ { horse_machine_cel018, 6 },
    /* End */ END_ANIMATION
};

// [D_08930510] Blank
const struct Animation anim_horse_machine_blank1[] = {
    /* 000 */ { horse_machine_cel000, 12 },
    /* End */ END_ANIMATION
};

// [D_08930520] Blank
const struct Animation anim_horse_machine_blank2[] = {
    /* 000 */ { horse_machine_cel000, 12 },
    /* End */ END_ANIMATION
};

// [D_08930530] Blank
const struct Animation anim_horse_machine_blank3[] = {
    /* 000 */ { horse_machine_cel000, 2 },
    /* End */ END_ANIMATION
};

// [D_08930540] Blank
const struct Animation anim_horse_machine_blank4[] = {
    /* 000 */ { horse_machine_cel000, 12 },
    /* End */ END_ANIMATION
};

// [D_08930550] Indicator - "パッ" ("pa[k]")
const struct Animation anim_horse_text_pak[] = {
    /* 000 */ { horse_machine_cel026, 4 },
    /* 001 */ { horse_machine_cel027, 4 },
    /* End */ END_ANIMATION
};

// [D_08930568] Indicator - "カ" ("ka")
const struct Animation anim_horse_text_ka[] = {
    /* 000 */ { horse_machine_cel028, 4 },
    /* 001 */ { horse_machine_cel029, 4 },
    /* End */ END_ANIMATION
};

// [D_08930580] Indicator - "ラッ" ("ra[p]")
const struct Animation anim_horse_text_rap[] = {
    /* 000 */ { horse_machine_cel032, 4 },
    /* 001 */ { horse_machine_cel033, 4 },
    /* End */ END_ANIMATION
};

// [D_08930598] Indicator - "トッ" ("to[t]")
const struct Animation anim_horse_text_tot[] = {
    /* 000 */ { horse_machine_cel034, 4 },
    /* 001 */ { horse_machine_cel035, 4 },
    /* End */ END_ANIMATION
};

// [D_089305b0] Indicator - "ドッ" ("do[d]")
const struct Animation anim_horse_text_dod[] = {
    /* 000 */ { horse_machine_cel038, 4 },
    /* 001 */ { horse_machine_cel039, 4 },
    /* End */ END_ANIMATION
};

// [D_089305c8] Blank
const struct Animation anim_horse_text_blank[] = {
    /* 000 */ { horse_machine_cel000, 1 },
    /* End */ END_ANIMATION
};

// [D_089305d8] Indicator - "パ" ("pa")
const struct Animation anim_horse_text_pa[] = {
    /* 000 */ { horse_machine_cel030, 4 },
    /* 001 */ { horse_machine_cel031, 4 },
    /* End */ END_ANIMATION
};

// [D_089305f0] Horse Standing Still
const struct Animation anim_horse_still[] = {
    /* 000 */ { horse_machine_cel002, 4 },
    /* End */ END_ANIMATION
};

// [D_08930600] Indicator - "ド" ("do")
const struct Animation anim_horse_text_do[] = {
    /* 000 */ { horse_machine_cel036, 4 },
    /* 001 */ { horse_machine_cel037, 4 },
    /* End */ END_ANIMATION
};

// [D_08930618] Tachometer Hand
const struct Animation anim_horse_tachometer_hand[] = {
    /* 000 */ { horse_machine_cel040, 4 },
    /* End */ END_ANIMATION
};

// [D_08930628] Speedometer Hand
const struct Animation anim_horse_speedometer_hand[] = {
    /* 000 */ { horse_machine_cel040, 4 },
    /* End */ END_ANIMATION
};

// [D_08930638] Tachometer High-Speed Light
const struct Animation anim_horse_high_speed_light[] = {
    /* 000 */ { horse_machine_cel042, 4 },
    /* 001 */ { horse_machine_cel041, 8 },
    /* End */ END_ANIMATION
};
