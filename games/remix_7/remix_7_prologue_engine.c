#include "prologues/remix_7.h"


  //  //  //  GAME ENGINE DATA  //  //  //


// [D_089ec7b0] Buffered Textures List
struct CompressedGraphics *remix_7_prologue_buffered_textures[] = {
    END_OF_BUFFERED_TEXTURES_LIST
};

// [D_089ec7b4] Graphics Table
struct GraphicsTable remix_7_prologue_gfx_table[] = {
    /* BG Tileset */ {
        /* Src.  */ &D_08c1983c,
        /* Dest. */ BG_TILESET_BASE(0),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Map */ {
        /* Src.  */ &D_08c19d54,
        /* Dest. */ BG_MAP_BASE(0xE800),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* OBJ Tileset */ {
        /* Src.  */ &D_08c173c0,
        /* Dest. */ OBJ_TILESET_BASE(0),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Palette */ {
        /* Src.  */ remix_7_prologue_pal,
        /* Dest. */ BG_PALETTE_BUFFER(0),
        /* Size  */ 0x140
    },
    /* OBJ Palette */ {
        /* Src.  */ remix_7_prologue_pal,
        /* Dest. */ OBJ_PALETTE_BUFFER(0),
        /* Size  */ 0x140
    },
    END_OF_GRAPHICS_TABLE
};

// [D_089ec7fc] Engine Events
EngineEvent remix_7_prologue_engine_events[] = {
    /* 0x00 */ (EngineEvent) func_08046cdc
};

// [D_089ec800] Prologue (Remix 7) Game Engine
struct GameEngine remix_7_prologue_engine = {
    /* Size in Memory */ sizeof(struct Remix7PrologueInfo),
    /* Start Engine   */ remix_7_prologue_engine_start,
    /* Update Engine  */ remix_7_prologue_engine_update,
    /* Stop Engine    */ remix_7_prologue_engine_stop,
    /* Cue Index      */ NULL,
    /* Common Events  */ NULL,
    /* Engine Events  */ remix_7_prologue_engine_events,
    /* Input Event    */ NULL
};
