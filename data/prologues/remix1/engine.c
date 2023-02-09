#include "prologues/remix1.h"


  /* PROLOGUE (REMIX 1) - ENGINE DATA */


extern const struct CompressedGraphics D_08c06384;
extern const struct CompressedGraphics D_08c06888;
extern const struct CompressedGraphics D_08c04fec;
extern const Palette prologue_remix1_bg_pal[];
extern const Palette prologue_remix1_obj_pal[];


  //  //  //  GAME ENGINE DATA  //  //  //


// [D_089ebcac] Buffered Textures List
const struct CompressedGraphics *const prologue_remix1_buffered_textures[] = {
    END_OF_BUFFERED_TEXTURES_LIST
};

// [D_089ebcb0] Graphics Table
const struct GraphicsTable prologue_remix1_gfx_table[] = {
    /* BG Tileset */ {
        /* Src.  */ &D_08c06384,
        /* Dest. */ BG_TILESET_BASE(0),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Map */ {
        /* Src.  */ &D_08c06888,
        /* Dest. */ BG_MAP_BASE(0xE800),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* OBJ Tileset */ {
        /* Src.  */ &D_08c04fec,
        /* Dest. */ OBJ_TILESET_BASE(0),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Palette */ {
        /* Src.  */ prologue_remix1_bg_pal,
        /* Dest. */ BG_PALETTE_BUFFER(0),
        /* Size  */ 0x140
    },
    /* OBJ Palette */ {
        /* Src.  */ prologue_remix1_obj_pal,
        /* Dest. */ OBJ_PALETTE_BUFFER(0),
        /* Size  */ 0x140
    },
    END_OF_GRAPHICS_TABLE
};

// [D_089ebcf8] Engine Events
const EngineEvent prologue_remix1_engine_events[] = {
    /* 0x00 */ (EngineEvent) func_080466f4
};

// [D_089ebcfc] Prologue (Remix 1) Game Engine
const struct GameEngine D_089ebcfc = {
    /* Size in Memory */ sizeof(struct PrologueRemix1Info),
    /* Start Engine   */ func_08046698,
    /* Update Engine  */ func_080466f8,
    /* Stop Engine    */ func_080466fc,
    /* Cue Index      */ NULL,
    /* Common Events  */ NULL,
    /* Engine Events  */ prologue_remix1_engine_events,
    /* Input Event    */ NULL
};
