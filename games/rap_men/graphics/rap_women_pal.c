#include "global.h"
#include "graphics.h"

// [D_088fcf14] Rap Women OBJ Palette
Palette rap_women_obj_pal[] = {
    /* PALETTE 00 */ {
        /* 00 */ TO_RGB555(0xF888C8),
        /* 01 */ TO_RGB555(0xF898D0),
        /* 02 */ TO_RGB555(0x0010F8),
        /* 03 */ TO_RGB555(0xF8B8E0),
        /* 04 */ TO_RGB555(0xF8C8E8),
        /* 05 */ TO_RGB555(0xF8D8F0),
        /* 06 */ TO_RGB555(0xF8E8F0),
        /* 07 */ TO_RGB555(0xF8F8F8),
        /* 08 */ TO_RGB555(0x000000),
        /* 09 */ TO_RGB555(0xF8F8B8),
        /* 10 */ TO_RGB555(0x98F0F8),
        /* 11 */ TO_RGB555(0x0088C8),
        /* 12 */ TO_RGB555(0x909090),
        /* 13 */ TO_RGB555(0xF80000),
        /* 14 */ TO_RGB555(0xF8F8F8),
        /* 15 */ TO_RGB555(0x000000)
    },
    /* PALETTE 01 */ {
        /* 00 */ TO_RGB555(0xF888C8),
        /* 01 */ TO_RGB555(0xF898D0),
        /* 02 */ TO_RGB555(0xF8A8D8),
        /* 03 */ TO_RGB555(0xF8B8E0),
        /* 04 */ TO_RGB555(0xF8C8E8),
        /* 05 */ TO_RGB555(0xF8D8F0),
        /* 06 */ TO_RGB555(0xF8E8F0),
        /* 07 */ TO_RGB555(0xF8F8F8),
        /* 08 */ TO_RGB555(0xF8F8F8),
        /* 09 */ TO_RGB555(0xF8F8B8),
        /* 10 */ TO_RGB555(0x98F0F8),
        /* 11 */ TO_RGB555(0x58C8F8),
        /* 12 */ TO_RGB555(0x909090),
        /* 13 */ TO_RGB555(0xF80000),
        /* 14 */ TO_RGB555(0xF8F8F8),
        /* 15 */ TO_RGB555(0xF8F8F8)
    },
    /* PALETTE 02 */ {
        /* 00 */ TO_RGB555(0xF888C8),
        /* 01 */ TO_RGB555(0xF898D0),
        /* 02 */ TO_RGB555(0xF8A8D8),
        /* 03 */ TO_RGB555(0xF8B8E0),
        /* 04 */ TO_RGB555(0xF8C8E8),
        /* 05 */ TO_RGB555(0xF8D8F0),
        /* 06 */ TO_RGB555(0xF8E8F0),
        /* 07 */ TO_RGB555(0xF8F8F8),
        /* 08 */ TO_RGB555(0xF8F8F8),
        /* 09 */ TO_RGB555(0xF8F8B8),
        /* 10 */ TO_RGB555(0x98F0F8),
        /* 11 */ TO_RGB555(0x10B0F8),
        /* 12 */ TO_RGB555(0x909090),
        /* 13 */ TO_RGB555(0xF80000),
        /* 14 */ TO_RGB555(0xF8F8F8),
        /* 15 */ TO_RGB555(0xC8C8C8)
    },
    /* PALETTE 03 */ {
        /* 00 */ TO_RGB555(0xF8A8D8),
        /* 01 */ TO_RGB555(0xF8B8E0),
        /* 02 */ TO_RGB555(0xF8A8D8),
        /* 03 */ TO_RGB555(0xF8B8E0),
        /* 04 */ TO_RGB555(0xF8C8E8),
        /* 05 */ TO_RGB555(0xF8D8F0),
        /* 06 */ TO_RGB555(0xF8E8F0),
        /* 07 */ TO_RGB555(0xF8F8F8),
        /* 08 */ TO_RGB555(0xF8F8F8),
        /* 09 */ TO_RGB555(0xF8F8B8),
        /* 10 */ TO_RGB555(0x98F0F8),
        /* 11 */ TO_RGB555(0x10B0F8),
        /* 12 */ TO_RGB555(0x909090),
        /* 13 */ TO_RGB555(0xF80000),
        /* 14 */ TO_RGB555(0xF8F8F8),
        /* 15 */ TO_RGB555(0x989898)
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
        /* 11 */ TO_RGB555(0x0088C8),
        /* 12 */ TO_RGB555(0x0898E0),
        /* 13 */ TO_RGB555(0x000000),
        /* 14 */ TO_RGB555(0xF888C8),
        /* 15 */ TO_RGB555(0x000000)
    }
};

// [D_088fcfb4] Rap Women BG Palette
Palette rap_women_bg_pal[] = {
    /* PALETTE 00 */ {
        /* 00 */ TO_RGB555(0xF888C8),
        /* 01 */ TO_RGB555(0xF898D0),
        /* 02 */ TO_RGB555(0xF8A8D8),
        /* 03 */ TO_RGB555(0xF8B8E0),
        /* 04 */ TO_RGB555(0xF8C8E8),
        /* 05 */ TO_RGB555(0xF8D8F0),
        /* 06 */ TO_RGB555(0xF8E8F0),
        /* 07 */ TO_RGB555(0xF8F8F8),
        /* 08 */ TO_RGB555(0x000000),
        /* 09 */ TO_RGB555(0x000000),
        /* 10 */ TO_RGB555(0x000000),
        /* 11 */ TO_RGB555(0x0088C8),
        /* 12 */ TO_RGB555(0x0898E0),
        /* 13 */ TO_RGB555(0x000000),
        /* 14 */ TO_RGB555(0xF888C8),
        /* 15 */ TO_RGB555(0x000000)
    },
    /* PALETTE 01 */ {
        /* 00 */ TO_RGB555(0xF888C8),
        /* 01 */ TO_RGB555(0xF898D0),
        /* 02 */ TO_RGB555(0xF8A8D8),
        /* 03 */ TO_RGB555(0xF8B8E0),
        /* 04 */ TO_RGB555(0xF8C8E8),
        /* 05 */ TO_RGB555(0xF8D8F0),
        /* 06 */ TO_RGB555(0xF8E8F0),
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
        /* 00 */ TO_RGB555(0xF888C8),
        /* 01 */ TO_RGB555(0xC868A0),
        /* 02 */ TO_RGB555(0xA85888),
        /* 03 */ TO_RGB555(0x000000),
        /* 04 */ TO_RGB555(0x000000),
        /* 05 */ TO_RGB555(0x000000),
        /* 06 */ TO_RGB555(0x000000),
        /* 07 */ TO_RGB555(0x000000),
        /* 08 */ TO_RGB555(0x000000),
        /* 09 */ TO_RGB555(0x000000),
        /* 10 */ TO_RGB555(0x000000),
        /* 11 */ TO_RGB555(0xA85888),
        /* 12 */ TO_RGB555(0xE880B8),
        /* 13 */ TO_RGB555(0xF80000),
        /* 14 */ TO_RGB555(0xF0F8F8),
        /* 15 */ TO_RGB555(0xF888C8)
    }
};
