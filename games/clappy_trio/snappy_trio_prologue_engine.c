#include "prologues/snappy_trio.h"


  //  //  //  GAME ENGINE DATA  //  //  //


// [D_089eb1c8] Buffered Textures List
struct CompressedData *snappy_trio_prologue_buffered_textures[] = {
    END_OF_BUFFERED_TEXTURES_LIST
};

// [D_089eb1cc] Graphics Table
struct GraphicsTable snappy_trio_prologue_gfx_table[] = {
    /* BG Tileset */ {
        /* Src.  */ &snappy_trio_prologue_bg_tiles,
        /* Dest. */ BG_TILESET_BASE(0),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Map */ {
        /* Src.  */ &snappy_trio_prologue_bg_map,
        /* Dest. */ BG_MAP_BASE(0xE800),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* OBJ Tileset */ {
        /* Src.  */ &snappy_trio_prologue_obj,
        /* Dest. */ OBJ_TILESET_BASE(0),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Palette */ {
        /* Src.  */ snappy_trio_prologue_pal,
        /* Dest. */ BG_PALETTE_BUFFER(0),
        /* Size  */ 0x140
    },
    /* OBJ Palette */ {
        /* Src.  */ snappy_trio_prologue_pal,
        /* Dest. */ OBJ_PALETTE_BUFFER(0),
        /* Size  */ 0x140
    },
    END_OF_GRAPHICS_TABLE
};

// [D_089eb214] Engine Events
EngineEvent snappy_trio_prologue_engine_events[] = {
    /* 0x00 */ func_08045fb4
};

// [D_089eb218] Prologue (The Snappy Trio) Game Engine
struct GameEngine snappy_trio_prologue_engine = {
    /* Size in Memory */ sizeof(struct SnappyTrioPrologueEngineData),
    /* Start Engine   */ snappy_trio_prologue_engine_start,
    /* Update Engine  */ snappy_trio_prologue_engine_update,
    /* Stop Engine    */ snappy_trio_prologue_engine_stop,
    /* Cue Index      */ NULL,
    /* Common Events  */ NULL,
    /* Engine Events  */ snappy_trio_prologue_engine_events,
    /* Input Event    */ NULL
};
