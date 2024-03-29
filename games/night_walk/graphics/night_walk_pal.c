#include "global.h"
#include "graphics.h"

// [D_088ca170] Night Walk Palette
Palette night_walk_pal[] = {
    /* PALETTE 00 */ {
        /* 00 */ TO_RGB555(0x000000),
        /* 01 */ TO_RGB555(0x000000),
        /* 02 */ TO_RGB555(0x980008),
        /* 03 */ TO_RGB555(0xF80800),
        /* 04 */ TO_RGB555(0x98A008),
        /* 05 */ TO_RGB555(0xF0F818),
        /* 06 */ TO_RGB555(0x18B010),
        /* 07 */ TO_RGB555(0x28F818),
        /* 08 */ TO_RGB555(0x60B8C8),
        /* 09 */ TO_RGB555(0x78E0F8),
        /* 10 */ TO_RGB555(0x0010B8),
        /* 11 */ TO_RGB555(0x0820F8),
        /* 12 */ TO_RGB555(0xC060B0),
        /* 13 */ TO_RGB555(0xF878E0),
        /* 14 */ TO_RGB555(0xA8B0A8),
        /* 15 */ TO_RGB555(0xF8F8F8)
    },
    /* PALETTE 01 */ {
        /* 00 */ TO_RGB555(0x302008),
        /* 01 */ TO_RGB555(0x000000),
        /* 02 */ TO_RGB555(0x500000),
        /* 03 */ TO_RGB555(0x880000),
        /* 04 */ TO_RGB555(0x505800),
        /* 05 */ TO_RGB555(0x888808),
        /* 06 */ TO_RGB555(0x086008),
        /* 07 */ TO_RGB555(0x108808),
        /* 08 */ TO_RGB555(0x285058),
        /* 09 */ TO_RGB555(0x407888),
        /* 10 */ TO_RGB555(0x000858),
        /* 11 */ TO_RGB555(0x001098),
        /* 12 */ TO_RGB555(0x582850),
        /* 13 */ TO_RGB555(0x803870),
        /* 14 */ TO_RGB555(0x606860),
        /* 15 */ TO_RGB555(0x989898)
    },
    /* PALETTE 02 */ {
        /* 00 */ TO_RGB555(0x584010),
        /* 01 */ TO_RGB555(0x000000),
        /* 02 */ TO_RGB555(0x980008),
        /* 03 */ TO_RGB555(0xF80800),
        /* 04 */ TO_RGB555(0x98A008),
        /* 05 */ TO_RGB555(0xF8F818),
        /* 06 */ TO_RGB555(0x18B010),
        /* 07 */ TO_RGB555(0x28F818),
        /* 08 */ TO_RGB555(0x78E0F8),
        /* 09 */ TO_RGB555(0x0820F8),
        /* 10 */ TO_RGB555(0xF8C050),
        /* 11 */ TO_RGB555(0xF8E088),
        /* 12 */ TO_RGB555(0x80F890),
        /* 13 */ TO_RGB555(0x606860),
        /* 14 */ TO_RGB555(0xA8B0A8),
        /* 15 */ TO_RGB555(0xF8F8F8)
    },
    /* PALETTE 03 */ {
        /* 00 */ TO_RGB555(0x302008),
        /* 01 */ TO_RGB555(0x000000),
        /* 02 */ TO_RGB555(0x500000),
        /* 03 */ TO_RGB555(0x880000),
        /* 04 */ TO_RGB555(0x505800),
        /* 05 */ TO_RGB555(0x888808),
        /* 06 */ TO_RGB555(0x086008),
        /* 07 */ TO_RGB555(0x108808),
        /* 08 */ TO_RGB555(0x407888),
        /* 09 */ TO_RGB555(0x001098),
        /* 10 */ TO_RGB555(0xC89840),
        /* 11 */ TO_RGB555(0xC0B068),
        /* 12 */ TO_RGB555(0x408850),
        /* 13 */ TO_RGB555(0x303830),
        /* 14 */ TO_RGB555(0x606860),
        /* 15 */ TO_RGB555(0x989898)
    },
    /* PALETTE 04 */ {
        /* 00 */ TO_RGB555(0x500000),
        /* 01 */ TO_RGB555(0x000000),
        /* 02 */ TO_RGB555(0x000000),
        /* 03 */ TO_RGB555(0x000000),
        /* 04 */ TO_RGB555(0x78E0F8),
        /* 05 */ TO_RGB555(0x0820F8),
        /* 06 */ TO_RGB555(0x000000),
        /* 07 */ TO_RGB555(0x000000),
        /* 08 */ TO_RGB555(0xF8F818),
        /* 09 */ TO_RGB555(0x000000),
        /* 10 */ TO_RGB555(0x000000),
        /* 11 */ TO_RGB555(0x000000),
        /* 12 */ TO_RGB555(0x000000),
        /* 13 */ TO_RGB555(0xF8F8F8),
        /* 14 */ TO_RGB555(0xF80800),
        /* 15 */ TO_RGB555(0xF8F8F8)
    },
    /* PALETTE 05 */ {
        /* 00 */ TO_RGB555(0x505800),
        /* 01 */ TO_RGB555(0x000000),
        /* 02 */ TO_RGB555(0x000000),
        /* 03 */ TO_RGB555(0x000000),
        /* 04 */ TO_RGB555(0xF8F8F8),
        /* 05 */ TO_RGB555(0xF8F8F8),
        /* 06 */ TO_RGB555(0x000000),
        /* 07 */ TO_RGB555(0x000000),
        /* 08 */ TO_RGB555(0x000000),
        /* 09 */ TO_RGB555(0x000000),
        /* 10 */ TO_RGB555(0x000000),
        /* 11 */ TO_RGB555(0x000000),
        /* 12 */ TO_RGB555(0x000000),
        /* 13 */ TO_RGB555(0xC0F0F8),
        /* 14 */ TO_RGB555(0x78E0F8),
        /* 15 */ TO_RGB555(0xF8F8F8)
    },
    /* PALETTE 06 */ {
        /* 00 */ TO_RGB555(0x302008),
        /* 01 */ TO_RGB555(0x78E0F8),
        /* 02 */ TO_RGB555(0x000858),
        /* 03 */ TO_RGB555(0x78E0F8),
        /* 04 */ TO_RGB555(0x000858),
        /* 05 */ TO_RGB555(0x000878),
        /* 06 */ TO_RGB555(0x001098),
        /* 07 */ TO_RGB555(0x0010B8),
        /* 08 */ TO_RGB555(0x0018D0),
        /* 09 */ TO_RGB555(0x0820F8),
        /* 10 */ TO_RGB555(0x000000),
        /* 11 */ TO_RGB555(0x000000),
        /* 12 */ TO_RGB555(0x000000),
        /* 13 */ TO_RGB555(0x78E0F8),
        /* 14 */ TO_RGB555(0x28F818),
        /* 15 */ TO_RGB555(0xF8F8F8)
    },
    /* PALETTE 07 */ {
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
        /* 13 */ TO_RGB555(0x3878F8),
        /* 14 */ TO_RGB555(0xF0F818),
        /* 15 */ TO_RGB555(0xF8F8F8)
    },
    /* PALETTE 08 */ {
        /* 00 */ TO_RGB555(0x204840),
        /* 01 */ TO_RGB555(0x000000),
        /* 02 */ TO_RGB555(0x0820B0),
        /* 03 */ TO_RGB555(0x0820B0),
        /* 04 */ TO_RGB555(0x0820B0),
        /* 05 */ TO_RGB555(0xF8F8F8),
        /* 06 */ TO_RGB555(0x000000),
        /* 07 */ TO_RGB555(0x000000),
        /* 08 */ TO_RGB555(0x000000),
        /* 09 */ TO_RGB555(0x000000),
        /* 10 */ TO_RGB555(0x000000),
        /* 11 */ TO_RGB555(0x000000),
        /* 12 */ TO_RGB555(0x000000),
        /* 13 */ TO_RGB555(0x0820F8),
        /* 14 */ TO_RGB555(0xF878E0),
        /* 15 */ TO_RGB555(0xF8F8F8)
    },
    /* PALETTE 09 */ {
        /* 00 */ TO_RGB555(0x086008),
        /* 01 */ TO_RGB555(0x000000),
        /* 02 */ TO_RGB555(0xF8F8F8),
        /* 03 */ TO_RGB555(0x0820B0),
        /* 04 */ TO_RGB555(0x0820B0),
        /* 05 */ TO_RGB555(0x0820B0),
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
    /* PALETTE 10 */ {
        /* 00 */ TO_RGB555(0x086008),
        /* 01 */ TO_RGB555(0x000000),
        /* 02 */ TO_RGB555(0x0820B0),
        /* 03 */ TO_RGB555(0xF8F8F8),
        /* 04 */ TO_RGB555(0x0820B0),
        /* 05 */ TO_RGB555(0x0820B0),
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
    /* PALETTE 11 */ {
        /* 00 */ TO_RGB555(0x086008),
        /* 01 */ TO_RGB555(0x000000),
        /* 02 */ TO_RGB555(0x0820B0),
        /* 03 */ TO_RGB555(0x0820B0),
        /* 04 */ TO_RGB555(0xF8F8F8),
        /* 05 */ TO_RGB555(0x0820B0),
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
    }
};
