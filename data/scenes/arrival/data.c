#include "global.h"
#include "graphics.h"
#include "src/scenes/arrival.h"
#include "graphics/arrival/arrival_graphics.h"


  /* RIQ LIBRARY - SCENE DATA */


// [D_089cd1a4] Graphics Table
struct GraphicsTable arrival_gfx_table[] = {
    /* BG Tileset */ {
        /* Src.  */ &arrival_bg_tiles,
        /* Dest. */ BG_TILESET_BASE(0),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Map */ {
        /* Src.  */ &arrival_bg_map,
        /* Dest. */ BG_MAP_BASE(0xE800),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* OBJ Tileset */ {
        /* Src.  */ &arrival_bg_tiles,
        /* Dest. */ OBJ_TILESET_BASE(0),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Palette */ {
        /* Src.  */ arrival_pal,
        /* Dest. */ BG_PALETTE_BUFFER(0),
        /* Size  */ 0x200
    },
    /* OBJ Palette */ {
        /* Src.  */ arrival_pal,
        /* Dest. */ OBJ_PALETTE_BUFFER(0),
        /* Size  */ 0x200
    },
    END_OF_GRAPHICS_TABLE
};

// [D_089cd1ec] Buffered Textures List
struct CompressedData *arrival_buffered_textures[] = {
    END_OF_BUFFERED_TEXTURES_LIST
};

// [D_089cd1f0] "Error" Title
char arrival_default_title[] = "ÉGÉâÅ[";

// [D_089cd1f8] Animations
struct Animation *arrival_option_anim[] = {
    /* 0x00 */ anim_arrival_option1,
    /* 0x01 */ anim_arrival_option2
};
