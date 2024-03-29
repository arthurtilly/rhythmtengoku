#include "global.h"
#include "graphics.h"

// [D_08932044] Sick Beats Palette
Palette sick_beats_pal[] = {
    /* PALETTE 00 */ {
        /* 00 */ TO_RGB555(0x009000),
        /* 01 */ TO_RGB555(0x580000),
        /* 02 */ TO_RGB555(0xF8F8F8),
        /* 03 */ TO_RGB555(0xB0C800),
        /* 04 */ TO_RGB555(0xD818F8),
        /* 05 */ TO_RGB555(0xB8E800),
        /* 06 */ TO_RGB555(0x685050),
        /* 07 */ TO_RGB555(0xD00000),
        /* 08 */ TO_RGB555(0xF8F800),
        /* 09 */ TO_RGB555(0x8008B0),
        /* 10 */ TO_RGB555(0xC868F0),
        /* 11 */ TO_RGB555(0xC0A8D0),
        /* 12 */ TO_RGB555(0x08F8F8),
        /* 13 */ TO_RGB555(0xB8B8B8),
        /* 14 */ TO_RGB555(0xF87000),
        /* 15 */ TO_RGB555(0x000000)
    },
    /* PALETTE 01 */ {
        /* 00 */ TO_RGB555(0x005018),
        /* 01 */ TO_RGB555(0x580000),
        /* 02 */ TO_RGB555(0xF8F8F8),
        /* 03 */ TO_RGB555(0x009000),
        /* 04 */ TO_RGB555(0xB8B8B8),
        /* 05 */ TO_RGB555(0xB8E800),
        /* 06 */ TO_RGB555(0x685050),
        /* 07 */ TO_RGB555(0xD00000),
        /* 08 */ TO_RGB555(0x000000),
        /* 09 */ TO_RGB555(0x8008B0),
        /* 10 */ TO_RGB555(0xF8F800),
        /* 11 */ TO_RGB555(0xF00000),
        /* 12 */ TO_RGB555(0x000000),
        /* 13 */ TO_RGB555(0xF87000),
        /* 14 */ TO_RGB555(0xB8B8B8),
        /* 15 */ TO_RGB555(0x000000)
    },
    /* PALETTE 02 */ {
        /* 00 */ TO_RGB555(0x009000),
        /* 01 */ TO_RGB555(0x281018),
        /* 02 */ TO_RGB555(0x684858),
        /* 03 */ TO_RGB555(0x907888),
        /* 04 */ TO_RGB555(0xB0A8A8),
        /* 05 */ TO_RGB555(0xC8C0C0),
        /* 06 */ TO_RGB555(0xE0E0E0),
        /* 07 */ TO_RGB555(0xF8F8F8),
        /* 08 */ TO_RGB555(0x00F8E8),
        /* 09 */ TO_RGB555(0x00A898),
        /* 10 */ TO_RGB555(0xF00000),
        /* 11 */ TO_RGB555(0xF8F800),
        /* 12 */ TO_RGB555(0xF8A028),
        /* 13 */ TO_RGB555(0xB07018),
        /* 14 */ TO_RGB555(0xF0A080),
        /* 15 */ TO_RGB555(0x000000)
    },
    /* PALETTE 03 */ {
        /* 00 */ TO_RGB555(0x004010),
        /* 01 */ TO_RGB555(0x580000),
        /* 02 */ TO_RGB555(0xF8F8F8),
        /* 03 */ TO_RGB555(0x009000),
        /* 04 */ TO_RGB555(0xB8B8B8),
        /* 05 */ TO_RGB555(0x908888),
        /* 06 */ TO_RGB555(0x685050),
        /* 07 */ TO_RGB555(0xD00000),
        /* 08 */ TO_RGB555(0xB8E800),
        /* 09 */ TO_RGB555(0x8008B0),
        /* 10 */ TO_RGB555(0x10A800),
        /* 11 */ TO_RGB555(0x108800),
        /* 12 */ TO_RGB555(0x085800),
        /* 13 */ TO_RGB555(0x18C800),
        /* 14 */ TO_RGB555(0xE0E0E0),
        /* 15 */ TO_RGB555(0x000000)
    },
    /* PALETTE 04 */ {
        /* 00 */ TO_RGB555(0x009000),
        /* 01 */ TO_RGB555(0x281018),
        /* 02 */ TO_RGB555(0xE80000),
        /* 03 */ TO_RGB555(0xF03030),
        /* 04 */ TO_RGB555(0xF06060),
        /* 05 */ TO_RGB555(0xF89898),
        /* 06 */ TO_RGB555(0xF8C8C8),
        /* 07 */ TO_RGB555(0xF8F8F8),
        /* 08 */ TO_RGB555(0xF8F800),
        /* 09 */ TO_RGB555(0xB8E800),
        /* 10 */ TO_RGB555(0xF868A0),
        /* 11 */ TO_RGB555(0x000000),
        /* 12 */ TO_RGB555(0x000000),
        /* 13 */ TO_RGB555(0x000000),
        /* 14 */ TO_RGB555(0x000000),
        /* 15 */ TO_RGB555(0x000000)
    },
    /* PALETTE 05 */ {
        /* 00 */ TO_RGB555(0x009000),
        /* 01 */ TO_RGB555(0x000000),
        /* 02 */ TO_RGB555(0x000000),
        /* 03 */ TO_RGB555(0x000000),
        /* 04 */ TO_RGB555(0xF03030),
        /* 05 */ TO_RGB555(0x000000),
        /* 06 */ TO_RGB555(0xF89898),
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
    /* PALETTE 06 */ {
        /* 00 */ TO_RGB555(0x009000),
        /* 01 */ TO_RGB555(0x000000),
        /* 02 */ TO_RGB555(0x000000),
        /* 03 */ TO_RGB555(0x000000),
        /* 04 */ TO_RGB555(0xF03030),
        /* 05 */ TO_RGB555(0x000000),
        /* 06 */ TO_RGB555(0xF06060),
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
        /* 00 */ TO_RGB555(0x009000),
        /* 01 */ TO_RGB555(0x000000),
        /* 02 */ TO_RGB555(0x000000),
        /* 03 */ TO_RGB555(0x000000),
        /* 04 */ TO_RGB555(0x000000),
        /* 05 */ TO_RGB555(0x000000),
        /* 06 */ TO_RGB555(0xF03030),
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
        /* 00 */ TO_RGB555(0x009000),
        /* 01 */ TO_RGB555(0x580000),
        /* 02 */ TO_RGB555(0xF8F8F8),
        /* 03 */ TO_RGB555(0xB0C800),
        /* 04 */ TO_RGB555(0xD818F8),
        /* 05 */ TO_RGB555(0xB8E800),
        /* 06 */ TO_RGB555(0x685050),
        /* 07 */ TO_RGB555(0xD00000),
        /* 08 */ TO_RGB555(0xF8F800),
        /* 09 */ TO_RGB555(0x8008B0),
        /* 10 */ TO_RGB555(0xC868F0),
        /* 11 */ TO_RGB555(0xC0A8D0),
        /* 12 */ TO_RGB555(0xF840C0),
        /* 13 */ TO_RGB555(0xB8B8B8),
        /* 14 */ TO_RGB555(0xF87000),
        /* 15 */ TO_RGB555(0x000000)
    },
    /* PALETTE 09 */ {
        /* 00 */ TO_RGB555(0x009000),
        /* 01 */ TO_RGB555(0x580000),
        /* 02 */ TO_RGB555(0xF8F8F8),
        /* 03 */ TO_RGB555(0xB0C800),
        /* 04 */ TO_RGB555(0xD818F8),
        /* 05 */ TO_RGB555(0xB8E800),
        /* 06 */ TO_RGB555(0x685050),
        /* 07 */ TO_RGB555(0xD00000),
        /* 08 */ TO_RGB555(0xF8F800),
        /* 09 */ TO_RGB555(0x8008B0),
        /* 10 */ TO_RGB555(0xC868F0),
        /* 11 */ TO_RGB555(0xC0A8D0),
        /* 12 */ TO_RGB555(0x000038),
        /* 13 */ TO_RGB555(0xB8B8B8),
        /* 14 */ TO_RGB555(0xF87000),
        /* 15 */ TO_RGB555(0x000000)
    }
};
