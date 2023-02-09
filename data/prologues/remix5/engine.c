#include "prologues/remix5.h"


  /* PROLOGUE (REMIX 5) - ENGINE DATA */


extern const struct CompressedGraphics D_08c127e4;
extern const struct CompressedGraphics D_08c12cfc;
extern const struct CompressedGraphics D_08c0e864;
extern const Palette prologue_remix5_pal[];


  //  //  //  GAME ENGINE DATA  //  //  //


// [D_089ec3e8] Buffered Textures List
const struct CompressedGraphics *const prologue_remix5_buffered_textures[] = {
    END_OF_BUFFERED_TEXTURES_LIST
};

// [D_089ec3ec] Graphics Table
const struct GraphicsTable prologue_remix5_gfx_table[] = {
    /* BG Tileset */ {
        /* Src.  */ &D_08c127e4,
        /* Dest. */ BG_TILESET_BASE(0),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Map */ {
        /* Src.  */ &D_08c12cfc,
        /* Dest. */ BG_MAP_BASE(0xE800),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* OBJ Tileset */ {
        /* Src.  */ &D_08c0e864,
        /* Dest. */ OBJ_TILESET_BASE(0),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Palette */ {
        /* Src.  */ prologue_remix5_pal,
        /* Dest. */ BG_PALETTE_BUFFER(0),
        /* Size  */ 0x140
    },
    /* OBJ Palette */ {
        /* Src.  */ prologue_remix5_pal,
        /* Dest. */ OBJ_PALETTE_BUFFER(0),
        /* Size  */ 0x140
    },
    END_OF_GRAPHICS_TABLE
};

// [D_089ec434] Engine Events
const EngineEvent prologue_remix5_engine_events[] = {
    /* 0x00 */ (EngineEvent) func_08046ae4
};

// [D_089ec438] Prologue (Remix 5) Game Engine
const struct GameEngine D_089ec438 = {
    /* Size in Memory */ sizeof(struct PrologueRemix5Info),
    /* Start Engine   */ func_08046a88,
    /* Update Engine  */ func_08046ae8,
    /* Stop Engine    */ func_08046aec,
    /* Cue Index      */ NULL,
    /* Common Events  */ NULL,
    /* Engine Events  */ prologue_remix5_engine_events,
    /* Input Event    */ NULL
};
