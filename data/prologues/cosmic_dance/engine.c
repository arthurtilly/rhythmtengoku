#include "prologues/cosmic_dance.h"


  /* PROLOGUE (COSMIC DANCE) - ENGINE DATA */


extern const struct CompressedGraphics D_08beb2f8;
extern const struct CompressedGraphics D_08beb48c;
extern const struct CompressedGraphics D_08beaf78;
extern const Palette cosmic_dance_prologue_bg_pal[];
extern const Palette cosmic_dance_prologue_obj_pal[];


  //  //  //  GAME ENGINE DATA  //  //  //


// [D_089ea864] Buffered Textures List
const struct CompressedGraphics *const cosmic_dance_prologue_buffered_textures[] = {
    END_OF_BUFFERED_TEXTURES_LIST
};

// [D_089ea868] Graphics Table
const struct GraphicsTable cosmic_dance_prologue_gfx_table[] = {
    /* BG Tileset */ {
        /* Src.  */ &D_08beb2f8,
        /* Dest. */ BG_TILESET_BASE(0),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Map */ {
        /* Src.  */ &D_08beb48c,
        /* Dest. */ BG_MAP_BASE(0xE800),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* OBJ Tileset */ {
        /* Src.  */ &D_08beaf78,
        /* Dest. */ OBJ_TILESET_BASE(0),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Palette */ {
        /* Src.  */ cosmic_dance_prologue_bg_pal,
        /* Dest. */ BG_PALETTE_BUFFER(0),
        /* Size  */ 0x140
    },
    /* OBJ Palette */ {
        /* Src.  */ cosmic_dance_prologue_obj_pal,
        /* Dest. */ OBJ_PALETTE_BUFFER(0),
        /* Size  */ 0x140
    },
    END_OF_GRAPHICS_TABLE
};

// [D_089ea8b0] Engine Events
const EngineEvent cosmic_dance_prologue_engine_events[] = {
    /* 0x00 */ (EngineEvent) func_08045730
};

// [D_089ea8b4] Prologue (Cosmic Dance) Game Engine
const struct GameEngine cosmic_dance_prologue_engine = {
    /* Size in Memory */ sizeof(struct CosmicDancePrologueInfo),
    /* Start Engine   */ cosmic_dance_prologue_engine_start,
    /* Update Engine  */ cosmic_dance_prologue_engine_update,
    /* Stop Engine    */ cosmic_dance_prologue_engine_stop,
    /* Cue Index      */ NULL,
    /* Common Events  */ NULL,
    /* Engine Events  */ cosmic_dance_prologue_engine_events,
    /* Input Event    */ NULL
};
