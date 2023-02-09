#include "prologues/tap_trial_2.h"


  /* PROLOGUE (TAP TRIAL 2) - ENGINE DATA */


extern const struct CompressedGraphics D_08c2990c;
extern const struct CompressedGraphics D_08c29ce8;
extern const struct CompressedGraphics D_08c28814;
extern const Palette prologue_tap_trial_2_bg_pal[];
extern const Palette prologue_tap_trial_2_obj_pal[];


  //  //  //  GAME ENGINE DATA  //  //  //


// [D_089ed6b4] Buffered Textures List
const struct CompressedGraphics *const prologue_tap_trial_2_buffered_textures[] = {
    END_OF_BUFFERED_TEXTURES_LIST
};

// [D_089ed6b8] Graphics Table
const struct GraphicsTable prologue_tap_trial_2_gfx_table[] = {
    /* BG Tileset */ {
        /* Src.  */ &D_08c2990c,
        /* Dest. */ BG_TILESET_BASE(0),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Map */ {
        /* Src.  */ &D_08c29ce8,
        /* Dest. */ BG_MAP_BASE(0xE800),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* OBJ Tileset */ {
        /* Src.  */ &D_08c28814,
        /* Dest. */ OBJ_TILESET_BASE(0),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Palette */ {
        /* Src.  */ prologue_tap_trial_2_bg_pal,
        /* Dest. */ BG_PALETTE_BUFFER(0),
        /* Size  */ 0x140
    },
    /* OBJ Palette */ {
        /* Src.  */ prologue_tap_trial_2_obj_pal,
        /* Dest. */ OBJ_PALETTE_BUFFER(0),
        /* Size  */ 0x140
    },
    END_OF_GRAPHICS_TABLE
};

// [D_089ed700] Engine Events
const EngineEvent prologue_tap_trial_2_engine_events[] = {
    /* 0x00 */ (EngineEvent) func_08047888
};

// [D_089ed704] Prologue (Tap Trial 2) Game Engine
const struct GameEngine D_089ed704 = {
    /* Size in Memory */ sizeof(struct PrologueTapTrial2Info),
    /* Start Engine   */ func_08047824,
    /* Update Engine  */ func_0804788c,
    /* Stop Engine    */ func_08047890,
    /* Cue Index      */ NULL,
    /* Common Events  */ NULL,
    /* Engine Events  */ prologue_tap_trial_2_engine_events,
    /* Input Event    */ NULL
};
