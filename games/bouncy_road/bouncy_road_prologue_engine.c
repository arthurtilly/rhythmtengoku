#include "prologues/bouncy_road.h"


  //  //  //  GAME ENGINE DATA  //  //  //


// [D_089eac18] Buffered Textures List
struct CompressedGraphics *bouncy_road_prologue_buffered_textures[] = {
    END_OF_BUFFERED_TEXTURES_LIST
};

// [D_089eac1c] Graphics Table
struct GraphicsTable bouncy_road_prologue_gfx_table[] = {
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
        /* Src.  */ bouncy_road_prologue_pal,
        /* Dest. */ BG_PALETTE_BUFFER(0),
        /* Size  */ 0x140
    },
    /* OBJ Palette */ {
        /* Src.  */ bouncy_road_prologue_pal,
        /* Dest. */ OBJ_PALETTE_BUFFER(0),
        /* Size  */ 0x140
    },
    END_OF_GRAPHICS_TABLE
};

// [D_089eac64] Engine Events
EngineEvent bouncy_road_prologue_engine_events[] = {
    /* 0x00 */ (EngineEvent) func_08045b88
};

// [D_089eac68] Prologue (Bouncy Road) Game Engine
struct GameEngine bouncy_road_prologue_engine = {
    /* Size in Memory */ sizeof(struct BouncyRoadPrologueInfo),
    /* Start Engine   */ bouncy_road_prologue_engine_start,
    /* Update Engine  */ bouncy_road_prologue_engine_update,
    /* Stop Engine    */ bouncy_road_prologue_engine_stop,
    /* Cue Index      */ NULL,
    /* Common Events  */ NULL,
    /* Engine Events  */ bouncy_road_prologue_engine_events,
    /* Input Event    */ NULL
};
