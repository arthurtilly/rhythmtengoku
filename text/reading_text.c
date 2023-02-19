#include "global.h"
#include "text.h"
#include "reading_text.h"


/* Reading Material */


#include "reading_material.inc.c"
#include "graphics/data_room/data_room_graphics.h"


// [D_08058f00] Reading - Graphics Table ?
const struct GraphicsTable D_08058f00[] = {
    /* BG Tileset */ {
        /* Src.  */ &D_08cd29ac,
        /* Dest. */ BG_TILESET_BASE(0),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Map */ {
        /* Src.  */ &D_08cd2cec,
        /* Dest. */ BG_MAP_BASE(0xE800),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Palette */ {
        /* Src.  */ read_error_bg_00_pal,
        /* Dest. */ BG_PALETTE_BUFFER(0),
        /* Size  */ 0x200
    },
    END_OF_GRAPHICS_TABLE
};

// Invalid Data
const char text_reading_warning_invalid[] =
    "\x01\x43" "\x03\x32" "\x01\x6c" "\n"
    "\n"
    "\n"
    "\n"
    "無効データ";

// Error
const char text_reading_warning_error[] = "\x02\x33" "\x01\x33" "\x01\x43" "エラー";
