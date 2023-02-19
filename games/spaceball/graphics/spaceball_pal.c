#include "global.h"
#include "graphics.h"

// [D_088a1dd0] Spaceball [BG & OBJ]
Palette spaceball_pal[] = {
    /* PALETTE 00 */ {
        /* 00 */ TO_RGB555(0x000070),
        /* 01 */ TO_RGB555(0x000000),
        /* 02 */ TO_RGB555(0xF8F8F8),
        /* 03 */ TO_RGB555(0x1000F8),
        /* 04 */ TO_RGB555(0x0800B8),
        /* 05 */ TO_RGB555(0x60E000),
        /* 06 */ TO_RGB555(0xC8B800),
        /* 07 */ TO_RGB555(0x006810),
        /* 08 */ TO_RGB555(0xA84020),
        /* 09 */ TO_RGB555(0xA87070),
        /* 10 */ TO_RGB555(0x304800),
        /* 11 */ TO_RGB555(0xF8D880),
        /* 12 */ TO_RGB555(0x909000),
        /* 13 */ TO_RGB555(0xD000B8),
        /* 14 */ TO_RGB555(0x602800),
        /* 15 */ TO_RGB555(0xE80000)
    },
    /* PALETTE 01 */ {
        /* 00 */ TO_RGB555(0xD89000),
        /* 01 */ TO_RGB555(0x000000),
        /* 02 */ TO_RGB555(0xF8F8F8),
        /* 03 */ TO_RGB555(0x1000F8),
        /* 04 */ TO_RGB555(0x0800B8),
        /* 05 */ TO_RGB555(0x909000),
        /* 06 */ TO_RGB555(0xC8B800),
        /* 07 */ TO_RGB555(0x006810),
        /* 08 */ TO_RGB555(0x707070),
        /* 09 */ TO_RGB555(0xF8D8D0),
        /* 10 */ TO_RGB555(0xC8B8B0),
        /* 11 */ TO_RGB555(0xF8B0A0),
        /* 12 */ TO_RGB555(0xB88078),
        /* 13 */ TO_RGB555(0x000060),
        /* 14 */ TO_RGB555(0x00B0E8),
        /* 15 */ TO_RGB555(0x980000)
    },
    /* PALETTE 02 */ {
        /* 00 */ TO_RGB555(0xA8F8B0),
        /* 01 */ TO_RGB555(0x000000),
        /* 02 */ TO_RGB555(0xF8F8F8),
        /* 03 */ TO_RGB555(0x1000F8),
        /* 04 */ TO_RGB555(0x009018),
        /* 05 */ TO_RGB555(0x00A018),
        /* 06 */ TO_RGB555(0x006810),
        /* 07 */ TO_RGB555(0x008010),
        /* 08 */ TO_RGB555(0xF8B828),
        /* 09 */ TO_RGB555(0xF0A008),
        /* 10 */ TO_RGB555(0xA86000),
        /* 11 */ TO_RGB555(0xF8D828),
        /* 12 */ TO_RGB555(0x784000),
        /* 13 */ TO_RGB555(0xD07000),
        /* 14 */ TO_RGB555(0xE88000),
        /* 15 */ TO_RGB555(0x980000)
    },
    /* PALETTE 03 */ {
        /* 00 */ TO_RGB555(0xB0D800),
        /* 01 */ TO_RGB555(0x000000),
        /* 02 */ TO_RGB555(0xF8F8F8),
        /* 03 */ TO_RGB555(0x500000),
        /* 04 */ TO_RGB555(0x0800B8),
        /* 05 */ TO_RGB555(0x5858F8),
        /* 06 */ TO_RGB555(0x383838),
        /* 07 */ TO_RGB555(0xF8F808),
        /* 08 */ TO_RGB555(0xA8F838),
        /* 09 */ TO_RGB555(0x00E090),
        /* 10 */ TO_RGB555(0xF000F8),
        /* 11 */ TO_RGB555(0xA058F8),
        /* 12 */ TO_RGB555(0x784000),
        /* 13 */ TO_RGB555(0xA86000),
        /* 14 */ TO_RGB555(0xE88000),
        /* 15 */ TO_RGB555(0x980000)
    },
    /* PALETTE 04 */ {
        /* 00 */ TO_RGB555(0x686880),
        /* 01 */ TO_RGB555(0x000000),
        /* 02 */ TO_RGB555(0xF8F8F8),
        /* 03 */ TO_RGB555(0x1000F8),
        /* 04 */ TO_RGB555(0x0800B8),
        /* 05 */ TO_RGB555(0x183050),
        /* 06 */ TO_RGB555(0xB8D8F8),
        /* 07 */ TO_RGB555(0x006810),
        /* 08 */ TO_RGB555(0x386098),
        /* 09 */ TO_RGB555(0x80C0F8),
        /* 10 */ TO_RGB555(0x304800),
        /* 11 */ TO_RGB555(0x283800),
        /* 12 */ TO_RGB555(0x7800A8),
        /* 13 */ TO_RGB555(0x500078),
        /* 14 */ TO_RGB555(0xA800E8),
        /* 15 */ TO_RGB555(0x60E000)
    },
    /* PALETTE 05 */ {
        /* 00 */ TO_RGB555(0x88D090),
        /* 01 */ TO_RGB555(0x000000),
        /* 02 */ TO_RGB555(0xF8F8F8),
        /* 03 */ TO_RGB555(0x00E8B0),
        /* 04 */ TO_RGB555(0x009018),
        /* 05 */ TO_RGB555(0x00A018),
        /* 06 */ TO_RGB555(0x006810),
        /* 07 */ TO_RGB555(0x008010),
        /* 08 */ TO_RGB555(0x000070),
        /* 09 */ TO_RGB555(0xE000A0),
        /* 10 */ TO_RGB555(0xF0A008),
        /* 11 */ TO_RGB555(0xD0C070),
        /* 12 */ TO_RGB555(0x000000),
        /* 13 */ TO_RGB555(0x000000),
        /* 14 */ TO_RGB555(0x980000),
        /* 15 */ TO_RGB555(0xF8A078)
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
        /* 00 */ TO_RGB555(0x000048),
        /* 01 */ TO_RGB555(0x0048E8),
        /* 02 */ TO_RGB555(0xF8F808),
        /* 03 */ TO_RGB555(0x000000),
        /* 04 */ TO_RGB555(0xF8F808),
        /* 05 */ TO_RGB555(0xE06800),
        /* 06 */ TO_RGB555(0xC8B800),
        /* 07 */ TO_RGB555(0x60E000),
        /* 08 */ TO_RGB555(0xB80000),
        /* 09 */ TO_RGB555(0x880000),
        /* 10 */ TO_RGB555(0xF8F8F8),
        /* 11 */ TO_RGB555(0xF8A0A0),
        /* 12 */ TO_RGB555(0x000000),
        /* 13 */ TO_RGB555(0xD000B8),
        /* 14 */ TO_RGB555(0x602800),
        /* 15 */ TO_RGB555(0xE80000)
    },
    /* PALETTE 08 */ {
        /* 00 */ TO_RGB555(0x000048),
        /* 01 */ TO_RGB555(0xF820A8),
        /* 02 */ TO_RGB555(0xF8C8F8),
        /* 03 */ TO_RGB555(0x000000),
        /* 04 */ TO_RGB555(0xF8F808),
        /* 05 */ TO_RGB555(0xB000D0),
        /* 06 */ TO_RGB555(0xC8B800),
        /* 07 */ TO_RGB555(0x60E000),
        /* 08 */ TO_RGB555(0xB80000),
        /* 09 */ TO_RGB555(0x880000),
        /* 10 */ TO_RGB555(0xF8F8F8),
        /* 11 */ TO_RGB555(0xF8A0A0),
        /* 12 */ TO_RGB555(0x000000),
        /* 13 */ TO_RGB555(0xD000B8),
        /* 14 */ TO_RGB555(0x602800),
        /* 15 */ TO_RGB555(0xE80000)
    },
    /* PALETTE 09 */ {
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
    /* PALETTE 10 */ {
        /* 00 */ TO_RGB555(0x000048),
        /* 01 */ TO_RGB555(0xE84800),
        /* 02 */ TO_RGB555(0xF8B800),
        /* 03 */ TO_RGB555(0x000000),
        /* 04 */ TO_RGB555(0xF8F808),
        /* 05 */ TO_RGB555(0x6808F8),
        /* 06 */ TO_RGB555(0xC8B800),
        /* 07 */ TO_RGB555(0x60E000),
        /* 08 */ TO_RGB555(0xB80000),
        /* 09 */ TO_RGB555(0x880000),
        /* 10 */ TO_RGB555(0xF8F8F8),
        /* 11 */ TO_RGB555(0xF8A0A0),
        /* 12 */ TO_RGB555(0x000000),
        /* 13 */ TO_RGB555(0xD000B8),
        /* 14 */ TO_RGB555(0x602800),
        /* 15 */ TO_RGB555(0xE80000)
    }
};
