#include "prologues/remix8.h"


  /* PROLOGUE (REMIX 8) - ENGINE DATA */


extern const struct CompressedGraphics D_08c1e7d0;
extern const struct CompressedGraphics D_08c1ece8;
extern const struct CompressedGraphics D_08c1a47c;
extern const Palette prologue_remix8_pal[];


  //  //  //  GAME ENGINE DATA  //  //  //


// [D_089ec988] Buffered Textures List
const struct CompressedGraphics *const prologue_remix8_buffered_textures[] = {
    END_OF_BUFFERED_TEXTURES_LIST
};

// [D_089ec98c] Graphics Table
const struct GraphicsTable prologue_remix8_gfx_table[] = {
    /* BG Tileset */ {
        /* Src.  */ &D_08c1e7d0,
        /* Dest. */ BG_TILESET_BASE(0),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Map */ {
        /* Src.  */ &D_08c1ece8,
        /* Dest. */ BG_MAP_BASE(0xE800),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* OBJ Tileset */ {
        /* Src.  */ &D_08c1a47c,
        /* Dest. */ OBJ_TILESET_BASE(0),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Palette */ {
        /* Src.  */ prologue_remix8_pal,
        /* Dest. */ BG_PALETTE_BUFFER(0),
        /* Size  */ 0x140
    },
    /* OBJ Palette */ {
        /* Src.  */ prologue_remix8_pal,
        /* Dest. */ OBJ_PALETTE_BUFFER(0),
        /* Size  */ 0x140
    },
    END_OF_GRAPHICS_TABLE
};

// [D_089ec9d4] Engine Events
const EngineEvent prologue_remix8_engine_events[] = {
    /* 0x00 */ (EngineEvent) func_08046dd8
};

// [D_089ec9d8] Prologue (Remix 8) Game Engine
const struct GameEngine D_089ec9d8 = {
    /* Size in Memory */ sizeof(struct PrologueRemix8Info),
    /* Start Engine   */ func_08046d7c,
    /* Update Engine  */ func_08046ddc,
    /* Stop Engine    */ func_08046de0,
    /* Cue Index      */ NULL,
    /* Common Events  */ NULL,
    /* Engine Events  */ prologue_remix8_engine_events,
    /* Input Event    */ NULL
};
