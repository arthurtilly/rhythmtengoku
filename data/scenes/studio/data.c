#include "global.h"
#include "graphics.h"
#include "src/scenes/studio.h"
#include "graphics/studio/studio_graphics.h"


  /* STUDIO MENU - SCENE DATA */


// [D_089d8448] Graphics Table
struct GraphicsTable studio_gfx_table[] = {
    /* BG Tileset */ {
        /* Src.  */ &studio_bg_tiles,
        /* Dest. */ BG_TILESET_BASE(0),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Map */ {
        /* Src.  */ &studio_bg_map,
        /* Dest. */ BG_MAP_BASE(0xE800),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Map */ {
        /* Src.  */ &studio_bg_map_warning,
        /* Dest. */ BG_MAP_BASE(0xE000),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* OBJ Tileset */ {
        /* Src.  */ &studio_obj,
        /* Dest. */ OBJ_TILESET_BASE(0),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Palette */ {
        /* Src.  */ studio_bg_pal,
        /* Dest. */ BG_PALETTE_BUFFER(0),
        /* Size  */ 0x200
    },
    /* OBJ Palette */ {
        /* Src.  */ studio_obj_pal,
        /* Dest. */ OBJ_PALETTE_BUFFER(0),
        /* Size  */ 0x200
    },
    END_OF_GRAPHICS_TABLE
};


// [D_089d849c] Buffered Textures List
struct CompressedData *studio_buffered_textures[] = {
    END_OF_BUFFERED_TEXTURES_LIST
};


// [D_089d84a0] Menu X Offsets
u16 studio_menu_x_ofs[] = {
    /* SONG   */ 0,
    /* OPTION */ 104,
    /* DRUM   */ 240
};


// [D_089d84a6] Unused
u8 studio_menu_unused_table[] = {
    /* SONG   */ 1,
    /* OPTION */ 2,
    /* DRUM   */ 3
};
