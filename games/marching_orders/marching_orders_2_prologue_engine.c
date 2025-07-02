#include "prologues/marching_orders_2.h"


  //  //  //  GAME ENGINE DATA  //  //  //


// [D_089eb814] Buffered Textures List
struct CompressedData *marching_orders_2_prologue_buffered_textures[] = {
    END_OF_BUFFERED_TEXTURES_LIST
};

// [D_089eb818] Graphics Table
struct GraphicsTable marching_orders_2_prologue_gfx_table[] = {
    /* BG Tileset */ {
        /* Src.  */ &marching_orders_2_prologue_bg_tiles,
        /* Dest. */ BG_TILESET_BASE(0),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Map */ {
        /* Src.  */ &marching_orders_2_prologue_bg_map,
        /* Dest. */ BG_MAP_BASE(0xE800),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* OBJ Tileset */ {
        /* Src.  */ &marching_orders_2_prologue_obj,
        /* Dest. */ OBJ_TILESET_BASE(0),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Palette */ {
        /* Src.  */ marching_orders_2_prologue_bg_pal,
        /* Dest. */ BG_PALETTE_BUFFER(0),
        /* Size  */ 0x140
    },
    /* OBJ Palette */ {
        /* Src.  */ marching_orders_2_prologue_obj_pal,
        /* Dest. */ OBJ_PALETTE_BUFFER(0),
        /* Size  */ 0x140
    },
    END_OF_GRAPHICS_TABLE
};

// [D_089eb860] Engine Events
EngineEvent marching_orders_2_prologue_engine_events[] = {
    /* 0x00 */ func_080463fc
};

// [D_089eb864] Prologue (Marching Orders 2) Game Engine
struct GameEngine marching_orders_2_prologue_engine = {
    /* Size in Memory */ sizeof(struct MarchingOrders2PrologueEngineData),
    /* Start Engine   */ marching_orders_2_prologue_engine_start,
    /* Update Engine  */ marching_orders_2_prologue_engine_update,
    /* Stop Engine    */ marching_orders_2_prologue_engine_stop,
    /* Cue Index      */ NULL,
    /* Common Events  */ NULL,
    /* Engine Events  */ marching_orders_2_prologue_engine_events,
    /* Input Event    */ NULL
};
