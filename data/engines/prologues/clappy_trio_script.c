#include "engines/prologues/clappy_trio.h"
#include "beatscript_notation.h"


  /* PROLOGUE (THE CLAPPY TRIO) - SCRIPT DATA */


extern const struct CompressedGraphics D_08bf2f64;
extern const struct CompressedGraphics D_08bf33cc;
extern const struct CompressedGraphics D_08bf16b4;
extern const Palette D_088afc1c[];
extern const Palette D_088afbdc[];


  //  //  //  GAME ENGINE DATA  //  //  //


// [D_089eb014] Buffered Textures List
const struct CompressedGraphics *const prologue_clappy_trio_buffered_textures[] = {
    END_OF_BUFFERED_TEXTURES_LIST
};

// [D_089eb018] Graphics Table
const struct GraphicsTable prologue_clappy_trio_gfx_table[] = {
    /* BG Tileset */ {
        /* Src.  */ &D_08bf2f64,
        /* Dest. */ BG_TILESET_BASE(0),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Map */ {
        /* Src.  */ &D_08bf33cc,
        /* Dest. */ BG_MAP_BASE(0xE800),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* OBJ Tileset */ {
        /* Src.  */ &D_08bf16b4,
        /* Dest. */ OBJ_TILESET_BASE(0),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Palette */ {
        /* Src.  */ D_088afc1c,
        /* Dest. */ BG_PALETTE_BUFFER(0),
        /* Size  */ 0x140
    },
    /* OBJ Palette */ {
        /* Src.  */ D_088afbdc,
        /* Dest. */ OBJ_PALETTE_BUFFER(0),
        /* Size  */ 0x140
    },
    END_OF_GRAPHICS_TABLE
};

// [D_089eb060] Engine Events
const EngineEvent prologue_clappy_trio_engine_events[] = {
    /* 0x00 */ (EngineEvent) func_08045eb8
};

// [D_089eb064] Prologue (The Clappy Trio) Game Engine
const struct GameEngine D_089eb064 = {
    /* Size in Memory */ sizeof(struct PrologueClappyTrioInfo),
    /* Init. Engine   */ func_08045e5c,
    /* Update Engine  */ func_08045ebc,
    /* Stop Engine    */ func_08045ec0,
    /* Cue Index      */ NULL,
    /* Common Events  */ NULL,
    /* Engine Events  */ prologue_clappy_trio_engine_events,
    /* Input Event    */ NULL
};


  //  //  //  SCRIPT  //  //  //


// [D_089eb084] Prologue (The Clappy Trio) BeatScript - Main
const struct BeatScript D_089eb084[] = {
    BSC_RUN_FUNC_1(func_08017568, 0x8),
    BSC4_LOAD_GAME_ENGINE(&D_089eb064, 0),
    BSC_RUN_FUNC_1(func_08002838, 0),
    BSC_REST(0x18),
    BSC_PLAY_SOUND(&s_jingle_handclap_seqData),
    BSC_RUN_FUNC_1(func_08045ec4, 1),
    BSC_REST(0x02),
    BSC_RUN_FUNC_1(func_08045ec4, 2),
    BSC_REST(0x02),
    BSC_RUN_FUNC_1(func_08045ec4, 3),
    BSC_REST(0x02),
    BSC_RUN_FUNC_1(func_08045ec4, 4),
    BSC_REST(0x02),
    BSC_RUN_FUNC_1(func_08045ec4, 5),
    BSC_REST(0x02),
    BSC_RUN_FUNC_1(func_08045ec4, 6),
    BSC_REST(0x06),
    BSC_REST(0x06),
    BSC_REST(0x18),
    BSC_REST(0x18),
    BSC_REST(0x18),
    BSC_REST(0x0C),
    BSC_REST(0x0C),
    BSC_RUN_FUNC_1(func_08006d80, 0),
    BSC_REST(0x0C),
    BSC_RUN_FUNC_1(func_08017568, 0x10),
    BSC_RETURN
};
