#include "engines/prologues/bunny_hop.h"
#include "beatscript_notation.h"


  /* PROLOGUE (BUNNY HOP) - SCRIPT DATA */


extern const struct CompressedGraphics D_08c1f24c;
extern const struct CompressedGraphics D_08c1f308;
extern const struct CompressedGraphics D_08c1f214;
extern const Palette prologue_bunny_hop_pal[];


  //  //  //  GAME ENGINE DATA  //  //  //


// [D_089ecb60] Buffered Textures List
const struct CompressedGraphics *const prologue_bunny_hop_buffered_textures[] = {
    END_OF_BUFFERED_TEXTURES_LIST
};

// [D_089ecb64] Graphics Table
const struct GraphicsTable prologue_bunny_hop_gfx_table[] = {
    /* BG Tileset */ {
        /* Src.  */ &D_08c1f24c,
        /* Dest. */ BG_TILESET_BASE(0),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Map */ {
        /* Src.  */ &D_08c1f308,
        /* Dest. */ BG_MAP_BASE(0xE800),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* OBJ Tileset */ {
        /* Src.  */ &D_08c1f214,
        /* Dest. */ OBJ_TILESET_BASE(0),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Palette */ {
        /* Src.  */ prologue_bunny_hop_pal,
        /* Dest. */ BG_PALETTE_BUFFER(0),
        /* Size  */ 0x140
    },
    /* OBJ Palette */ {
        /* Src.  */ prologue_bunny_hop_pal,
        /* Dest. */ OBJ_PALETTE_BUFFER(0),
        /* Size  */ 0x140
    },
    END_OF_GRAPHICS_TABLE
};

// [D_089ecbac] Engine Events
const EngineEvent prologue_bunny_hop_engine_events[] = {
    /* 0x00 */ (EngineEvent) func_08046f00
};

// [D_089ecbb0] Prologue (Bunny Hop) Game Engine
const struct GameEngine D_089ecbb0 = {
    /* Size in Memory */ sizeof(struct PrologueBunnyHopInfo),
    /* Init. Engine   */ func_08046e78,
    /* Update Engine  */ func_08046f04,
    /* Stop Engine    */ func_08046f08,
    /* Cue Index      */ NULL,
    /* Common Events  */ NULL,
    /* Engine Events  */ prologue_bunny_hop_engine_events,
    /* Input Event    */ NULL
};


  //  //  //  SCRIPT  //  //  //


// [D_089ecbd0] Prologue (Bunny Hop) BeatScript - Main
const struct BeatScript D_089ecbd0[] = {
    BSC_RUN_FUNC_1(gameplay_set_screen_fade_in_time, 0x8),
    BSC4_LOAD_GAME_ENGINE(&D_089ecbb0, 0),
    BSC_RUN_FUNC_1(stop_all_soundplayers, 0),
    BSC_RUN_FUNC_1(func_08046f0c, 0),
    BSC_PLAY_SOUND(&s_jingle_rat_seqData),
    BSC_REST(0x18),
    BSC_REST(0x18),
    BSC_RUN_FUNC_1(func_08046f30, 0),
    BSC_RUN_FUNC_1(func_08046f0c, 1),
    BSC_REST(0x06),
    BSC_RUN_FUNC_1(func_08046f0c, 2),
    BSC_REST(0x06),
    BSC_RUN_FUNC_1(func_08046f0c, 3),
    BSC_REST(0x06),
    BSC_RUN_FUNC_1(func_08046f0c, 4),
    BSC_REST(0x06),
    BSC_RUN_FUNC_1(func_08046f0c, 5),
    BSC_REST(0x06),
    BSC_RUN_FUNC_1(func_08046f0c, 6),
    BSC_REST(0x06),
    BSC_REST(0x06),
    BSC_REST(0x0C),
    BSC_REST(0x06),
    BSC_REST(0x06),
    BSC_REST(0x18),
    BSC_REST(0x18),
    BSC_REST(0x0C),
    BSC_RUN_FUNC_1(func_08006d80, 0),
    BSC_REST(0x18),
    BSC_RUN_FUNC_1(gameplay_set_screen_fade_in_time, 0x10),
    BSC_RETURN
};
