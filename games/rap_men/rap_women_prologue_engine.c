#include "prologues/rap_women.h"


  //  //  //  GAME ENGINE DATA  //  //  //


// [D_089ece80] Buffered Textures List
struct CompressedGraphics *rap_women_prologue_buffered_textures[] = {
    END_OF_BUFFERED_TEXTURES_LIST
};

// [D_089ece84] Graphics Table
struct GraphicsTable rap_women_prologue_gfx_table[] = {
    /* BG Tileset */ {
        /* Src.  */ &D_08c20f8c,
        /* Dest. */ BG_TILESET_BASE(0),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Map */ {
        /* Src.  */ &D_08c21254,
        /* Dest. */ BG_MAP_BASE(0xE800),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* OBJ Tileset */ {
        /* Src.  */ &D_08c209cc,
        /* Dest. */ OBJ_TILESET_BASE(0),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Palette */ {
        /* Src.  */ rap_women_prologue_pal,
        /* Dest. */ BG_PALETTE_BUFFER(0),
        /* Size  */ 0x140
    },
    /* OBJ Palette */ {
        /* Src.  */ rap_women_prologue_pal,
        /* Dest. */ OBJ_PALETTE_BUFFER(0),
        /* Size  */ 0x140
    },
    END_OF_GRAPHICS_TABLE
};

// [D_089ececc] Engine Events
EngineEvent rap_women_prologue_engine_events[] = {
    /* 0x00 */ (EngineEvent) func_0804712c
};

// [D_089eced0] Prologue (Rap Women) Game Engine
struct GameEngine rap_women_prologue_engine = {
    /* Size in Memory */ sizeof(struct RapWomenPrologueInfo),
    /* Start Engine   */ rap_women_prologue_engine_start,
    /* Update Engine  */ rap_women_prologue_engine_update,
    /* Stop Engine    */ rap_women_prologue_engine_stop,
    /* Cue Index      */ NULL,
    /* Common Events  */ NULL,
    /* Engine Events  */ rap_women_prologue_engine_events,
    /* Input Event    */ NULL
};
