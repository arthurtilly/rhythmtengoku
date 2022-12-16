#include "engines/prologues/power_calligraphy.h"
#include "beatscript_notation.h"


  /* PROLOGUE (POWER CALLIGRAPHY) - SCRIPT DATA */


extern const struct CompressedGraphics D_08bf984c;
extern const struct CompressedGraphics D_08bf9b14;
extern const struct CompressedGraphics D_08bf8a30;
extern const Palette D_088b0720[];


  //  //  //  GAME ENGINE DATA  //  //  //


// [D_089eb530] Buffered Textures List
const struct CompressedGraphics *const prologue_power_calligraphy_buffered_textures[] = {
    END_OF_BUFFERED_TEXTURES_LIST
};

// [D_089eb534] Graphics Table
const struct GraphicsTable prologue_power_calligraphy_gfx_table[] = {
    /* BG Tileset */ {
        /* Src.  */ &D_08bf984c,
        /* Dest. */ BG_TILESET_BASE(0),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Map */ {
        /* Src.  */ &D_08bf9b14,
        /* Dest. */ BG_MAP_BASE(0xE800),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* OBJ Tileset */ {
        /* Src.  */ &D_08bf8a30,
        /* Dest. */ OBJ_TILESET_BASE(0),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Palette */ {
        /* Src.  */ D_088b0720,
        /* Dest. */ BG_PALETTE_BUFFER(0),
        /* Size  */ 0x140
    },
    /* OBJ Palette */ {
        /* Src.  */ D_088b0720,
        /* Dest. */ OBJ_PALETTE_BUFFER(0),
        /* Size  */ 0x140
    },
    END_OF_GRAPHICS_TABLE
};

// [D_089eb57c] Engine Events
const EngineEvent prologue_power_calligraphy_engine_events[] = {
    /* 0x00 */ (EngineEvent) func_080461c4
};

// [D_089eb580] Prologue (Power Calligraphy) Game Engine
const struct GameEngine D_089eb580 = {
    /* Size in Memory */ sizeof(struct ProloguePowerCalligraphyInfo),
    /* Init. Engine   */ func_08046168,
    /* Update Engine  */ func_080461c8,
    /* Stop Engine    */ func_080461cc,
    /* Cue Index      */ NULL,
    /* Common Events  */ NULL,
    /* Engine Events  */ prologue_power_calligraphy_engine_events,
    /* Input Event    */ NULL
};


  //  //  //  SCRIPT  //  //  //


// [D_089eb5a0] Prologue (Power Calligraphy) BeatScript - Main
const struct BeatScript D_089eb5a0[] = {
    BSC_RUN_FUNC_1(gameplay_set_screen_fade_in_time, 0x8),
    BSC4_LOAD_GAME_ENGINE(&D_089eb580, 0),
    BSC_RUN_FUNC_1(stop_all_soundplayers, 0),
    BSC_REST(0x18),
    BSC_PLAY_SOUND(&s_jingle_iai_seqData),
    BSC_REST(0x18),
    BSC_REST(0x18),
    BSC_REST(0x18),
    BSC_RUN_FUNC_1(func_080461f4, 0),
    BSC_REST(0x18),
    BSC_REST(0x18),
    BSC_REST(0x18),
    BSC_REST(0x18),
    BSC_RUN_FUNC_1(func_08006d80, 0),
    BSC_REST(0x18),
    BSC_RUN_FUNC_1(gameplay_set_screen_fade_in_time, 0x10),
    BSC_RETURN
};
