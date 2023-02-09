#include "prologues/marching_orders_2.h"


  /* PROLOGUE (MARCHING ORDERS 2) - ENGINE DATA */


extern const struct CompressedGraphics D_08bff238;
extern const struct CompressedGraphics D_08bff704;
extern const struct CompressedGraphics D_08bfc8f4;
extern const Palette prologue_marching2_bg_pal[];
extern const Palette prologue_marching_2_obj_pal[];


  //  //  //  GAME ENGINE DATA  //  //  //


// [D_089eb814] Buffered Textures List
const struct CompressedGraphics *const prologue_marching_orders_2_buffered_textures[] = {
    END_OF_BUFFERED_TEXTURES_LIST
};

// [D_089eb818] Graphics Table
const struct GraphicsTable prologue_marching_orders_2_gfx_table[] = {
    /* BG Tileset */ {
        /* Src.  */ &D_08bff238,
        /* Dest. */ BG_TILESET_BASE(0),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Map */ {
        /* Src.  */ &D_08bff704,
        /* Dest. */ BG_MAP_BASE(0xE800),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* OBJ Tileset */ {
        /* Src.  */ &D_08bfc8f4,
        /* Dest. */ OBJ_TILESET_BASE(0),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Palette */ {
        /* Src.  */ prologue_marching2_bg_pal,
        /* Dest. */ BG_PALETTE_BUFFER(0),
        /* Size  */ 0x140
    },
    /* OBJ Palette */ {
        /* Src.  */ prologue_marching_2_obj_pal,
        /* Dest. */ OBJ_PALETTE_BUFFER(0),
        /* Size  */ 0x140
    },
    END_OF_GRAPHICS_TABLE
};

// [D_089eb860] Engine Events
const EngineEvent prologue_marching_orders_2_engine_events[] = {
    /* 0x00 */ (EngineEvent) func_080463fc
};

// [D_089eb864] Prologue (Marching Orders 2) Game Engine
const struct GameEngine D_089eb864 = {
    /* Size in Memory */ sizeof(struct PrologueMarchingOrders2Info),
    /* Start Engine   */ func_080463a0,
    /* Update Engine  */ func_08046400,
    /* Stop Engine    */ func_08046404,
    /* Cue Index      */ NULL,
    /* Common Events  */ NULL,
    /* Engine Events  */ prologue_marching_orders_2_engine_events,
    /* Input Event    */ NULL
};
