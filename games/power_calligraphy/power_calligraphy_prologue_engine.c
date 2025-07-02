#include "prologues/power_calligraphy.h"


  //  //  //  GAME ENGINE DATA  //  //  //


// [D_089eb530] Buffered Textures List
struct CompressedData *power_calligraphy_prologue_buffered_textures[] = {
    END_OF_BUFFERED_TEXTURES_LIST
};

// [D_089eb534] Graphics Table
struct GraphicsTable power_calligraphy_prologue_gfx_table[] = {
    /* BG Tileset */ {
        /* Src.  */ &power_calligraphy_prologue_bg_tiles,
        /* Dest. */ BG_TILESET_BASE(0),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Map */ {
        /* Src.  */ &power_calligraphy_prologue_bg_map,
        /* Dest. */ BG_MAP_BASE(0xE800),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* OBJ Tileset */ {
        /* Src.  */ &power_calligraphy_prologue_obj,
        /* Dest. */ OBJ_TILESET_BASE(0),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Palette */ {
        /* Src.  */ power_calligraphy_prologue_pal,
        /* Dest. */ BG_PALETTE_BUFFER(0),
        /* Size  */ 0x140
    },
    /* OBJ Palette */ {
        /* Src.  */ power_calligraphy_prologue_pal,
        /* Dest. */ OBJ_PALETTE_BUFFER(0),
        /* Size  */ 0x140
    },
    END_OF_GRAPHICS_TABLE
};

// [D_089eb57c] Engine Events
EngineEvent power_calligraphy_prologue_engine_events[] = {
    /* 0x00 */ func_080461c4
};

// [D_089eb580] Prologue (Power Calligraphy) Game Engine
struct GameEngine power_calligraphy_prologue_engine = {
    /* Size in Memory */ sizeof(struct PowerCalligraphyPrologueEngineData),
    /* Start Engine   */ power_calligraphy_prologue_engine_start,
    /* Update Engine  */ power_calligraphy_prologue_engine_update,
    /* Stop Engine    */ power_calligraphy_prologue_engine_stop,
    /* Cue Index      */ NULL,
    /* Common Events  */ NULL,
    /* Engine Events  */ power_calligraphy_prologue_engine_events,
    /* Input Event    */ NULL
};
