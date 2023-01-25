#include "prologues/power_calligraphy.h"
#include "bs_ext.h"


  /* PROLOGUE (POWER CALLIGRAPHY) - SCRIPT DATA */


extern const struct CompressedGraphics D_08bf984c;
extern const struct CompressedGraphics D_08bf9b14;
extern const struct CompressedGraphics D_08bf8a30;
extern const Palette prologue_calligraphy_pal[];


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
        /* Src.  */ prologue_calligraphy_pal,
        /* Dest. */ BG_PALETTE_BUFFER(0),
        /* Size  */ 0x140
    },
    /* OBJ Palette */ {
        /* Src.  */ prologue_calligraphy_pal,
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
    BS_RIQ_FADE_SCREEN_IN(0x08),
    BS_RIQ_LOAD_GAME_ENGINE(&D_089eb580, 0),
    BS_RUN1(stop_all_soundplayers, 0),
    BS_REST(0x18),
    BS_PLAY_SOUND(&s_jingle_iai_seqData),
    BS_REST(0x18),
    BS_REST(0x18),
    BS_REST(0x18),
    BS_RUN1(func_080461f4, 0),
    BS_REST(0x18),
    BS_REST(0x18),
    BS_REST(0x18),
    BS_REST(0x18),
    BS_RUN1(func_08006d80, 0),
    BS_REST(0x18),
    BS_RIQ_FADE_SCREEN_IN(0x10),
    BS_RETURN
};
