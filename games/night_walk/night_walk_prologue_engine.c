#include "prologues/night_walk.h"


  //  //  //  GAME ENGINE DATA  //  //  //


// [D_089ea988] Buffered Textures List
struct CompressedGraphics *night_walk_prologue_buffered_textures[] = {
    END_OF_BUFFERED_TEXTURES_LIST
};

// [D_089ea98c] Graphics Table
struct GraphicsTable night_walk_prologue_gfx_table[] = {
    /* BG Tileset */ {
        /* Src.  */ &D_08bebaa4,
        /* Dest. */ BG_TILESET_BASE(0),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Map */ {
        /* Src.  */ &D_08bebbd4,
        /* Dest. */ BG_MAP_BASE(0xE800),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* OBJ Tileset */ {
        /* Src.  */ &D_08beba58,
        /* Dest. */ OBJ_TILESET_BASE(0),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Palette */ {
        /* Src.  */ night_walk_prologue_pal,
        /* Dest. */ BG_PALETTE_BUFFER(0),
        /* Size  */ 0x140
    },
    /* OBJ Palette */ {
        /* Src.  */ night_walk_prologue_pal,
        /* Dest. */ OBJ_PALETTE_BUFFER(0),
        /* Size  */ 0x140
    },
    END_OF_GRAPHICS_TABLE
};

// [D_089ea9d4] Engine Events
EngineEvent night_walk_prologue_engine_events[] = {
    /* 0x00 */ func_080458e0
};

// [D_089ea9d8] Prologue (Night Walk) Game Engine
struct GameEngine night_walk_prologue_engine = {
    /* Size in Memory */ sizeof(struct NightWalkPrologueEngineData),
    /* Start Engine   */ night_walk_prologue_engine_start,
    /* Update Engine  */ night_walk_prologue_engine_update,
    /* Stop Engine    */ night_walk_prologue_engine_stop,
    /* Cue Index      */ NULL,
    /* Common Events  */ NULL,
    /* Engine Events  */ night_walk_prologue_engine_events,
    /* Input Event    */ NULL
};
