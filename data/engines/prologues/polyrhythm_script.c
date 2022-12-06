#include "engines/prologues/polyrhythm.h"
#include "beatscript_notation.h"


  /* PROLOGUE (POLYRHYTHM) - SCRIPT DATA */


extern const struct CompressedGraphics D_08c0212c;
extern const struct CompressedGraphics D_08c02628;
extern const struct CompressedGraphics D_08c00010;
extern const Palette D_088b0ccc[];


  //  //  //  GAME ENGINE DATA  //  //  //


// [D_089eb9bc] Buffered Textures List
const struct CompressedGraphics *const prologue_polyrhythm_buffered_textures[] = {
    END_OF_BUFFERED_TEXTURES_LIST
};

// [D_089eb9c0] Graphics Table
const struct GraphicsTable prologue_polyrhythm_gfx_table[] = {
    /* BG Tileset */ {
        /* Src.  */ &D_08c0212c,
        /* Dest. */ BG_TILESET_BASE(0),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Map */ {
        /* Src.  */ &D_08c02628,
        /* Dest. */ BG_MAP_BASE(0xE800),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* OBJ Tileset */ {
        /* Src.  */ &D_08c00010,
        /* Dest. */ OBJ_TILESET_BASE(0),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Palette */ {
        /* Src.  */ D_088b0ccc,
        /* Dest. */ BG_PALETTE_BUFFER(0),
        /* Size  */ 0x140
    },
    /* OBJ Palette */ {
        /* Src.  */ D_088b0ccc,
        /* Dest. */ OBJ_PALETTE_BUFFER(0),
        /* Size  */ 0x140
    },
    END_OF_GRAPHICS_TABLE
};

// [D_089eba08] Engine Events
const EngineEvent prologue_polyrhythm_engine_events[] = {
    /* 0x00 */ (EngineEvent) func_080464f8
};

// [D_089eba0c] Prologue (Polyrhythm) Game Engine
const struct GameEngine D_089eba0c = {
    /* Size in Memory */ sizeof(struct ProloguePolyrhythmInfo),
    /* Init. Engine   */ func_0804649c,
    /* Update Engine  */ func_080464fc,
    /* Stop Engine    */ func_08046500,
    /* Cue Index      */ NULL,
    /* Common Events  */ NULL,
    /* Engine Events  */ prologue_polyrhythm_engine_events,
    /* Input Event    */ NULL
};


  //  //  //  SCRIPT  //  //  //


// [D_089eba2c] Prologue (Polyrhythm) BeatScript - Main
const struct BeatScript D_089eba2c[] = {
    BSC_RUN_FUNC_1(func_08017568, 0x8),
    BSC4_LOAD_GAME_ENGINE(&D_089eba0c, 0),
    BSC_RUN_FUNC_1(func_08002838, 0),
    BSC_REST(0x18),
    BSC_PLAY_SOUND(&s_jingle_poli_seqData),
    BSC_REST(0x18),
    BSC_RUN_FUNC_1(func_08046504, 1),
    BSC_REST(0x06),
    BSC_RUN_FUNC_1(func_08046504, 2),
    BSC_REST(0x06),
    BSC_RUN_FUNC_1(func_08046504, 3),
    BSC_REST(0x06),
    BSC_RUN_FUNC_1(func_08046504, 4),
    BSC_REST(0x06),
    BSC_REST(0x06),
    BSC_REST(0x06),
    BSC_REST(0x06),
    BSC_REST(0x0C),
    BSC_RUN_FUNC_1(func_08046504, 5),
    BSC_REST(0x06),
    BSC_REST(0x06),
    BSC_REST(0x18),
    BSC_REST(0x18),
    BSC_REST(0x0C),
    BSC_RUN_FUNC_1(func_08006d80, 0),
    BSC_REST(0x18),
    BSC_RUN_FUNC_1(func_08017568, 0x10),
    BSC_RETURN
};
