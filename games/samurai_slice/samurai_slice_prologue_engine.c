#include "prologues/samurai_slice.h"


  //  //  //  GAME ENGINE DATA  //  //  //


// [D_089eb37c] Buffered Textures List
struct CompressedGraphics *samurai_slice_prologue_buffered_textures[] = {
    END_OF_BUFFERED_TEXTURES_LIST
};

// [D_089eb380] Graphics Table
struct GraphicsTable samurai_slice_prologue_gfx_table[] = {
    /* BG Tileset */ {
        /* Src.  */ &D_08bf7aa4,
        /* Dest. */ BG_TILESET_BASE(0),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Map */ {
        /* Src.  */ &D_08bf7f04,
        /* Dest. */ BG_MAP_BASE(0xE800),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Map */ {
        /* Src.  */ &D_08bf7d5c,
        /* Dest. */ BG_MAP_BASE(0xF000),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* OBJ Tileset */ {
        /* Src.  */ &D_08bf6678,
        /* Dest. */ OBJ_TILESET_BASE(0),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Palette */ {
        /* Src.  */ samurai_slice_prologue_pal,
        /* Dest. */ BG_PALETTE_BUFFER(0),
        /* Size  */ 0x140
    },
    /* OBJ Palette */ {
        /* Src.  */ samurai_slice_prologue_pal,
        /* Dest. */ OBJ_PALETTE_BUFFER(0),
        /* Size  */ 0x140
    },
    END_OF_GRAPHICS_TABLE
};

// [D_089eb3d4] Engine Events
EngineEvent samurai_slice_prologue_engine_events[] = {
    /* 0x00 */ (EngineEvent) func_080460c8
};

// [D_089eb3d8] Prologue (Samurai Slice) Game Engine
struct GameEngine samurai_slice_prologue_engine = {
    /* Size in Memory */ sizeof(struct SamuraiSlicePrologueInfo),
    /* Start Engine   */ samurai_slice_prologue_engine_start,
    /* Update Engine  */ samurai_slice_prologue_engine_update,
    /* Stop Engine    */ samurai_slice_prologue_engine_stop,
    /* Cue Index      */ NULL,
    /* Common Events  */ NULL,
    /* Engine Events  */ samurai_slice_prologue_engine_events,
    /* Input Event    */ NULL
};
