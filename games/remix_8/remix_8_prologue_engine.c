#include "prologues/remix_8.h"


  //  //  //  GAME ENGINE DATA  //  //  //


// [D_089ec988] Buffered Textures List
struct CompressedGraphics *remix_8_prologue_buffered_textures[] = {
    END_OF_BUFFERED_TEXTURES_LIST
};

// [D_089ec98c] Graphics Table
struct GraphicsTable remix_8_prologue_gfx_table[] = {
    /* BG Tileset */ {
        /* Src.  */ &D_08c1e7d0,
        /* Dest. */ BG_TILESET_BASE(0),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Map */ {
        /* Src.  */ &D_08c1ece8,
        /* Dest. */ BG_MAP_BASE(0xE800),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* OBJ Tileset */ {
        /* Src.  */ &D_08c1a47c,
        /* Dest. */ OBJ_TILESET_BASE(0),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Palette */ {
        /* Src.  */ remix_8_prologue_pal,
        /* Dest. */ BG_PALETTE_BUFFER(0),
        /* Size  */ 0x140
    },
    /* OBJ Palette */ {
        /* Src.  */ remix_8_prologue_pal,
        /* Dest. */ OBJ_PALETTE_BUFFER(0),
        /* Size  */ 0x140
    },
    END_OF_GRAPHICS_TABLE
};

// [D_089ec9d4] Engine Events
EngineEvent remix_8_prologue_engine_events[] = {
    /* 0x00 */ func_08046dd8
};

// [D_089ec9d8] Prologue (Remix 8) Game Engine
struct GameEngine remix_8_prologue_engine = {
    /* Size in Memory */ sizeof(struct Remix8PrologueEngineData),
    /* Start Engine   */ remix_8_prologue_engine_start,
    /* Update Engine  */ remix_8_prologue_engine_update,
    /* Stop Engine    */ remix_8_prologue_engine_stop,
    /* Cue Index      */ NULL,
    /* Common Events  */ NULL,
    /* Engine Events  */ remix_8_prologue_engine_events,
    /* Input Event    */ NULL
};
