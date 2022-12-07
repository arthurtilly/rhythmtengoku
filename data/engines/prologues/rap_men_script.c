#include "engines/prologues/rap_men.h"
#include "beatscript_notation.h"


  /* PROLOGUE (RAP MEN) - SCRIPT DATA */


extern const struct CompressedGraphics D_08c2052c;
extern const struct CompressedGraphics D_08c207cc;
extern const struct CompressedGraphics D_08c1f4b4;
extern const Palette D_088b3830[];


  //  //  //  GAME ENGINE DATA  //  //  //


// [D_089ecd44] Buffered Textures List
const struct CompressedGraphics *const prologue_rap_men_buffered_textures[] = {
    END_OF_BUFFERED_TEXTURES_LIST
};

// [D_089ecd48] Graphics Table
const struct GraphicsTable prologue_rap_men_gfx_table[] = {
    /* BG Tileset */ {
        /* Src.  */ &D_08c2052c,
        /* Dest. */ BG_TILESET_BASE(0),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Map */ {
        /* Src.  */ &D_08c207cc,
        /* Dest. */ BG_MAP_BASE(0xE800),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* OBJ Tileset */ {
        /* Src.  */ &D_08c1f4b4,
        /* Dest. */ OBJ_TILESET_BASE(0),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Palette */ {
        /* Src.  */ D_088b3830,
        /* Dest. */ BG_PALETTE_BUFFER(0),
        /* Size  */ 0x140
    },
    /* OBJ Palette */ {
        /* Src.  */ D_088b3830,
        /* Dest. */ OBJ_PALETTE_BUFFER(0),
        /* Size  */ 0x140
    },
    END_OF_GRAPHICS_TABLE
};

// [D_089ecd90] Engine Events
const EngineEvent prologue_rap_men_engine_events[] = {
    /* 0x00 */ (EngineEvent) func_08047028
};

// [D_089ecd94] Prologue (Rap Men) Game Engine
const struct GameEngine D_089ecd94 = {
    /* Size in Memory */ sizeof(struct PrologueRapMenInfo),
    /* Init. Engine   */ func_08046fcc,
    /* Update Engine  */ func_0804702c,
    /* Stop Engine    */ func_08047030,
    /* Cue Index      */ NULL,
    /* Common Events  */ NULL,
    /* Engine Events  */ prologue_rap_men_engine_events,
    /* Input Event    */ NULL
};


  //  //  //  SCRIPT  //  //  //


// [D_089ecdb4] Prologue (Rap Men) BeatScript - Main
const struct BeatScript D_089ecdb4[] = {
    BSC_RUN_FUNC_1(func_08017568, 0x8),
    BSC4_LOAD_GAME_ENGINE(&D_089ecd94, 0),
    BSC_RUN_FUNC_1(func_08002838, 0),
    BSC_PLAY_SOUND(&s_jingle_rap_seqData),
    BSC_REST(0x18),
    BSC_REST(0x18),
    BSC_RUN_FUNC_1(func_08047034, 0),
    BSC_REST(0x18),
    BSC_REST(0x18),
    BSC_REST(0x18),
    BSC_REST(0x18),
    BSC_REST(0x18),
    BSC_REST(0x18),
    BSC_RUN_FUNC_1(func_08006d80, 0),
    BSC_REST(0x18),
    BSC_RUN_FUNC_1(func_08017568, 0x10),
    BSC_RETURN
};
