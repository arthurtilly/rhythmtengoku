#include "prologues/rat_race.h"


  //  //  //  GAME ENGINE DATA  //  //  //


// [D_089ecfbc] Buffered Textures List
struct CompressedData *rat_race_prologue_buffered_textures[] = {
    END_OF_BUFFERED_TEXTURES_LIST
};

// [D_089ecfc0] Graphics Table
struct GraphicsTable rat_race_prologue_gfx_table[] = {
    /* BG Tileset */ {
        /* Src.  */ &rat_race_prologue_bg_tiles,
        /* Dest. */ BG_TILESET_BASE(0),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Map */ {
        /* Src.  */ &rat_race_prologue_bg_map,
        /* Dest. */ BG_MAP_BASE(0xE800),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* OBJ Tileset */ {
        /* Src.  */ &rat_race_prologue_obj,
        /* Dest. */ OBJ_TILESET_BASE(0),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Palette */ {
        /* Src.  */ rat_race_prologue_pal,
        /* Dest. */ BG_PALETTE_BUFFER(0),
        /* Size  */ 0x140
    },
    /* OBJ Palette */ {
        /* Src.  */ rat_race_prologue_pal,
        /* Dest. */ OBJ_PALETTE_BUFFER(0),
        /* Size  */ 0x140
    },
    END_OF_GRAPHICS_TABLE
};

// [D_089ed008] Engine Events
EngineEvent rat_race_prologue_engine_events[] = {
    /* 0x00 */ func_08047250
};

// [D_089ed00c] Prologue (Rat Race) Game Engine
struct GameEngine rat_race_prologue_engine = {
    /* Size in Memory */ sizeof(struct RatRacePrologueEngineData),
    /* Start Engine   */ rat_race_prologue_engine_start,
    /* Update Engine  */ rat_race_prologue_engine_update,
    /* Stop Engine    */ rat_race_prologue_engine_stop,
    /* Cue Index      */ NULL,
    /* Common Events  */ NULL,
    /* Engine Events  */ rat_race_prologue_engine_events,
    /* Input Event    */ NULL
};
