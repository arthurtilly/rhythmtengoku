#include "global.h"
#include "graphics.h"

// [D_088c430c] Drum Intro (Drum Samurai Scene) Palette (BG & OBJ)
Palette drum_intro_talk_pal[] = {
    /* PALETTE 00 */ {
        /* 00 */ TO_RGB555(0xF8F8F8),
        /* 01 */ TO_RGB555(0x302020),
        /* 02 */ TO_RGB555(0x586058),
        /* 03 */ TO_RGB555(0xF83028),
        /* 04 */ TO_RGB555(0x981818),
        /* 05 */ TO_RGB555(0xF8F8F8),
        /* 06 */ TO_RGB555(0xB8B0B0),
        /* 07 */ TO_RGB555(0xB07838),
        /* 08 */ TO_RGB555(0xF8F810),
        /* 09 */ TO_RGB555(0xF87030),
        /* 10 */ TO_RGB555(0x000000),
        /* 11 */ TO_RGB555(0x000000),
        /* 12 */ TO_RGB555(0x00E8F8),
        /* 13 */ TO_RGB555(0x000000),
        /* 14 */ TO_RGB555(0xF8F8F8),
        /* 15 */ TO_RGB555(0x000000)
    },
    /* PALETTE 01 */ {
        /* 00 */ TO_RGB555(0x2858B0),
        /* 01 */ TO_RGB555(0xF8B860),
        /* 02 */ TO_RGB555(0xD0C0C0),
        /* 03 */ TO_RGB555(0x686060),
        /* 04 */ TO_RGB555(0x000000),
        /* 05 */ TO_RGB555(0xF83028),
        /* 06 */ TO_RGB555(0x981818),
        /* 07 */ TO_RGB555(0xF87030),
        /* 08 */ TO_RGB555(0x48F820),
        /* 09 */ TO_RGB555(0xF8F810),
        /* 10 */ TO_RGB555(0x001088),
        /* 11 */ TO_RGB555(0x0820F8),
        /* 12 */ TO_RGB555(0x00E8F8),
        /* 13 */ TO_RGB555(0xF83838),
        /* 14 */ TO_RGB555(0xF8F8F8),
        /* 15 */ TO_RGB555(0x000030)
    },
    /* PALETTE 02 */ {
        /* 00 */ TO_RGB555(0x2858B0),
        /* 01 */ TO_RGB555(0x000000),
        /* 02 */ TO_RGB555(0x18D000),
        /* 03 */ TO_RGB555(0xF87030),
        /* 04 */ TO_RGB555(0x000000),
        /* 05 */ TO_RGB555(0x000000),
        /* 06 */ TO_RGB555(0x000000),
        /* 07 */ TO_RGB555(0x000000),
        /* 08 */ TO_RGB555(0x000000),
        /* 09 */ TO_RGB555(0x000000),
        /* 10 */ TO_RGB555(0x000000),
        /* 11 */ TO_RGB555(0x000000),
        /* 12 */ TO_RGB555(0x000000),
        /* 13 */ TO_RGB555(0x000000),
        /* 14 */ TO_RGB555(0x000000),
        /* 15 */ TO_RGB555(0x000000)
    },
    /* PALETTE 03 */ {
        /* 00 */ TO_RGB555(0x000000),
        /* 01 */ TO_RGB555(0x000000),
        /* 02 */ TO_RGB555(0x18D000),
        /* 03 */ TO_RGB555(0x000000),
        /* 04 */ TO_RGB555(0x000000),
        /* 05 */ TO_RGB555(0x000000),
        /* 06 */ TO_RGB555(0x000000),
        /* 07 */ TO_RGB555(0x000000),
        /* 08 */ TO_RGB555(0x000000),
        /* 09 */ TO_RGB555(0x000000),
        /* 10 */ TO_RGB555(0x000000),
        /* 11 */ TO_RGB555(0x000000),
        /* 12 */ TO_RGB555(0x000000),
        /* 13 */ TO_RGB555(0x000000),
        /* 14 */ TO_RGB555(0x000000),
        /* 15 */ TO_RGB555(0x000000)
    },
    /* PALETTE 04 */ {
        /* 00 */ TO_RGB555(0x000000),
        /* 01 */ TO_RGB555(0x000000),
        /* 02 */ TO_RGB555(0x000000),
        /* 03 */ TO_RGB555(0x000000),
        /* 04 */ TO_RGB555(0x000000),
        /* 05 */ TO_RGB555(0x000000),
        /* 06 */ TO_RGB555(0x000000),
        /* 07 */ TO_RGB555(0x000000),
        /* 08 */ TO_RGB555(0x000000),
        /* 09 */ TO_RGB555(0x000000),
        /* 10 */ TO_RGB555(0x000000),
        /* 11 */ TO_RGB555(0x000000),
        /* 12 */ TO_RGB555(0x000000),
        /* 13 */ TO_RGB555(0x000000),
        /* 14 */ TO_RGB555(0x000000),
        /* 15 */ TO_RGB555(0x000000)
    },
    /* PALETTE 05 */ {
        /* 00 */ TO_RGB555(0x000000),
        /* 01 */ TO_RGB555(0x000000),
        /* 02 */ TO_RGB555(0x000000),
        /* 03 */ TO_RGB555(0x000000),
        /* 04 */ TO_RGB555(0x000000),
        /* 05 */ TO_RGB555(0x000000),
        /* 06 */ TO_RGB555(0x000000),
        /* 07 */ TO_RGB555(0x000000),
        /* 08 */ TO_RGB555(0x000000),
        /* 09 */ TO_RGB555(0x000000),
        /* 10 */ TO_RGB555(0x000000),
        /* 11 */ TO_RGB555(0x000000),
        /* 12 */ TO_RGB555(0x000000),
        /* 13 */ TO_RGB555(0x000000),
        /* 14 */ TO_RGB555(0x000000),
        /* 15 */ TO_RGB555(0x000000)
    },
    /* PALETTE 06 */ {
        /* 00 */ TO_RGB555(0x988800),
        /* 01 */ TO_RGB555(0x000000),
        /* 02 */ TO_RGB555(0xF8F8F8),
        /* 03 */ TO_RGB555(0xF8F8F8),
        /* 04 */ TO_RGB555(0x484848),
        /* 05 */ TO_RGB555(0xC8C8C8),
        /* 06 */ TO_RGB555(0x30F8F8),
        /* 07 */ TO_RGB555(0xF8F8F8),
        /* 08 */ TO_RGB555(0xF8B860),
        /* 09 */ TO_RGB555(0x3848F8),
        /* 10 */ TO_RGB555(0xF8F8F8),
        /* 11 */ TO_RGB555(0xF8F8F8),
        /* 12 */ TO_RGB555(0xF80000),
        /* 13 */ TO_RGB555(0x989898),
        /* 14 */ TO_RGB555(0xF8F8F8),
        /* 15 */ TO_RGB555(0x000000)
    }
};
