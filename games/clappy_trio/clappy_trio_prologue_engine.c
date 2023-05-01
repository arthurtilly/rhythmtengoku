#include "prologues/clappy_trio.h"


  //  //  //  GAME ENGINE DATA  //  //  //


// [D_089eb014] Buffered Textures List
struct CompressedGraphics *clappy_trio_prologue_buffered_textures[] = {
    END_OF_BUFFERED_TEXTURES_LIST
};

// [D_089eb018] Graphics Table
struct GraphicsTable clappy_trio_prologue_gfx_table[] = {
    /* BG Tileset */ {
        /* Src.  */ &D_08bf2f64,
        /* Dest. */ BG_TILESET_BASE(0),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Map */ {
        /* Src.  */ &D_08bf33cc,
        /* Dest. */ BG_MAP_BASE(0xE800),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* OBJ Tileset */ {
        /* Src.  */ &D_08bf16b4,
        /* Dest. */ OBJ_TILESET_BASE(0),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Palette */ {
        /* Src.  */ clappy_trio_prologue_bg_pal,
        /* Dest. */ BG_PALETTE_BUFFER(0),
        /* Size  */ 0x140
    },
    /* OBJ Palette */ {
        /* Src.  */ clappy_trio_prologue_obj_pal,
        /* Dest. */ OBJ_PALETTE_BUFFER(0),
        /* Size  */ 0x140
    },
    END_OF_GRAPHICS_TABLE
};

// [D_089eb060] Engine Events
EngineEvent clappy_trio_prologue_engine_events[] = {
    /* 0x00 */ func_08045eb8
};

// [D_089eb064] Prologue (The Clappy Trio) Game Engine
struct GameEngine clappy_trio_prologue_engine = {
    /* Size in Memory */ sizeof(struct ClappyTrioPrologueEngineData),
    /* Start Engine   */ clappy_trio_prologue_engine_start,
    /* Update Engine  */ clappy_trio_prologue_engine_update,
    /* Stop Engine    */ clappy_trio_prologue_engine_stop,
    /* Cue Index      */ NULL,
    /* Common Events  */ NULL,
    /* Engine Events  */ clappy_trio_prologue_engine_events,
    /* Input Event    */ NULL
};
