#include "prologues/cosmic_dance.h"


  /* PROLOGUE (COSMIC DANCE) - ENGINE DATA */


extern const struct CompressedGraphics D_08beb2f8;
extern const struct CompressedGraphics D_08beb48c;
extern const struct CompressedGraphics D_08beaf78;
extern const Palette prologue_cosmic_dance_bg_pal[];
extern const Palette prologue_cosmic_dance_obj_pal[];


  //  //  //  GAME ENGINE DATA  //  //  //


// [D_089ea864] Buffered Textures List
const struct CompressedGraphics *const prologue_cosmic_dance_buffered_textures[] = {
    END_OF_BUFFERED_TEXTURES_LIST
};

// [D_089ea868] Graphics Table
const struct GraphicsTable prologue_cosmic_dance_gfx_table[] = {
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
        /* Src.  */ prologue_cosmic_dance_bg_pal,
        /* Dest. */ BG_PALETTE_BUFFER(0),
        /* Size  */ 0x140
    },
    /* OBJ Palette */ {
        /* Src.  */ prologue_cosmic_dance_obj_pal,
        /* Dest. */ OBJ_PALETTE_BUFFER(0),
        /* Size  */ 0x140
    },
    END_OF_GRAPHICS_TABLE
};

// [D_089ea8b0] Engine Events
const EngineEvent prologue_cosmic_dance_engine_events[] = {
    /* 0x00 */ (EngineEvent) func_08045730
};

// [D_089ea8b4] Prologue (Cosmic Dance) Game Engine
const struct GameEngine D_089ea8b4 = {
    /* Size in Memory */ sizeof(struct PrologueCosmicDanceInfo),
    /* Start Engine   */ func_080456d4,
    /* Update Engine  */ func_08045734,
    /* Stop Engine    */ func_08045738,
    /* Cue Index      */ NULL,
    /* Common Events  */ NULL,
    /* Engine Events  */ prologue_cosmic_dance_engine_events,
    /* Input Event    */ NULL
};
