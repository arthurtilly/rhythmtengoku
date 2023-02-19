#include "global.h"
#include "graphics.h"

// [D_088f8788] Quiz Show OBJ Palette
Palette quiz_obj_pal[] = {
    /* PALETTE 00 */ {
        /* 00 */ TO_RGB555(0x18E000),
        /* 01 */ TO_RGB555(0x383838),
        /* 02 */ TO_RGB555(0x686868),
        /* 03 */ TO_RGB555(0x808080),
        /* 04 */ TO_RGB555(0x000000),
        /* 05 */ TO_RGB555(0x000000),
        /* 06 */ TO_RGB555(0x000000),
        /* 07 */ TO_RGB555(0x000000),
        /* 08 */ TO_RGB555(0xB0B0B0),
        /* 09 */ TO_RGB555(0xC0C0C0),
        /* 10 */ TO_RGB555(0x000000),
        /* 11 */ TO_RGB555(0x0000F8),
        /* 12 */ TO_RGB555(0x909090),
        /* 13 */ TO_RGB555(0xF80000),
        /* 14 */ TO_RGB555(0xF8F8F8),
        /* 15 */ TO_RGB555(0x000000)
    },
    /* PALETTE 01 */ {
        /* 00 */ TO_RGB555(0x18E000),
        /* 01 */ TO_RGB555(0x8020F8),
        /* 02 */ TO_RGB555(0xB078F8),
        /* 03 */ TO_RGB555(0x808080),
        /* 04 */ TO_RGB555(0x000000),
        /* 05 */ TO_RGB555(0xB800C8),
        /* 06 */ TO_RGB555(0xE800F8),
        /* 07 */ TO_RGB555(0xA00000),
        /* 08 */ TO_RGB555(0x70D0D0),
        /* 09 */ TO_RGB555(0xB03000),
        /* 10 */ TO_RGB555(0x80F0F8),
        /* 11 */ TO_RGB555(0x988800),
        /* 12 */ TO_RGB555(0xF8E808),
        /* 13 */ TO_RGB555(0xF80000),
        /* 14 */ TO_RGB555(0xF8F8F8),
        /* 15 */ TO_RGB555(0x000000)
    },
    /* PALETTE 02 */ {
        /* 00 */ TO_RGB555(0x18E000),
        /* 01 */ TO_RGB555(0x000000),
        /* 02 */ TO_RGB555(0x000000),
        /* 03 */ TO_RGB555(0x000000),
        /* 04 */ TO_RGB555(0x000000),
        /* 05 */ TO_RGB555(0x000000),
        /* 06 */ TO_RGB555(0x000000),
        /* 07 */ TO_RGB555(0x000000),
        /* 08 */ TO_RGB555(0xF8C878),
        /* 09 */ TO_RGB555(0xB03000),
        /* 10 */ TO_RGB555(0xF8C878),
        /* 11 */ TO_RGB555(0xF88850),
        /* 12 */ TO_RGB555(0xF86038),
        /* 13 */ TO_RGB555(0xF80000),
        /* 14 */ TO_RGB555(0xF8F8F8),
        /* 15 */ TO_RGB555(0x000000)
    },
    /* PALETTE 03 */ {
        /* 00 */ TO_RGB555(0x18E000),
        /* 01 */ TO_RGB555(0xF8F8F8),
        /* 02 */ TO_RGB555(0xA8A8A8),
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
        /* 00 */ TO_RGB555(0x18E000),
        /* 01 */ TO_RGB555(0xA8A8A8),
        /* 02 */ TO_RGB555(0xD0D0D0),
        /* 03 */ TO_RGB555(0xF8F8F8),
        /* 04 */ TO_RGB555(0x000000),
        /* 05 */ TO_RGB555(0x000000),
        /* 06 */ TO_RGB555(0x000000),
        /* 07 */ TO_RGB555(0x000000),
        /* 08 */ TO_RGB555(0x000000),
        /* 09 */ TO_RGB555(0x000000),
        /* 10 */ TO_RGB555(0x000000),
        /* 11 */ TO_RGB555(0x000000),
        /* 12 */ TO_RGB555(0xF8E808),
        /* 13 */ TO_RGB555(0xF80000),
        /* 14 */ TO_RGB555(0x000000),
        /* 15 */ TO_RGB555(0x000000)
    },
    /* PALETTE 05 */ {
        /* 00 */ TO_RGB555(0x18E000),
        /* 01 */ TO_RGB555(0x505050),
        /* 02 */ TO_RGB555(0x686868),
        /* 03 */ TO_RGB555(0x808080),
        /* 04 */ TO_RGB555(0x30C0F8),
        /* 05 */ TO_RGB555(0x989008),
        /* 06 */ TO_RGB555(0xF8F810),
        /* 07 */ TO_RGB555(0xF800D0),
        /* 08 */ TO_RGB555(0xB0B0B0),
        /* 09 */ TO_RGB555(0xC0C0C0),
        /* 10 */ TO_RGB555(0xC870F8),
        /* 11 */ TO_RGB555(0xA008F8),
        /* 12 */ TO_RGB555(0x909090),
        /* 13 */ TO_RGB555(0xF80000),
        /* 14 */ TO_RGB555(0xF8F8F8),
        /* 15 */ TO_RGB555(0x000000)
    },
    /* PALETTE 06 */ {
        /* 00 */ TO_RGB555(0x18E000),
        /* 01 */ TO_RGB555(0x383838),
        /* 02 */ TO_RGB555(0x686868),
        /* 03 */ TO_RGB555(0x808080),
        /* 04 */ TO_RGB555(0x000000),
        /* 05 */ TO_RGB555(0x000000),
        /* 06 */ TO_RGB555(0x000000),
        /* 07 */ TO_RGB555(0x000000),
        /* 08 */ TO_RGB555(0xB0B0B0),
        /* 09 */ TO_RGB555(0xC0C0C0),
        /* 10 */ TO_RGB555(0x000000),
        /* 11 */ TO_RGB555(0x0000F8),
        /* 12 */ TO_RGB555(0x909090),
        /* 13 */ TO_RGB555(0x000000),
        /* 14 */ TO_RGB555(0x909090),
        /* 15 */ TO_RGB555(0x000000)
    },
    /* PALETTE 07 */ {
        /* 00 */ TO_RGB555(0x086000),
        /* 01 */ TO_RGB555(0xF8F8F8),
        /* 02 */ TO_RGB555(0x401060),
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
    }
};

