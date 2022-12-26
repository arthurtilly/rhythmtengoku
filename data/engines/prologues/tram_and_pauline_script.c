#include "engines/prologues/tram_and_pauline.h"
#include "beatscript_notation.h"


  /* PROLOGUE (TRAM & PAULINE) - SCRIPT DATA */


extern const struct CompressedGraphics D_08c3106c;
extern const struct CompressedGraphics D_08c3153c;
extern const struct CompressedGraphics D_08c30910;
extern const Palette prologue_tram_and_pauline_pal[];


  //  //  //  GAME ENGINE DATA  //  //  //


// [D_089edbb8] Buffered Textures List
const struct CompressedGraphics *const prologue_tram_pauline_buffered_textures[] = {
    END_OF_BUFFERED_TEXTURES_LIST
};

// [D_089edbbc] Graphics Table
const struct GraphicsTable prologue_tram_pauline_gfx_table[] = {
    /* BG Tileset */ {
        /* Src.  */ &D_08c3106c,
        /* Dest. */ BG_TILESET_BASE(0),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Map */ {
        /* Src.  */ &D_08c3153c,
        /* Dest. */ BG_MAP_BASE(0xE800),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* OBJ Tileset */ {
        /* Src.  */ &D_08c30910,
        /* Dest. */ OBJ_TILESET_BASE(0),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Palette */ {
        /* Src.  */ prologue_tram_and_pauline_pal,
        /* Dest. */ BG_PALETTE_BUFFER(0),
        /* Size  */ 0x140
    },
    /* OBJ Palette */ {
        /* Src.  */ prologue_tram_and_pauline_pal,
        /* Dest. */ OBJ_PALETTE_BUFFER(0),
        /* Size  */ 0x140
    },
    END_OF_GRAPHICS_TABLE
};

// [D_089edc04] Engine Events
const EngineEvent prologue_tram_pauline_engine_events[] = {
    /* 0x00 */ (EngineEvent) func_08047bd0
};

// [D_089edc08] Prologue (Tram & Pauline) Game Engine
const struct GameEngine D_089edc08 = {
    /* Size in Memory */ sizeof(struct PrologueTramPaulineInfo),
    /* Init. Engine   */ func_08047b40,
    /* Update Engine  */ func_08047bd4,
    /* Stop Engine    */ func_08047bd8,
    /* Cue Index      */ NULL,
    /* Common Events  */ NULL,
    /* Engine Events  */ prologue_tram_pauline_engine_events,
    /* Input Event    */ NULL
};


  //  //  //  SCRIPT  //  //  //


// [D_089edc28] Prologue (Tram & Pauline) BeatScript - Main
const struct BeatScript D_089edc28[] = {
    BSC_RUN_FUNC_1(gameplay_set_screen_fade_in_time, 0x8),
    BSC4_LOAD_GAME_ENGINE(&D_089edc08, 0),
    BSC_RUN_FUNC_1(stop_all_soundplayers, 0),
    BSC_PLAY_SOUND(&s_jingle_tap_seqData),
    BSC_REST(0x18),
    BSC_REST(0x18),
    BSC_REST(0x18),
    BSC_REST(0x0C),
    BSC_RUN_FUNC_1(func_08047bdc, 5),
    BSC_REST(0x0C),
    BSC_REST(0x18),
    BSC_REST(0x18),
    BSC_REST(0x18),
    BSC_RUN_FUNC_1(func_08006d80, 0),
    BSC_REST(0x18),
    BSC_RUN_FUNC_1(gameplay_set_screen_fade_in_time, 0x10),
    BSC_RETURN
};
