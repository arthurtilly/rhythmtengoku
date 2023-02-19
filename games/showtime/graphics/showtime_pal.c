#include "global.h"
#include "graphics.h"

// [D_088cba2c] Showtime OBJ Palette
Palette showtime_obj_pal[] = {
    /* PALETTE 00 */ {
        /* 00 */ TO_RGB555(0x00B8F8),
        /* 01 */ TO_RGB555(0xD87010),
        /* 02 */ TO_RGB555(0x884808),
        /* 03 */ TO_RGB555(0x000000),
        /* 04 */ TO_RGB555(0x808080),
        /* 05 */ TO_RGB555(0x90A000),
        /* 06 */ TO_RGB555(0x585858),
        /* 07 */ TO_RGB555(0xF8F810),
        /* 08 */ TO_RGB555(0x3870F8),
        /* 09 */ TO_RGB555(0x28F800),
        /* 10 */ TO_RGB555(0xF890C8),
        /* 11 */ TO_RGB555(0x989898),
        /* 12 */ TO_RGB555(0xB8B8B8),
        /* 13 */ TO_RGB555(0xF83030),
        /* 14 */ TO_RGB555(0xF8F8F8),
        /* 15 */ TO_RGB555(0x000000)
    },
    /* PALETTE 01 */ {
        /* 00 */ TO_RGB555(0x00D050),
        /* 01 */ TO_RGB555(0x00A098),
        /* 02 */ TO_RGB555(0x00C0C8),
        /* 03 */ TO_RGB555(0x18F8F8),
        /* 04 */ TO_RGB555(0xC0C0B8),
        /* 05 */ TO_RGB555(0x000000),
        /* 06 */ TO_RGB555(0x000000),
        /* 07 */ TO_RGB555(0x204098),
        /* 08 */ TO_RGB555(0x3870F8),
        /* 09 */ TO_RGB555(0x000000),
        /* 10 */ TO_RGB555(0x000000),
        /* 11 */ TO_RGB555(0x585858),
        /* 12 */ TO_RGB555(0x000000),
        /* 13 */ TO_RGB555(0x88A8F8),
        /* 14 */ TO_RGB555(0xF8F8F8),
        /* 15 */ TO_RGB555(0x000000)
    },
    /* PALETTE 02 */ {
        /* 00 */ TO_RGB555(0x00B8F8),
        /* 01 */ TO_RGB555(0x000000),
        /* 02 */ TO_RGB555(0x000000),
        /* 03 */ TO_RGB555(0x000000),
        /* 04 */ TO_RGB555(0x000000),
        /* 05 */ TO_RGB555(0x000000),
        /* 06 */ TO_RGB555(0x000000),
        /* 07 */ TO_RGB555(0x000000),
        /* 08 */ TO_RGB555(0x000000),
        /* 09 */ TO_RGB555(0x000000),
        /* 10 */ TO_RGB555(0xF8F8F8),
        /* 11 */ TO_RGB555(0xB0F8F8),
        /* 12 */ TO_RGB555(0x000000),
        /* 13 */ TO_RGB555(0x000000),
        /* 14 */ TO_RGB555(0x000000),
        /* 15 */ TO_RGB555(0x000000)
    },
    /* PALETTE 03 */ {
        /* 00 */ TO_RGB555(0x00B8F8),
        /* 01 */ TO_RGB555(0x68F868),
        /* 02 */ TO_RGB555(0xE8D8D8),
        /* 03 */ TO_RGB555(0xC0B0B0),
        /* 04 */ TO_RGB555(0xF80000),
        /* 05 */ TO_RGB555(0xF85038),
        /* 06 */ TO_RGB555(0x989898),
        /* 07 */ TO_RGB555(0x409840),
        /* 08 */ TO_RGB555(0x000000),
        /* 09 */ TO_RGB555(0x000000),
        /* 10 */ TO_RGB555(0x90A000),
        /* 11 */ TO_RGB555(0xE0F800),
        /* 12 */ TO_RGB555(0x902818),
        /* 13 */ TO_RGB555(0xF80000),
        /* 14 */ TO_RGB555(0xF8F8F8),
        /* 15 */ TO_RGB555(0x000000)
    },
    /* PALETTE 04 */ {
        /* 00 */ TO_RGB555(0x00B8F8),
        /* 01 */ TO_RGB555(0xD87010),
        /* 02 */ TO_RGB555(0x884808),
        /* 03 */ TO_RGB555(0x000000),
        /* 04 */ TO_RGB555(0x000000),
        /* 05 */ TO_RGB555(0x000000),
        /* 06 */ TO_RGB555(0x585858),
        /* 07 */ TO_RGB555(0xF8F810),
        /* 08 */ TO_RGB555(0x3870F8),
        /* 09 */ TO_RGB555(0x28F800),
        /* 10 */ TO_RGB555(0xF890C8),
        /* 11 */ TO_RGB555(0xF8F8F8),
        /* 12 */ TO_RGB555(0xF8F8F8),
        /* 13 */ TO_RGB555(0xF83030),
        /* 14 */ TO_RGB555(0xF8F8F8),
        /* 15 */ TO_RGB555(0x000000)
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
        /* 11 */ TO_RGB555(0x000000),
        /* 12 */ TO_RGB555(0x000000),
        /* 13 */ TO_RGB555(0x000000),
        /* 14 */ TO_RGB555(0x000000),
        /* 15 */ TO_RGB555(0x000000)
    },
    /* PALETTE 06 */ {
        /* 00 */ TO_RGB555(0x580000),
        /* 01 */ TO_RGB555(0x000000),
        /* 02 */ TO_RGB555(0x000000),
        /* 03 */ TO_RGB555(0x000000),
        /* 04 */ TO_RGB555(0x000000),
        /* 05 */ TO_RGB555(0x000000),
        /* 06 */ TO_RGB555(0x000000),
        /* 07 */ TO_RGB555(0x902098),
        /* 08 */ TO_RGB555(0xE840F8),
        /* 09 */ TO_RGB555(0x000000),
        /* 10 */ TO_RGB555(0x000000),
        /* 11 */ TO_RGB555(0x000000),
        /* 12 */ TO_RGB555(0x000000),
        /* 13 */ TO_RGB555(0x000000),
        /* 14 */ TO_RGB555(0xF8F8F8),
        /* 15 */ TO_RGB555(0x000000)
    }
};

