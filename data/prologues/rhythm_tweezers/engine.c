#include "prologues/rhythm_tweezers.h"


  /* PROLOGUE (RHYTHM TWEEZERS) - ENGINE DATA */


extern const struct CompressedGraphics D_08beefac;
extern const struct CompressedGraphics D_08bef2ac;
extern const struct CompressedGraphics D_08bee62c;
extern const Palette rhythm_tweezers_prologue_bg_pal[];
extern const Palette rhythm_tweezers_prologue_obj_pal[];


  //  //  //  GAME ENGINE DATA  //  //  //


// [D_089ead54] Buffered Textures List
const struct CompressedGraphics *const rhythm_tweezers_prologue_buffered_textures[] = {
    END_OF_BUFFERED_TEXTURES_LIST
};

// [D_089ead58] Graphics Table
const struct GraphicsTable rhythm_tweezers_prologue_gfx_table[] = {
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
        /* Src.  */ rhythm_tweezers_prologue_bg_pal,
        /* Dest. */ BG_PALETTE_BUFFER(0),
        /* Size  */ 0x140
    },
    /* OBJ Palette */ {
        /* Src.  */ rhythm_tweezers_prologue_obj_pal,
        /* Dest. */ OBJ_PALETTE_BUFFER(0),
        /* Size  */ 0x140
    },
    END_OF_GRAPHICS_TABLE
};

// [D_089eada0] Engine Events
const EngineEvent rhythm_tweezers_prologue_engine_events[] = {
    /* 0x00 */ (EngineEvent) func_08045cb8
};

// [D_089eada4] Prologue (Rhythm Tweezers) Game Engine
const struct GameEngine rhythm_tweezers_prologue_engine = {
    /* Size in Memory */ sizeof(struct RhythmTweezersPrologueInfo),
    /* Start Engine   */ func_08045c5c,
    /* Update Engine  */ func_08045cbc,
    /* Stop Engine    */ func_08045cc0,
    /* Cue Index      */ NULL,
    /* Common Events  */ NULL,
    /* Engine Events  */ rhythm_tweezers_prologue_engine_events,
    /* Input Event    */ NULL
};
