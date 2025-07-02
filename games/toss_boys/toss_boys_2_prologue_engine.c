#include "prologues/toss_boys_2.h"


  //  //  //  GAME ENGINE DATA  //  //  //


// [D_089ed9ec] Buffered Textures List
struct CompressedData *toss_boys_2_prologue_buffered_textures[] = {
    END_OF_BUFFERED_TEXTURES_LIST
};

// [D_089ed9f0] Graphics Table
struct GraphicsTable toss_boys_2_prologue_gfx_table[] = {
    /* BG Tileset */ {
        /* Src.  */ &toss_boys_2_prologue_bg_tiles,
        /* Dest. */ BG_TILESET_BASE(0),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Map */ {
        /* Src.  */ &toss_boys_2_prologue_bg_map,
        /* Dest. */ BG_MAP_BASE(0xE800),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* OBJ Tileset */ {
        /* Src.  */ &toss_boys_2_prologue_obj,
        /* Dest. */ OBJ_TILESET_BASE(0),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Palette */ {
        /* Src.  */ toss_boys_2_prologue_bg_pal,
        /* Dest. */ BG_PALETTE_BUFFER(0),
        /* Size  */ 0x140
    },
    /* OBJ Palette */ {
        /* Src.  */ toss_boys_2_prologue_obj_pal,
        /* Dest. */ OBJ_PALETTE_BUFFER(0),
        /* Size  */ 0x140
    },
    END_OF_GRAPHICS_TABLE
};

// [D_089eda38] Engine Events
EngineEvent toss_boys_2_prologue_engine_events[] = {
    /* 0x00 */ func_08047aa0
};

// [D_089eda3c] Prologue (Toss Boys 2) Game Engine
struct GameEngine toss_boys_2_prologue_engine = {
    /* Size in Memory */ sizeof(struct TossBoys2PrologueEngineData),
    /* Start Engine   */ toss_boys_2_prologue_engine_start,
    /* Update Engine  */ toss_boys_2_prologue_engine_update,
    /* Stop Engine    */ toss_boys_2_prologue_engine_stop,
    /* Cue Index      */ NULL,
    /* Common Events  */ NULL,
    /* Engine Events  */ toss_boys_2_prologue_engine_events,
    /* Input Event    */ NULL
};
