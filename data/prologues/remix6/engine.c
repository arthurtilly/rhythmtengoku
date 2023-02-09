#include "prologues/remix6.h"


  /* PROLOGUE (REMIX 6) - ENGINE DATA */


extern const struct CompressedGraphics D_08c167f8;
extern const struct CompressedGraphics D_08c16d10;
extern const struct CompressedGraphics D_08c13400;
extern const Palette prologue_remix6_pal[];


  //  //  //  GAME ENGINE DATA  //  //  //


// [D_089ec5c0] Buffered Textures List
const struct CompressedGraphics *const prologue_remix6_buffered_textures[] = {
    END_OF_BUFFERED_TEXTURES_LIST
};

// [D_089ec5c4] Graphics Table
const struct GraphicsTable prologue_remix6_gfx_table[] = {
    /* BG Tileset */ {
        /* Src.  */ &D_08c167f8,
        /* Dest. */ BG_TILESET_BASE(0),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Map */ {
        /* Src.  */ &D_08c16d10,
        /* Dest. */ BG_MAP_BASE(0xE800),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* OBJ Tileset */ {
        /* Src.  */ &D_08c13400,
        /* Dest. */ OBJ_TILESET_BASE(0),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Palette */ {
        /* Src.  */ prologue_remix6_pal,
        /* Dest. */ BG_PALETTE_BUFFER(0),
        /* Size  */ 0x140
    },
    /* OBJ Palette */ {
        /* Src.  */ prologue_remix6_pal,
        /* Dest. */ OBJ_PALETTE_BUFFER(0),
        /* Size  */ 0x140
    },
    END_OF_GRAPHICS_TABLE
};

// [D_089ec60c] Engine Events
const EngineEvent prologue_remix6_engine_events[] = {
    /* 0x00 */ (EngineEvent) func_08046be0
};

// [D_089ec610] Prologue (Remix 6) Game Engine
const struct GameEngine D_089ec610 = {
    /* Size in Memory */ sizeof(struct PrologueRemix6Info),
    /* Start Engine   */ func_08046b84,
    /* Update Engine  */ func_08046be4,
    /* Stop Engine    */ func_08046be8,
    /* Cue Index      */ NULL,
    /* Common Events  */ NULL,
    /* Engine Events  */ prologue_remix6_engine_events,
    /* Input Event    */ NULL
};