// [D_088f8888] Quiz Show BG Palette
Palette quiz_bg_pal[] = {
    /* PALETTE 00 */ {
        /* 00 */ TO_RGB555(0x18E000),
        /* 01 */ TO_RGB555(0x505050),
        /* 02 */ TO_RGB555(0x686868),
        /* 03 */ TO_RGB555(0x808080),
        /* 04 */ TO_RGB555(0x30C0F8),
        /* 05 */ TO_RGB555(0x989008),
        /* 06 */ TO_RGB555(0xF8F810),
        /* 07 */ TO_RGB555(0xF800D0),
        /* 08 */ TO_RGB555(0xB0B0B0),
        /* 09 */ TO_RGB555(0xC0C0C0),
        /* 10 */ TO_RGB555(0xC870F8),
        /* 11 */ TO_RGB555(0xA008F8),
        /* 12 */ TO_RGB555(0x909090),
        /* 13 */ TO_RGB555(0xF80000),
        /* 14 */ TO_RGB555(0xF8F8F8),
        /* 15 */ TO_RGB555(0x000000)
    },
    /* PALETTE 01 */ {
        /* 00 */ TO_RGB555(0x18E000),
        /* 01 */ TO_RGB555(0x000000),
        /* 02 */ TO_RGB555(0x000000),
        /* 03 */ TO_RGB555(0x901098),
        /* 04 */ TO_RGB555(0x000000),
        /* 05 */ TO_RGB555(0x000000),
        /* 06 */ TO_RGB555(0x000000),
        /* 07 */ TO_RGB555(0x000000),
        /* 08 */ TO_RGB555(0xE020F8),
        /* 09 */ TO_RGB555(0xF058F8),
        /* 10 */ TO_RGB555(0x20D8D0),
        /* 11 */ TO_RGB555(0x28F828),
        /* 12 */ TO_RGB555(0x000000),
        /* 13 */ TO_RGB555(0x000000),
        /* 14 */ TO_RGB555(0xE8A8F8),
        /* 15 */ TO_RGB555(0x000000)
    }
};
