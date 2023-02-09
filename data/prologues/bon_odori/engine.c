#include "prologues/bon_odori.h"


  /* PROLOGUE (THE BON ODORI) - ENGINE DATA */


extern const struct CompressedGraphics D_08be694c;
extern const struct CompressedGraphics D_08be6d70;
extern const struct CompressedGraphics D_08be3e20;
extern const Palette prologue_bon_dance_bg_pal[];
extern const Palette prologue_bon_dance_obj_pal[];


  //  //  //  GAME ENGINE DATA  //  //  //


// [D_089ea3e4] Buffered Textures List
const struct CompressedGraphics *const prologue_bon_odori_buffered_textures[] = {
    END_OF_BUFFERED_TEXTURES_LIST
};

// [D_089ea3e8] Graphics Table
const struct GraphicsTable prologue_bon_odori_gfx_table[] = {
    /* BG Tileset */ {
        /* Src.  */ &D_08be694c,
        /* Dest. */ BG_TILESET_BASE(0),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Map */ {
        /* Src.  */ &D_08be6d70,
        /* Dest. */ BG_MAP_BASE(0xE800),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* OBJ Tileset */ {
        /* Src.  */ &D_08be3e20,
        /* Dest. */ OBJ_TILESET_BASE(0),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Palette */ {
        /* Src.  */ prologue_bon_dance_bg_pal,
        /* Dest. */ BG_PALETTE_BUFFER(0),
        /* Size  */ 0x140
    },
    /* OBJ Palette */ {
        /* Src.  */ prologue_bon_dance_obj_pal,
        /* Dest. */ OBJ_PALETTE_BUFFER(0),
        /* Size  */ 0x140
    },
    END_OF_GRAPHICS_TABLE
};

// [D_089ea430] Engine Events
const EngineEvent prologue_bon_odori_engine_events[] = {
    /* 0x00 */ (EngineEvent) func_080453d0
};

// [D_089ea434] Prologue (The Bon Odori) Game Engine
const struct GameEngine D_089ea434 = {
    /* Size in Memory */ sizeof(struct PrologueBonOdoriInfo),
    /* Start Engine   */ func_08045374,
    /* Update Engine  */ func_080453d4,
    /* Stop Engine    */ func_080453d8,
    /* Cue Index      */ NULL,
    /* Common Events  */ NULL,
    /* Engine Events  */ prologue_bon_odori_engine_events,
    /* Input Event    */ NULL
};
