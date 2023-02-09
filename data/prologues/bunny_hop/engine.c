#include "prologues/bunny_hop.h"


  /* PROLOGUE (BUNNY HOP) - ENGINE DATA */


extern const struct CompressedGraphics D_08c1f24c;
extern const struct CompressedGraphics D_08c1f308;
extern const struct CompressedGraphics D_08c1f214;
extern const Palette prologue_bunny_hop_pal[];


  //  //  //  GAME ENGINE DATA  //  //  //


// [D_089ecb60] Buffered Textures List
const struct CompressedGraphics *const prologue_bunny_hop_buffered_textures[] = {
    END_OF_BUFFERED_TEXTURES_LIST
};

// [D_089ecb64] Graphics Table
const struct GraphicsTable prologue_bunny_hop_gfx_table[] = {
    /* BG Tileset */ {
        /* Src.  */ &D_08c1f24c,
        /* Dest. */ BG_TILESET_BASE(0),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Map */ {
        /* Src.  */ &D_08c1f308,
        /* Dest. */ BG_MAP_BASE(0xE800),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* OBJ Tileset */ {
        /* Src.  */ &D_08c1f214,
        /* Dest. */ OBJ_TILESET_BASE(0),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Palette */ {
        /* Src.  */ prologue_bunny_hop_pal,
        /* Dest. */ BG_PALETTE_BUFFER(0),
        /* Size  */ 0x140
    },
    /* OBJ Palette */ {
        /* Src.  */ prologue_bunny_hop_pal,
        /* Dest. */ OBJ_PALETTE_BUFFER(0),
        /* Size  */ 0x140
    },
    END_OF_GRAPHICS_TABLE
};

// [D_089ecbac] Engine Events
const EngineEvent prologue_bunny_hop_engine_events[] = {
    /* 0x00 */ (EngineEvent) func_08046f00
};

// [D_089ecbb0] Prologue (Bunny Hop) Game Engine
const struct GameEngine D_089ecbb0 = {
    /* Size in Memory */ sizeof(struct PrologueBunnyHopInfo),
    /* Start Engine   */ func_08046e78,
    /* Update Engine  */ func_08046f04,
    /* Stop Engine    */ func_08046f08,
    /* Cue Index      */ NULL,
    /* Common Events  */ NULL,
    /* Engine Events  */ prologue_bunny_hop_engine_events,
    /* Input Event    */ NULL
};
