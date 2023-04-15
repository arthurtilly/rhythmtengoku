#include "global.h"
#include "graphics.h"
#include "text.h"
#include "src/scenes/cafe.h"
#include "graphics/cafe/cafe_graphics.h"


  /* CAFE - SCENE DATA */


#include "chatting_dialogue.inc.c"
#include "help_dialogue.inc.c"

// [D_089cd474] Cursor Animations
struct Animation *cafe_cursor_option_anim[] = {
    anim_cafe_cursor_option1,
    anim_cafe_cursor_option2
};

// [D_089cd47c] ?
u8 D_089cd47c[] = { 46, 1, 9, 14, 7, 23, 47, 12, 30, 5, 19, 16, 48, -1 };

// [D_089cd48c] Graphics Table
struct GraphicsTable cafe_gfx_table[] = {
    /* BG Tileset */ {
        /* Src.  */ &D_08cc0c30,
        /* Dest. */ BG_TILESET_BASE(0),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Map */ {
        /* Src.  */ &D_08cc0cf0,
        /* Dest. */ BG_MAP_BASE(0xE800),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Map */ {
        /* Src.  */ &D_08cc1158,
        /* Dest. */ BG_MAP_BASE(0xF000),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* OBJ Tileset */ {
        /* Src.  */ &D_08cbf0e8,
        /* Dest. */ OBJ_TILESET_BASE(0),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Palette */ {
        /* Src.  */ cafe_bg_pal,
        /* Dest. */ BG_PALETTE_BUFFER(0),
        /* Size  */ 0x200
    },
    /* OBJ Palette */ {
        /* Src.  */ cafe_obj_pal,
        /* Dest. */ OBJ_PALETTE_BUFFER(0),
        /* Size  */ 0x200
    },
    END_OF_GRAPHICS_TABLE
};

// [D_089cd4e0] Buffered Textures List
struct CompressedGraphics *cafe_buffered_textures[] = {
    END_OF_BUFFERED_TEXTURES_LIST
};
