#include "prologues/showtime.h"


  /* PROLOGUE (SHOWTIME) - ENGINE DATA */


extern const struct CompressedGraphics D_08bed0ec;
extern const struct CompressedGraphics D_08bed4e4;
extern const struct CompressedGraphics D_08bec134;
extern const Palette prologue_showtime_pal[];


  //  //  //  GAME ENGINE DATA  //  //  //


// [D_089eaadc] Buffered Textures List
const struct CompressedGraphics *const prologue_showtime_buffered_textures[] = {
    END_OF_BUFFERED_TEXTURES_LIST
};

// [D_089eaae0] Graphics Table
const struct GraphicsTable prologue_showtime_gfx_table[] = {
    /* BG Tileset */ {
        /* Src.  */ &D_08bed0ec,
        /* Dest. */ BG_TILESET_BASE(0),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Map */ {
        /* Src.  */ &D_08bed4e4,
        /* Dest. */ BG_MAP_BASE(0xE800),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* OBJ Tileset */ {
        /* Src.  */ &D_08bec134,
        /* Dest. */ OBJ_TILESET_BASE(0),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Palette */ {
        /* Src.  */ prologue_showtime_pal,
        /* Dest. */ BG_PALETTE_BUFFER(0),
        /* Size  */ 0x140
    },
    /* OBJ Palette */ {
        /* Src.  */ prologue_showtime_pal,
        /* Dest. */ OBJ_PALETTE_BUFFER(0),
        /* Size  */ 0x140
    },
    END_OF_GRAPHICS_TABLE
};

// [D_089eab28] Engine Events
const EngineEvent prologue_showtime_engine_events[] = {
    /* 0x00 */ (EngineEvent) func_08045a44
};

// [D_089eab2c] Prologue (Showtime) Game Engine
const struct GameEngine D_089eab2c = {
    /* Size in Memory */ sizeof(struct PrologueShowtimeInfo),
    /* Start Engine   */ func_080459b4,
    /* Update Engine  */ func_08045a48,
    /* Stop Engine    */ func_08045a4c,
    /* Cue Index      */ NULL,
    /* Common Events  */ NULL,
    /* Engine Events  */ prologue_showtime_engine_events,
    /* Input Event    */ NULL
};
