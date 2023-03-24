#include "global.h"
#include "graphics.h"
#include "text.h"
#include "levels.h"
#include "src/bitmap_font.h"
#include "src/task_pool.h"
#include "src/scenes/game_select.h"
#include "graphics/game_select/game_select_graphics.h"


  /* GAME SELECT - SCENE DATA */


#include "perfect_data.inc.c"
#include "epilogue_data.inc.c"
#include "level_data.inc.c"
#include "icon_data.inc.c"
#include "grid_data.inc.c"


// [D_089cf90c] Level Icon Palettes
u8 level_icon_palette_table[] = {
    /* 0x00 */ 1,
    /* 0x01 */ 0,
    /* 0x02 */ 2,
    /* 0x03 */ 0,
    /* 0x04 */ 0,
    /* 0x05 */ 0,
    /* 0x06 */ 0,
    /* 0x07 */ 0,
    /* 0x08 */ 0,
    /* 0x09 */ 0,
    /* 0x0A */ 0,
    /* 0x0B */ 0,
    /* 0x0C */ 0,
    /* 0x0D */ 0,
    /* 0x0E */ 0,
    /* 0x0F */ 0,
    /* 0x10 */ 1,
    /* 0x11 */ 1,
    /* 0x12 */ 0,
    /* 0x13 */ 2,
    /* 0x14 */ 0,
    /* 0x15 */ 0,
    /* 0x16 */ 2,
    /* 0x17 */ 0,
    /* 0x18 */ 1,
    /* 0x19 */ 0,
    /* 0x1A */ 0,
    /* 0x1B */ 2,
    /* 0x1C */ 0,
    /* 0x1D */ 0,
    /* 0x1E */ 0,
    /* 0x1F */ 0,
    /* 0x20 */ 1,
    /* 0x21 */ 2,
    /* 0x22 */ 2,
    /* 0x23 */ 1,
    /* 0x24 */ 0,
    /* 0x25 */ 2,
    /* 0x26 */ 0,
    /* 0x27 */ 2,
    /* 0x28 */ 0,
    /* 0x29 */ 0,
    /* 0x2A */ 0,
    /* 0x2B */ 1,
    /* 0x2C */ 0,
    /* 0x2D */ 0,
    /* 0x2E */ 0,
    /* 0x2F */ 0,
    /* 0x30 */ 0,
    /* 0x31 */ 0,
    /* 0x32 */ 3,
    /* 0x33 */ 0,
    /* 0x34 */ 0,
    /* 0x35 */ 4
};


// [D_089cf944] Scene Objects
union SceneObject game_select_scene_objects[] = {
    END_OF_SCENE_OBJECTS_LIST
};


// [D_089cf948] Graphics Table
struct GraphicsTable game_select_gfx_table[] = {
    /* BG Tileset */ {
        /* Src.  */ &D_08cc9854,
        /* Dest. */ BG_TILESET_BASE(0x8000),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Map */ {
        /* Src.  */ &D_08cc9d14,
        /* Dest. */ BG_MAP_BASE(0xB000),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Map */ {
        /* Src.  */ &D_08cc9e14,
        /* Dest. */ BG_MAP_BASE(0xB800),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* OBJ Tileset */ {
        /* Src.  */ &D_08cc9148,
        /* Dest. */ OBJ_TILESET_BASE(0),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Palette */ {
        /* Src.  */ game_select_bg_icon_pal,
        /* Dest. */ BG_PALETTE_BUFFER(0),
        /* Size  */ 0x100
    },
    /* BG Palette */ {
        /* Src.  */ game_select_bg_overlay_pal,
        /* Dest. */ BG_PALETTE_BUFFER(8),
        /* Size  */ 0x100
    },
    /* OBJ Palette */ {
        /* Src.  */ game_select_obj_pal,
        /* Dest. */ OBJ_PALETTE_BUFFER(0),
        /* Size  */ 0x200
    },
    END_OF_GRAPHICS_TABLE
};


// [D_089cf9a8] Buffered Textures List
struct CompressedGraphics *game_select_buffered_textures[] = {
    END_OF_BUFFERED_TEXTURES_LIST
};


// [D_089cf9ac] Stage Title Text Animations (by Grid X Pos.)
struct Animation *game_select_stage_title_anim[] = {
    /* 00 */ anim_game_select_stage0,
    /* 01 */ anim_game_select_stage0,
    /* 02 */ anim_game_select_stage1,
    /* 03 */ anim_game_select_stage2,
    /* 04 */ anim_game_select_stage3,
    /* 05 */ anim_game_select_stage4,
    /* 06 */ anim_game_select_stage5,
    /* 07 */ anim_game_select_stage6,
    /* 08 */ anim_game_select_stage7,
    /* 09 */ anim_game_select_stage8,
    /* 10 */ anim_game_select_stage0,
    /* 11 */ anim_game_select_stage0,
    /* 12 */ anim_game_select_stage0,
    /* 13 */ anim_game_select_stage0,
    /* 14 */ anim_game_select_stage0
};


// [D_089cf9e8] Rank Text (by Completion Level)
const char *game_select_rank_text[] = {
    /* HIDDEN    */ "",
    /* INVALID   */ "",
    /* CLOSED    */ "",
    /* UNCLEARED */ "",
    /* CLEARED   */ "\2\x30" "\1\x30" "\5\x31" "\1\x35" "ランク " "\2\x32" "\1\x32" "\5\x33" "\1\x37" "平凡",
    /* HAS_MEDAL */ "\2\x30" "\1\x30" "\5\x31" "\1\x35" "ランク " "\2\x32" "\1\x32" "\5\x33" "\1\x37" "ハイレベル"
};

asm(".balign 4, 0");


// [D_089cfa00] Rank Text Palette (by Completion Level)
u8 game_select_rank_palette[] = {
    /* HIDDEN    */ 0,
    /* INVALID   */ 0,
    /* CLOSED    */ 0,
    /* UNCLEARED */ 0,
    /* CLEARED   */ 9,
    /* HAS_MEDAL */ 10
};


#include "icon_overlay_data.inc.c"
