#include "global.h"
#include "graphics.h"

// [D_088fb164] <description>
const Palette rap_men_obj_pal[] = {
    /* PALETTE 00 */ {
        /* 00 */ TO_RGB555(0x00E0A8),
        /* 01 */ TO_RGB555(0xF868F0),
        /* 02 */ TO_RGB555(0x2088E8),
        /* 03 */ TO_RGB555(0x2878F8),
        /* 04 */ TO_RGB555(0xF80000),
        /* 05 */ TO_RGB555(0xF84038),
        /* 06 */ TO_RGB555(0xF88078),
        /* 07 */ TO_RGB555(0xF8B8B8),
        /* 08 */ TO_RGB555(0xF8F8F8),
        /* 09 */ TO_RGB555(0xF8F8B8),
        /* 10 */ TO_RGB555(0x98F0F8),
        /* 11 */ TO_RGB555(0xF8F000),
        /* 12 */ TO_RGB555(0x909090),
        /* 13 */ TO_RGB555(0xF80000),
        /* 14 */ TO_RGB555(0xF8F8F8),
        /* 15 */ TO_RGB555(0x000000)
    },
    /* PALETTE 01 */ {
        /* 00 */ TO_RGB555(0x00E0A8),
        /* 01 */ TO_RGB555(0xF868F0),
        /* 02 */ TO_RGB555(0x2088E8),
        /* 03 */ TO_RGB555(0xB0D0F8),
        /* 04 */ TO_RGB555(0xF80000),
        /* 05 */ TO_RGB555(0xF84038),
        /* 06 */ TO_RGB555(0xF88078),
        /* 07 */ TO_RGB555(0xF8B8B8),
        /* 08 */ TO_RGB555(0xF8F8F8),
        /* 09 */ TO_RGB555(0xF8F8B8),
        /* 10 */ TO_RGB555(0x98F0F8),
        /* 11 */ TO_RGB555(0xF8F000),
        /* 12 */ TO_RGB555(0x909090),
        /* 13 */ TO_RGB555(0xF80000),
        /* 14 */ TO_RGB555(0xF8F8F8),
        /* 15 */ TO_RGB555(0xF8F8F8)
    },
    /* PALETTE 02 */ {
        /* 00 */ TO_RGB555(0x00E0A8),
        /* 01 */ TO_RGB555(0xF868F0),
        /* 02 */ TO_RGB555(0x2088E8),
        /* 03 */ TO_RGB555(0xB0D0F8),
        /* 04 */ TO_RGB555(0xF80000),
        /* 05 */ TO_RGB555(0xF84038),
        /* 06 */ TO_RGB555(0xF88078),
        /* 07 */ TO_RGB555(0xF8B8B8),
        /* 08 */ TO_RGB555(0xF8F8F8),
        /* 09 */ TO_RGB555(0xF8F8B8),
        /* 10 */ TO_RGB555(0x98F0F8),
        /* 11 */ TO_RGB555(0xF8F000),
        /* 12 */ TO_RGB555(0x909090),
        /* 13 */ TO_RGB555(0xF80000),
        /* 14 */ TO_RGB555(0xF8F8F8),
        /* 15 */ TO_RGB555(0xC8C8C8)
    },
    /* PALETTE 03 */ {
        /* 00 */ TO_RGB555(0x00E0A8),
        /* 01 */ TO_RGB555(0xF868F0),
        /* 02 */ TO_RGB555(0x2088E8),
        /* 03 */ TO_RGB555(0xB0D0F8),
        /* 04 */ TO_RGB555(0xF80000),
        /* 05 */ TO_RGB555(0xF84038),
        /* 06 */ TO_RGB555(0xF88078),
        /* 07 */ TO_RGB555(0xF8B8B8),
        /* 08 */ TO_RGB555(0xF8F8F8),
        /* 09 */ TO_RGB555(0xF8F8B8),
        /* 10 */ TO_RGB555(0x98F0F8),
        /* 11 */ TO_RGB555(0xF8F000),
        /* 12 */ TO_RGB555(0x909090),
        /* 13 */ TO_RGB555(0xF80000),
        /* 14 */ TO_RGB555(0xF8F8F8),
        /* 15 */ TO_RGB555(0x989898)
    }
};

// [D_088fb1e4] <description>
const Palette rap_men_bg_pal[] = {
    /* PALETTE 00 */ {
        /* 00 */ TO_RGB555(0x00A8F8),
        /* 01 */ TO_RGB555(0x00A0F8),
        /* 02 */ TO_RGB555(0x28B0F8),
        /* 03 */ TO_RGB555(0x50C0F8),
        /* 04 */ TO_RGB555(0x78D0F8),
        /* 05 */ TO_RGB555(0xA8E8F8),
        /* 06 */ TO_RGB555(0xD0F0F8),
        /* 07 */ TO_RGB555(0xF8F8F8),
        /* 08 */ TO_RGB555(0x000000),
        /* 09 */ TO_RGB555(0x000000),
        /* 10 */ TO_RGB555(0x000000),
        /* 11 */ TO_RGB555(0x0088C8),
        /* 12 */ TO_RGB555(0x0898E0),
        /* 13 */ TO_RGB555(0x000000),
        /* 14 */ TO_RGB555(0x48A8D8),
        /* 15 */ TO_RGB555(0x000000)
    },
    /* PALETTE 01 */ {
        /* 00 */ TO_RGB555(0x00A8F8),
        /* 01 */ TO_RGB555(0x00A0F8),
        /* 02 */ TO_RGB555(0x28B0F8),
        /* 03 */ TO_RGB555(0x50C0F8),
        /* 04 */ TO_RGB555(0x78D0F8),
        /* 05 */ TO_RGB555(0xA8E8F8),
        /* 06 */ TO_RGB555(0xD0F0F8),
        /* 07 */ TO_RGB555(0xF8F8F8),
        /* 08 */ TO_RGB555(0x000000),
        /* 09 */ TO_RGB555(0x000000),
        /* 10 */ TO_RGB555(0x000000),
        /* 11 */ TO_RGB555(0x000000),
        /* 12 */ TO_RGB555(0x000000),
        /* 13 */ TO_RGB555(0x000000),
        /* 14 */ TO_RGB555(0x000000),
        /* 15 */ TO_RGB555(0x000000)
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
        /* 15 */ TO_RGB555(0x000000)
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
        /* 00 */ TO_RGB555(0x00A8F8),
        /* 01 */ TO_RGB555(0x0080C8),
        /* 02 */ TO_RGB555(0x0070A8),
        /* 03 */ TO_RGB555(0x000000),
        /* 04 */ TO_RGB555(0x000000),
        /* 05 */ TO_RGB555(0x000000),
        /* 06 */ TO_RGB555(0x000000),
        /* 07 */ TO_RGB555(0x000000),
        /* 08 */ TO_RGB555(0x000000),
        /* 09 */ TO_RGB555(0x000000),
        /* 10 */ TO_RGB555(0x000000),
        /* 11 */ TO_RGB555(0x0098E0),
        /* 12 */ TO_RGB555(0x38C0F8),
        /* 13 */ TO_RGB555(0xF80000),
        /* 14 */ TO_RGB555(0xF0F8F8),
        /* 15 */ TO_RGB555(0x68D0F8)
    }
};
