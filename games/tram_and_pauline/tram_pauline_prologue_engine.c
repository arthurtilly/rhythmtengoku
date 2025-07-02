#include "prologues/tram_and_pauline.h"


  //  //  //  GAME ENGINE DATA  //  //  //


// [D_089edbb8] Buffered Textures List
struct CompressedData *tram_pauline_prologue_buffered_textures[] = {
    END_OF_BUFFERED_TEXTURES_LIST
};

// [D_089edbbc] Graphics Table
struct GraphicsTable tram_pauline_prologue_gfx_table[] = {
    /* BG Tileset */ {
        /* Src.  */ &tram_pauline_prologue_bg_tiles,
        /* Dest. */ BG_TILESET_BASE(0),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Map */ {
        /* Src.  */ &tram_pauline_prologue_bg_map,
        /* Dest. */ BG_MAP_BASE(0xE800),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* OBJ Tileset */ {
        /* Src.  */ &tram_pauline_prologue_obj,
        /* Dest. */ OBJ_TILESET_BASE(0),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Palette */ {
        /* Src.  */ tram_pauline_prologue_pal,
        /* Dest. */ BG_PALETTE_BUFFER(0),
        /* Size  */ 0x140
    },
    /* OBJ Palette */ {
        /* Src.  */ tram_pauline_prologue_pal,
        /* Dest. */ OBJ_PALETTE_BUFFER(0),
        /* Size  */ 0x140
    },
    END_OF_GRAPHICS_TABLE
};

// [D_089edc04] Engine Events
EngineEvent tram_pauline_prologue_engine_events[] = {
    /* 0x00 */ func_08047bd0
};

// [D_089edc08] Prologue (Tram & Pauline) Game Engine
struct GameEngine tram_pauline_prologue_engine = {
    /* Size in Memory */ sizeof(struct TramPaulinePrologueEngineData),
    /* Start Engine   */ tram_pauline_prologue_engine_start,
    /* Update Engine  */ tram_pauline_prologue_engine_update,
    /* Stop Engine    */ tram_pauline_prologue_engine_stop,
    /* Cue Index      */ NULL,
    /* Common Events  */ NULL,
    /* Engine Events  */ tram_pauline_prologue_engine_events,
    /* Input Event    */ NULL
};
