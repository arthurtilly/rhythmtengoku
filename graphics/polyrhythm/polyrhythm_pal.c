#include "global.h"
#include "graphics.h"

// [D_088f633c] <description>
const Palette polyrhythm_pal[] = {
    /* PALETTE 00 */ {
        /* 00 */ TO_RGB555(0x3050E0),
        /* 01 */ TO_RGB555(0x000000),
        /* 02 */ TO_RGB555(0x980008),
        /* 03 */ TO_RGB555(0xF80800),
        /* 04 */ TO_RGB555(0xF85048),
        /* 05 */ TO_RGB555(0xF0F818),
        /* 06 */ TO_RGB555(0x20D018),
        /* 07 */ TO_RGB555(0x48F848),
        /* 08 */ TO_RGB555(0x18B010),
        /* 09 */ TO_RGB555(0x38E030),
        /* 10 */ TO_RGB555(0x0010B8),
        /* 11 */ TO_RGB555(0x2860F8),
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
        /* 00 */ TO_RGB555(0x606860),
        /* 01 */ TO_RGB555(0x000000),
        /* 02 */ TO_RGB555(0x980008),
        /* 03 */ TO_RGB555(0xF80800),
        /* 04 */ TO_RGB555(0xF89088),
        /* 05 */ TO_RGB555(0xF8F818),
        /* 06 */ TO_RGB555(0x18B010),
        /* 07 */ TO_RGB555(0x28F818),
        /* 08 */ TO_RGB555(0x2050C8),
        /* 09 */ TO_RGB555(0x2860F8),
        /* 10 */ TO_RGB555(0xF8C050),
        /* 11 */ TO_RGB555(0xF8E088),
        /* 12 */ TO_RGB555(0x80F890),
        /* 13 */ TO_RGB555(0xD0D0D0),
        /* 14 */ TO_RGB555(0xE0E0E0),
        /* 15 */ TO_RGB555(0xF8F8F8)
    },
    /* PALETTE 03 */ {
        /* 00 */ TO_RGB555(0x302008),
        /* 01 */ TO_RGB555(0xF8F8F8),
        /* 02 */ TO_RGB555(0x000000),
        /* 03 */ TO_RGB555(0x000000),
        /* 04 */ TO_RGB555(0x000000),
        /* 05 */ TO_RGB555(0xF8F818),
        /* 06 */ TO_RGB555(0x000000),
        /* 07 */ TO_RGB555(0x000000),
        /* 08 */ TO_RGB555(0x980008),
        /* 09 */ TO_RGB555(0xF80800),
        /* 10 */ TO_RGB555(0x000000),
        /* 11 */ TO_RGB555(0x000000),
        /* 12 */ TO_RGB555(0x000000),
        /* 13 */ TO_RGB555(0x000000),
        /* 14 */ TO_RGB555(0x202020),
        /* 15 */ TO_RGB555(0x404040)
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
        /* 08 */ TO_RGB555(0xF8F8F8),
        /* 09 */ TO_RGB555(0x000000),
        /* 10 */ TO_RGB555(0x000000),
        /* 11 */ TO_RGB555(0x000000),
        /* 12 */ TO_RGB555(0x000000),
        /* 13 */ TO_RGB555(0x000000),
        /* 14 */ TO_RGB555(0x000000),
        /* 15 */ TO_RGB555(0x000000)
    },
    /* PALETTE 05 */ {
        /* 00 */ TO_RGB555(0x302008),
        /* 01 */ TO_RGB555(0x000000),
        /* 02 */ TO_RGB555(0x78E0F8),
        /* 03 */ TO_RGB555(0x082008),
        /* 04 */ TO_RGB555(0x082010),
        /* 05 */ TO_RGB555(0x082020),
        /* 06 */ TO_RGB555(0x082030),
        /* 07 */ TO_RGB555(0x082040),
        /* 08 */ TO_RGB555(0x082050),
        /* 09 */ TO_RGB555(0x082060),
        /* 10 */ TO_RGB555(0x082070),
        /* 11 */ TO_RGB555(0x082080),
        /* 12 */ TO_RGB555(0x082090),
        /* 13 */ TO_RGB555(0x0820B0),
        /* 14 */ TO_RGB555(0x0820D0),
        /* 15 */ TO_RGB555(0x0820F8)
    },
    /* PALETTE 06 */ {
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
    /* PALETTE 07 */ {
        /* 00 */ TO_RGB555(0x000000),
        /* 01 */ TO_RGB555(0x000000),
        /* 02 */ TO_RGB555(0x001858),
        /* 03 */ TO_RGB555(0x001090),
        /* 04 */ TO_RGB555(0x3050E0),
        /* 05 */ TO_RGB555(0xB0B8F0),
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
    /* PALETTE 08 */ {
        /* 00 */ TO_RGB555(0x500000),
        /* 01 */ TO_RGB555(0x000000),
        /* 02 */ TO_RGB555(0x082070),
        /* 03 */ TO_RGB555(0x0820D0),
        /* 04 */ TO_RGB555(0xD8E0F8),
        /* 05 */ TO_RGB555(0xF8F8F8),
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
    /* PALETTE 09 */ {
        /* 00 */ TO_RGB555(0x000000),
        /* 01 */ TO_RGB555(0x000000),
        /* 02 */ TO_RGB555(0x001858),
        /* 03 */ TO_RGB555(0x001090),
        /* 04 */ TO_RGB555(0x3050E0),
        /* 05 */ TO_RGB555(0xB0B8F0),
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
        /* 00 */ TO_RGB555(0x000000),
        /* 01 */ TO_RGB555(0x000000),
        /* 02 */ TO_RGB555(0x001038),
        /* 03 */ TO_RGB555(0x001070),
        /* 04 */ TO_RGB555(0x1028D8),
        /* 05 */ TO_RGB555(0x8088E8),
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
        /* 00 */ TO_RGB555(0x000000),
        /* 01 */ TO_RGB555(0x000000),
        /* 02 */ TO_RGB555(0x000818),
        /* 03 */ TO_RGB555(0x000838),
        /* 04 */ TO_RGB555(0x001898),
        /* 05 */ TO_RGB555(0x5060E0),
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
    /* PALETTE 12 */ {
        /* 00 */ TO_RGB555(0x000000),
        /* 01 */ TO_RGB555(0x000000),
        /* 02 */ TO_RGB555(0x000000),
        /* 03 */ TO_RGB555(0x000000),
        /* 04 */ TO_RGB555(0x001068),
        /* 05 */ TO_RGB555(0x0820D0),
        /* 06 */ TO_RGB555(0x000000),
        /* 07 */ TO_RGB555(0x000000),
        /* 08 */ TO_RGB555(0x000000),
        /* 09 */ TO_RGB555(0xC0C0C0),
        /* 10 */ TO_RGB555(0xE0E0E0),
        /* 11 */ TO_RGB555(0xF8F8F8),
        /* 12 */ TO_RGB555(0x000000),
        /* 13 */ TO_RGB555(0x000000),
        /* 14 */ TO_RGB555(0x000000),
        /* 15 */ TO_RGB555(0x000000)
    },
    /* PALETTE 13 */ {
        /* 00 */ TO_RGB555(0x000000),
        /* 01 */ TO_RGB555(0x000000),
        /* 02 */ TO_RGB555(0x000000),
        /* 03 */ TO_RGB555(0x000000),
        /* 04 */ TO_RGB555(0x000830),
        /* 05 */ TO_RGB555(0x001898),
        /* 06 */ TO_RGB555(0x000000),
        /* 07 */ TO_RGB555(0x000000),
        /* 08 */ TO_RGB555(0x000000),
        /* 09 */ TO_RGB555(0xC0C0C0),
        /* 10 */ TO_RGB555(0xE0E0E0),
        /* 11 */ TO_RGB555(0xF8F8F8),
        /* 12 */ TO_RGB555(0x000000),
        /* 13 */ TO_RGB555(0x000000),
        /* 14 */ TO_RGB555(0x000000),
        /* 15 */ TO_RGB555(0x000000)
    },
    /* PALETTE 14 */ {
        /* 00 */ TO_RGB555(0x000000),
        /* 01 */ TO_RGB555(0x000000),
        /* 02 */ TO_RGB555(0x000000),
        /* 03 */ TO_RGB555(0x000000),
        /* 04 */ TO_RGB555(0x000000),
        /* 05 */ TO_RGB555(0x001068),
        /* 06 */ TO_RGB555(0x000000),
        /* 07 */ TO_RGB555(0x000000),
        /* 08 */ TO_RGB555(0x000000),
        /* 09 */ TO_RGB555(0x484848),
        /* 10 */ TO_RGB555(0x606060),
        /* 11 */ TO_RGB555(0x808080),
        /* 12 */ TO_RGB555(0x000000),
        /* 13 */ TO_RGB555(0x000000),
        /* 14 */ TO_RGB555(0x000000),
        /* 15 */ TO_RGB555(0x000000)
    },
    /* PALETTE 15 */ {
        /* 00 */ TO_RGB555(0x000000),
        /* 01 */ TO_RGB555(0x000000),
        /* 02 */ TO_RGB555(0x000000),
        /* 03 */ TO_RGB555(0x000000),
        /* 04 */ TO_RGB555(0x000000),
        /* 05 */ TO_RGB555(0x000830),
        /* 06 */ TO_RGB555(0x000000),
        /* 07 */ TO_RGB555(0x000000),
        /* 08 */ TO_RGB555(0x000000),
        /* 09 */ TO_RGB555(0xC0C0C0),
        /* 10 */ TO_RGB555(0xE0E0E0),
        /* 11 */ TO_RGB555(0xF8F8F8),
        /* 12 */ TO_RGB555(0x000000),
        /* 13 */ TO_RGB555(0x000000),
        /* 14 */ TO_RGB555(0x000000),
        /* 15 */ TO_RGB555(0x000000)
    }
};

// [D_088f653c] <description>
const Palette polyrhythm_2_pal[] = {
    /* PALETTE 00 */ {
        /* 00 */ TO_RGB555(0x3050E0),
        /* 01 */ TO_RGB555(0x000000),
        /* 02 */ TO_RGB555(0x980008),
        /* 03 */ TO_RGB555(0xF80800),
        /* 04 */ TO_RGB555(0xF85048),
        /* 05 */ TO_RGB555(0xF0F818),
        /* 06 */ TO_RGB555(0x0010B8),
        /* 07 */ TO_RGB555(0x2860F8),
        /* 08 */ TO_RGB555(0x1840A8),
        /* 09 */ TO_RGB555(0x2050D0),
        /* 10 */ TO_RGB555(0x0010B8),
        /* 11 */ TO_RGB555(0x2860F8),
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
        /* 00 */ TO_RGB555(0x606860),
        /* 01 */ TO_RGB555(0x000000),
        /* 02 */ TO_RGB555(0x980008),
        /* 03 */ TO_RGB555(0xF80800),
        /* 04 */ TO_RGB555(0xF89088),
        /* 05 */ TO_RGB555(0xF8F818),
        /* 06 */ TO_RGB555(0x18B010),
        /* 07 */ TO_RGB555(0x28F818),
        /* 08 */ TO_RGB555(0xD0B008),
        /* 09 */ TO_RGB555(0xF8D010),
        /* 10 */ TO_RGB555(0xF8C050),
        /* 11 */ TO_RGB555(0xF8E088),
        /* 12 */ TO_RGB555(0x80F890),
        /* 13 */ TO_RGB555(0xD0D0D0),
        /* 14 */ TO_RGB555(0xE0E0E0),
        /* 15 */ TO_RGB555(0xF8F8F8)
    },
    /* PALETTE 03 */ {
        /* 00 */ TO_RGB555(0x302008),
        /* 01 */ TO_RGB555(0xF8F8F8),
        /* 02 */ TO_RGB555(0x000000),
        /* 03 */ TO_RGB555(0x000000),
        /* 04 */ TO_RGB555(0x000000),
        /* 05 */ TO_RGB555(0xF8F818),
        /* 06 */ TO_RGB555(0x000000),
        /* 07 */ TO_RGB555(0x000000),
        /* 08 */ TO_RGB555(0x980008),
        /* 09 */ TO_RGB555(0xF80800),
        /* 10 */ TO_RGB555(0x000000),
        /* 11 */ TO_RGB555(0x000000),
        /* 12 */ TO_RGB555(0x000000),
        /* 13 */ TO_RGB555(0x000000),
        /* 14 */ TO_RGB555(0x202020),
        /* 15 */ TO_RGB555(0x404040)
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
        /* 08 */ TO_RGB555(0xF8F8F8),
        /* 09 */ TO_RGB555(0x000000),
        /* 10 */ TO_RGB555(0x000000),
        /* 11 */ TO_RGB555(0x000000),
        /* 12 */ TO_RGB555(0x000000),
        /* 13 */ TO_RGB555(0x000000),
        /* 14 */ TO_RGB555(0x000000),
        /* 15 */ TO_RGB555(0x000000)
    },
    /* PALETTE 05 */ {
        /* 00 */ TO_RGB555(0x302008),
        /* 01 */ TO_RGB555(0x000000),
        /* 02 */ TO_RGB555(0x78E0F8),
        /* 03 */ TO_RGB555(0x082008),
        /* 04 */ TO_RGB555(0x082010),
        /* 05 */ TO_RGB555(0x082020),
        /* 06 */ TO_RGB555(0x082030),
        /* 07 */ TO_RGB555(0x082040),
        /* 08 */ TO_RGB555(0x082050),
        /* 09 */ TO_RGB555(0x082060),
        /* 10 */ TO_RGB555(0x082070),
        /* 11 */ TO_RGB555(0x082080),
        /* 12 */ TO_RGB555(0x082090),
        /* 13 */ TO_RGB555(0x0820B0),
        /* 14 */ TO_RGB555(0x0820D0),
        /* 15 */ TO_RGB555(0x0820F8)
    },
    /* PALETTE 06 */ {
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
    /* PALETTE 07 */ {
        /* 00 */ TO_RGB555(0x000000),
        /* 01 */ TO_RGB555(0x000000),
        /* 02 */ TO_RGB555(0x001858),
        /* 03 */ TO_RGB555(0x001090),
        /* 04 */ TO_RGB555(0x3050E0),
        /* 05 */ TO_RGB555(0xB0B8F0),
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
    /* PALETTE 08 */ {
        /* 00 */ TO_RGB555(0x500000),
        /* 01 */ TO_RGB555(0x000000),
        /* 02 */ TO_RGB555(0x082070),
        /* 03 */ TO_RGB555(0x0820D0),
        /* 04 */ TO_RGB555(0xD8E0F8),
        /* 05 */ TO_RGB555(0xF8F8F8),
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
    /* PALETTE 09 */ {
        /* 00 */ TO_RGB555(0x000000),
        /* 01 */ TO_RGB555(0x000000),
        /* 02 */ TO_RGB555(0x001858),
        /* 03 */ TO_RGB555(0x001090),
        /* 04 */ TO_RGB555(0x3050E0),
        /* 05 */ TO_RGB555(0xB0B8F0),
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
        /* 00 */ TO_RGB555(0x000000),
        /* 01 */ TO_RGB555(0x000000),
        /* 02 */ TO_RGB555(0x001038),
        /* 03 */ TO_RGB555(0x001070),
        /* 04 */ TO_RGB555(0x1028D8),
        /* 05 */ TO_RGB555(0x8088E8),
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
        /* 00 */ TO_RGB555(0x000000),
        /* 01 */ TO_RGB555(0x000000),
        /* 02 */ TO_RGB555(0x000818),
        /* 03 */ TO_RGB555(0x000838),
        /* 04 */ TO_RGB555(0x001898),
        /* 05 */ TO_RGB555(0x5060E0),
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
    /* PALETTE 12 */ {
        /* 00 */ TO_RGB555(0x000000),
        /* 01 */ TO_RGB555(0x000000),
        /* 02 */ TO_RGB555(0x000000),
        /* 03 */ TO_RGB555(0x000000),
        /* 04 */ TO_RGB555(0x001068),
        /* 05 */ TO_RGB555(0x0820D0),
        /* 06 */ TO_RGB555(0x000000),
        /* 07 */ TO_RGB555(0x000000),
        /* 08 */ TO_RGB555(0x000000),
        /* 09 */ TO_RGB555(0xC0C0C0),
        /* 10 */ TO_RGB555(0xE0E0E0),
        /* 11 */ TO_RGB555(0xF8F8F8),
        /* 12 */ TO_RGB555(0x000000),
        /* 13 */ TO_RGB555(0x000000),
        /* 14 */ TO_RGB555(0x000000),
        /* 15 */ TO_RGB555(0x000000)
    },
    /* PALETTE 13 */ {
        /* 00 */ TO_RGB555(0x000000),
        /* 01 */ TO_RGB555(0x000000),
        /* 02 */ TO_RGB555(0x000000),
        /* 03 */ TO_RGB555(0x000000),
        /* 04 */ TO_RGB555(0x000830),
        /* 05 */ TO_RGB555(0x001898),
        /* 06 */ TO_RGB555(0x000000),
        /* 07 */ TO_RGB555(0x000000),
        /* 08 */ TO_RGB555(0x000000),
        /* 09 */ TO_RGB555(0xC0C0C0),
        /* 10 */ TO_RGB555(0xE0E0E0),
        /* 11 */ TO_RGB555(0xF8F8F8),
        /* 12 */ TO_RGB555(0x000000),
        /* 13 */ TO_RGB555(0x000000),
        /* 14 */ TO_RGB555(0x000000),
        /* 15 */ TO_RGB555(0x000000)
    },
    /* PALETTE 14 */ {
        /* 00 */ TO_RGB555(0x000000),
        /* 01 */ TO_RGB555(0x000000),
        /* 02 */ TO_RGB555(0x000000),
        /* 03 */ TO_RGB555(0x000000),
        /* 04 */ TO_RGB555(0x000000),
        /* 05 */ TO_RGB555(0x001068),
        /* 06 */ TO_RGB555(0x000000),
        /* 07 */ TO_RGB555(0x000000),
        /* 08 */ TO_RGB555(0x000000),
        /* 09 */ TO_RGB555(0x484848),
        /* 10 */ TO_RGB555(0x606060),
        /* 11 */ TO_RGB555(0x808080),
        /* 12 */ TO_RGB555(0x000000),
        /* 13 */ TO_RGB555(0x000000),
        /* 14 */ TO_RGB555(0x000000),
        /* 15 */ TO_RGB555(0x000000)
    },
    /* PALETTE 15 */ {
        /* 00 */ TO_RGB555(0x000000),
        /* 01 */ TO_RGB555(0x000000),
        /* 02 */ TO_RGB555(0x000000),
        /* 03 */ TO_RGB555(0x000000),
        /* 04 */ TO_RGB555(0x000000),
        /* 05 */ TO_RGB555(0x000830),
        /* 06 */ TO_RGB555(0x000000),
        /* 07 */ TO_RGB555(0x000000),
        /* 08 */ TO_RGB555(0x000000),
        /* 09 */ TO_RGB555(0xC0C0C0),
        /* 10 */ TO_RGB555(0xE0E0E0),
        /* 11 */ TO_RGB555(0xF8F8F8),
        /* 12 */ TO_RGB555(0x000000),
        /* 13 */ TO_RGB555(0x000000),
        /* 14 */ TO_RGB555(0x000000),
        /* 15 */ TO_RGB555(0x000000)
    }
};
