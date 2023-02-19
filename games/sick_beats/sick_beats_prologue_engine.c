#include "prologues/sick_beats.h"


  //  //  //  GAME ENGINE DATA  //  //  //


// [D_089edcf4] Buffered Textures List
struct CompressedGraphics *sick_beats_prologue_buffered_textures[] = {
    END_OF_BUFFERED_TEXTURES_LIST
};

// [D_089edcf8] Graphics Table
struct GraphicsTable sick_beats_prologue_gfx_table[] = {
    /* BG Tileset */ {
        /* Src.  */ &D_08c33214,
        /* Dest. */ BG_TILESET_BASE(0),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Map */ {
        /* Src.  */ &D_08c3355c,
        /* Dest. */ BG_MAP_BASE(0xE800),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* OBJ Tileset */ {
        /* Src.  */ &D_08c31e6c,
        /* Dest. */ OBJ_TILESET_BASE(0),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Palette */ {
        /* Src.  */ sick_beats_prologue_pal,
        /* Dest. */ BG_PALETTE_BUFFER(0),
        /* Size  */ 0x140
    },
    /* OBJ Palette */ {
        /* Src.  */ sick_beats_prologue_pal,
        /* Dest. */ OBJ_PALETTE_BUFFER(0),
        /* Size  */ 0x140
    },
    END_OF_GRAPHICS_TABLE
};

// [D_089edd40] Engine Events
EngineEvent sick_beats_prologue_engine_events[] = {
    /* 0x00 */ (EngineEvent) func_08047d00
};

// [D_089edd44] Prologue (Sick Beats) Game Engine
struct GameEngine sick_beats_prologue_engine = {
    /* Size in Memory */ sizeof(struct SickBeatsPrologueInfo),
    /* Start Engine   */ sick_beats_prologue_engine_start,
    /* Update Engine  */ sick_beats_prologue_engine_update,
    /* Stop Engine    */ sick_beats_prologue_engine_stop,
    /* Cue Index      */ NULL,
    /* Common Events  */ NULL,
    /* Engine Events  */ sick_beats_prologue_engine_events,
    /* Input Event    */ NULL
};
