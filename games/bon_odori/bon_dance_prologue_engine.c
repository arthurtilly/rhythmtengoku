#include "prologues/bon_dance.h"


  //  //  //  GAME ENGINE DATA  //  //  //


// [D_089ea514] Buffered Textures List
struct CompressedGraphics *bon_dance_prologue_buffered_textures[] = {
    END_OF_BUFFERED_TEXTURES_LIST
};

// [D_089ea518] Graphics Table
struct GraphicsTable bon_dance_prologue_gfx_table[] = {
    /* BG Tileset */ {
        /* Src.  */ &D_08be854c,
        /* Dest. */ BG_TILESET_BASE(0),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Map */ {
        /* Src.  */ &D_08be8828,
        /* Dest. */ BG_MAP_BASE(0xE800),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* OBJ Tileset */ {
        /* Src.  */ &D_08be75b8,
        /* Dest. */ OBJ_TILESET_BASE(0),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Palette */ {
        /* Src.  */ bon_odori_prologue_bg_pal,
        /* Dest. */ BG_PALETTE_BUFFER(0),
        /* Size  */ 0x140
    },
    /* OBJ Palette */ {
        /* Src.  */ bon_odori_prologue_obj_pal,
        /* Dest. */ OBJ_PALETTE_BUFFER(0),
        /* Size  */ 0x140
    },
    END_OF_GRAPHICS_TABLE
};

// [D_089ea560] Engine Events
EngineEvent bon_dance_prologue_engine_events[] = {
    /* 0x00 */ (EngineEvent) func_080454d4
};

// [D_089ea564] Prologue (Bon Dance) Game Engine
struct GameEngine bon_dance_prologue_engine = {
    /* Size in Memory */ sizeof(struct BonDancePrologueInfo),
    /* Start Engine   */ bon_dance_prologue_engine_start,
    /* Update Engine  */ bon_dance_prologue_engine_update,
    /* Stop Engine    */ bon_dance_prologue_engine_stop,
    /* Cue Index      */ NULL,
    /* Common Events  */ NULL,
    /* Engine Events  */ bon_dance_prologue_engine_events,
    /* Input Event    */ NULL
};
