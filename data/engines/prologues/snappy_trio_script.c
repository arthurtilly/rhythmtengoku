#include "engines/prologues/snappy_trio.h"
#include "beatscript_notation.h"


  /* PROLOGUE (THE SNAPPY TRIO) - SCRIPT DATA */


extern const struct CompressedGraphics D_08bf5ce8;
extern const struct CompressedGraphics D_08bf60c8;
extern const struct CompressedGraphics D_08bf374c;
extern const Palette D_088afe04[];


  //  //  //  GAME ENGINE DATA  //  //  //


// [D_089eb1c8] Buffered Textures List
const struct CompressedGraphics *const prologue_snappy_trio_buffered_textures[] = {
    END_OF_BUFFERED_TEXTURES_LIST
};

// [D_089eb1cc] Graphics Table
const struct GraphicsTable prologue_snappy_trio_gfx_table[] = {
    /* BG Tileset */ {
        /* Src.  */ &D_08bf5ce8,
        /* Dest. */ BG_TILESET_BASE(0),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Map */ {
        /* Src.  */ &D_08bf60c8,
        /* Dest. */ BG_MAP_BASE(0xE800),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* OBJ Tileset */ {
        /* Src.  */ &D_08bf374c,
        /* Dest. */ OBJ_TILESET_BASE(0),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Palette */ {
        /* Src.  */ D_088afe04,
        /* Dest. */ BG_PALETTE_BUFFER(0),
        /* Size  */ 0x140
    },
    /* OBJ Palette */ {
        /* Src.  */ D_088afe04,
        /* Dest. */ OBJ_PALETTE_BUFFER(0),
        /* Size  */ 0x140
    },
    END_OF_GRAPHICS_TABLE
};

// [D_089eb214] Engine Events
const EngineEvent prologue_snappy_trio_engine_events[] = {
    /* 0x00 */ (EngineEvent) func_08045fb4
};

// [D_089eb218] Prologue (The Snappy Trio) Game Engine
const struct GameEngine D_089eb218 = {
    /* Size in Memory */ sizeof(struct PrologueSnappyTrioInfo),
    /* Init. Engine   */ func_08045f58,
    /* Update Engine  */ func_08045fb8,
    /* Stop Engine    */ func_08045fbc,
    /* Cue Index      */ NULL,
    /* Common Events  */ NULL,
    /* Engine Events  */ prologue_snappy_trio_engine_events,
    /* Input Event    */ NULL
};


  //  //  //  SCRIPT  //  //  //


// [D_089eb238] Prologue (The Snappy Trio) BeatScript - Main
const struct BeatScript D_089eb238[] = {
    BSC_RUN_FUNC_1(func_08017568, 0x8),
    BSC4_LOAD_GAME_ENGINE(&D_089eb218, 0),
    BSC_RUN_FUNC_1(func_08002838, 0),
    BSC_REST(0x18),
    BSC_PLAY_SOUND(&s_jingle_handclap_seqData),
    BSC_RUN_FUNC_1(func_08045fc0, 1),
    BSC_REST(0x02),
    BSC_RUN_FUNC_1(func_08045fc0, 2),
    BSC_REST(0x02),
    BSC_RUN_FUNC_1(func_08045fc0, 3),
    BSC_REST(0x02),
    BSC_RUN_FUNC_1(func_08045fc0, 4),
    BSC_REST(0x02),
    BSC_RUN_FUNC_1(func_08045fc0, 5),
    BSC_REST(0x02),
    BSC_RUN_FUNC_1(func_08045fc0, 6),
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
