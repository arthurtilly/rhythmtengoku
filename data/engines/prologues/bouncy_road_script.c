#include "engines/prologues/bouncy_road.h"
#include "beatscript_notation.h"


  /* PROLOGUE (BOUNCY ROAD) - SCRIPT DATA */


extern const struct CompressedGraphics D_08bee468;
extern const struct CompressedGraphics D_08bee52c;
extern const struct CompressedGraphics D_08bee430;
extern const Palette D_088af5f0[];


  //  //  //  GAME ENGINE DATA  //  //  //


// [D_089eac18] Buffered Textures List
const struct CompressedGraphics *const prologue_bouncy_road_buffered_textures[] = {
    END_OF_BUFFERED_TEXTURES_LIST
};

// [D_089eac1c] Graphics Table
const struct GraphicsTable prologue_bouncy_road_gfx_table[] = {
    /* BG Tileset */ {
        /* Src.  */ &D_08bee468,
        /* Dest. */ BG_TILESET_BASE(0),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Map */ {
        /* Src.  */ &D_08bee52c,
        /* Dest. */ BG_MAP_BASE(0xE800),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* OBJ Tileset */ {
        /* Src.  */ &D_08bee430,
        /* Dest. */ OBJ_TILESET_BASE(0),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Palette */ {
        /* Src.  */ D_088af5f0,
        /* Dest. */ BG_PALETTE_BUFFER(0),
        /* Size  */ 0x140
    },
    /* OBJ Palette */ {
        /* Src.  */ D_088af5f0,
        /* Dest. */ OBJ_PALETTE_BUFFER(0),
        /* Size  */ 0x140
    },
    END_OF_GRAPHICS_TABLE
};

// [D_089eac64] Engine Events
const EngineEvent prologue_bouncy_road_engine_events[] = {
    /* 0x00 */ (EngineEvent) func_08045b88
};

// [D_089eac68] Prologue (Bouncy Road) Game Engine
const struct GameEngine D_089eac68 = {
    /* Size in Memory */ sizeof(struct PrologueBouncyRoadInfo),
    /* Init. Engine   */ func_08045b00,
    /* Update Engine  */ func_08045b8c,
    /* Stop Engine    */ func_08045b90,
    /* Cue Index      */ NULL,
    /* Common Events  */ NULL,
    /* Engine Events  */ prologue_bouncy_road_engine_events,
    /* Input Event    */ NULL
};


  //  //  //  SCRIPT  //  //  //


// [D_089eac88] Prologue (Bouncy Road) BeatScript - Main
const struct BeatScript D_089eac88[] = {
    BSC_RUN_FUNC_1(gameplay_set_screen_fade_in_time, 0x8),
    BSC4_LOAD_GAME_ENGINE(&D_089eac68, 0),
    BSC_RUN_FUNC_1(stop_all_soundplayers, 0),
    BSC_PLAY_SOUND(&s_jingle_poli_seqData),
    BSC_REST(0x18),
    BSC_REST(0x18),
    BSC_RUN_FUNC_1(func_08045b94, 0),
    BSC_REST(0x18),
    BSC_REST(0x18),
    BSC_RUN_FUNC_1(func_08045b94, 1),
    BSC_REST(0x18),
    BSC_REST(0x18),
    BSC_REST(0x18),
    BSC_RUN_FUNC_1(func_08006d80, 0),
    BSC_REST(0x18),
    BSC_RUN_FUNC_1(gameplay_set_screen_fade_in_time, 0x10),
    BSC_RETURN
};
