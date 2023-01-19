#include "prologues/ninja_bodyguard.h"
#include "beatscript_notation.h"


  /* PROLOGUE (NINJA BODYGUARD) - SCRIPT DATA */


extern const struct CompressedGraphics D_08c23a3c;
extern const struct CompressedGraphics D_08c23cd0;
extern const struct CompressedGraphics D_08c22ee4;
extern const Palette prologue_ninja_pal[];


  //  //  //  GAME ENGINE DATA  //  //  //


// [D_089ed188] Buffered Textures List
const struct CompressedGraphics *const prologue_ninja_buffered_textures[] = {
    END_OF_BUFFERED_TEXTURES_LIST
};

// [D_089ed18c] Graphics Table
const struct GraphicsTable prologue_ninja_gfx_table[] = {
    /* BG Tileset */ {
        /* Src.  */ &D_08c23a3c,
        /* Dest. */ BG_TILESET_BASE(0),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Map */ {
        /* Src.  */ &D_08c23cd0,
        /* Dest. */ BG_MAP_BASE(0xE800),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* OBJ Tileset */ {
        /* Src.  */ &D_08c22ee4,
        /* Dest. */ OBJ_TILESET_BASE(0),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Palette */ {
        /* Src.  */ prologue_ninja_pal,
        /* Dest. */ BG_PALETTE_BUFFER(0),
        /* Size  */ 0x140
    },
    /* OBJ Palette */ {
        /* Src.  */ prologue_ninja_pal,
        /* Dest. */ OBJ_PALETTE_BUFFER(0),
        /* Size  */ 0x140
    },
    END_OF_GRAPHICS_TABLE
};

// [D_089ed1d4] Engine Events
const EngineEvent prologue_ninja_engine_events[] = {
    /* 0x00 */ (EngineEvent) func_08047398
};

// [D_089ed1d8] Prologue (Ninja Bodyguard) Game Engine
const struct GameEngine D_089ed1d8 = {
    /* Size in Memory */ sizeof(struct PrologueNinjaBodyguardInfo),
    /* Init. Engine   */ func_0804732c,
    /* Update Engine  */ func_0804739c,
    /* Stop Engine    */ func_080473a0,
    /* Cue Index      */ NULL,
    /* Common Events  */ NULL,
    /* Engine Events  */ prologue_ninja_engine_events,
    /* Input Event    */ NULL
};


  //  //  //  SCRIPT  //  //  //


// [D_089ed1f8] Prologue (Ninja Bodyguard) BeatScript - Main
const struct BeatScript D_089ed1f8[] = {
    BSC_RUN_FUNC_1(gameplay_set_screen_fade_in_time, 0x8),
    BSC4_LOAD_GAME_ENGINE(&D_089ed1d8, 0),
    BSC_RUN_FUNC_1(stop_all_soundplayers, 0),
    BSC_PLAY_SOUND(&s_jingle_iai_seqData),
    BSC_REST(0x18),
    BSC_REST(0x18),
    BSC_RUN_FUNC_1(func_080473a4, 1),
    BSC_REST(0x18),
    BSC_REST(0x18),
    BSC_RUN_FUNC_1(func_080473a4, 0),
    BSC_REST(0x18),
    BSC_REST(0x18),
    BSC_REST(0x18),
    BSC_RUN_FUNC_1(func_08006d80, 0),
    BSC_REST(0x18),
    BSC_RUN_FUNC_1(gameplay_set_screen_fade_in_time, 0x10),
    BSC_RETURN
};
