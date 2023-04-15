#include "global.h"
#include "graphics.h"

// [D_0890a4f4] Main Menu Scene Palette
Palette main_menu_pal[] = {
    /* PALETTE 00 */ {
        /* 00 */ TO_RGB555(0x7888A8),
        /* 01 */ TO_RGB555(0xF8D098),
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
        /* 14 */ TO_RGB555(0xF8F8F8),
        /* 15 */ TO_RGB555(0x000030)
    },
    /* PALETTE 01 */ {
        /* 00 */ TO_RGB555(0x2030A8),
        /* 01 */ TO_RGB555(0x000030),
        /* 02 */ TO_RGB555(0x4088F8),
        /* 03 */ TO_RGB555(0x204888),
        /* 04 */ TO_RGB555(0xA01818),
        /* 05 */ TO_RGB555(0xF83028),
        /* 06 */ TO_RGB555(0x986800),
        /* 07 */ TO_RGB555(0xD09000),
        /* 08 */ TO_RGB555(0xD09000),
        /* 09 */ TO_RGB555(0xF88888),
        /* 10 */ TO_RGB555(0xF0F828),
        /* 11 */ TO_RGB555(0x000000),
        /* 12 */ TO_RGB555(0xC8C8C8),
        /* 13 */ TO_RGB555(0xF8F8F8),
        /* 14 */ TO_RGB555(0xE0E8F8),
        /* 15 */ TO_RGB555(0x888888)
    },
    /* PALETTE 02 */ {
        /* 00 */ TO_RGB555(0x48E8F8),
        /* 01 */ TO_RGB555(0x20A820),
        /* 02 */ TO_RGB555(0xA0A0A0),
        /* 03 */ TO_RGB555(0xC08800),
        /* 04 */ TO_RGB555(0xF83838),
        /* 05 */ TO_RGB555(0xF8B0B0),
        /* 06 */ TO_RGB555(0xF8D098),
        /* 07 */ TO_RGB555(0xF83068),
        /* 08 */ TO_RGB555(0xF8B070),
        /* 09 */ TO_RGB555(0xF8E8D8),
        /* 10 */ TO_RGB555(0xB86010),
        /* 11 */ TO_RGB555(0x3848F8),
        /* 12 */ TO_RGB555(0x00F8F8),
        /* 13 */ TO_RGB555(0x602000),
        /* 14 */ TO_RGB555(0xF8F8F8),
        /* 15 */ TO_RGB555(0x000000)
    },
    /* PALETTE 03 */ {
        /* 00 */ TO_RGB555(0x909090),
        /* 01 */ TO_RGB555(0x6878B0),
        /* 02 */ TO_RGB555(0xA0B8F8),
        /* 03 */ TO_RGB555(0xD8D8D8),
        /* 04 */ TO_RGB555(0xC0C0C0),
        /* 05 */ TO_RGB555(0xA8A8A8),
        /* 06 */ TO_RGB555(0xF8F8F8),
        /* 07 */ TO_RGB555(0xE8A800),
        /* 08 */ TO_RGB555(0xF8C800),
        /* 09 */ TO_RGB555(0xF8D800),
        /* 10 */ TO_RGB555(0xF8F0F0),
        /* 11 */ TO_RGB555(0x00F818),
        /* 12 */ TO_RGB555(0x000000),
        /* 13 */ TO_RGB555(0x000000),
        /* 14 */ TO_RGB555(0xF8F8F8),
        /* 15 */ TO_RGB555(0x000030)
    },
    /* PALETTE 04 */ {
        /* 00 */ TO_RGB555(0x38B0C0),
        /* 01 */ TO_RGB555(0x181820),
        /* 02 */ TO_RGB555(0x001088),
        /* 03 */ TO_RGB555(0x0820F0),
        /* 04 */ TO_RGB555(0x005860),
        /* 05 */ TO_RGB555(0x00B8C8),
        /* 06 */ TO_RGB555(0x00E8F8),
        /* 07 */ TO_RGB555(0xF8C010),
        /* 08 */ TO_RGB555(0x404040),
        /* 09 */ TO_RGB555(0x787070),
        /* 10 */ TO_RGB555(0x989090),
        /* 11 */ TO_RGB555(0xB8B0A0),
        /* 12 */ TO_RGB555(0xD0D0D0),
        /* 13 */ TO_RGB555(0xE8E8E8),
        /* 14 */ TO_RGB555(0xF8F8F8),
        /* 15 */ TO_RGB555(0x000000)
    },
    /* PALETTE 05 */ {
        /* 00 */ TO_RGB555(0x909090),
        /* 01 */ TO_RGB555(0x000000),
        /* 02 */ TO_RGB555(0xF8C068),
        /* 03 */ TO_RGB555(0xF8C868),
        /* 04 */ TO_RGB555(0xF8C868),
        /* 05 */ TO_RGB555(0xF8C068),
        /* 06 */ TO_RGB555(0xF8B868),
        /* 07 */ TO_RGB555(0x000000),
        /* 08 */ TO_RGB555(0xF8F8F8),
        /* 09 */ TO_RGB555(0xF8F800),
        /* 10 */ TO_RGB555(0xF8F880),
        /* 11 */ TO_RGB555(0x7058F8),
        /* 12 */ TO_RGB555(0xF8D860),
        /* 13 */ TO_RGB555(0xB8A8F8),
        /* 14 */ TO_RGB555(0xD8D0F8),
        /* 15 */ TO_RGB555(0xF8F8F8)
    },
    /* PALETTE 06 */ {
        /* 00 */ TO_RGB555(0x404040),
        /* 01 */ TO_RGB555(0x000030),
        /* 02 */ TO_RGB555(0xE8A800),
        /* 03 */ TO_RGB555(0x68A8D0),
        /* 04 */ TO_RGB555(0x2888D0),
        /* 05 */ TO_RGB555(0x0070D0),
        /* 06 */ TO_RGB555(0x004080),
        /* 07 */ TO_RGB555(0x000000),
        /* 08 */ TO_RGB555(0x182890),
        /* 09 */ TO_RGB555(0x4830F8),
        /* 10 */ TO_RGB555(0x7058F8),
        /* 11 */ TO_RGB555(0x9080F8),
        /* 12 */ TO_RGB555(0xB8A8F8),
        /* 13 */ TO_RGB555(0xD8D0F8),
        /* 14 */ TO_RGB555(0xF8F8F8),
        /* 15 */ TO_RGB555(0x000030)
    },
    /* PALETTE 07 */ {
        /* 00 */ TO_RGB555(0x000000),
        /* 01 */ TO_RGB555(0x000000),
        /* 02 */ TO_RGB555(0x000000),
        /* 03 */ TO_RGB555(0x000000),
        /* 04 */ TO_RGB555(0x000000),
        /* 05 */ TO_RGB555(0x000000),
        /* 06 */ TO_RGB555(0xF8D800),
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
        /* 00 */ TO_RGB555(0x000000),
        /* 01 */ TO_RGB555(0x000000),
        /* 02 */ TO_RGB555(0xF8E038),
        /* 03 */ TO_RGB555(0xF8E878),
        /* 04 */ TO_RGB555(0xF8F8B8),
        /* 05 */ TO_RGB555(0xF8F8F8),
        /* 06 */ TO_RGB555(0xF8D800),
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
        /* 00 */ TO_RGB555(0x404040),
        /* 01 */ TO_RGB555(0x000030),
        /* 02 */ TO_RGB555(0xE8A800),
        /* 03 */ TO_RGB555(0xB8C0F8),
        /* 04 */ TO_RGB555(0x6880F8),
        /* 05 */ TO_RGB555(0x3048F8),
        /* 06 */ TO_RGB555(0x2030A8),
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
        /* 02 */ TO_RGB555(0xF0D000),
        /* 03 */ TO_RGB555(0xF0D800),
        /* 04 */ TO_RGB555(0xF0E000),
        /* 05 */ TO_RGB555(0xF0D000),
        /* 06 */ TO_RGB555(0xF0C000),
        /* 07 */ TO_RGB555(0x000000),
        /* 08 */ TO_RGB555(0xF8F8F8),
        /* 09 */ TO_RGB555(0xF8F8B8),
        /* 10 */ TO_RGB555(0xF8F8F8),
        /* 11 */ TO_RGB555(0x7058F8),
        /* 12 */ TO_RGB555(0xF8F898),
        /* 13 */ TO_RGB555(0x000000),
        /* 14 */ TO_RGB555(0x000000),
        /* 15 */ TO_RGB555(0x000000)
    },
    /* PALETTE 11 */ {
        /* 00 */ TO_RGB555(0x000000),
        /* 01 */ TO_RGB555(0x000000),
        /* 02 */ TO_RGB555(0x000000),
        /* 03 */ TO_RGB555(0x6878D0),
        /* 04 */ TO_RGB555(0x2840D0),
        /* 05 */ TO_RGB555(0x0018D0),
        /* 06 */ TO_RGB555(0x000880),
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
        /* 04 */ TO_RGB555(0x000000),
        /* 05 */ TO_RGB555(0x000000),
        /* 06 */ TO_RGB555(0x000000),
        /* 07 */ TO_RGB555(0x000000),
        /* 08 */ TO_RGB555(0x000000),
        /* 09 */ TO_RGB555(0xF8F858),
        /* 10 */ TO_RGB555(0xF8F8E0),
        /* 11 */ TO_RGB555(0xD0B8F8),
        /* 12 */ TO_RGB555(0xF8D058),
        /* 13 */ TO_RGB555(0x000000),
        /* 14 */ TO_RGB555(0x000000),
        /* 15 */ TO_RGB555(0x000000)
    }
};
