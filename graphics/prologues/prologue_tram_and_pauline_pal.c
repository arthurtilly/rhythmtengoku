#include "global.h"
#include "graphics.h"

// [D_088b88ac] <description>
const Palette prologue_tram_and_pauline_pal[] = {
    /* PALETTE 00 */ {
        /* 00 */ TO_RGB555(0xF830F0),
        /* 01 */ TO_RGB555(0x18B000),
        /* 02 */ TO_RGB555(0xF84848),
        /* 03 */ TO_RGB555(0xC01818),
        /* 04 */ TO_RGB555(0xA80000),
        /* 05 */ TO_RGB555(0x780000),
        /* 06 */ TO_RGB555(0x908820),
        /* 07 */ TO_RGB555(0x686868),
        /* 08 */ TO_RGB555(0xC0B828),
        /* 09 */ TO_RGB555(0xF8F838),
        /* 10 */ TO_RGB555(0xF8F8F8),
        /* 11 */ TO_RGB555(0xF8F080),
        /* 12 */ TO_RGB555(0xF84040),
        /* 13 */ TO_RGB555(0x808080),
        /* 14 */ TO_RGB555(0xB8B8B8),
        /* 15 */ TO_RGB555(0x000000)
    },
    /* PALETTE 01 */ {
        /* 00 */ TO_RGB555(0xF830F0),
        /* 01 */ TO_RGB555(0x18B000),
        /* 02 */ TO_RGB555(0xF84848),
        /* 03 */ TO_RGB555(0x000000),
        /* 04 */ TO_RGB555(0xF048F8),
        /* 05 */ TO_RGB555(0x000000),
        /* 06 */ TO_RGB555(0x000000),
        /* 07 */ TO_RGB555(0x78C0F8),
        /* 08 */ TO_RGB555(0x000000),
        /* 09 */ TO_RGB555(0xF8F838),
        /* 10 */ TO_RGB555(0x000000),
        /* 11 */ TO_RGB555(0x2830F8),
        /* 12 */ TO_RGB555(0x28D800),
        /* 13 */ TO_RGB555(0xF850A8),
        /* 14 */ TO_RGB555(0xF8F8F8),
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
        /* 00 */ TO_RGB555(0xF830F0),
        /* 01 */ TO_RGB555(0x90C0C0),
        /* 02 */ TO_RGB555(0x000000),
        /* 03 */ TO_RGB555(0x000000),
        /* 04 */ TO_RGB555(0x000000),
        /* 05 */ TO_RGB555(0x000000),
        /* 06 */ TO_RGB555(0xC0C0C0),
        /* 07 */ TO_RGB555(0x78C0F8),
        /* 08 */ TO_RGB555(0x5890B8),
        /* 09 */ TO_RGB555(0xC84830),
        /* 10 */ TO_RGB555(0xC88038),
        /* 11 */ TO_RGB555(0xC08878),
        /* 12 */ TO_RGB555(0xD0A070),
        /* 13 */ TO_RGB555(0xF80000),
        /* 14 */ TO_RGB555(0xF8A898),
        /* 15 */ TO_RGB555(0x000000)
    },
    /* PALETTE 06 */ {
        /* 00 */ TO_RGB555(0xF830F0),
        /* 01 */ TO_RGB555(0x90C0C0),
        /* 02 */ TO_RGB555(0x000000),
        /* 03 */ TO_RGB555(0x000000),
        /* 04 */ TO_RGB555(0xF048F8),
        /* 05 */ TO_RGB555(0x000000),
        /* 06 */ TO_RGB555(0xC0C0C0),
        /* 07 */ TO_RGB555(0x78C0F8),
        /* 08 */ TO_RGB555(0x5890B8),
        /* 09 */ TO_RGB555(0xF86040),
        /* 10 */ TO_RGB555(0xC848F8),
        /* 11 */ TO_RGB555(0xC08878),
        /* 12 */ TO_RGB555(0xD0A070),
        /* 13 */ TO_RGB555(0xF80000),
        /* 14 */ TO_RGB555(0xF8A898),
        /* 15 */ TO_RGB555(0x000000)
    }
};

