#include "global.h"
#include "graphics.h"

// [D_088c1bd4] Drum Girls LIVE OBJ Palette
Palette drum_girls_obj_pal[] = {
    /* PALETTE 00 */ {
        /* 00 */ TO_RGB555(0x48E8F8),
        /* 01 */ TO_RGB555(0x20A820),
        /* 02 */ TO_RGB555(0x504848),
        /* 03 */ TO_RGB555(0x787878),
        /* 04 */ TO_RGB555(0xF00000),
        /* 05 */ TO_RGB555(0xF8B0B0),
        /* 06 */ TO_RGB555(0xE8F840),
        /* 07 */ TO_RGB555(0xF83068),
        /* 08 */ TO_RGB555(0xF88830),
        /* 09 */ TO_RGB555(0xF8E8D8),
        /* 10 */ TO_RGB555(0xC8C8C8),
        /* 11 */ TO_RGB555(0x6098F8),
        /* 12 */ TO_RGB555(0x00F8F8),
        /* 13 */ TO_RGB555(0x000000),
        /* 14 */ TO_RGB555(0xF8F8F8),
        /* 15 */ TO_RGB555(0x000000)
    },
    /* PALETTE 01 */ {
        /* 00 */ TO_RGB555(0x000000),
        /* 01 */ TO_RGB555(0x000000),
        /* 02 */ TO_RGB555(0x000000),
        /* 03 */ TO_RGB555(0x000000),
        /* 04 */ TO_RGB555(0x000000),
        /* 05 */ TO_RGB555(0x000000),
        /* 06 */ TO_RGB555(0xF0F860),
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
    /* PALETTE 02 */ {
        /* 00 */ TO_RGB555(0x000000),
        /* 01 */ TO_RGB555(0x000000),
        /* 02 */ TO_RGB555(0x000000),
        /* 03 */ TO_RGB555(0x000000),
        /* 04 */ TO_RGB555(0x000000),
        /* 05 */ TO_RGB555(0x000000),
        /* 06 */ TO_RGB555(0xF0F890),
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
        /* 06 */ TO_RGB555(0xF8F8E0),
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
        /* 00 */ TO_RGB555(0xC0A0C0),
        /* 01 */ TO_RGB555(0x000000),
        /* 02 */ TO_RGB555(0x6098F8),
        /* 03 */ TO_RGB555(0xF00000),
        /* 04 */ TO_RGB555(0x6098F8),
        /* 05 */ TO_RGB555(0x6098F8),
        /* 06 */ TO_RGB555(0x6098F8),
        /* 07 */ TO_RGB555(0x6098F8),
        /* 08 */ TO_RGB555(0x6098F8),
        /* 09 */ TO_RGB555(0x6098F8),
        /* 10 */ TO_RGB555(0x6098F8),
        /* 11 */ TO_RGB555(0x6098F8),
        /* 12 */ TO_RGB555(0x6098F8),
        /* 13 */ TO_RGB555(0x6098F8),
        /* 14 */ TO_RGB555(0xF8F8F8),
        /* 15 */ TO_RGB555(0x6098F8)
    },
    /* PALETTE 05 */ {
        /* 00 */ TO_RGB555(0x9858F8),
        /* 01 */ TO_RGB555(0x200088),
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
    }
};

// [D_088c1c94] Drum Girls LIVE BG Palette
Palette drum_girls_bg_pal[] = {
    /* PALETTE 00 */ {
        /* 00 */ TO_RGB555(0x48E8F8),
        /* 01 */ TO_RGB555(0x000000),
        /* 02 */ TO_RGB555(0x000000),
        /* 03 */ TO_RGB555(0x000000),
        /* 04 */ TO_RGB555(0x000000),
        /* 05 */ TO_RGB555(0xF00000),
        /* 06 */ TO_RGB555(0xC05898),
        /* 07 */ TO_RGB555(0xF870C8),
        /* 08 */ TO_RGB555(0xF8B8E8),
        /* 09 */ TO_RGB555(0xF8E0F0),
        /* 10 */ TO_RGB555(0xC8C8C8),
        /* 11 */ TO_RGB555(0x6098F8),
        /* 12 */ TO_RGB555(0xF870C8),
        /* 13 */ TO_RGB555(0xF8F0F8),
        /* 14 */ TO_RGB555(0xF8F8F8),
        /* 15 */ TO_RGB555(0x000000)
    },
    /* PALETTE 01 */ {
        /* 00 */ TO_RGB555(0x48E8F8),
        /* 01 */ TO_RGB555(0xC05898),
        /* 02 */ TO_RGB555(0xC858A0),
        /* 03 */ TO_RGB555(0xC858A0),
        /* 04 */ TO_RGB555(0xD058A0),
        /* 05 */ TO_RGB555(0xD060A8),
        /* 06 */ TO_RGB555(0xD860A8),
        /* 07 */ TO_RGB555(0xD860B0),
        /* 08 */ TO_RGB555(0xE060B0),
        /* 09 */ TO_RGB555(0xE068B8),
        /* 10 */ TO_RGB555(0xE868B8),
        /* 11 */ TO_RGB555(0xE868B8),
        /* 12 */ TO_RGB555(0xF068C0),
        /* 13 */ TO_RGB555(0xF068C0),
        /* 14 */ TO_RGB555(0xF870C8),
        /* 15 */ TO_RGB555(0xF870C8)
    },
    /* PALETTE 02 */ {
        /* 00 */ TO_RGB555(0x48E8F8),
        /* 01 */ TO_RGB555(0x0000F8),
        /* 02 */ TO_RGB555(0x6868F8),
        /* 03 */ TO_RGB555(0x5858D0),
        /* 04 */ TO_RGB555(0x4850B8),
        /* 05 */ TO_RGB555(0x4048A0),
        /* 06 */ TO_RGB555(0x404090),
        /* 07 */ TO_RGB555(0xF870C8),
        /* 08 */ TO_RGB555(0xE8F800),
        /* 09 */ TO_RGB555(0xD0D800),
        /* 10 */ TO_RGB555(0xF00008),
        /* 11 */ TO_RGB555(0xD80008),
        /* 12 */ TO_RGB555(0x00E000),
        /* 13 */ TO_RGB555(0x00D000),
        /* 14 */ TO_RGB555(0xF89848),
        /* 15 */ TO_RGB555(0xF89048)
    },
    /* PALETTE 03 */ {
        /* 00 */ TO_RGB555(0x48E8F8),
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
        /* 00 */ TO_RGB555(0xC0A0C0),
        /* 01 */ TO_RGB555(0x000000),
        /* 02 */ TO_RGB555(0x6098F8),
        /* 03 */ TO_RGB555(0xF00000),
        /* 04 */ TO_RGB555(0x6098F8),
        /* 05 */ TO_RGB555(0x6098F8),
        /* 06 */ TO_RGB555(0x6098F8),
        /* 07 */ TO_RGB555(0x6098F8),
        /* 08 */ TO_RGB555(0x6098F8),
        /* 09 */ TO_RGB555(0x6098F8),
        /* 10 */ TO_RGB555(0x6098F8),
        /* 11 */ TO_RGB555(0x6098F8),
        /* 12 */ TO_RGB555(0x6098F8),
        /* 13 */ TO_RGB555(0x6098F8),
        /* 14 */ TO_RGB555(0xF8F8F8),
        /* 15 */ TO_RGB555(0x6098F8)
    },
    /* PALETTE 05 */ {
        /* 00 */ TO_RGB555(0x9858F8),
        /* 01 */ TO_RGB555(0x200088),
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
    }
};
