#include "prologues/remix_6.h"


  //  //  //  GAME ENGINE DATA  //  //  //


// [D_089ec5c0] Buffered Textures List
struct CompressedGraphics *remix_6_prologue_buffered_textures[] = {
    END_OF_BUFFERED_TEXTURES_LIST
};

// [D_089ec5c4] Graphics Table
struct GraphicsTable remix_6_prologue_gfx_table[] = {
    /* BG Tileset */ {
        /* Src.  */ &D_08c167f8,
        /* Dest. */ BG_TILESET_BASE(0),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Map */ {
        /* Src.  */ &D_08c16d10,
        /* Dest. */ BG_MAP_BASE(0xE800),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* OBJ Tileset */ {
        /* Src.  */ &D_08c13400,
        /* Dest. */ OBJ_TILESET_BASE(0),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Palette */ {
        /* Src.  */ remix_6_prologue_pal,
        /* Dest. */ BG_PALETTE_BUFFER(0),
        /* Size  */ 0x140
    },
    /* OBJ Palette */ {
        /* Src.  */ remix_6_prologue_pal,
        /* Dest. */ OBJ_PALETTE_BUFFER(0),
        /* Size  */ 0x140
    },
    END_OF_GRAPHICS_TABLE
};

// [D_089ec60c] Engine Events
EngineEvent remix_6_prologue_engine_events[] = {
    /* 0x00 */ (EngineEvent) func_08046be0
};

// [D_089ec610] Prologue (Remix 6) Game Engine
struct GameEngine remix_6_prologue_engine = {
    /* Size in Memory */ sizeof(struct Remix6PrologueInfo),
    /* Start Engine   */ remix_6_prologue_engine_start,
    /* Update Engine  */ remix_6_prologue_engine_update,
    /* Stop Engine    */ remix_6_prologue_engine_stop,
    /* Cue Index      */ NULL,
    /* Common Events  */ NULL,
    /* Engine Events  */ remix_6_prologue_engine_events,
    /* Input Event    */ NULL
};
