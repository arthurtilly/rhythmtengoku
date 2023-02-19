#include "prologues/remix_4.h"


  //  //  //  GAME ENGINE DATA  //  //  //


// [D_089ec210] Buffered Textures List
struct CompressedGraphics *remix_4_prologue_buffered_textures[] = {
    END_OF_BUFFERED_TEXTURES_LIST
};

// [D_089ec214] Graphics Table
struct GraphicsTable remix_4_prologue_gfx_table[] = {
    /* BG Tileset */ {
        /* Src.  */ &D_08c0dc88,
        /* Dest. */ BG_TILESET_BASE(0),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Map */ {
        /* Src.  */ &D_08c0e168,
        /* Dest. */ BG_MAP_BASE(0xE800),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* OBJ Tileset */ {
        /* Src.  */ &D_08c0b644,
        /* Dest. */ OBJ_TILESET_BASE(0),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Palette */ {
        /* Src.  */ remix_4_prologue_pal,
        /* Dest. */ BG_PALETTE_BUFFER(0),
        /* Size  */ 0x140
    },
    /* OBJ Palette */ {
        /* Src.  */ remix_4_prologue_pal,
        /* Dest. */ OBJ_PALETTE_BUFFER(0),
        /* Size  */ 0x140
    },
    END_OF_GRAPHICS_TABLE
};

// [D_089ec25c] Engine Events
EngineEvent remix_4_prologue_engine_events[] = {
    /* 0x00 */ (EngineEvent) func_080469e8
};

// [D_089ec260] Prologue (Remix 4) Game Engine
struct GameEngine remix_4_prologue_engine = {
    /* Size in Memory */ sizeof(struct Remix4PrologueInfo),
    /* Start Engine   */ remix_4_prologue_engine_start,
    /* Update Engine  */ remix_4_prologue_engine_update,
    /* Stop Engine    */ remix_4_prologue_engine_stop,
    /* Cue Index      */ NULL,
    /* Common Events  */ NULL,
    /* Engine Events  */ remix_4_prologue_engine_events,
    /* Input Event    */ NULL
};
