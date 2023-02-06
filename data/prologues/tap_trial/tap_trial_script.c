#include "prologues/tap_trial.h"
#include "bs_ext.h"


  /* PROLOGUE (TAP TRIAL) - SCRIPT DATA */


extern const struct CompressedGraphics D_08c279e0;
extern const struct CompressedGraphics D_08c27e24;
extern const struct CompressedGraphics D_08c26340;
extern const Palette prologue_tap_trial_bg_pal[];
extern const Palette prologue_tap_trial_obj_pal[];


  //  //  //  GAME ENGINE DATA  //  //  //


// [D_089ed548] Buffered Textures List
const struct CompressedGraphics *const prologue_tap_trial_buffered_textures[] = {
    END_OF_BUFFERED_TEXTURES_LIST
};

// [D_089ed54c] Graphics Table
const struct GraphicsTable prologue_tap_trial_gfx_table[] = {
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
        /* Src.  */ prologue_tap_trial_bg_pal,
        /* Dest. */ BG_PALETTE_BUFFER(0),
        /* Size  */ 0x140
    },
    /* OBJ Palette */ {
        /* Src.  */ prologue_tap_trial_obj_pal,
        /* Dest. */ OBJ_PALETTE_BUFFER(0),
        /* Size  */ 0x140
    },
    END_OF_GRAPHICS_TABLE
};

// [D_089ed594] Engine Events
const EngineEvent prologue_tap_trial_engine_events[] = {
    /* 0x00 */ (EngineEvent) func_08047764
};

// [D_089ed598] Prologue (Tap Trial) Game Engine
const struct GameEngine D_089ed598 = {
    /* Size in Memory */ sizeof(struct PrologueTapTrialInfo),
    /* Start Engine   */ func_080476e8,
    /* Update Engine  */ func_08047768,
    /* Stop Engine    */ func_0804776c,
    /* Cue Index      */ NULL,
    /* Common Events  */ NULL,
    /* Engine Events  */ prologue_tap_trial_engine_events,
    /* Input Event    */ NULL
};


  //  //  //  SCRIPT  //  //  //


// [D_089ed5b8] Prologue (Tap Trial) BeatScript - Main
const struct BeatScript D_089ed5b8[] = {
    BS_RIQ_FADE_SCREEN_IN(0x08),
    BS_RIQ_LOAD_GAME_ENGINE(&D_089ed598, 0),
    BS_RUN1(stop_all_soundplayers, 0),
    BS_REST(0x18),
    BS_PLAY_SOUND(&s_jingle_tap_seqData),
    BS_REST(0x18),
    BS_RUN1(func_08047794, 1),
    BS_REST(0x06),
    BS_REST(0x06),
    BS_REST(0x06),
    BS_REST(0x18),
    BS_REST(0x06),
    BS_REST(0x06),
    BS_REST(0x18),
    BS_REST(0x18),
    BS_REST(0x18),
    BS_REST(0x0C),
    BS_RUN1(func_08006d80, 0),
    BS_REST(0x18),
    BS_RIQ_FADE_SCREEN_IN(0x10),
    BS_RETURN
};
