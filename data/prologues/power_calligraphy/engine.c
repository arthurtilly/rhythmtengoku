#include "prologues/power_calligraphy.h"


  /* PROLOGUE (POWER CALLIGRAPHY) - ENGINE DATA */


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
    /* Start Engine   */ func_08046168,
    /* Update Engine  */ func_080461c8,
    /* Stop Engine    */ func_080461cc,
    /* Cue Index      */ NULL,
    /* Common Events  */ NULL,
    /* Engine Events  */ prologue_power_calligraphy_engine_events,
    /* Input Event    */ NULL
};
