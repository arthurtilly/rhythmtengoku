#include "engines/prologues/rap_women.h"
#include "beatscript_notation.h"


  /* PROLOGUE (RAP WOMEN) - SCRIPT DATA */


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
    /* Init. Engine   */ func_080470d0,
    /* Update Engine  */ func_08047130,
    /* Stop Engine    */ func_08047134,
    /* Cue Index      */ NULL,
    /* Common Events  */ NULL,
    /* Engine Events  */ prologue_rap_women_engine_events,
    /* Input Event    */ NULL
};


  //  //  //  SCRIPT  //  //  //


// [D_089ecef0] Prologue (Rap Women) BeatScript - Main
const struct BeatScript D_089ecef0[] = {
    BSC_RUN_FUNC_1(gameplay_set_screen_fade_in_time, 0x8),
    BSC4_LOAD_GAME_ENGINE(&D_089eced0, 0),
    BSC_RUN_FUNC_1(stop_all_soundplayers, 0),
    BSC_PLAY_SOUND(&s_jingle_rap_seqData),
    BSC_REST(0x18),
    BSC_REST(0x18),
    BSC_RUN_FUNC_1(func_08047138, 0),
    BSC_REST(0x18),
    BSC_REST(0x18),
    BSC_REST(0x18),
    BSC_REST(0x18),
    BSC_REST(0x18),
    BSC_REST(0x18),
    BSC_RUN_FUNC_1(func_08006d80, 0),
    BSC_REST(0x18),
    BSC_RUN_FUNC_1(gameplay_set_screen_fade_in_time, 0x10),
    BSC_RETURN
};
