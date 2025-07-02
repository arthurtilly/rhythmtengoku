#include "prologues/tap_trial.h"


  //  //  //  GAME ENGINE DATA  //  //  //


// [D_089ed548] Buffered Textures List
struct CompressedData *tap_trial_prologue_buffered_textures[] = {
    END_OF_BUFFERED_TEXTURES_LIST
};

// [D_089ed54c] Graphics Table
struct GraphicsTable tap_trial_prologue_gfx_table[] = {
    /* BG Tileset */ {
        /* Src.  */ &tap_trial_prologue_bg_tiles,
        /* Dest. */ BG_TILESET_BASE(0),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Map */ {
        /* Src.  */ &tap_trial_prologue_bg_map,
        /* Dest. */ BG_MAP_BASE(0xE800),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* OBJ Tileset */ {
        /* Src.  */ &tap_trial_prologue_obj,
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
EngineEvent tap_trial_prologue_engine_events[] = {
    /* 0x00 */ func_08047764
};

// [D_089ed598] Prologue (Tap Trial) Game Engine
struct GameEngine tap_trial_prologue_engine = {
    /* Size in Memory */ sizeof(struct TapTrialPrologueEngineData),
    /* Start Engine   */ tap_trial_prologue_engine_start,
    /* Update Engine  */ tap_trial_prologue_engine_update,
    /* Stop Engine    */ tap_trial_prologue_engine_stop,
    /* Cue Index      */ NULL,
    /* Common Events  */ NULL,
    /* Engine Events  */ tap_trial_prologue_engine_events,
    /* Input Event    */ NULL
};
