#include "prologues/quiz_show.h"


  /* PROLOGUE (QUIZ SHOW) - ENGINE DATA */


extern const struct CompressedGraphics D_08c04434;
extern const struct CompressedGraphics D_08c04940;
extern const struct CompressedGraphics D_08c02a34;
extern const Palette quiz_show_prologue_pal[];


  //  //  //  GAME ENGINE DATA  //  //  //


// [D_089ebb7c] Buffered Textures List
const struct CompressedGraphics *quiz_show_prologue_buffered_textures[] = {
    END_OF_BUFFERED_TEXTURES_LIST
};

// [D_089ebb80] Graphics Table
struct GraphicsTable quiz_show_prologue_gfx_table[] = {
    /* BG Tileset */ {
        /* Src.  */ &D_08c04434,
        /* Dest. */ BG_TILESET_BASE(0),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Map */ {
        /* Src.  */ &D_08c04940,
        /* Dest. */ BG_MAP_BASE(0xE800),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* OBJ Tileset */ {
        /* Src.  */ &D_08c02a34,
        /* Dest. */ OBJ_TILESET_BASE(0),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Palette */ {
        /* Src.  */ quiz_show_prologue_pal,
        /* Dest. */ BG_PALETTE_BUFFER(0),
        /* Size  */ 0x140
    },
    /* OBJ Palette */ {
        /* Src.  */ quiz_show_prologue_pal,
        /* Dest. */ OBJ_PALETTE_BUFFER(0),
        /* Size  */ 0x140
    },
    END_OF_GRAPHICS_TABLE
};

// [D_089ebbc8] Engine Events
EngineEvent quiz_show_prologue_engine_events[] = {
    /* 0x00 */ (EngineEvent) func_080465f8
};

// [D_089ebbcc] Prologue (Quiz Show) Game Engine
struct GameEngine quiz_show_prologue_engine = {
    /* Size in Memory */ sizeof(struct QuizShowPrologueInfo),
    /* Start Engine   */ quiz_show_prologue_engine_start,
    /* Update Engine  */ quiz_show_prologue_engine_update,
    /* Stop Engine    */ quiz_show_prologue_engine_stop,
    /* Cue Index      */ NULL,
    /* Common Events  */ NULL,
    /* Engine Events  */ quiz_show_prologue_engine_events,
    /* Input Event    */ NULL
};
