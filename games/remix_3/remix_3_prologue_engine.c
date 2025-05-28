#include "prologues/remix_3.h"


  //  //  //  GAME ENGINE DATA  //  //  //


// [D_089ec044] Buffered Textures List
struct CompressedData *remix_3_prologue_buffered_textures[] = {
    END_OF_BUFFERED_TEXTURES_LIST
};

// [D_089ec048] Graphics Table
struct GraphicsTable remix_3_prologue_gfx_table[] = {
    /* BG Tileset */ {
        /* Src.  */ &remix_3_prologue_bg_tiles,
        /* Dest. */ BG_TILESET_BASE(0),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Map */ {
        /* Src.  */ &remix_3_prologue_bg_map,
        /* Dest. */ BG_MAP_BASE(0xE800),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* OBJ Tileset */ {
        /* Src.  */ &remix_3_prologue_obj,
        /* Dest. */ OBJ_TILESET_BASE(0),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Palette */ {
        /* Src.  */ remix_3_prologue_pal,
        /* Dest. */ BG_PALETTE_BUFFER(0),
        /* Size  */ 0x140
    },
    /* OBJ Palette */ {
        /* Src.  */ remix_3_prologue_pal,
        /* Dest. */ OBJ_PALETTE_BUFFER(0),
        /* Size  */ 0x140
    },
    END_OF_GRAPHICS_TABLE
};

// [D_089ec090] Engine Events
EngineEvent remix_3_prologue_engine_events[] = {
    /* 0x00 */ func_080468ec
};

// [D_089ec094] Prologue (Remix 3) Game Engine
struct GameEngine remix_3_prologue_engine = {
    /* Size in Memory */ sizeof(struct Remix3PrologueEngineData),
    /* Start Engine   */ remix_3_prologue_engine_start,
    /* Update Engine  */ remix_3_prologue_engine_update,
    /* Stop Engine    */ remix_3_prologue_engine_stop,
    /* Cue Index      */ NULL,
    /* Common Events  */ NULL,
    /* Engine Events  */ remix_3_prologue_engine_events,
    /* Input Event    */ NULL
};
