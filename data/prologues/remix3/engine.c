#include "prologues/remix3.h"


  /* PROLOGUE (REMIX 3) - ENGINE DATA */


extern const struct CompressedGraphics D_08c0ab00;
extern const struct CompressedGraphics D_08c0af50;
extern const struct CompressedGraphics D_08c092e0;
extern const Palette prologue_remix3_pal[];


  //  //  //  GAME ENGINE DATA  //  //  //


// [D_089ec044] Buffered Textures List
const struct CompressedGraphics *const prologue_remix3_buffered_textures[] = {
    END_OF_BUFFERED_TEXTURES_LIST
};

// [D_089ec048] Graphics Table
const struct GraphicsTable prologue_remix3_gfx_table[] = {
    /* BG Tileset */ {
        /* Src.  */ &D_08c0ab00,
        /* Dest. */ BG_TILESET_BASE(0),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Map */ {
        /* Src.  */ &D_08c0af50,
        /* Dest. */ BG_MAP_BASE(0xE800),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* OBJ Tileset */ {
        /* Src.  */ &D_08c092e0,
        /* Dest. */ OBJ_TILESET_BASE(0),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Palette */ {
        /* Src.  */ prologue_remix3_pal,
        /* Dest. */ BG_PALETTE_BUFFER(0),
        /* Size  */ 0x140
    },
    /* OBJ Palette */ {
        /* Src.  */ prologue_remix3_pal,
        /* Dest. */ OBJ_PALETTE_BUFFER(0),
        /* Size  */ 0x140
    },
    END_OF_GRAPHICS_TABLE
};

// [D_089ec090] Engine Events
const EngineEvent prologue_remix3_engine_events[] = {
    /* 0x00 */ (EngineEvent) func_080468ec
};

// [D_089ec094] Prologue (Remix 3) Game Engine
const struct GameEngine D_089ec094 = {
    /* Size in Memory */ sizeof(struct PrologueRemix3Info),
    /* Start Engine   */ func_08046890,
    /* Update Engine  */ func_080468f0,
    /* Stop Engine    */ func_080468f4,
    /* Cue Index      */ NULL,
    /* Common Events  */ NULL,
    /* Engine Events  */ prologue_remix3_engine_events,
    /* Input Event    */ NULL
};
