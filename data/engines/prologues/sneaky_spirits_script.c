#include "engines/prologues/sneaky_spirits.h"
#include "beatscript_notation.h"


  /* PROLOGUE (SNEAKY SPIRITS) - SCRIPT DATA */


extern const struct CompressedGraphics D_08be1c50;
extern const struct CompressedGraphics D_08be1dfc;
extern const struct CompressedGraphics D_08be0ff8;
extern const Palette D_088ad2fc[];


  //  //  //  GAME ENGINE DATA  //  //  //


// [D_089ea088] Buffered Textures List
const struct CompressedGraphics *const prologue_sneaky_spirits_buffered_textures[] = {
    END_OF_BUFFERED_TEXTURES_LIST
};

// [D_089ea08c] Graphics Table
const struct GraphicsTable prologue_sneaky_spirits_gfx_table[] = {
    /* BG Tileset */ {
        /* Src.  */ &D_08be1c50,
        /* Dest. */ BG_TILESET_BASE(0),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Map */ {
        /* Src.  */ &D_08be1dfc,
        /* Dest. */ BG_MAP_BASE(0xE800),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* OBJ Tileset */ {
        /* Src.  */ &D_08be0ff8,
        /* Dest. */ OBJ_TILESET_BASE(0),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Palette */ {
        /* Src.  */ D_088ad2fc,
        /* Dest. */ BG_PALETTE_BUFFER(0),
        /* Size  */ 0x140
    },
    /* OBJ Palette */ {
        /* Src.  */ D_088ad2fc,
        /* Dest. */ OBJ_PALETTE_BUFFER(0),
        /* Size  */ 0x140
    },
    END_OF_GRAPHICS_TABLE
};

// [D_089ea0d4] Engine Events
const EngineEvent prologue_sneaky_spirits_engine_events[] = {
    /* 0x00 */ (EngineEvent) func_080451d8
};

// [D_089ea0d8] Prologue (Sneaky Spirits) Game Engine
const struct GameEngine D_089ea0d8 = {
    /* Size in Memory */ sizeof(struct PrologueSneakySpiritsInfo),
    /* Init. Engine   */ func_0804517c,
    /* Update Engine  */ func_080451dc,
    /* Stop Engine    */ func_080451e0,
    /* Cue Index      */ NULL,
    /* Common Events  */ NULL,
    /* Engine Events  */ prologue_sneaky_spirits_engine_events,
    /* Input Event    */ NULL
};


  //  //  //  SCRIPT  //  //  //


// [D_089ea0f8] Prologue (Sneaky Spirits) BeatScript - Main
const struct BeatScript D_089ea0f8[] = {
    BSC_RUN_FUNC_1(func_08017568, 0x8),
    BSC4_LOAD_GAME_ENGINE(&D_089ea0d8, 0),
    BSC_RUN_FUNC_1(func_08002838, 0),
    BSC_RUN_FUNC_1(func_080451e4, 6),
    BSC_PLAY_SOUND(&s_jingle_ghost_seqData),
    BSC_REST(0x18),
    BSC_REST(0x18),
    BSC_RUN_FUNC_1(func_080451e4, 0),
    BSC_REST(0x06),
    BSC_RUN_FUNC_1(func_080451e4, 1),
    BSC_REST(0x06),
    BSC_RUN_FUNC_1(func_080451e4, 2),
    BSC_REST(0x06),
    BSC_REST(0x06),
    BSC_REST(0x06),
    BSC_REST(0x06),
    BSC_REST(0x06),
    BSC_REST(0x0C),
    BSC_RUN_FUNC_1(func_080451e4, 3),
    BSC_REST(0x06),
    BSC_REST(0x06),
    BSC_RUN_FUNC_1(func_080451e4, 4),
    BSC_REST(0x0C),
    BSC_RUN_FUNC_1(func_080451e4, 5),
    BSC_REST(0x0C),
    BSC_REST(0x18),
    BSC_REST(0x0C),
    BSC_RUN_FUNC_1(func_08006d80, 0),
    BSC_REST(0x18),
    BSC_RUN_FUNC_1(func_08017568, 0x10),
    BSC_RETURN
};
