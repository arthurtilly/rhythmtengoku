#include "global.h"
#include "graphics.h"

#include "fireworks_anim_cells.inc.c"

// [D_088e8f14] <description>
const struct Animation fireworks_anim00[] = {
    /* 000 */ { fireworks_cel000, 2 },
    /* 001 */ { fireworks_cel001, 2 },
    /* 002 */ { fireworks_cel002, 2 },
    /* End */ END_ANIMATION
};

// [D_088e8f34] <description>
const struct Animation fireworks_anim01[] = {
    /* 000 */ { fireworks_cel003, 4 },
    /* 001 */ { fireworks_cel004, 4 },
    /* 002 */ { fireworks_cel005, 4 },
    /* 003 */ { fireworks_cel006, 4 },
    /* 004 */ { fireworks_cel007, 4 },
    /* End */ END_ANIMATION
};

// [D_088e8f64] <description>
const struct Animation fireworks_anim02[] = {
    /* 000 */ { fireworks_cel009, 32 },
    /* 001 */ { fireworks_cel010, 8 },
    /* 002 */ { fireworks_cel011, 6 },
    /* 003 */ { fireworks_cel012, 4 },
    /* 004 */ { fireworks_cel013, 4 },
    /* 005 */ { fireworks_cel014, 6 },
    /* 006 */ { fireworks_cel015, 8 },
    /* 007 */ { fireworks_cel016, 12 },
    /* 008 */ { fireworks_cel017, 16 },
    /* End */ END_ANIMATION
};

// [D_088e8fb4] <description>
const struct Animation fireworks_anim03[] = {
    /* 000 */ { fireworks_cel018, 2 },
    /* 001 */ { fireworks_cel019, 2 },
    /* 002 */ { fireworks_cel020, 2 },
    /* 003 */ { fireworks_cel018, 2 },
    /* 004 */ { fireworks_cel019, 2 },
    /* 005 */ { fireworks_cel020, 2 },
    /* 006 */ { fireworks_cel018, 2 },
    /* 007 */ { fireworks_cel020, 2 },
    /* 008 */ { fireworks_cel019, 2 },
    /* 009 */ { fireworks_cel018, 12 },
    /* 010 */ { fireworks_cel019, 10 },
    /* 011 */ { fireworks_cel020, 8 },
    /* 012 */ { fireworks_cel021, 6 },
    /* 013 */ { fireworks_cel022, 4 },
    /* 014 */ { fireworks_cel023, 4 },
    /* 015 */ { fireworks_cel024, 4 },
    /* 016 */ { fireworks_cel025, 4 },
    /* 017 */ { fireworks_cel026, 4 },
    /* End */ END_ANIMATION
};

// [D_088e904c] <description>
const struct Animation fireworks_anim04[] = {
    /* 000 */ { fireworks_cel008, 4 },
    /* End */ END_ANIMATION
};

// [D_088e905c] <description>
const struct Animation fireworks_anim05[] = {
    /* 000 */ { fireworks_cel027, 4 },
    /* 001 */ { fireworks_cel028, 4 },
    /* 002 */ { fireworks_cel029, 4 },
    /* 003 */ { fireworks_cel030, 4 },
    /* 004 */ { fireworks_cel031, 4 },
    /* 005 */ { fireworks_cel032, 4 },
    /* 006 */ { fireworks_cel033, 4 },
    /* 007 */ { fireworks_cel034, 4 },
    /* 008 */ { fireworks_cel035, 4 },
    /* End */ END_ANIMATION
};

// [D_088e90ac] <description>
const struct Animation fireworks_anim06[] = {
    /* 000 */ { fireworks_cel036, 4 },
    /* 001 */ { fireworks_cel037, 4 },
    /* End */ END_ANIMATION
};

// [D_088e90c4] <description>
const struct Animation fireworks_anim07[] = {
    /* 000 */ { fireworks_cel038, 1 },
    /* 001 */ { fireworks_cel039, 1 },
    /* 002 */ { fireworks_cel040, 1 },
    /* 003 */ { fireworks_cel041, 2 },
    /* 004 */ { fireworks_cel042, 3 },
    /* 005 */ { fireworks_cel043, 5 },
    /* 006 */ { fireworks_cel044, 7 },
    /* 007 */ { fireworks_cel045, 9 },
    /* 008 */ { fireworks_cel046, 12 },
    /* 009 */ { fireworks_cel047, 8 },
    /* End */ END_ANIMATION
};

// [D_088e911c] <description>
const struct Animation fireworks_anim08[] = {
    /* 000 */ { fireworks_cel009, 6 },
    /* 001 */ { fireworks_cel027, 6 },
    /* 002 */ { fireworks_cel018, 6 },
    /* 003 */ { fireworks_cel010, 5 },
    /* 004 */ { fireworks_cel028, 5 },
    /* 005 */ { fireworks_cel019, 5 },
    /* 006 */ { fireworks_cel011, 4 },
    /* 007 */ { fireworks_cel029, 4 },
    /* 008 */ { fireworks_cel020, 4 },
    /* 009 */ { fireworks_cel012, 4 },
    /* 010 */ { fireworks_cel030, 4 },
    /* 011 */ { fireworks_cel021, 4 },
    /* 012 */ { fireworks_cel013, 4 },
    /* 013 */ { fireworks_cel031, 4 },
    /* 014 */ { fireworks_cel022, 4 },
    /* 015 */ { fireworks_cel014, 4 },
    /* 016 */ { fireworks_cel032, 4 },
    /* 017 */ { fireworks_cel023, 4 },
    /* 018 */ { fireworks_cel015, 4 },
    /* 019 */ { fireworks_cel033, 4 },
    /* 020 */ { fireworks_cel024, 4 },
    /* 021 */ { fireworks_cel016, 4 },
    /* 022 */ { fireworks_cel034, 4 },
    /* 023 */ { fireworks_cel025, 4 },
    /* 024 */ { fireworks_cel017, 4 },
    /* 025 */ { fireworks_cel035, 4 },
    /* 026 */ { fireworks_cel026, 4 },
    /* End */ END_ANIMATION
};

