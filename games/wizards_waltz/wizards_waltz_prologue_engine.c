#include "prologues/wizards_waltz.h"


  //  //  //  GAME ENGINE DATA  //  //  //


// [D_089ede24] Buffered Textures List
struct CompressedData *wizards_waltz_prologue_buffered_textures[] = {
    END_OF_BUFFERED_TEXTURES_LIST
};

// [D_089ede28] Graphics Table
struct GraphicsTable wizards_waltz_prologue_gfx_table[] = {
    /* BG Tileset */ {
        /* Src.  */ &wizards_waltz_prologue_bg_tiles,
        /* Dest. */ BG_TILESET_BASE(0),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Map */ {
        /* Src.  */ &wizards_waltz_prologue_bg_map,
        /* Dest. */ BG_MAP_BASE(0xE800),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* OBJ Tileset */ {
        /* Src.  */ &wizards_waltz_prologue_obj,
        /* Dest. */ OBJ_TILESET_BASE(0),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Palette */ {
        /* Src.  */ wizards_waltz_prologue_pal,
        /* Dest. */ BG_PALETTE_BUFFER(0),
        /* Size  */ 0x140
    },
    /* OBJ Palette */ {
        /* Src.  */ wizards_waltz_prologue_pal,
        /* Dest. */ OBJ_PALETTE_BUFFER(0),
        /* Size  */ 0x140
    },
    END_OF_GRAPHICS_TABLE
};

// [D_089ede70] Engine Events
EngineEvent wizards_waltz_prologue_engine_events[] = {
    /* 0x00 */ func_08047e18
};

// [D_089ede74] Prologue (Wizard's Waltz) Game Engine
struct GameEngine wizards_waltz_prologue_engine = {
    /* Size in Memory */ sizeof(struct WizardsWaltzPrologueEngineData),
    /* Start Engine   */ wizards_waltz_prologue_engine_start,
    /* Update Engine  */ wizards_waltz_prologue_engine_update,
    /* Stop Engine    */ wizards_waltz_prologue_engine_stop,
    /* Cue Index      */ NULL,
    /* Common Events  */ NULL,
    /* Engine Events  */ wizards_waltz_prologue_engine_events,
    /* Input Event    */ NULL
};
