#include "prologues/polyrhythm.h"


  /* PROLOGUE (POLYRHYTHM) - ENGINE DATA */


extern const struct CompressedGraphics D_08c0212c;
extern const struct CompressedGraphics D_08c02628;
extern const struct CompressedGraphics D_08c00010;
extern const Palette prologue_polyrhythm_pal[];


  //  //  //  GAME ENGINE DATA  //  //  //


// [D_089eb9bc] Buffered Textures List
const struct CompressedGraphics *const prologue_polyrhythm_buffered_textures[] = {
    END_OF_BUFFERED_TEXTURES_LIST
};

// [D_089eb9c0] Graphics Table
const struct GraphicsTable prologue_polyrhythm_gfx_table[] = {
    /* BG Tileset */ {
        /* Src.  */ &D_08c0212c,
        /* Dest. */ BG_TILESET_BASE(0),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Map */ {
        /* Src.  */ &D_08c02628,
        /* Dest. */ BG_MAP_BASE(0xE800),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* OBJ Tileset */ {
        /* Src.  */ &D_08c00010,
        /* Dest. */ OBJ_TILESET_BASE(0),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Palette */ {
        /* Src.  */ prologue_polyrhythm_pal,
        /* Dest. */ BG_PALETTE_BUFFER(0),
        /* Size  */ 0x140
    },
    /* OBJ Palette */ {
        /* Src.  */ prologue_polyrhythm_pal,
        /* Dest. */ OBJ_PALETTE_BUFFER(0),
        /* Size  */ 0x140
    },
    END_OF_GRAPHICS_TABLE
};

// [D_089eba08] Engine Events
const EngineEvent prologue_polyrhythm_engine_events[] = {
    /* 0x00 */ (EngineEvent) func_080464f8
};

// [D_089eba0c] Prologue (Polyrhythm) Game Engine
const struct GameEngine D_089eba0c = {
    /* Size in Memory */ sizeof(struct ProloguePolyrhythmInfo),
    /* Start Engine   */ func_0804649c,
    /* Update Engine  */ func_080464fc,
    /* Stop Engine    */ func_08046500,
    /* Cue Index      */ NULL,
    /* Common Events  */ NULL,
    /* Engine Events  */ prologue_polyrhythm_engine_events,
    /* Input Event    */ NULL
};
