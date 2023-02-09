#include "prologues/bon_dance.h"


  /* PROLOGUE (BON DANCE) - ENGINE DATA */


extern const struct CompressedGraphics D_08be854c;
extern const struct CompressedGraphics D_08be8828;
extern const struct CompressedGraphics D_08be75b8;
extern const Palette prologue_bon_odori_bg_pal[];
extern const Palette prologue_bon_odori_obj_pal[];


  //  //  //  GAME ENGINE DATA  //  //  //


// [D_089ea514] Buffered Textures List
const struct CompressedGraphics *const prologue_bon_dance_buffered_textures[] = {
    END_OF_BUFFERED_TEXTURES_LIST
};

// [D_089ea518] Graphics Table
const struct GraphicsTable prologue_bon_dance_gfx_table[] = {
    /* BG Tileset */ {
        /* Src.  */ &D_08be854c,
        /* Dest. */ BG_TILESET_BASE(0),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Map */ {
        /* Src.  */ &D_08be8828,
        /* Dest. */ BG_MAP_BASE(0xE800),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* OBJ Tileset */ {
        /* Src.  */ &D_08be75b8,
        /* Dest. */ OBJ_TILESET_BASE(0),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Palette */ {
        /* Src.  */ prologue_bon_odori_bg_pal,
        /* Dest. */ BG_PALETTE_BUFFER(0),
        /* Size  */ 0x140
    },
    /* OBJ Palette */ {
        /* Src.  */ prologue_bon_odori_obj_pal,
        /* Dest. */ OBJ_PALETTE_BUFFER(0),
        /* Size  */ 0x140
    },
    END_OF_GRAPHICS_TABLE
};

// [D_089ea560] Engine Events
const EngineEvent prologue_bon_dance_engine_events[] = {
    /* 0x00 */ (EngineEvent) func_080454d4
};

// [D_089ea564] Prologue (Bon Dance) Game Engine
const struct GameEngine D_089ea564 = {
    /* Size in Memory */ sizeof(struct PrologueBonDanceInfo),
    /* Start Engine   */ func_08045478,
    /* Update Engine  */ func_080454d8,
    /* Stop Engine    */ func_080454dc,
    /* Cue Index      */ NULL,
    /* Common Events  */ NULL,
    /* Engine Events  */ prologue_bon_dance_engine_events,
    /* Input Event    */ NULL
};
