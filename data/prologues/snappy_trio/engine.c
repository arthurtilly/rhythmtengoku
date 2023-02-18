#include "prologues/snappy_trio.h"


  /* PROLOGUE (THE SNAPPY TRIO) - ENGINE DATA */


extern const struct CompressedGraphics D_08bf5ce8;
extern const struct CompressedGraphics D_08bf60c8;
extern const struct CompressedGraphics D_08bf374c;
extern const Palette snappy_trio_prologue_pal[];


  //  //  //  GAME ENGINE DATA  //  //  //


// [D_089eb1c8] Buffered Textures List
const struct CompressedGraphics *const snappy_trio_prologue_buffered_textures[] = {
    END_OF_BUFFERED_TEXTURES_LIST
};

// [D_089eb1cc] Graphics Table
const struct GraphicsTable snappy_trio_prologue_gfx_table[] = {
    /* BG Tileset */ {
        /* Src.  */ &D_08bf5ce8,
        /* Dest. */ BG_TILESET_BASE(0),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Map */ {
        /* Src.  */ &D_08bf60c8,
        /* Dest. */ BG_MAP_BASE(0xE800),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* OBJ Tileset */ {
        /* Src.  */ &D_08bf374c,
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
const EngineEvent snappy_trio_prologue_engine_events[] = {
    /* 0x00 */ (EngineEvent) func_08045fb4
};

// [D_089eb218] Prologue (The Snappy Trio) Game Engine
const struct GameEngine snappy_trio_prologue_engine = {
    /* Size in Memory */ sizeof(struct SnappyTrioPrologueInfo),
    /* Start Engine   */ func_08045f58,
    /* Update Engine  */ func_08045fb8,
    /* Stop Engine    */ func_08045fbc,
    /* Cue Index      */ NULL,
    /* Common Events  */ NULL,
    /* Engine Events  */ snappy_trio_prologue_engine_events,
    /* Input Event    */ NULL
};
