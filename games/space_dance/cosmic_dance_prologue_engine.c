#include "prologues/cosmic_dance.h"


  //  //  //  GAME ENGINE DATA  //  //  //


// [D_089ea864] Buffered Textures List
struct CompressedData *cosmic_dance_prologue_buffered_textures[] = {
    END_OF_BUFFERED_TEXTURES_LIST
};

// [D_089ea868] Graphics Table
struct GraphicsTable cosmic_dance_prologue_gfx_table[] = {
    /* BG Tileset */ {
        /* Src.  */ &cosmic_dance_prologue_bg_tiles,
        /* Dest. */ BG_TILESET_BASE(0),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Map */ {
        /* Src.  */ &cosmic_dance_prologue_bg_map,
        /* Dest. */ BG_MAP_BASE(0xE800),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* OBJ Tileset */ {
        /* Src.  */ &cosmic_dance_prologue_obj,
        /* Dest. */ OBJ_TILESET_BASE(0),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Palette */ {
        /* Src.  */ cosmic_dance_prologue_bg_pal,
        /* Dest. */ BG_PALETTE_BUFFER(0),
        /* Size  */ 0x140
    },
    /* OBJ Palette */ {
        /* Src.  */ cosmic_dance_prologue_obj_pal,
        /* Dest. */ OBJ_PALETTE_BUFFER(0),
        /* Size  */ 0x140
    },
    END_OF_GRAPHICS_TABLE
};

// [D_089ea8b0] Engine Events
EngineEvent cosmic_dance_prologue_engine_events[] = {
    /* 0x00 */ func_08045730
};

// [D_089ea8b4] Prologue (Cosmic Dance) Game Engine
struct GameEngine cosmic_dance_prologue_engine = {
    /* Size in Memory */ sizeof(struct CosmicDancePrologueEngineData),
    /* Start Engine   */ cosmic_dance_prologue_engine_start,
    /* Update Engine  */ cosmic_dance_prologue_engine_update,
    /* Stop Engine    */ cosmic_dance_prologue_engine_stop,
    /* Cue Index      */ NULL,
    /* Common Events  */ NULL,
    /* Engine Events  */ cosmic_dance_prologue_engine_events,
    /* Input Event    */ NULL
};
