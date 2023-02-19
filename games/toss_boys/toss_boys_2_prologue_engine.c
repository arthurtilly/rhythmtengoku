#include "prologues/toss_boys_2.h"


  /* PROLOGUE (TOSS BOYS 2) - ENGINE DATA */


extern const struct CompressedGraphics D_08c2fc5c;
extern const struct CompressedGraphics D_08c30048;
extern const struct CompressedGraphics D_08c2de80;
extern const Palette toss_boys_2_prologue_bg_pal[];
extern const Palette toss_boys_2_prologue_obj_pal[];


  //  //  //  GAME ENGINE DATA  //  //  //


// [D_089ed9ec] Buffered Textures List
const struct CompressedGraphics *toss_boys_2_prologue_buffered_textures[] = {
    END_OF_BUFFERED_TEXTURES_LIST
};

// [D_089ed9f0] Graphics Table
struct GraphicsTable toss_boys_2_prologue_gfx_table[] = {
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
        /* Src.  */ toss_boys_2_prologue_bg_pal,
        /* Dest. */ BG_PALETTE_BUFFER(0),
        /* Size  */ 0x140
    },
    /* OBJ Palette */ {
        /* Src.  */ toss_boys_2_prologue_obj_pal,
        /* Dest. */ OBJ_PALETTE_BUFFER(0),
        /* Size  */ 0x140
    },
    END_OF_GRAPHICS_TABLE
};

// [D_089eda38] Engine Events
EngineEvent toss_boys_2_prologue_engine_events[] = {
    /* 0x00 */ (EngineEvent) func_08047aa0
};

// [D_089eda3c] Prologue (Toss Boys 2) Game Engine
struct GameEngine toss_boys_2_prologue_engine = {
    /* Size in Memory */ sizeof(struct TossBoys2PrologueInfo),
    /* Start Engine   */ toss_boys_2_prologue_engine_start,
    /* Update Engine  */ toss_boys_2_prologue_engine_update,
    /* Stop Engine    */ toss_boys_2_prologue_engine_stop,
    /* Cue Index      */ NULL,
    /* Common Events  */ NULL,
    /* Engine Events  */ toss_boys_2_prologue_engine_events,
    /* Input Event    */ NULL
};
