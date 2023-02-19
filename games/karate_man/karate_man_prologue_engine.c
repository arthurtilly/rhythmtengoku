#include "prologues/karate_man.h"


  //  //  //  GAME ENGINE DATA  //  //  //


// [D_089ea650] Buffered Textures List
struct CompressedGraphics *karate_man_prologue_buffered_textures[] = {
    END_OF_BUFFERED_TEXTURES_LIST
};

// [D_089ea654] Graphics Table
struct GraphicsTable karate_man_prologue_gfx_table[] = {
    /* BG Tileset */ {
        /* Src.  */ &D_08bea934,
        /* Dest. */ BG_TILESET_BASE(0),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Map */ {
        /* Src.  */ &D_08beab8c,
        /* Dest. */ BG_MAP_BASE(0xE800),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* OBJ Tileset */ {
        /* Src.  */ &D_08be9f5c,
        /* Dest. */ OBJ_TILESET_BASE(0),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Palette */ {
        /* Src.  */ karate_man_prologue_bg_pal,
        /* Dest. */ BG_PALETTE_BUFFER(0),
        /* Size  */ 0x140
    },
    /* OBJ Palette */ {
        /* Src.  */ karate_man_prologue_obj_pal,
        /* Dest. */ OBJ_PALETTE_BUFFER(0),
        /* Size  */ 0x140
    },
    END_OF_GRAPHICS_TABLE
};

// [D_089ea69c] Engine Events
EngineEvent karate_man_prologue_engine_events[] = {
    /* 0x00 */ (EngineEvent) func_080455f8
};

// [D_089ea6a0] Prologue (Karate Man) Game Engine
struct GameEngine karate_man_prologue_engine = {
    /* Size in Memory */ sizeof(struct KarateManPrologueInfo),
    /* Start Engine   */ karate_man_prologue_engine_start,
    /* Update Engine  */ karate_man_prologue_engine_update,
    /* Stop Engine    */ karate_man_prologue_engine_stop,
    /* Cue Index      */ NULL,
    /* Common Events  */ NULL,
    /* Engine Events  */ karate_man_prologue_engine_events,
    /* Input Event    */ NULL
};
