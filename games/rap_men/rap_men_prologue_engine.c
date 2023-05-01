#include "prologues/rap_men.h"


  //  //  //  GAME ENGINE DATA  //  //  //


// [D_089ecd44] Buffered Textures List
struct CompressedGraphics *rap_men_prologue_buffered_textures[] = {
    END_OF_BUFFERED_TEXTURES_LIST
};

// [D_089ecd48] Graphics Table
struct GraphicsTable rap_men_prologue_gfx_table[] = {
    /* BG Tileset */ {
        /* Src.  */ &D_08c2052c,
        /* Dest. */ BG_TILESET_BASE(0),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Map */ {
        /* Src.  */ &D_08c207cc,
        /* Dest. */ BG_MAP_BASE(0xE800),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* OBJ Tileset */ {
        /* Src.  */ &D_08c1f4b4,
        /* Dest. */ OBJ_TILESET_BASE(0),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Palette */ {
        /* Src.  */ rap_men_prologue_pal,
        /* Dest. */ BG_PALETTE_BUFFER(0),
        /* Size  */ 0x140
    },
    /* OBJ Palette */ {
        /* Src.  */ rap_men_prologue_pal,
        /* Dest. */ OBJ_PALETTE_BUFFER(0),
        /* Size  */ 0x140
    },
    END_OF_GRAPHICS_TABLE
};

// [D_089ecd90] Engine Events
EngineEvent rap_men_prologue_engine_events[] = {
    /* 0x00 */ func_08047028
};

// [D_089ecd94] Prologue (Rap Men) Game Engine
struct GameEngine rap_men_prologue_engine = {
    /* Size in Memory */ sizeof(struct RapMenPrologueEngineData),
    /* Start Engine   */ rap_men_prologue_engine_start,
    /* Update Engine  */ rap_men_prologue_engine_update,
    /* Stop Engine    */ rap_men_prologue_engine_stop,
    /* Cue Index      */ NULL,
    /* Common Events  */ NULL,
    /* Engine Events  */ rap_men_prologue_engine_events,
    /* Input Event    */ NULL
};
