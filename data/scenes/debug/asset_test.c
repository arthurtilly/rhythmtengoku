#include "global.h"
#include "graphics.h"
#include "src/bitmap_font.h"
#include "src/scenes/debug_asset_test.h"
#include "games/drum_studio/graphics/drum_studio_graphics.h"


  /* ASSET TEST(?) - SCENE DATA */


// [D_089de0e4] SceneObjects
union SceneObject asset_test_scene_objects[] = {
    END_OF_SCENE_OBJECTS_LIST
};


// [D_089de0e8] Graphics Table
struct GraphicsTable asset_test_gfx_table[] = {
    /* BG Tileset */ {
        /* Src.  */ &D_08c4fc44,
        /* Dest. */ BG_TILESET_BASE(0),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Map */ {
        /* Src.  */ &D_08c51344,
        /* Dest. */ BG_MAP_BASE(0xE800),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* OBJ Tileset */ {
        /* Src.  */ &D_08c4efe4,
        /* Dest. */ OBJ_TILESET_BASE(0),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Palette */ {
        /* Src.  */ drum_lessons_bg_screen_pal,
        /* Dest. */ BG_PALETTE_BUFFER(0),
        /* Size  */ 0x200
    },
    /* OBJ Palette */ {
        /* Src.  */ drum_lessons_obj_pal,
        /* Dest. */ OBJ_PALETTE_BUFFER(0),
        /* Size  */ 0x200
    },
    END_OF_GRAPHICS_TABLE
};


// [D_089de130] Buffered Textures List
struct CompressedGraphics *asset_test_buffered_textures[] = {
    END_OF_BUFFERED_TEXTURES_LIST
};


// [D_089de134] Graphics Table
struct GraphicsTable asset_test_gfx_table_dupe[] = {
    /* BG Tileset */ {
        /* Src.  */ &D_08c4fc44,
        /* Dest. */ BG_TILESET_BASE(0),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Map */ {
        /* Src.  */ &D_08c51344,
        /* Dest. */ BG_MAP_BASE(0xE800),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* OBJ Tileset */ {
        /* Src.  */ &D_08c4efe4,
        /* Dest. */ OBJ_TILESET_BASE(0),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Palette */ {
        /* Src.  */ drum_lessons_bg_screen_pal,
        /* Dest. */ BG_PALETTE_BUFFER(0),
        /* Size  */ 0x200
    },
    /* OBJ Palette */ {
        /* Src.  */ drum_lessons_obj_pal,
        /* Dest. */ OBJ_PALETTE_BUFFER(0),
        /* Size  */ 0x200
    },
    END_OF_GRAPHICS_TABLE
};
