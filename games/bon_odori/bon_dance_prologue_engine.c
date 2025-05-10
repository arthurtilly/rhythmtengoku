#include "prologues/bon_dance.h"


  //  //  //  GAME ENGINE DATA  //  //  //


// [D_089ea3e4] Buffered Textures List
struct CompressedData *bon_dance_prologue_buffered_textures[] = {
    END_OF_BUFFERED_TEXTURES_LIST
};

// [D_089ea3e8] Graphics Table
struct GraphicsTable bon_dance_prologue_gfx_table[] = {
    /* BG Tileset */ {
        /* Src.  */ &bon_dance_prologue_bg_tiles,
        /* Dest. */ BG_TILESET_BASE(0),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Map */ {
        /* Src.  */ &bon_dance_prologue_bg_map,
        /* Dest. */ BG_MAP_BASE(0xE800),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* OBJ Tileset */ {
        /* Src.  */ &bon_dance_prologue_obj,
        /* Dest. */ OBJ_TILESET_BASE(0),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Palette */ {
        /* Src.  */ bon_dance_prologue_bg_pal,
        /* Dest. */ BG_PALETTE_BUFFER(0),
        /* Size  */ 0x140
    },
    /* OBJ Palette */ {
        /* Src.  */ bon_dance_prologue_obj_pal,
        /* Dest. */ OBJ_PALETTE_BUFFER(0),
        /* Size  */ 0x140
    },
    END_OF_GRAPHICS_TABLE
};

// [D_089ea430] Engine Events
EngineEvent bon_dance_prologue_engine_events[] = {
    /* 0x00 */ func_080453d0
};

// [D_089ea434] Prologue (The Bon Odori) Game Engine
struct GameEngine bon_dance_prologue_engine = {
    /* Size in Memory */ sizeof(struct BonDancePrologueEngineData),
    /* Start Engine   */ bon_dance_prologue_engine_start,
    /* Update Engine  */ bon_dance_prologue_engine_update,
    /* Stop Engine    */ bon_dance_prologue_engine_stop,
    /* Cue Index      */ NULL,
    /* Common Events  */ NULL,
    /* Engine Events  */ bon_dance_prologue_engine_events,
    /* Input Event    */ NULL
};
