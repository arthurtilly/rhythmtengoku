#include "engines/prologues/fireworks.h"
#include "beatscript_notation.h"


  /* PROLOGUE (FIREWORKS) - SCRIPT DATA */


extern const struct CompressedGraphics D_08bf0eb8;
extern const struct CompressedGraphics D_08bf12dc;
extern const struct CompressedGraphics D_08bef660;
extern const Palette D_088af814[];


  //  //  //  GAME ENGINE DATA  //  //  //


// [D_089eae84] Buffered Textures List
const struct CompressedGraphics *const prologue_fireworks_buffered_textures[] = {
    END_OF_BUFFERED_TEXTURES_LIST
};

// [D_089eae88] Graphics Table
const struct GraphicsTable prologue_fireworks_gfx_table[] = {
    /* BG Tileset */ {
        /* Src.  */ &D_08bf0eb8,
        /* Dest. */ BG_TILESET_BASE(0),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Map */ {
        /* Src.  */ &D_08bf12dc,
        /* Dest. */ BG_MAP_BASE(0xE800),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* OBJ Tileset */ {
        /* Src.  */ &D_08bef660,
        /* Dest. */ OBJ_TILESET_BASE(0),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Palette */ {
        /* Src.  */ D_088af814,
        /* Dest. */ BG_PALETTE_BUFFER(0),
        /* Size  */ 0x140
    },
    /* OBJ Palette */ {
        /* Src.  */ D_088af814,
        /* Dest. */ OBJ_PALETTE_BUFFER(0),
        /* Size  */ 0x140
    },
    END_OF_GRAPHICS_TABLE
};

// [D_089eaed0] Engine Events
const EngineEvent prologue_fireworks_engine_events[] = {
    /* 0x00 */ (EngineEvent) func_08045dbc
};

// [D_089eaed4] Prologue (Fireworks) Game Engine
const struct GameEngine D_089eaed4 = {
    /* Size in Memory */ sizeof(struct PrologueFireworksInfo),
    /* Init. Engine   */ func_08045d60,
    /* Update Engine  */ func_08045dc0,
    /* Stop Engine    */ func_08045dc4,
    /* Cue Index      */ NULL,
    /* Common Events  */ NULL,
    /* Engine Events  */ prologue_fireworks_engine_events,
    /* Input Event    */ NULL
};


  //  //  //  SCRIPT  //  //  //


// [D_089eaef4] Prologue (Fireworks) BeatScript - Main
const struct BeatScript D_089eaef4[] = {
    BSC_RUN_FUNC_1(func_08017568, 0x8),
    BSC4_LOAD_GAME_ENGINE(&D_089eaed4, 0),
    BSC_RUN_FUNC_1(func_08002838, 0),
    BSC_RUN_FUNC_1(func_08045dc8, 1),
    BSC_REST(0x18),
    BSC_PLAY_SOUND(&s_jingle_bon_seqData),
    BSC_REST(0x18),
    BSC_REST(0x18),
    BSC_REST(0x06),
    BSC_REST(0x06),
    BSC_REST(0x06),
    BSC_REST(0x06),
    BSC_REST(0x06),
    BSC_REST(0x06),
    BSC_REST(0x06),
    BSC_REST(0x0C),
    BSC_REST(0x06),
    BSC_REST(0x06),
    BSC_REST(0x0C),
    BSC_REST(0x18),
    BSC_RUN_FUNC_1(func_08006d80, 0),
    BSC_REST(0x18),
    BSC_RUN_FUNC_1(func_08017568, 0x10),
    BSC_RETURN
};
