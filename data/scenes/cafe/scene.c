#include "global.h"
#include "graphics.h"
#include "text.h"
#include "levels.h"
#include "src/scenes/cafe.h"
#include "graphics/cafe/cafe_graphics.h"


  /* CAFE - SCENE DATA */


// [D_089cd474] Cursor Animations
struct Animation *cafe_cursor_option_anim[] = {
    anim_cafe_cursor_option1,
    anim_cafe_cursor_option2
};


// [D_089cd47c] Levels the Barista Will Not Clear
u8 cafe_barista_denied_levels[] = {
    LEVEL_REMIX_6,
    LEVEL_KARATE_MAN_2,
    LEVEL_RHYTHM_TWEEZERS_2,
    LEVEL_NINJA_REINCARNATE,
    LEVEL_NIGHT_WALK_2,
    LEVEL_MARCHING_ORDERS_2,
    LEVEL_REMIX_7,
    LEVEL_BOUNCY_ROAD_2,
    LEVEL_TOSS_BOYS_2,
    LEVEL_POLYRHYTHM_2,
    LEVEL_SPACEBALL_2,
    LEVEL_SNEAKY_SPIRITS_2,
    LEVEL_REMIX_8,
    LEVEL_NULL
};


// [D_089cd48c] Graphics Table
struct GraphicsTable cafe_gfx_table[] = {
    /* BG Tileset */ {
        /* Src.  */ &cafe_bg_tiles,
        /* Dest. */ BG_TILESET_BASE(0),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Map */ {
        /* Src.  */ &cafe_bg_map_text_bubble,
        /* Dest. */ BG_MAP_BASE(0xE800),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Map */ {
        /* Src.  */ &cafe_bg_map,
        /* Dest. */ BG_MAP_BASE(0xF000),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* OBJ Tileset */ {
        /* Src.  */ &cafe_obj,
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
struct CompressedData *cafe_buffered_textures[] = {
    END_OF_BUFFERED_TEXTURES_LIST
};
