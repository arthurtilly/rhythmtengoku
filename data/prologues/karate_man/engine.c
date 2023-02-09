#include "prologues/karate_man.h"


  /* PROLOGUE (KARATE MAN) - ENGINE DATA */


extern const struct CompressedGraphics D_08bea934;
extern const struct CompressedGraphics D_08beab8c;
extern const struct CompressedGraphics D_08be9f5c;
extern const Palette prologue_karate_man_bg_pal[];
extern const Palette prologue_karate_man_obj_pal[];


  //  //  //  GAME ENGINE DATA  //  //  //


// [D_089ea650] Buffered Textures List
const struct CompressedGraphics *const prologue_karate_buffered_textures[] = {
    END_OF_BUFFERED_TEXTURES_LIST
};

// [D_089ea654] Graphics Table
const struct GraphicsTable prologue_karate_gfx_table[] = {
    /* BG Tileset */ {
        /* Src.  */ &D_08bea934,
        /* Dest. */ BG_TILESET_BASE(0),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Map */ {
        /* Src.  */ &D_08beab8c,
        /* Dest. */ BG_MAP_BASE(0xE800),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* OBJ Tileset */ {
        /* Src.  */ &D_08be9f5c,
        /* Dest. */ OBJ_TILESET_BASE(0),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Palette */ {
        /* Src.  */ prologue_karate_man_bg_pal,
        /* Dest. */ BG_PALETTE_BUFFER(0),
        /* Size  */ 0x140
    },
    /* OBJ Palette */ {
        /* Src.  */ prologue_karate_man_obj_pal,
        /* Dest. */ OBJ_PALETTE_BUFFER(0),
        /* Size  */ 0x140
    },
    END_OF_GRAPHICS_TABLE
};

// [D_089ea69c] Engine Events
const EngineEvent prologue_karate_engine_events[] = {
    /* 0x00 */ (EngineEvent) func_080455f8
};

// [D_089ea6a0] Prologue (Karate Man) Game Engine
const struct GameEngine D_089ea6a0 = {
    /* Size in Memory */ sizeof(struct PrologueKarateManInfo),
    /* Start Engine   */ func_0804557c,
    /* Update Engine  */ func_080455fc,
    /* Stop Engine    */ func_08045600,
    /* Cue Index      */ NULL,
    /* Common Events  */ NULL,
    /* Engine Events  */ prologue_karate_engine_events,
    /* Input Event    */ NULL
};
