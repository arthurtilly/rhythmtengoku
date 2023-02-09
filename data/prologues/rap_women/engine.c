#include "prologues/rap_women.h"


  /* PROLOGUE (RAP WOMEN) - ENGINE DATA */


extern const struct CompressedGraphics D_08c20f8c;
extern const struct CompressedGraphics D_08c21254;
extern const struct CompressedGraphics D_08c209cc;
extern const Palette prologue_rap_women_pal[];


  //  //  //  GAME ENGINE DATA  //  //  //


// [D_089ece80] Buffered Textures List
const struct CompressedGraphics *const prologue_rap_women_buffered_textures[] = {
    END_OF_BUFFERED_TEXTURES_LIST
};

// [D_089ece84] Graphics Table
const struct GraphicsTable prologue_rap_women_gfx_table[] = {
    /* BG Tileset */ {
        /* Src.  */ &D_08c20f8c,
        /* Dest. */ BG_TILESET_BASE(0),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Map */ {
        /* Src.  */ &D_08c21254,
        /* Dest. */ BG_MAP_BASE(0xE800),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* OBJ Tileset */ {
        /* Src.  */ &D_08c209cc,
        /* Dest. */ OBJ_TILESET_BASE(0),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Palette */ {
        /* Src.  */ prologue_rap_women_pal,
        /* Dest. */ BG_PALETTE_BUFFER(0),
        /* Size  */ 0x140
    },
    /* OBJ Palette */ {
        /* Src.  */ prologue_rap_women_pal,
        /* Dest. */ OBJ_PALETTE_BUFFER(0),
        /* Size  */ 0x140
    },
    END_OF_GRAPHICS_TABLE
};

// [D_089ececc] Engine Events
const EngineEvent prologue_rap_women_engine_events[] = {
    /* 0x00 */ (EngineEvent) func_0804712c
};

// [D_089eced0] Prologue (Rap Women) Game Engine
const struct GameEngine D_089eced0 = {
    /* Size in Memory */ sizeof(struct PrologueRapWomenInfo),
    /* Start Engine   */ func_080470d0,
    /* Update Engine  */ func_08047130,
    /* Stop Engine    */ func_08047134,
    /* Cue Index      */ NULL,
    /* Common Events  */ NULL,
    /* Engine Events  */ prologue_rap_women_engine_events,
    /* Input Event    */ NULL
};
