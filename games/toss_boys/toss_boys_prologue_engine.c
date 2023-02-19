#include "prologues/toss_boys.h"


  //  //  //  GAME ENGINE DATA  //  //  //


// [D_089ed820] Buffered Textures List
struct CompressedGraphics *toss_boys_prologue_buffered_textures[] = {
    END_OF_BUFFERED_TEXTURES_LIST
};

// [D_089ed824] Graphics Table
struct GraphicsTable toss_boys_prologue_gfx_table[] = {
    /* BG Tileset */ {
        /* Src.  */ &D_08c2d448,
        /* Dest. */ BG_TILESET_BASE(0),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Map */ {
        /* Src.  */ &D_08c2d960,
        /* Dest. */ BG_MAP_BASE(0xE800),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* OBJ Tileset */ {
        /* Src.  */ &D_08c2a208,
        /* Dest. */ OBJ_TILESET_BASE(0),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Palette */ {
        /* Src.  */ toss_boys_prologue_bg_pal,
        /* Dest. */ BG_PALETTE_BUFFER(0),
        /* Size  */ 0x140
    },
    /* OBJ Palette */ {
        /* Src.  */ toss_boys_prologue_obj_pal,
        /* Dest. */ OBJ_PALETTE_BUFFER(0),
        /* Size  */ 0x140
    },
    END_OF_GRAPHICS_TABLE
};

// [D_089ed86c] Engine Events
EngineEvent toss_boys_prologue_engine_events[] = {
    /* 0x00 */ (EngineEvent) func_080479a4
};

// [D_089ed870] Prologue (Toss Boys) Game Engine
struct GameEngine toss_boys_prologue_engine = {
    /* Size in Memory */ sizeof(struct TossBoysPrologueInfo),
    /* Start Engine   */ toss_boys_prologue_engine_start,
    /* Update Engine  */ toss_boys_prologue_engine_update,
    /* Stop Engine    */ toss_boys_prologue_engine_stop,
    /* Cue Index      */ NULL,
    /* Common Events  */ NULL,
    /* Engine Events  */ toss_boys_prologue_engine_events,
    /* Input Event    */ NULL
};
