#include "prologues/rat_race.h"


  /* PROLOGUE (RAT RACE) - ENGINE DATA */


extern const struct CompressedGraphics D_08c22764;
extern const struct CompressedGraphics D_08c229b4;
extern const struct CompressedGraphics D_08c21f88;
extern const Palette rat_race_prologue_pal[];


  //  //  //  GAME ENGINE DATA  //  //  //


// [D_089ecfbc] Buffered Textures List
const struct CompressedGraphics *const rat_race_prologue_buffered_textures[] = {
    END_OF_BUFFERED_TEXTURES_LIST
};

// [D_089ecfc0] Graphics Table
const struct GraphicsTable rat_race_prologue_gfx_table[] = {
    /* BG Tileset */ {
        /* Src.  */ &D_08c22764,
        /* Dest. */ BG_TILESET_BASE(0),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Map */ {
        /* Src.  */ &D_08c229b4,
        /* Dest. */ BG_MAP_BASE(0xE800),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* OBJ Tileset */ {
        /* Src.  */ &D_08c21f88,
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
const EngineEvent rat_race_prologue_engine_events[] = {
    /* 0x00 */ (EngineEvent) func_08047250
};

// [D_089ed00c] Prologue (Rat Race) Game Engine
const struct GameEngine rat_race_prologue_engine = {
    /* Size in Memory */ sizeof(struct RatRacePrologueInfo),
    /* Start Engine   */ rat_race_prologue_engine_start,
    /* Update Engine  */ rat_race_prologue_engine_update,
    /* Stop Engine    */ rat_race_prologue_engine_stop,
    /* Cue Index      */ NULL,
    /* Common Events  */ NULL,
    /* Engine Events  */ rat_race_prologue_engine_events,
    /* Input Event    */ NULL
};