// [D_088e91fc] <description>
const struct Animation fireworks_anim09[] = {
    /* 000 */ { fireworks_cel018, 6 },
    /* 001 */ { fireworks_cel009, 6 },
    /* 002 */ { fireworks_cel027, 6 },
    /* 003 */ { fireworks_cel019, 5 },
    /* 004 */ { fireworks_cel010, 5 },
    /* 005 */ { fireworks_cel028, 5 },
    /* 006 */ { fireworks_cel020, 4 },
    /* 007 */ { fireworks_cel011, 4 },
    /* 008 */ { fireworks_cel029, 4 },
    /* 009 */ { fireworks_cel021, 4 },
    /* 010 */ { fireworks_cel012, 4 },
    /* 011 */ { fireworks_cel030, 4 },
    /* 012 */ { fireworks_cel022, 4 },
    /* 013 */ { fireworks_cel013, 4 },
    /* 014 */ { fireworks_cel031, 4 },
    /* 015 */ { fireworks_cel023, 4 },
    /* 016 */ { fireworks_cel014, 4 },
    /* 017 */ { fireworks_cel032, 4 },
    /* 018 */ { fireworks_cel024, 4 },
    /* 019 */ { fireworks_cel015, 4 },
    /* 020 */ { fireworks_cel033, 4 },
    /* 021 */ { fireworks_cel025, 4 },
    /* 022 */ { fireworks_cel016, 4 },
    /* 023 */ { fireworks_cel034, 4 },
    /* 024 */ { fireworks_cel026, 4 },
    /* 025 */ { fireworks_cel017, 4 },
    /* 026 */ { fireworks_cel035, 4 },
    /* End */ END_ANIMATION
};

// [D_088e92dc] <description>
const struct Animation fireworks_anim10[] = {
    /* 000 */ { fireworks_cel009, 6 },
    /* 001 */ { fireworks_cel018, 6 },
    /* 002 */ { fireworks_cel027, 6 },
    /* 003 */ { fireworks_cel010, 5 },
    /* 004 */ { fireworks_cel019, 5 },
    /* 005 */ { fireworks_cel028, 5 },
    /* 006 */ { fireworks_cel011, 4 },
    /* 007 */ { fireworks_cel020, 4 },
    /* 008 */ { fireworks_cel029, 4 },
    /* 009 */ { fireworks_cel012, 4 },
    /* 010 */ { fireworks_cel021, 4 },
    /* 011 */ { fireworks_cel030, 4 },
    /* 012 */ { fireworks_cel013, 4 },
    /* 013 */ { fireworks_cel022, 4 },
    /* 014 */ { fireworks_cel031, 4 },
    /* 015 */ { fireworks_cel014, 4 },
    /* 016 */ { fireworks_cel023, 4 },
    /* 017 */ { fireworks_cel032, 4 },
    /* 018 */ { fireworks_cel015, 4 },
    /* 019 */ { fireworks_cel024, 4 },
    /* 020 */ { fireworks_cel033, 4 },
    /* 021 */ { fireworks_cel016, 4 },
    /* 022 */ { fireworks_cel025, 4 },
    /* 023 */ { fireworks_cel034, 4 },
    /* 024 */ { fireworks_cel017, 4 },
    /* 025 */ { fireworks_cel026, 4 },
    /* 026 */ { fireworks_cel035, 4 },
    /* End */ END_ANIMATION
};

// [D_088e93bc] <description>
const struct Animation fireworks_anim11[] = {
    /* 000 */ { fireworks_cel048, 4 },
    /* End */ END_ANIMATION
};

// [D_088e93cc] <description>
const struct Animation fireworks_anim12[] = {
    /* 000 */ { fireworks_cel049, 2 },
    /* 001 */ { fireworks_cel050, 2 },
    /* 002 */ { fireworks_cel051, 2 },
    /* End */ END_ANIMATION
};

// [D_088e93ec] <description>
const struct Animation fireworks_anim13[] = {
    /* 000 */ { fireworks_cel052, 2 },
    /* 001 */ { fireworks_cel053, 2 },
    /* 002 */ { fireworks_cel054, 2 },
    /* End */ END_ANIMATION
};

// [D_088e940c] <description>
const struct Animation fireworks_anim14[] = {
    /* 000 */ { fireworks_cel055, 2 },
    /* 001 */ { fireworks_cel056, 2 },
    /* 002 */ { fireworks_cel057, 2 },
    /* End */ END_ANIMATION
};

// [D_088e942c] <description>
const struct Animation fireworks_anim15[] = {
    /* 000 */ { fireworks_cel058, 4 },
    /* 001 */ { fireworks_cel059, 4 },
    /* 002 */ { fireworks_cel060, 4 },
    /* 003 */ { fireworks_cel061, 4 },
    /* End */ END_ANIMATION
};
