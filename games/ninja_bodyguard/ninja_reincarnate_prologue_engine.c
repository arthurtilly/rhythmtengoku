#include "prologues/ninja_reincarnate.h"


  //  //  //  GAME ENGINE DATA  //  //  //


// [D_089ed2c4] Buffered Textures List
struct CompressedData *ninja_reincarnate_prologue_buffered_textures[] = {
    END_OF_BUFFERED_TEXTURES_LIST
};

// [D_089ed2c8] Graphics Table
struct GraphicsTable ninja_reincarnate_prologue_gfx_table[] = {
    /* BG Tileset */ {
        /* Src.  */ &ninja_reincarnate_prologue_bg_tiles,
        /* Dest. */ BG_TILESET_BASE(0),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Map */ {
        /* Src.  */ &ninja_reincarnate_prologue_bg_map,
        /* Dest. */ BG_MAP_BASE(0xE800),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* OBJ Tileset */ {
        /* Src.  */ &ninja_reincarnate_prologue_obj,
        /* Dest. */ OBJ_TILESET_BASE(0),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Palette */ {
        /* Src.  */ ninja_reincarnate_prologue_pal,
        /* Dest. */ BG_PALETTE_BUFFER(0),
        /* Size  */ 0x140
    },
    /* OBJ Palette */ {
        /* Src.  */ ninja_reincarnate_prologue_pal,
        /* Dest. */ OBJ_PALETTE_BUFFER(0),
        /* Size  */ 0x140
    },
    END_OF_GRAPHICS_TABLE
};

// [D_089ed310] Engine Events
EngineEvent ninja_reincarnate_prologue_engine_events[] = {
    /* 0x00 */ func_080474a0
};

// [D_089ed314] Prologue (Ninja Reincarnate) Game Engine
struct GameEngine ninja_reincarnate_engine = {
    /* Size in Memory */ sizeof(struct NinjaReincarnatePrologueEngineData),
    /* Start Engine   */ ninja_reincarnate_prologue_engine_start,
    /* Update Engine  */ ninja_reincarnate_prologue_engine_update,
    /* Stop Engine    */ ninja_reincarnate_prologue_engine_stop,
    /* Cue Index      */ NULL,
    /* Common Events  */ NULL,
    /* Engine Events  */ ninja_reincarnate_prologue_engine_events,
    /* Input Event    */ NULL
};
