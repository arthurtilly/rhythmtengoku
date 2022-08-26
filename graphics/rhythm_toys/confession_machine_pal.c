#include "global.h"
#include "graphics.h"

// [D_0890e868] <description>
const Palette confession_machine_pal[] = {
    /* PALETTE 00 */ {
        /* 00 */ TO_RGB555(0x504848),
        /* 01 */ TO_RGB555(0x000000),
        /* 02 */ TO_RGB555(0xB07838),
        /* 03 */ TO_RGB555(0x504848),
        /* 04 */ TO_RGB555(0xD8D0D0),
        /* 05 */ TO_RGB555(0xF83028),
        /* 06 */ TO_RGB555(0x2030A8),
        /* 07 */ TO_RGB555(0xF888D0),
        /* 08 */ TO_RGB555(0x6890F8),
        /* 09 */ TO_RGB555(0xF8F810),
        /* 10 */ TO_RGB555(0x00A808),
        /* 11 */ TO_RGB555(0x00F818),
        /* 12 */ TO_RGB555(0x00E8F8),
        /* 13 */ TO_RGB555(0xF80000),
        /* 14 */ TO_RGB555(0x989090),
        /* 15 */ TO_RGB555(0xF8F8F8)
    },
    /* PALETTE 01 */ {
        /* 00 */ TO_RGB555(0x38B078),
        /* 01 */ TO_RGB555(0x000000),
        /* 02 */ TO_RGB555(0xF00068),
        /* 03 */ TO_RGB555(0x989090),
        /* 04 */ TO_RGB555(0xD8D0D0),
        /* 05 */ TO_RGB555(0xF8F810),
        /* 06 */ TO_RGB555(0x6890F8),
        /* 07 */ TO_RGB555(0x504848),
        /* 08 */ TO_RGB555(0xA86890),
        /* 09 */ TO_RGB555(0x880000),
        /* 10 */ TO_RGB555(0xF80000),
        /* 11 */ TO_RGB555(0xF86038),
        /* 12 */ TO_RGB555(0xE078B8),
        /* 13 */ TO_RGB555(0xF888D0),
        /* 14 */ TO_RGB555(0xF8B0B0),
        /* 15 */ TO_RGB555(0xF8F8F8)
    },
    /* PALETTE 02 */ {
        /* 00 */ TO_RGB555(0x000000),
        /* 01 */ TO_RGB555(0x2030A8),
        /* 02 */ TO_RGB555(0x000000),
        /* 03 */ TO_RGB555(0x000000),
        /* 04 */ TO_RGB555(0x000000),
        /* 05 */ TO_RGB555(0x000000),
        /* 06 */ TO_RGB555(0x880000),
        /* 07 */ TO_RGB555(0xF8F8F8),
        /* 08 */ TO_RGB555(0x00E8F8),
        /* 09 */ TO_RGB555(0x000000),
        /* 10 */ TO_RGB555(0x000000),
        /* 11 */ TO_RGB555(0xB0B0B0),
        /* 12 */ TO_RGB555(0xC8C8C8),
        /* 13 */ TO_RGB555(0xE0E0E0),
        /* 14 */ TO_RGB555(0xF8F8F8),
        /* 15 */ TO_RGB555(0xF8F8F8)
    },
    /* PALETTE 03 */ {
        /* 00 */ TO_RGB555(0x0870B0),
        /* 01 */ TO_RGB555(0x000000),
        /* 02 */ TO_RGB555(0x000078),
        /* 03 */ TO_RGB555(0x680000),
        /* 04 */ TO_RGB555(0xF888D8),
        /* 05 */ TO_RGB555(0xF8F810),
        /* 06 */ TO_RGB555(0x00E8F8),
        /* 07 */ TO_RGB555(0x106840),
        /* 08 */ TO_RGB555(0xB00000),
        /* 09 */ TO_RGB555(0xF80000),
        /* 10 */ TO_RGB555(0xF86038),
        /* 11 */ TO_RGB555(0x20B078),
        /* 12 */ TO_RGB555(0x58C8B0),
        /* 13 */ TO_RGB555(0xB8E0B8),
        /* 14 */ TO_RGB555(0xF8F8B0),
        /* 15 */ TO_RGB555(0xF8F8F8)
    },
    /* PALETTE 04 */ {
        /* 00 */ TO_RGB555(0x000000),
        /* 01 */ TO_RGB555(0x000000),
        /* 02 */ TO_RGB555(0xB000F0),
        /* 03 */ TO_RGB555(0x000000),
        /* 04 */ TO_RGB555(0x000000),
        /* 05 */ TO_RGB555(0x000000),
        /* 06 */ TO_RGB555(0x000000),
        /* 07 */ TO_RGB555(0x000000),
        /* 08 */ TO_RGB555(0x000000),
        /* 09 */ TO_RGB555(0xF80000),
        /* 10 */ TO_RGB555(0x000000),
        /* 11 */ TO_RGB555(0x000000),
        /* 12 */ TO_RGB555(0x7800C8),
        /* 13 */ TO_RGB555(0xA850D8),
        /* 14 */ TO_RGB555(0xD0A8E8),
        /* 15 */ TO_RGB555(0xF8F8F8)
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
        /* 11 */ TO_RGB555(0xB000A8),
        /* 12 */ TO_RGB555(0xC828B8),
        /* 13 */ TO_RGB555(0xE058C8),
        /* 14 */ TO_RGB555(0xF888D8),
        /* 15 */ TO_RGB555(0xF8F8F8)
    }
};