// [D_088cbb0c] Showtime BG Palette
Palette showtime_bg_pal[] = {
    /* PALETTE 00 */ {
        /* 00 */ TO_RGB555(0x00D050),
        /* 01 */ TO_RGB555(0x00A098),
        /* 02 */ TO_RGB555(0x00C0C8),
        /* 03 */ TO_RGB555(0x18F8F8),
        /* 04 */ TO_RGB555(0xC0C0B8),
        /* 05 */ TO_RGB555(0x18F8F8),
        /* 06 */ TO_RGB555(0x000000),
        /* 07 */ TO_RGB555(0x204098),
        /* 08 */ TO_RGB555(0x3870F8),
        /* 09 */ TO_RGB555(0x000000),
        /* 10 */ TO_RGB555(0x000000),
        /* 11 */ TO_RGB555(0x000000),
        /* 12 */ TO_RGB555(0x000000),
        /* 13 */ TO_RGB555(0x88A8F8),
        /* 14 */ TO_RGB555(0xF8F8F8),
        /* 15 */ TO_RGB555(0x000000)
    }
};

// [D_088cbb2c] Showtime (Remix 3) BG Palette
Palette showtime_remix_3_bg_pal[] = {
    /* PALETTE 00 */ {
        /* 00 */ TO_RGB555(0x00D050),
        /* 01 */ TO_RGB555(0x000000),
        /* 02 */ TO_RGB555(0xD078A8),
        /* 03 */ TO_RGB555(0xD878B8),
        /* 04 */ TO_RGB555(0xE870D8),
        /* 05 */ TO_RGB555(0xF060E8),
        /* 06 */ TO_RGB555(0xE090C8),
        /* 07 */ TO_RGB555(0xF880F0),
        /* 08 */ TO_RGB555(0xF898F0),
        /* 09 */ TO_RGB555(0xE8A8D8),
        /* 10 */ TO_RGB555(0xF0B8F0),
        /* 11 */ TO_RGB555(0xF8C8F8),
        /* 12 */ TO_RGB555(0xF8D0F8),
        /* 13 */ TO_RGB555(0x88A8F8),
        /* 14 */ TO_RGB555(0xF8F8F8),
        /* 15 */ TO_RGB555(0x18F8F8)
    },
    /* PALETTE 01 */ {
        /* 00 */ TO_RGB555(0x000000),
        /* 01 */ TO_RGB555(0xA05880),
        /* 02 */ TO_RGB555(0x000000),
        /* 03 */ TO_RGB555(0x000000),
        /* 04 */ TO_RGB555(0x000000),
        /* 05 */ TO_RGB555(0xE840F8),
        /* 06 */ TO_RGB555(0x000000),
        /* 07 */ TO_RGB555(0x902098),
        /* 08 */ TO_RGB555(0xE840F8),
        /* 09 */ TO_RGB555(0x000000),
        /* 10 */ TO_RGB555(0x000000),
        /* 11 */ TO_RGB555(0x000000),
        /* 12 */ TO_RGB555(0x000000),
        /* 13 */ TO_RGB555(0x000000),
        /* 14 */ TO_RGB555(0xF8F8F8),
        /* 15 */ TO_RGB555(0x000000)
    }
};
