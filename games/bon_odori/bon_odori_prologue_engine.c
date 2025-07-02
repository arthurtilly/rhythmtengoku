#include "prologues/bon_odori.h"


  //  //  //  GAME ENGINE DATA  //  //  //


// [D_089ea514] Buffered Textures List
struct CompressedData *bon_odori_prologue_buffered_textures[] = {
    END_OF_BUFFERED_TEXTURES_LIST
};

// [D_089ea518] Graphics Table
struct GraphicsTable bon_odori_prologue_gfx_table[] = {
    /* BG Tileset */ {
        /* Src.  */ &bon_odori_prologue_bg_tiles,
        /* Dest. */ BG_TILESET_BASE(0),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Map */ {
        /* Src.  */ &bon_odori_prologue_bg_map,
        /* Dest. */ BG_MAP_BASE(0xE800),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* OBJ Tileset */ {
        /* Src.  */ &bon_odori_prologue_obj,
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
EngineEvent bon_odori_prologue_engine_events[] = {
    /* 0x00 */ func_080454d4
};

// [D_089ea564] Prologue (Bon Dance) Game Engine
struct GameEngine bon_odori_prologue_engine = {
    /* Size in Memory */ sizeof(struct BonOdoriPrologueEngineData),
    /* Start Engine   */ bon_odori_prologue_engine_start,
    /* Update Engine  */ bon_odori_prologue_engine_update,
    /* Stop Engine    */ bon_odori_prologue_engine_stop,
    /* Cue Index      */ NULL,
    /* Common Events  */ NULL,
    /* Engine Events  */ bon_odori_prologue_engine_events,
    /* Input Event    */ NULL
};
