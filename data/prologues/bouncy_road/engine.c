#include "prologues/bouncy_road.h"


  /* PROLOGUE (BOUNCY ROAD) - ENGINE DATA */


extern const struct CompressedGraphics D_08bee468;
extern const struct CompressedGraphics D_08bee52c;
extern const struct CompressedGraphics D_08bee430;
extern const Palette prologue_bouncy_road_pal[];


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
        /* Src.  */ prologue_bouncy_road_pal,
        /* Dest. */ BG_PALETTE_BUFFER(0),
        /* Size  */ 0x140
    },
    /* OBJ Palette */ {
        /* Src.  */ prologue_bouncy_road_pal,
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
    /* Start Engine   */ func_08045b00,
    /* Update Engine  */ func_08045b8c,
    /* Stop Engine    */ func_08045b90,
    /* Cue Index      */ NULL,
    /* Common Events  */ NULL,
    /* Engine Events  */ prologue_bouncy_road_engine_events,
    /* Input Event    */ NULL
};
