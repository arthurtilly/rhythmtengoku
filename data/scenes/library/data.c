#include "global.h"
#include "graphics.h"
#include "src/scenes/library.h"
#include "graphics/library/library_graphics.h"


  /* RIQ LIBRARY - SCENE DATA */


// [D_089cd1a4] Graphics Table
struct GraphicsTable library_gfx_table[] = {
    /* BG Tileset */ {
        /* Src.  */ &D_08cbed78,
        /* Dest. */ BG_TILESET_BASE(0),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Map */ {
        /* Src.  */ &D_08cbefe4,
        /* Dest. */ BG_MAP_BASE(0xE800),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* OBJ Tileset */ {
        /* Src.  */ &D_08cbed78,
        /* Dest. */ OBJ_TILESET_BASE(0),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Palette */ {
        /* Src.  */ library_pal,
        /* Dest. */ BG_PALETTE_BUFFER(0),
        /* Size  */ 0x200
    },
    /* OBJ Palette */ {
        /* Src.  */ library_pal,
        /* Dest. */ OBJ_PALETTE_BUFFER(0),
        /* Size  */ 0x200
    },
    END_OF_GRAPHICS_TABLE
};

// [D_089cd1ec] Buffered Textures List
struct CompressedGraphics *library_buffered_textures[] = {
    END_OF_BUFFERED_TEXTURES_LIST
};

// [D_089cd1f0] "Error" Text
char library_error_text[] = "ÉGÉâÅ[";

// [D_089cd1f8] Animations
struct Animation *library_option_anim[] = {
    /* 0x00 */ anim_library_option1,
    /* 0x01 */ anim_library_option2
};
