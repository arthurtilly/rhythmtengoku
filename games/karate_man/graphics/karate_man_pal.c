#include "global.h"
#include "graphics.h"

// [D_088ad004] Palette
Palette karate_man_pal[] = {
    /* PALETTE 00 */ {
        /* 00 */ TO_RGB555(0x18F8E0),
        /* 01 */ TO_RGB555(0x000000),
        /* 02 */ TO_RGB555(0xF87018),
        /* 03 */ TO_RGB555(0xF87018),
        /* 04 */ TO_RGB555(0xF87018),
        /* 05 */ TO_RGB555(0xF87018),
        /* 06 */ TO_RGB555(0xF87018),
        /* 07 */ TO_RGB555(0xF8E068),
        /* 08 */ TO_RGB555(0x000000),
        /* 09 */ TO_RGB555(0xF8F8F8),
        /* 10 */ TO_RGB555(0xF8F8F8),
        /* 11 */ TO_RGB555(0xF8F8F8),
        /* 12 */ TO_RGB555(0xF87018),
        /* 13 */ TO_RGB555(0xF87018),
        /* 14 */ TO_RGB555(0xF87018),
        /* 15 */ TO_RGB555(0xF8F8F8)
    },
    /* PALETTE 01 */ {
        /* 00 */ TO_RGB555(0xF87018),
        /* 01 */ TO_RGB555(0x000000),
        /* 02 */ TO_RGB555(0x18F8E0),
        /* 03 */ TO_RGB555(0x2860F8),
        /* 04 */ TO_RGB555(0xF80000),
        /* 05 */ TO_RGB555(0xF8F800),
        /* 06 */ TO_RGB555(0x703008),
        /* 07 */ TO_RGB555(0x000000),
        /* 08 */ TO_RGB555(0x000000),
        /* 09 */ TO_RGB555(0xF8F8F8),
        /* 10 */ TO_RGB555(0xF8F8F8),
        /* 11 */ TO_RGB555(0xF8F8F8),
        /* 12 */ TO_RGB555(0x000000),
        /* 13 */ TO_RGB555(0x000000),
        /* 14 */ TO_RGB555(0xF8F8F8),
        /* 15 */ TO_RGB555(0xF8F8F8)
    },
    /* PALETTE 02 */ {
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
        /* 15 */ TO_RGB555(0xF8F8F8)
    },
    /* PALETTE 03 */ {
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
    /* PALETTE 04 */ {
        /* 00 */ TO_RGB555(0x18F8E0),
        /* 01 */ TO_RGB555(0x000000),
        /* 02 */ TO_RGB555(0xF8E068),
        /* 03 */ TO_RGB555(0xF8C050),
        /* 04 */ TO_RGB555(0x000000),
        /* 05 */ TO_RGB555(0x000000),
        /* 06 */ TO_RGB555(0xF87018),
        /* 07 */ TO_RGB555(0xF8C050),
        /* 08 */ TO_RGB555(0x2860F8),
        /* 09 */ TO_RGB555(0x2860F8),
        /* 10 */ TO_RGB555(0x2860F8),
        /* 11 */ TO_RGB555(0x2860F8),
        /* 12 */ TO_RGB555(0x000000),
        /* 13 */ TO_RGB555(0xF80000),
        /* 14 */ TO_RGB555(0xF80000),
        /* 15 */ TO_RGB555(0xF8F8F8)
    },
    /* PALETTE 05 */ {
        /* 00 */ TO_RGB555(0x000000),
        /* 01 */ TO_RGB555(0x000000),
        /* 02 */ TO_RGB555(0xF8E068),
        /* 03 */ TO_RGB555(0xF8E068),
        /* 04 */ TO_RGB555(0x000000),
        /* 05 */ TO_RGB555(0x000000),
        /* 06 */ TO_RGB555(0x703008),
        /* 07 */ TO_RGB555(0x000000),
        /* 08 */ TO_RGB555(0x2860F8),
        /* 09 */ TO_RGB555(0x2860F8),
        /* 10 */ TO_RGB555(0x2860F8),
        /* 11 */ TO_RGB555(0x2860F8),
        /* 12 */ TO_RGB555(0x000000),
        /* 13 */ TO_RGB555(0xF80000),
        /* 14 */ TO_RGB555(0xF80000),
        /* 15 */ TO_RGB555(0xF8F8F8)
    },
    /* PALETTE 06 */ {
        /* 00 */ TO_RGB555(0x000000),
        /* 01 */ TO_RGB555(0x000000),
        /* 02 */ TO_RGB555(0xF8C050),
        /* 03 */ TO_RGB555(0xF8E068),
        /* 04 */ TO_RGB555(0x000000),
        /* 05 */ TO_RGB555(0x000000),
        /* 06 */ TO_RGB555(0x000000),
        /* 07 */ TO_RGB555(0x000000),
        /* 08 */ TO_RGB555(0x000000),
        /* 09 */ TO_RGB555(0x000000),
        /* 10 */ TO_RGB555(0x000000),
        /* 11 */ TO_RGB555(0x000000),
        /* 12 */ TO_RGB555(0xF8F8F8),
        /* 13 */ TO_RGB555(0xF8F8F8),
        /* 14 */ TO_RGB555(0xF8F8F8),
        /* 15 */ TO_RGB555(0x000000)
    },
    /* PALETTE 07 */ {
        /* 00 */ TO_RGB555(0x000000),
        /* 01 */ TO_RGB555(0x000000),
        /* 02 */ TO_RGB555(0xF8E068),
        /* 03 */ TO_RGB555(0xF8C050),
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

// [D_088ad104] <description>
Palette karate_man_2_pal[] = {
    /* PALETTE 00 */ {
        /* 00 */ TO_RGB555(0x18F8E0),
        /* 01 */ TO_RGB555(0x000000),
        /* 02 */ TO_RGB555(0xF87018),
        /* 03 */ TO_RGB555(0xF87018),
        /* 04 */ TO_RGB555(0xF87018),
        /* 05 */ TO_RGB555(0xF87018),
        /* 06 */ TO_RGB555(0xF87018),
        /* 07 */ TO_RGB555(0xF8E068),
        /* 08 */ TO_RGB555(0x000000),
        /* 09 */ TO_RGB555(0xF8F8F8),
        /* 10 */ TO_RGB555(0xF8F8F8),
        /* 11 */ TO_RGB555(0xF8F8F8),
        /* 12 */ TO_RGB555(0xF87018),
        /* 13 */ TO_RGB555(0xF87018),
        /* 14 */ TO_RGB555(0xF87018),
        /* 15 */ TO_RGB555(0xF8F8F8)
    },
    /* PALETTE 01 */ {
        /* 00 */ TO_RGB555(0xF87018),
        /* 01 */ TO_RGB555(0x000000),
        /* 02 */ TO_RGB555(0x18F8E0),
        /* 03 */ TO_RGB555(0x2860F8),
        /* 04 */ TO_RGB555(0xF80000),
        /* 05 */ TO_RGB555(0xF8F800),
        /* 06 */ TO_RGB555(0x703008),
        /* 07 */ TO_RGB555(0x000000),
        /* 08 */ TO_RGB555(0x000000),
        /* 09 */ TO_RGB555(0xF8F8F8),
        /* 10 */ TO_RGB555(0xF8F8F8),
        /* 11 */ TO_RGB555(0xF8F8F8),
        /* 12 */ TO_RGB555(0x000000),
        /* 13 */ TO_RGB555(0x000000),
        /* 14 */ TO_RGB555(0xF8F8F8),
        /* 15 */ TO_RGB555(0xF8F8F8)
    },
    /* PALETTE 02 */ {
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
        /* 15 */ TO_RGB555(0xF8F8F8)
    },
    /* PALETTE 03 */ {
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
    /* PALETTE 04 */ {
        /* 00 */ TO_RGB555(0x18F8E0),
        /* 01 */ TO_RGB555(0x000000),
        /* 02 */ TO_RGB555(0xF050F8),
        /* 03 */ TO_RGB555(0xF888F8),
        /* 04 */ TO_RGB555(0x000000),
        /* 05 */ TO_RGB555(0x000000),
        /* 06 */ TO_RGB555(0xF87018),
        /* 07 */ TO_RGB555(0xF8C050),
        /* 08 */ TO_RGB555(0x2860F8),
        /* 09 */ TO_RGB555(0x2860F8),
        /* 10 */ TO_RGB555(0x2860F8),
        /* 11 */ TO_RGB555(0x2860F8),
        /* 12 */ TO_RGB555(0x000000),
        /* 13 */ TO_RGB555(0xF80000),
        /* 14 */ TO_RGB555(0xF80000),
        /* 15 */ TO_RGB555(0xF8F8F8)
    },
    /* PALETTE 05 */ {
        /* 00 */ TO_RGB555(0x000000),
        /* 01 */ TO_RGB555(0x000000),
        /* 02 */ TO_RGB555(0xF888F8),
        /* 03 */ TO_RGB555(0xF888F8),
        /* 04 */ TO_RGB555(0x000000),
        /* 05 */ TO_RGB555(0x000000),
        /* 06 */ TO_RGB555(0x703008),
        /* 07 */ TO_RGB555(0x000000),
        /* 08 */ TO_RGB555(0x2860F8),
        /* 09 */ TO_RGB555(0x2860F8),
        /* 10 */ TO_RGB555(0x2860F8),
        /* 11 */ TO_RGB555(0x2860F8),
        /* 12 */ TO_RGB555(0x000000),
        /* 13 */ TO_RGB555(0xF80000),
        /* 14 */ TO_RGB555(0xF80000),
        /* 15 */ TO_RGB555(0xF8F8F8)
    },
    /* PALETTE 06 */ {
        /* 00 */ TO_RGB555(0x000000),
        /* 01 */ TO_RGB555(0x000000),
        /* 02 */ TO_RGB555(0xF050F8),
        /* 03 */ TO_RGB555(0xF888F8),
        /* 04 */ TO_RGB555(0x000000),
        /* 05 */ TO_RGB555(0x000000),
        /* 06 */ TO_RGB555(0x000000),
        /* 07 */ TO_RGB555(0x000000),
        /* 08 */ TO_RGB555(0x000000),
        /* 09 */ TO_RGB555(0x000000),
        /* 10 */ TO_RGB555(0x000000),
        /* 11 */ TO_RGB555(0x000000),
        /* 12 */ TO_RGB555(0xF8F8F8),
        /* 13 */ TO_RGB555(0xF8F8F8),
        /* 14 */ TO_RGB555(0xF8F8F8),
        /* 15 */ TO_RGB555(0x000000)
    },
    /* PALETTE 07 */ {
        /* 00 */ TO_RGB555(0x000000),
        /* 01 */ TO_RGB555(0x000000),
        /* 02 */ TO_RGB555(0xF888F8),
        /* 03 */ TO_RGB555(0xF050F8),
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
