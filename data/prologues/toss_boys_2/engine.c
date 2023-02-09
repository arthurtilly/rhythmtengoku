#include "prologues/toss_boys_2.h"


  /* PROLOGUE (TOSS BOYS 2) - ENGINE DATA */


extern const struct CompressedGraphics D_08c2fc5c;
extern const struct CompressedGraphics D_08c30048;
extern const struct CompressedGraphics D_08c2de80;
extern const Palette prologue_toss_boys_2_bg_pal[];
extern const Palette prologue_toss_boys_2_obj_pal[];


  //  //  //  GAME ENGINE DATA  //  //  //


// [D_089ed9ec] Buffered Textures List
const struct CompressedGraphics *const prologue_toss_boys_2_buffered_textures[] = {
    END_OF_BUFFERED_TEXTURES_LIST
};

// [D_089ed9f0] Graphics Table
const struct GraphicsTable prologue_toss_boys_2_gfx_table[] = {
    /* BG Tileset */ {
        /* Src.  */ &D_08c2fc5c,
        /* Dest. */ BG_TILESET_BASE(0),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Map */ {
        /* Src.  */ &D_08c30048,
        /* Dest. */ BG_MAP_BASE(0xE800),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* OBJ Tileset */ {
        /* Src.  */ &D_08c2de80,
        /* Dest. */ OBJ_TILESET_BASE(0),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Palette */ {
        /* Src.  */ prologue_toss_boys_2_bg_pal,
        /* Dest. */ BG_PALETTE_BUFFER(0),
        /* Size  */ 0x140
    },
    /* OBJ Palette */ {
        /* Src.  */ prologue_toss_boys_2_obj_pal,
        /* Dest. */ OBJ_PALETTE_BUFFER(0),
        /* Size  */ 0x140
    },
    END_OF_GRAPHICS_TABLE
};

// [D_089eda38] Engine Events
const EngineEvent prologue_toss_boys_2_engine_events[] = {
    /* 0x00 */ (EngineEvent) func_08047aa0
};

// [D_089eda3c] Prologue (Toss Boys 2) Game Engine
const struct GameEngine D_089eda3c = {
    /* Size in Memory */ sizeof(struct PrologueTossBoys2Info),
    /* Start Engine   */ func_08047a44,
    /* Update Engine  */ func_08047aa4,
    /* Stop Engine    */ func_08047aa8,
    /* Cue Index      */ NULL,
    /* Common Events  */ NULL,
    /* Engine Events  */ prologue_toss_boys_2_engine_events,
    /* Input Event    */ NULL
};
