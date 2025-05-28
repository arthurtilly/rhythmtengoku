#include "prologues/fireworks.h"


  //  //  //  GAME ENGINE DATA  //  //  //


// [D_089eae84] Buffered Textures List
struct CompressedData *fireworks_prologue_buffered_textures[] = {
    END_OF_BUFFERED_TEXTURES_LIST
};

// [D_089eae88] Graphics Table
struct GraphicsTable fireworks_prologue_gfx_table[] = {
    /* BG Tileset */ {
        /* Src.  */ &fireworks_prologue_bg_tiles,
        /* Dest. */ BG_TILESET_BASE(0),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Map */ {
        /* Src.  */ &fireworks_prologue_bg_map,
        /* Dest. */ BG_MAP_BASE(0xE800),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* OBJ Tileset */ {
        /* Src.  */ &fireworks_prologue_obj,
        /* Dest. */ OBJ_TILESET_BASE(0),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Palette */ {
        /* Src.  */ fireworks_prologue_pal,
        /* Dest. */ BG_PALETTE_BUFFER(0),
        /* Size  */ 0x140
    },
    /* OBJ Palette */ {
        /* Src.  */ fireworks_prologue_pal,
        /* Dest. */ OBJ_PALETTE_BUFFER(0),
        /* Size  */ 0x140
    },
    END_OF_GRAPHICS_TABLE
};

// [D_089eaed0] Engine Events
EngineEvent fireworks_prologue_engine_events[] = {
    /* 0x00 */ func_08045dbc
};

// [D_089eaed4] Prologue (Fireworks) Game Engine
struct GameEngine fireworks_prologue_engine = {
    /* Size in Memory */ sizeof(struct FireworksPrologueEngineData),
    /* Start Engine   */ fireworks_prologue_engine_start,
    /* Update Engine  */ fireworks_prologue_engine_update,
    /* Stop Engine    */ fireworks_prologue_engine_stop,
    /* Cue Index      */ NULL,
    /* Common Events  */ NULL,
    /* Engine Events  */ fireworks_prologue_engine_events,
    /* Input Event    */ NULL
};
