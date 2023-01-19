#include "prologues/quiz_show.h"
#include "beatscript_notation.h"


  /* PROLOGUE (QUIZ SHOW) - SCRIPT DATA */


extern const struct CompressedGraphics D_08c04434;
extern const struct CompressedGraphics D_08c04940;
extern const struct CompressedGraphics D_08c02a34;
extern const Palette prologue_quiz_pal[];


  //  //  //  GAME ENGINE DATA  //  //  //


// [D_089ebb7c] Buffered Textures List
const struct CompressedGraphics *const prologue_quiz_show_buffered_textures[] = {
    END_OF_BUFFERED_TEXTURES_LIST
};

// [D_089ebb80] Graphics Table
const struct GraphicsTable prologue_quiz_show_gfx_table[] = {
    /* BG Tileset */ {
        /* Src.  */ &D_08c04434,
        /* Dest. */ BG_TILESET_BASE(0),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Map */ {
        /* Src.  */ &D_08c04940,
        /* Dest. */ BG_MAP_BASE(0xE800),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* OBJ Tileset */ {
        /* Src.  */ &D_08c02a34,
        /* Dest. */ OBJ_TILESET_BASE(0),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Palette */ {
        /* Src.  */ prologue_quiz_pal,
        /* Dest. */ BG_PALETTE_BUFFER(0),
        /* Size  */ 0x140
    },
    /* OBJ Palette */ {
        /* Src.  */ prologue_quiz_pal,
        /* Dest. */ OBJ_PALETTE_BUFFER(0),
        /* Size  */ 0x140
    },
    END_OF_GRAPHICS_TABLE
};

// [D_089ebbc8] Engine Events
const EngineEvent prologue_quiz_show_engine_events[] = {
    /* 0x00 */ (EngineEvent) func_080465f8
};

// [D_089ebbcc] Prologue (Quiz Show) Game Engine
const struct GameEngine D_089ebbcc = {
    /* Size in Memory */ sizeof(struct PrologueQuizShowInfo),
    /* Init. Engine   */ func_08046598,
    /* Update Engine  */ func_080465fc,
    /* Stop Engine    */ func_08046600,
    /* Cue Index      */ NULL,
    /* Common Events  */ NULL,
    /* Engine Events  */ prologue_quiz_show_engine_events,
    /* Input Event    */ NULL
};


  //  //  //  SCRIPT  //  //  //


// [D_089ebbec] Prologue (Quiz Show) BeatScript - Main
const struct BeatScript D_089ebbec[] = {
    BSC_RUN_FUNC_1(gameplay_set_screen_fade_in_time, 0x8),
    BSC4_LOAD_GAME_ENGINE(&D_089ebbcc, 0),
    BSC_RUN_FUNC_1(stop_all_soundplayers, 0),
    BSC_REST(0x18),
    BSC_PLAY_SOUND(&s_jingle_quiz_seqData),
    BSC_REST(0x18),
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
