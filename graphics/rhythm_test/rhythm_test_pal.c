#include "global.h"
#include "graphics.h"

// [D_088f0200] <description>
const Palette rhythm_test_pal[] = {
    /* PALETTE 00 */ {
        /* 00 */ TO_RGB555(0x507898),
        /* 01 */ TO_RGB555(0x000000),
        /* 02 */ TO_RGB555(0x980008),
        /* 03 */ TO_RGB555(0xF80800),
        /* 04 */ TO_RGB555(0x98A008),
        /* 05 */ TO_RGB555(0xF0F818),
        /* 06 */ TO_RGB555(0x18B010),
        /* 07 */ TO_RGB555(0x28F818),
        /* 08 */ TO_RGB555(0x78E0F8),
        /* 09 */ TO_RGB555(0xD8F8F8),
        /* 10 */ TO_RGB555(0x0010B8),
        /* 11 */ TO_RGB555(0x2860F8),
        /* 12 */ TO_RGB555(0xC060B0),
        /* 13 */ TO_RGB555(0xF878E0),
        /* 14 */ TO_RGB555(0xA8B0A8),
        /* 15 */ TO_RGB555(0xF8F8F8)
    },
    /* PALETTE 01 */ {
        /* 00 */ TO_RGB555(0x808080),
        /* 01 */ TO_RGB555(0x000000),
        /* 02 */ TO_RGB555(0xA8B0A8),
        /* 03 */ TO_RGB555(0x28F818),
        /* 04 */ TO_RGB555(0x28F818),
        /* 05 */ TO_RGB555(0x28F818),
        /* 06 */ TO_RGB555(0x28F818),
        /* 07 */ TO_RGB555(0x28F818),
        /* 08 */ TO_RGB555(0xF8F8F8),
        /* 09 */ TO_RGB555(0xF89890),
        /* 10 */ TO_RGB555(0xF8A8A8),
        /* 11 */ TO_RGB555(0xF8C0B8),
        /* 12 */ TO_RGB555(0xF8D0D0),
        /* 13 */ TO_RGB555(0xF8E8E8),
        /* 14 */ TO_RGB555(0xA8B0A8),
        /* 15 */ TO_RGB555(0xF8F8F8)
    },
    /* PALETTE 02 */ {
        /* 00 */ TO_RGB555(0x409870),
        /* 01 */ TO_RGB555(0x000000),
        /* 02 */ TO_RGB555(0x903000),
        /* 03 */ TO_RGB555(0xF85000),
        /* 04 */ TO_RGB555(0x000000),
        /* 05 */ TO_RGB555(0x303030),
        /* 06 */ TO_RGB555(0x404040),
        /* 07 */ TO_RGB555(0x585858),
        /* 08 */ TO_RGB555(0x808080),
        /* 09 */ TO_RGB555(0x000000),
        /* 10 */ TO_RGB555(0x000000),
        /* 11 */ TO_RGB555(0x2860F8),
        /* 12 */ TO_RGB555(0x000000),
        /* 13 */ TO_RGB555(0x000000),
        /* 14 */ TO_RGB555(0xA8B0A8),
        /* 15 */ TO_RGB555(0xF8F8F8)
    },
    /* PALETTE 03 */ {
        /* 00 */ TO_RGB555(0x409870),
        /* 01 */ TO_RGB555(0x000000),
        /* 02 */ TO_RGB555(0x000000),
        /* 03 */ TO_RGB555(0xB03800),
        /* 04 */ TO_RGB555(0x000000),
        /* 05 */ TO_RGB555(0x000000),
        /* 06 */ TO_RGB555(0x000000),
        /* 07 */ TO_RGB555(0x000000),
        /* 08 */ TO_RGB555(0x78E0F8),
        /* 09 */ TO_RGB555(0xD8F8F8),
        /* 10 */ TO_RGB555(0x000000),
        /* 11 */ TO_RGB555(0x000000),
        /* 12 */ TO_RGB555(0x000000),
        /* 13 */ TO_RGB555(0x000000),
        /* 14 */ TO_RGB555(0x000000),
        /* 15 */ TO_RGB555(0xF8F8F8)
    },
    /* PALETTE 04 */ {
        /* 00 */ TO_RGB555(0x707800),
        /* 01 */ TO_RGB555(0x000000),
        /* 02 */ TO_RGB555(0xD00040),
        /* 03 */ TO_RGB555(0xF80040),
        /* 04 */ TO_RGB555(0xD00030),
        /* 05 */ TO_RGB555(0xF00040),
        /* 06 */ TO_RGB555(0xE00040),
        /* 07 */ TO_RGB555(0xC80000),
        /* 08 */ TO_RGB555(0xF8F0D0),
        /* 09 */ TO_RGB555(0x1830F8),
        /* 10 */ TO_RGB555(0x1018A0),
        /* 11 */ TO_RGB555(0xF8E078),
        /* 12 */ TO_RGB555(0xF8B860),
        /* 13 */ TO_RGB555(0x987040),
        /* 14 */ TO_RGB555(0x20D810),
        /* 15 */ TO_RGB555(0xD8C8B0)
    },
    /* PALETTE 05 */ {
        /* 00 */ TO_RGB555(0x000000),
        /* 01 */ TO_RGB555(0x000000),
        /* 02 */ TO_RGB555(0x000000),
        /* 03 */ TO_RGB555(0x000000),
        /* 04 */ TO_RGB555(0x000000),
        /* 05 */ TO_RGB555(0xF86800),
        /* 06 */ TO_RGB555(0xB85000),
        /* 07 */ TO_RGB555(0xF8B000),
        /* 08 */ TO_RGB555(0xF8F0D0),
        /* 09 */ TO_RGB555(0x1830F8),
        /* 10 */ TO_RGB555(0x1018A0),
        /* 11 */ TO_RGB555(0xF8E078),
        /* 12 */ TO_RGB555(0xF8B860),
        /* 13 */ TO_RGB555(0x987040),
        /* 14 */ TO_RGB555(0x20D810),
        /* 15 */ TO_RGB555(0xD8C8B0)
    },
    /* PALETTE 06 */ {
        /* 00 */ TO_RGB555(0x6060B0),
        /* 01 */ TO_RGB555(0x000000),
        /* 02 */ TO_RGB555(0x903000),
        /* 03 */ TO_RGB555(0xF85000),
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
        /* 02 */ TO_RGB555(0xD03000),
        /* 03 */ TO_RGB555(0xF84800),
        /* 04 */ TO_RGB555(0xD04000),
        /* 05 */ TO_RGB555(0xF04000),
        /* 06 */ TO_RGB555(0xE03800),
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
        /* 02 */ TO_RGB555(0x000000),
        /* 03 */ TO_RGB555(0x000000),
        /* 04 */ TO_RGB555(0x000000),
        /* 05 */ TO_RGB555(0x000000),
        /* 06 */ TO_RGB555(0x000000),
        /* 07 */ TO_RGB555(0x505050),
        /* 08 */ TO_RGB555(0x606060),
        /* 09 */ TO_RGB555(0x787878),
        /* 10 */ TO_RGB555(0xA0A0A0),
        /* 11 */ TO_RGB555(0xC8C8C8),
        /* 12 */ TO_RGB555(0xF0F0F0),
        /* 13 */ TO_RGB555(0xF8F8F8),
        /* 14 */ TO_RGB555(0x000000),
        /* 15 */ TO_RGB555(0x000000)
    },
    /* PALETTE 09 */ {
        /* 00 */ TO_RGB555(0x000000),
        /* 01 */ TO_RGB555(0x000000),
        /* 02 */ TO_RGB555(0x000000),
        /* 03 */ TO_RGB555(0x000000),
        /* 04 */ TO_RGB555(0x000000),
        /* 05 */ TO_RGB555(0x000000),
        /* 06 */ TO_RGB555(0x000000),
        /* 07 */ TO_RGB555(0x402800),
        /* 08 */ TO_RGB555(0x583800),
        /* 09 */ TO_RGB555(0x805008),
        /* 10 */ TO_RGB555(0xA87010),
        /* 11 */ TO_RGB555(0xD08818),
        /* 12 */ TO_RGB555(0xF8A020),
        /* 13 */ TO_RGB555(0x000000),
        /* 14 */ TO_RGB555(0x000000),
        /* 15 */ TO_RGB555(0x000000)
    },
    /* PALETTE 10 */ {
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
    /* PALETTE 11 */ {
        /* 00 */ TO_RGB555(0x000000),
        /* 01 */ TO_RGB555(0x000000),
        /* 02 */ TO_RGB555(0x980008),
        /* 03 */ TO_RGB555(0xF80800),
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
    /* PALETTE 12 */ {
        /* 00 */ TO_RGB555(0x000000),
        /* 01 */ TO_RGB555(0x000000),
        /* 02 */ TO_RGB555(0x000000),
        /* 03 */ TO_RGB555(0xC00008),
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
    /* PALETTE 13 */ {
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
    /* PALETTE 14 */ {
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
    /* PALETTE 15 */ {
        /* 00 */ TO_RGB555(0x6060B0),
        /* 01 */ TO_RGB555(0x000000),
        /* 02 */ TO_RGB555(0xC00008),
        /* 03 */ TO_RGB555(0xF80800),
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
