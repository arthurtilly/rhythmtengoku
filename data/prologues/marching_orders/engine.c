#include "prologues/marching_orders.h"


  /* PROLOGUE (MARCHING ORDERS) - ENGINE DATA */


extern const struct CompressedGraphics D_08bfbe68;
extern const struct CompressedGraphics D_08bfc1f8;
extern const struct CompressedGraphics D_08bfa204;
extern const Palette prologue_marching_bg_pal[];
extern const Palette prologue_marching_obj_pal[];


  //  //  //  GAME ENGINE DATA  //  //  //


// [D_089eb66c] Buffered Textures List
const struct CompressedGraphics *const prologue_marching_orders_buffered_textures[] = {
    END_OF_BUFFERED_TEXTURES_LIST
};

// [D_089eb670] Graphics Table
const struct GraphicsTable prologue_marching_orders_gfx_table[] = {
    /* BG Tileset */ {
        /* Src.  */ &D_08bfbe68,
        /* Dest. */ BG_TILESET_BASE(0),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Map */ {
        /* Src.  */ &D_08bfc1f8,
        /* Dest. */ BG_MAP_BASE(0xE800),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* OBJ Tileset */ {
        /* Src.  */ &D_08bfa204,
        /* Dest. */ OBJ_TILESET_BASE(0),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Palette */ {
        /* Src.  */ prologue_marching_bg_pal,
        /* Dest. */ BG_PALETTE_BUFFER(0),
        /* Size  */ 0x140
    },
    /* OBJ Palette */ {
        /* Src.  */ prologue_marching_obj_pal,
        /* Dest. */ OBJ_PALETTE_BUFFER(0),
        /* Size  */ 0x140
    },
    END_OF_GRAPHICS_TABLE
};

// [D_089eb6b8] Engine Events
const EngineEvent prologue_marching_orders_engine_events[] = {
    /* 0x00 */ (EngineEvent) func_08046300
};

// [D_089eb6bc] Prologue (Marching Orders) Game Engine
const struct GameEngine D_089eb6bc = {
    /* Size in Memory */ sizeof(struct PrologueMarchingOrdersInfo),
    /* Start Engine   */ func_080462a4,
    /* Update Engine  */ func_08046304,
    /* Stop Engine    */ func_08046308,
    /* Cue Index      */ NULL,
    /* Common Events  */ NULL,
    /* Engine Events  */ prologue_marching_orders_engine_events,
    /* Input Event    */ NULL
};
