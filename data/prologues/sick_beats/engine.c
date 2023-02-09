#include "prologues/sick_beats.h"


  /* PROLOGUE (SICK BEATS) - ENGINE DATA */


extern const struct CompressedGraphics D_08c33214;
extern const struct CompressedGraphics D_08c3355c;
extern const struct CompressedGraphics D_08c31e6c;
extern const Palette prologue_sick_beats_pal[];


  //  //  //  GAME ENGINE DATA  //  //  //


// [D_089edcf4] Buffered Textures List
const struct CompressedGraphics *const prologue_sick_beats_buffered_textures[] = {
    END_OF_BUFFERED_TEXTURES_LIST
};

// [D_089edcf8] Graphics Table
const struct GraphicsTable prologue_sick_beats_gfx_table[] = {
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
        /* Src.  */ prologue_sick_beats_pal,
        /* Dest. */ BG_PALETTE_BUFFER(0),
        /* Size  */ 0x140
    },
    /* OBJ Palette */ {
        /* Src.  */ prologue_sick_beats_pal,
        /* Dest. */ OBJ_PALETTE_BUFFER(0),
        /* Size  */ 0x140
    },
    END_OF_GRAPHICS_TABLE
};

// [D_089edd40] Engine Events
const EngineEvent prologue_sick_beats_engine_events[] = {
    /* 0x00 */ (EngineEvent) func_08047d00
};

// [D_089edd44] Prologue (Sick Beats) Game Engine
const struct GameEngine D_089edd44 = {
    /* Size in Memory */ sizeof(struct PrologueSickBeatsInfo),
    /* Start Engine   */ func_08047c78,
    /* Update Engine  */ func_08047d04,
    /* Stop Engine    */ func_08047d08,
    /* Cue Index      */ NULL,
    /* Common Events  */ NULL,
    /* Engine Events  */ prologue_sick_beats_engine_events,
    /* Input Event    */ NULL
};
