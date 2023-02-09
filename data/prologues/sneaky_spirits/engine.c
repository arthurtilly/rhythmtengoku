#include "prologues/sneaky_spirits.h"


  /* PROLOGUE (SNEAKY SPIRITS) - ENGINE DATA */


extern const struct CompressedGraphics D_08be1c50;
extern const struct CompressedGraphics D_08be1dfc;
extern const struct CompressedGraphics D_08be0ff8;
extern const Palette prologue_sneaky_spirits_pal[];


  //  //  //  GAME ENGINE DATA  //  //  //


// [D_089ea088] Buffered Textures List
const struct CompressedGraphics *const prologue_sneaky_spirits_buffered_textures[] = {
    END_OF_BUFFERED_TEXTURES_LIST
};

// [D_089ea08c] Graphics Table
const struct GraphicsTable prologue_sneaky_spirits_gfx_table[] = {
    /* BG Tileset */ {
        /* Src.  */ &D_08be1c50,
        /* Dest. */ BG_TILESET_BASE(0),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Map */ {
        /* Src.  */ &D_08be1dfc,
        /* Dest. */ BG_MAP_BASE(0xE800),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* OBJ Tileset */ {
        /* Src.  */ &D_08be0ff8,
        /* Dest. */ OBJ_TILESET_BASE(0),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Palette */ {
        /* Src.  */ prologue_sneaky_spirits_pal,
        /* Dest. */ BG_PALETTE_BUFFER(0),
        /* Size  */ 0x140
    },
    /* OBJ Palette */ {
        /* Src.  */ prologue_sneaky_spirits_pal,
        /* Dest. */ OBJ_PALETTE_BUFFER(0),
        /* Size  */ 0x140
    },
    END_OF_GRAPHICS_TABLE
};

// [D_089ea0d4] Engine Events
const EngineEvent prologue_sneaky_spirits_engine_events[] = {
    /* 0x00 */ (EngineEvent) func_080451d8
};

// [D_089ea0d8] Prologue (Sneaky Spirits) Game Engine
const struct GameEngine D_089ea0d8 = {
    /* Size in Memory */ sizeof(struct PrologueSneakySpiritsInfo),
    /* Start Engine   */ func_0804517c,
    /* Update Engine  */ func_080451dc,
    /* Stop Engine    */ func_080451e0,
    /* Cue Index      */ NULL,
    /* Common Events  */ NULL,
    /* Engine Events  */ prologue_sneaky_spirits_engine_events,
    /* Input Event    */ NULL
};
