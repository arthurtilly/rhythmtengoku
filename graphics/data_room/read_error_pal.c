#include "global.h"
#include "graphics.h"

// [D_0890b330] Reading Scene BG Palette (Cherry, Error)
Palette reading_style_cherry_pal[] = {
    /* PALETTE 00 */ {
        /* 00 */ TO_RGB555(0x204858),
        /* 01 */ TO_RGB555(0x000000),
        /* 02 */ TO_RGB555(0xF80800),
        /* 03 */ TO_RGB555(0x204858),
        /* 04 */ TO_RGB555(0xF0F818),
        /* 05 */ TO_RGB555(0xF8E0E0),
        /* 06 */ TO_RGB555(0xF0D8D8),
        /* 07 */ TO_RGB555(0xD8E8C8),
        /* 08 */ TO_RGB555(0xF8F8F8),
        /* 09 */ TO_RGB555(0xF0F8E0),
        /* 10 */ TO_RGB555(0x204858),
        /* 11 */ TO_RGB555(0x204858),
        /* 12 */ TO_RGB555(0x204858),
        /* 13 */ TO_RGB555(0x204858),
        /* 14 */ TO_RGB555(0x204858),
        /* 15 */ TO_RGB555(0x204858)
    },
    /* PALETTE 01 */ {
        /* 00 */ TO_RGB555(0x286840),
        /* 01 */ TO_RGB555(0x000000),
        /* 02 */ TO_RGB555(0x204858),
        /* 03 */ TO_RGB555(0x204858),
        /* 04 */ TO_RGB555(0x204858),
        /* 05 */ TO_RGB555(0x204858),
        /* 06 */ TO_RGB555(0x204858),
        /* 07 */ TO_RGB555(0x204858),
        /* 08 */ TO_RGB555(0x204858),
        /* 09 */ TO_RGB555(0x204858),
        /* 10 */ TO_RGB555(0x204858),
        /* 11 */ TO_RGB555(0x204858),
        /* 12 */ TO_RGB555(0x204858),
        /* 13 */ TO_RGB555(0x204858),
        /* 14 */ TO_RGB555(0xF0F818),
        /* 15 */ TO_RGB555(0xF8F8F8)
    },
    /* PALETTE 02 */ {
        /* 00 */ TO_RGB555(0x583060),
        /* 01 */ TO_RGB555(0x000000),
        /* 02 */ TO_RGB555(0x204858),
        /* 03 */ TO_RGB555(0x204858),
        /* 04 */ TO_RGB555(0x204858),
        /* 05 */ TO_RGB555(0x204858),
        /* 06 */ TO_RGB555(0x204858),
        /* 07 */ TO_RGB555(0x204858),
        /* 08 */ TO_RGB555(0x204858),
        /* 09 */ TO_RGB555(0x204858),
        /* 10 */ TO_RGB555(0x204858),
        /* 11 */ TO_RGB555(0x204858),
        /* 12 */ TO_RGB555(0x204858),
        /* 13 */ TO_RGB555(0xD8F8D0),
        /* 14 */ TO_RGB555(0xC8E8C0),
        /* 15 */ TO_RGB555(0xF8F8F8)
    }
};

// [D_0890b390] Reading Scene BG Palette (Sea)
Palette reading_style_sea_pal[] = {
    /* PALETTE 00 */ {
        /* 00 */ TO_RGB555(0x204858),
        /* 01 */ TO_RGB555(0x000000),
        /* 02 */ TO_RGB555(0xF80800),
        /* 03 */ TO_RGB555(0x204858),
        /* 04 */ TO_RGB555(0xF0F818),
        /* 05 */ TO_RGB555(0x204858),
        /* 06 */ TO_RGB555(0x204858),
        /* 07 */ TO_RGB555(0x204858),
        /* 08 */ TO_RGB555(0xF8F8F8),
        /* 09 */ TO_RGB555(0x204858),
        /* 10 */ TO_RGB555(0x204858),
        /* 11 */ TO_RGB555(0x204858),
        /* 12 */ TO_RGB555(0x204858),
        /* 13 */ TO_RGB555(0x204858),
        /* 14 */ TO_RGB555(0x204858),
        /* 15 */ TO_RGB555(0x204858)
    },
    /* PALETTE 01 */ {
        /* 00 */ TO_RGB555(0x286840),
        /* 01 */ TO_RGB555(0x000000),
        /* 02 */ TO_RGB555(0x204858),
        /* 03 */ TO_RGB555(0x204858),
        /* 04 */ TO_RGB555(0x204858),
        /* 05 */ TO_RGB555(0x204858),
        /* 06 */ TO_RGB555(0x204858),
        /* 07 */ TO_RGB555(0x204858),
        /* 08 */ TO_RGB555(0x204858),
        /* 09 */ TO_RGB555(0x204858),
        /* 10 */ TO_RGB555(0x204858),
        /* 11 */ TO_RGB555(0x204858),
        /* 12 */ TO_RGB555(0x204858),
        /* 13 */ TO_RGB555(0x204858),
        /* 14 */ TO_RGB555(0xF0F818),
        /* 15 */ TO_RGB555(0xF8F8F8)
    },
    /* PALETTE 02 */ {
        /* 00 */ TO_RGB555(0x583060),
        /* 01 */ TO_RGB555(0x000000),
        /* 02 */ TO_RGB555(0x204858),
        /* 03 */ TO_RGB555(0x204858),
        /* 04 */ TO_RGB555(0x204858),
        /* 05 */ TO_RGB555(0x204858),
        /* 06 */ TO_RGB555(0x204858),
        /* 07 */ TO_RGB555(0x204858),
        /* 08 */ TO_RGB555(0x204858),
        /* 09 */ TO_RGB555(0x204858),
        /* 10 */ TO_RGB555(0x204858),
        /* 11 */ TO_RGB555(0x204858),
        /* 12 */ TO_RGB555(0x204858),
        /* 13 */ TO_RGB555(0xE0E0F8),
        /* 14 */ TO_RGB555(0xE8E8E8),
        /* 15 */ TO_RGB555(0xF8F8F8)
    }
};
