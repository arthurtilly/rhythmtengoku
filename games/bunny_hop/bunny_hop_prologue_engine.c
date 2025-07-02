#include "prologues/bunny_hop.h"


  //  //  //  GAME ENGINE DATA  //  //  //


// [D_089ecb60] Buffered Textures List
struct CompressedData *bunny_hop_prologue_buffered_textures[] = {
    END_OF_BUFFERED_TEXTURES_LIST
};

// [D_089ecb64] Graphics Table
struct GraphicsTable bunny_hop_prologue_gfx_table[] = {
    /* BG Tileset */ {
        /* Src.  */ &bunny_hop_prologue_bg_tiles,
        /* Dest. */ BG_TILESET_BASE(0),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Map */ {
        /* Src.  */ &bunny_hop_prologue_bg_map,
        /* Dest. */ BG_MAP_BASE(0xE800),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* OBJ Tileset */ {
        /* Src.  */ &bunny_hop_prologue_obj,
        /* Dest. */ OBJ_TILESET_BASE(0),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Palette */ {
        /* Src.  */ bunny_hop_prologue_pal,
        /* Dest. */ BG_PALETTE_BUFFER(0),
        /* Size  */ 0x140
    },
    /* OBJ Palette */ {
        /* Src.  */ bunny_hop_prologue_pal,
        /* Dest. */ OBJ_PALETTE_BUFFER(0),
        /* Size  */ 0x140
    },
    END_OF_GRAPHICS_TABLE
};

// [D_089ecbac] Engine Events
EngineEvent bunny_hop_prologue_engine_events[] = {
    /* 0x00 */ func_08046f00
};

// [D_089ecbb0] Prologue (Bunny Hop) Game Engine
struct GameEngine bunny_hop_prologue_engine = {
    /* Size in Memory */ sizeof(struct BunnyHopPrologueEngineData),
    /* Start Engine   */ bunny_hop_prologue_engine_start,
    /* Update Engine  */ bunny_hop_prologue_engine_update,
    /* Stop Engine    */ bunny_hop_prologue_engine_stop,
    /* Cue Index      */ NULL,
    /* Common Events  */ NULL,
    /* Engine Events  */ bunny_hop_prologue_engine_events,
    /* Input Event    */ NULL
};
