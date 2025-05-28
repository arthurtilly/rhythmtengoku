#include "prologues/showtime.h"


  //  //  //  GAME ENGINE DATA  //  //  //


// [D_089eaadc] Buffered Textures List
struct CompressedData *showtime_prologue_buffered_textures[] = {
    END_OF_BUFFERED_TEXTURES_LIST
};

// [D_089eaae0] Graphics Table
struct GraphicsTable showtime_prologue_gfx_table[] = {
    /* BG Tileset */ {
        /* Src.  */ &showtime_prologue_bg_tiles,
        /* Dest. */ BG_TILESET_BASE(0),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Map */ {
        /* Src.  */ &showtime_prologue_bg_map,
        /* Dest. */ BG_MAP_BASE(0xE800),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* OBJ Tileset */ {
        /* Src.  */ &showtime_prologue_obj,
        /* Dest. */ OBJ_TILESET_BASE(0),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Palette */ {
        /* Src.  */ showtime_prologue_pal,
        /* Dest. */ BG_PALETTE_BUFFER(0),
        /* Size  */ 0x140
    },
    /* OBJ Palette */ {
        /* Src.  */ showtime_prologue_pal,
        /* Dest. */ OBJ_PALETTE_BUFFER(0),
        /* Size  */ 0x140
    },
    END_OF_GRAPHICS_TABLE
};

// [D_089eab28] Engine Events
EngineEvent showtime_prologue_engine_events[] = {
    /* 0x00 */ func_08045a44
};

// [D_089eab2c] Prologue (Showtime) Game Engine
struct GameEngine showtime_prologue_engine = {
    /* Size in Memory */ sizeof(struct ShowtimePrologueEngineData),
    /* Start Engine   */ showtime_prologue_engine_start,
    /* Update Engine  */ showtime_prologue_engine_update,
    /* Stop Engine    */ showtime_prologue_engine_stop,
    /* Cue Index      */ NULL,
    /* Common Events  */ NULL,
    /* Engine Events  */ showtime_prologue_engine_events,
    /* Input Event    */ NULL
};
