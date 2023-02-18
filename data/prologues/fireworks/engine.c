#include "prologues/fireworks.h"


  /* PROLOGUE (FIREWORKS) - ENGINE DATA */


extern const struct CompressedGraphics D_08bf0eb8;
extern const struct CompressedGraphics D_08bf12dc;
extern const struct CompressedGraphics D_08bef660;
extern const Palette fireworks_prologue_pal[];


  //  //  //  GAME ENGINE DATA  //  //  //


// [D_089eae84] Buffered Textures List
const struct CompressedGraphics *const fireworks_prologue_buffered_textures[] = {
    END_OF_BUFFERED_TEXTURES_LIST
};

// [D_089eae88] Graphics Table
const struct GraphicsTable fireworks_prologue_gfx_table[] = {
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
const EngineEvent fireworks_prologue_engine_events[] = {
    /* 0x00 */ (EngineEvent) func_08045dbc
};

// [D_089eaed4] Prologue (Fireworks) Game Engine
const struct GameEngine fireworks_prologue_engine = {
    /* Size in Memory */ sizeof(struct FireworksPrologueInfo),
    /* Start Engine   */ fireworks_prologue_engine_start,
    /* Update Engine  */ fireworks_prologue_engine_update,
    /* Stop Engine    */ fireworks_prologue_engine_stop,
    /* Cue Index      */ NULL,
    /* Common Events  */ NULL,
    /* Engine Events  */ fireworks_prologue_engine_events,
    /* Input Event    */ NULL
};
