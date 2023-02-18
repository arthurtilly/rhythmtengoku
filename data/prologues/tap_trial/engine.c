#include "prologues/tap_trial.h"


  /* PROLOGUE (TAP TRIAL) - ENGINE DATA */


extern const struct CompressedGraphics D_08c279e0;
extern const struct CompressedGraphics D_08c27e24;
extern const struct CompressedGraphics D_08c26340;
extern const Palette tap_trial_prologue_bg_pal[];
extern const Palette tap_trial_prologue_obj_pal[];


  //  //  //  GAME ENGINE DATA  //  //  //


// [D_089ed548] Buffered Textures List
const struct CompressedGraphics *const tap_trial_prologue_buffered_textures[] = {
    END_OF_BUFFERED_TEXTURES_LIST
};

// [D_089ed54c] Graphics Table
const struct GraphicsTable tap_trial_prologue_gfx_table[] = {
    /* BG Tileset */ {
        /* Src.  */ &D_08c279e0,
        /* Dest. */ BG_TILESET_BASE(0),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Map */ {
        /* Src.  */ &D_08c27e24,
        /* Dest. */ BG_MAP_BASE(0xE800),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* OBJ Tileset */ {
        /* Src.  */ &D_08c26340,
        /* Dest. */ OBJ_TILESET_BASE(0),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Palette */ {
        /* Src.  */ tap_trial_prologue_bg_pal,
        /* Dest. */ BG_PALETTE_BUFFER(0),
        /* Size  */ 0x140
    },
    /* OBJ Palette */ {
        /* Src.  */ tap_trial_prologue_obj_pal,
        /* Dest. */ OBJ_PALETTE_BUFFER(0),
        /* Size  */ 0x140
    },
    END_OF_GRAPHICS_TABLE
};

// [D_089ed594] Engine Events
const EngineEvent tap_trial_prologue_engine_events[] = {
    /* 0x00 */ (EngineEvent) func_08047764
};

// [D_089ed598] Prologue (Tap Trial) Game Engine
const struct GameEngine tap_trial_prologue_engine = {
    /* Size in Memory */ sizeof(struct TapTrialPrologueInfo),
    /* Start Engine   */ tap_trial_prologue_engine_start,
    /* Update Engine  */ tap_trial_prologue_engine_update,
    /* Stop Engine    */ tap_trial_prologue_engine_stop,
    /* Cue Index      */ NULL,
    /* Common Events  */ NULL,
    /* Engine Events  */ tap_trial_prologue_engine_events,
    /* Input Event    */ NULL
};
