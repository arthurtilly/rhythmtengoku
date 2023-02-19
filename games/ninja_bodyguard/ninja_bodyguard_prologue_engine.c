#include "prologues/ninja_bodyguard.h"


  //  //  //  GAME ENGINE DATA  //  //  //


// [D_089ed188] Buffered Textures List
struct CompressedGraphics *ninja_bodyguard_prologue_buffered_textures[] = {
    END_OF_BUFFERED_TEXTURES_LIST
};

// [D_089ed18c] Graphics Table
struct GraphicsTable ninja_bodyguard_prologue_gfx_table[] = {
    /* BG Tileset */ {
        /* Src.  */ &D_08c23a3c,
        /* Dest. */ BG_TILESET_BASE(0),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Map */ {
        /* Src.  */ &D_08c23cd0,
        /* Dest. */ BG_MAP_BASE(0xE800),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* OBJ Tileset */ {
        /* Src.  */ &D_08c22ee4,
        /* Dest. */ OBJ_TILESET_BASE(0),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Palette */ {
        /* Src.  */ ninja_bodyguard_prologue_pal,
        /* Dest. */ BG_PALETTE_BUFFER(0),
        /* Size  */ 0x140
    },
    /* OBJ Palette */ {
        /* Src.  */ ninja_bodyguard_prologue_pal,
        /* Dest. */ OBJ_PALETTE_BUFFER(0),
        /* Size  */ 0x140
    },
    END_OF_GRAPHICS_TABLE
};

// [D_089ed1d4] Engine Events
EngineEvent ninja_bodyguard_prologue_engine_events[] = {
    /* 0x00 */ (EngineEvent) func_08047398
};

// [D_089ed1d8] Prologue (Ninja Bodyguard) Game Engine
struct GameEngine ninja_bodyguard_prologue_engine = {
    /* Size in Memory */ sizeof(struct NinjaBodyguardPrologueInfo),
    /* Start Engine   */ ninja_bodyguard_prologue_engine_start,
    /* Update Engine  */ ninja_bodyguard_prologue_engine_update,
    /* Stop Engine    */ ninja_bodyguard_prologue_engine_stop,
    /* Cue Index      */ NULL,
    /* Common Events  */ NULL,
    /* Engine Events  */ ninja_bodyguard_prologue_engine_events,
    /* Input Event    */ NULL
};
