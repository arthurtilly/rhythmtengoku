#include "prologues/space_dance.h"


  //  //  //  GAME ENGINE DATA  //  //  //


// [D_089ed400] Buffered Textures List
struct CompressedGraphics *space_dance_prologue_buffered_textures[] = {
    END_OF_BUFFERED_TEXTURES_LIST
};

// [D_089ed404] Graphics Table
struct GraphicsTable space_dance_prologue_gfx_table[] = {
    /* BG Tileset */ {
        /* Src.  */ &D_08c2575c,
        /* Dest. */ BG_TILESET_BASE(0),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Map */ {
        /* Src.  */ &D_08c25aa8,
        /* Dest. */ BG_MAP_BASE(0xE800),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* OBJ Tileset */ {
        /* Src.  */ &D_08c24f60,
        /* Dest. */ OBJ_TILESET_BASE(0),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Palette */ {
        /* Src.  */ space_dance_prologue_pal,
        /* Dest. */ BG_PALETTE_BUFFER(0),
        /* Size  */ 0x140
    },
    /* OBJ Palette */ {
        /* Src.  */ space_dance_prologue_pal,
        /* Dest. */ OBJ_PALETTE_BUFFER(0),
        /* Size  */ 0x140
    },
    END_OF_GRAPHICS_TABLE
};

// [D_089ed44c] Engine Events
EngineEvent space_dance_prologue_engine_events[] = {
    /* 0x00 */ (EngineEvent) func_08047624
};

// [D_089ed450] Prologue (Space Dance) Game Engine
struct GameEngine space_dance_prologue_engine = {
    /* Size in Memory */ sizeof(struct SpaceDancePrologueInfo),
    /* Start Engine   */ space_dance_prologue_engine_start,
    /* Update Engine  */ space_dance_prologue_engine_update,
    /* Stop Engine    */ space_dance_prologue_engine_stop,
    /* Cue Index      */ NULL,
    /* Common Events  */ NULL,
    /* Engine Events  */ space_dance_prologue_engine_events,
    /* Input Event    */ NULL
};
