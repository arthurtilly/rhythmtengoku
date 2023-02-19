#include "global.h"
#include "graphics.h"

// [D_088f40a0] Metronome & Mr. Upbeat
Palette metronome_pal[] = {
    /* PALETTE 00 */ {
        /* 00 */ TO_RGB555(0xF8F8F8),
        /* 01 */ TO_RGB555(0x000000),
        /* 02 */ TO_RGB555(0xB07838),
        /* 03 */ TO_RGB555(0x504848),
        /* 04 */ TO_RGB555(0xD8D0D0),
        /* 05 */ TO_RGB555(0xC07070),
        /* 06 */ TO_RGB555(0x6068A8),
        /* 07 */ TO_RGB555(0xF888D0),
        /* 08 */ TO_RGB555(0x004000),
        /* 09 */ TO_RGB555(0x007000),
        /* 10 */ TO_RGB555(0x00A800),
        /* 11 */ TO_RGB555(0x00F800),
        /* 12 */ TO_RGB555(0xD8F8D8),
        /* 13 */ TO_RGB555(0xF80000),
        /* 14 */ TO_RGB555(0x989090),
        /* 15 */ TO_RGB555(0xF8F8F8)
    },
    /* PALETTE 01 */ {
        /* 00 */ TO_RGB555(0x2030A8),
        /* 01 */ TO_RGB555(0x000000),
        /* 02 */ TO_RGB555(0x000000),
        /* 03 */ TO_RGB555(0x504848),
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
    /* PALETTE 02 */ {
        /* 00 */ TO_RGB555(0x98A0F8),
        /* 01 */ TO_RGB555(0x000000),
        /* 02 */ TO_RGB555(0x2030A8),
        /* 03 */ TO_RGB555(0x2030A8),
        /* 04 */ TO_RGB555(0x2030A8),
        /* 05 */ TO_RGB555(0x2030A8),
        /* 06 */ TO_RGB555(0x2030A8),
        /* 07 */ TO_RGB555(0x2030A8),
        /* 08 */ TO_RGB555(0x004000),
        /* 09 */ TO_RGB555(0x007000),
        /* 10 */ TO_RGB555(0x00A800),
        /* 11 */ TO_RGB555(0x00F800),
        /* 12 */ TO_RGB555(0x2030A8),
        /* 13 */ TO_RGB555(0x2030A8),
        /* 14 */ TO_RGB555(0x2030A8),
        /* 15 */ TO_RGB555(0x2030A8)
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
        /* 00 */ TO_RGB555(0x2030A8),
        /* 01 */ TO_RGB555(0x000000),
        /* 02 */ TO_RGB555(0x989090),
        /* 03 */ TO_RGB555(0x000000),
        /* 04 */ TO_RGB555(0xF80000),
        /* 05 */ TO_RGB555(0x000000),
        /* 06 */ TO_RGB555(0x000000),
        /* 07 */ TO_RGB555(0x000000),
        /* 08 */ TO_RGB555(0xF8F8F8),
        /* 09 */ TO_RGB555(0x000000),
        /* 10 */ TO_RGB555(0x000000),
        /* 11 */ TO_RGB555(0x000000),
        /* 12 */ TO_RGB555(0x000000),
        /* 13 */ TO_RGB555(0x000000),
        /* 14 */ TO_RGB555(0x000000),
        /* 15 */ TO_RGB555(0x000000)
    }
};
