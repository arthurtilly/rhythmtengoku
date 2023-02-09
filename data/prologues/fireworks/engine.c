#include "prologues/fireworks.h"


  /* PROLOGUE (FIREWORKS) - ENGINE DATA */


extern const struct CompressedGraphics D_08bf0eb8;
extern const struct CompressedGraphics D_08bf12dc;
extern const struct CompressedGraphics D_08bef660;
extern const Palette prologue_fireworks_pal[];


  //  //  //  GAME ENGINE DATA  //  //  //


// [D_089eae84] Buffered Textures List
const struct CompressedGraphics *const prologue_fireworks_buffered_textures[] = {
    END_OF_BUFFERED_TEXTURES_LIST
};

// [D_089eae88] Graphics Table
const struct GraphicsTable prologue_fireworks_gfx_table[] = {
    /* BG Tileset */ {
        /* Src.  */ &D_08bf0eb8,
        /* Dest. */ BG_TILESET_BASE(0),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Map */ {
        /* Src.  */ &D_08bf12dc,
        /* Dest. */ BG_MAP_BASE(0xE800),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* OBJ Tileset */ {
        /* Src.  */ &D_08bef660,
        /* Dest. */ OBJ_TILESET_BASE(0),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Palette */ {
        /* Src.  */ prologue_fireworks_pal,
        /* Dest. */ BG_PALETTE_BUFFER(0),
        /* Size  */ 0x140
    },
    /* OBJ Palette */ {
        /* Src.  */ prologue_fireworks_pal,
        /* Dest. */ OBJ_PALETTE_BUFFER(0),
        /* Size  */ 0x140
    },
    END_OF_GRAPHICS_TABLE
};

// [D_089eaed0] Engine Events
const EngineEvent prologue_fireworks_engine_events[] = {
    /* 0x00 */ (EngineEvent) func_08045dbc
};

// [D_089eaed4] Prologue (Fireworks) Game Engine
const struct GameEngine D_089eaed4 = {
    /* Size in Memory */ sizeof(struct PrologueFireworksInfo),
    /* Start Engine   */ func_08045d60,
    /* Update Engine  */ func_08045dc0,
    /* Stop Engine    */ func_08045dc4,
    /* Cue Index      */ NULL,
    /* Common Events  */ NULL,
    /* Engine Events  */ prologue_fireworks_engine_events,
    /* Input Event    */ NULL
};
