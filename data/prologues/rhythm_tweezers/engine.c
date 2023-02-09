#include "prologues/rhythm_tweezers.h"


  /* PROLOGUE (RHYTHM TWEEZERS) - ENGINE DATA */


extern const struct CompressedGraphics D_08beefac;
extern const struct CompressedGraphics D_08bef2ac;
extern const struct CompressedGraphics D_08bee62c;
extern const Palette prologue_rhythm_tweezers_bg_pal[];
extern const Palette prologue_rhythm_tweezers_obj_pal[];


  //  //  //  GAME ENGINE DATA  //  //  //


// [D_089ead54] Buffered Textures List
const struct CompressedGraphics *const prologue_rhythm_tweezers_buffered_textures[] = {
    END_OF_BUFFERED_TEXTURES_LIST
};

// [D_089ead58] Graphics Table
const struct GraphicsTable prologue_rhythm_tweezers_gfx_table[] = {
    /* BG Tileset */ {
        /* Src.  */ &D_08beefac,
        /* Dest. */ BG_TILESET_BASE(0),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Map */ {
        /* Src.  */ &D_08bef2ac,
        /* Dest. */ BG_MAP_BASE(0xE800),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* OBJ Tileset */ {
        /* Src.  */ &D_08bee62c,
        /* Dest. */ OBJ_TILESET_BASE(0),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Palette */ {
        /* Src.  */ prologue_rhythm_tweezers_bg_pal,
        /* Dest. */ BG_PALETTE_BUFFER(0),
        /* Size  */ 0x140
    },
    /* OBJ Palette */ {
        /* Src.  */ prologue_rhythm_tweezers_obj_pal,
        /* Dest. */ OBJ_PALETTE_BUFFER(0),
        /* Size  */ 0x140
    },
    END_OF_GRAPHICS_TABLE
};

// [D_089eada0] Engine Events
const EngineEvent prologue_rhythm_tweezers_engine_events[] = {
    /* 0x00 */ (EngineEvent) func_08045cb8
};

// [D_089eada4] Prologue (Rhythm Tweezers) Game Engine
const struct GameEngine D_089eada4 = {
    /* Size in Memory */ sizeof(struct PrologueRhythmTweezersInfo),
    /* Start Engine   */ func_08045c5c,
    /* Update Engine  */ func_08045cbc,
    /* Stop Engine    */ func_08045cc0,
    /* Cue Index      */ NULL,
    /* Common Events  */ NULL,
    /* Engine Events  */ prologue_rhythm_tweezers_engine_events,
    /* Input Event    */ NULL
};
