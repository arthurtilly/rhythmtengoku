#include "prologues/quiz_show.h"


  //  //  //  GAME ENGINE DATA  //  //  //


// [D_089ebb7c] Buffered Textures List
struct CompressedData *quiz_show_prologue_buffered_textures[] = {
    END_OF_BUFFERED_TEXTURES_LIST
};

// [D_089ebb80] Graphics Table
struct GraphicsTable quiz_show_prologue_gfx_table[] = {
    /* BG Tileset */ {
        /* Src.  */ &quiz_show_prologue_bg_tiles,
        /* Dest. */ BG_TILESET_BASE(0),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Map */ {
        /* Src.  */ &quiz_show_prologue_bg_map,
        /* Dest. */ BG_MAP_BASE(0xE800),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* OBJ Tileset */ {
        /* Src.  */ &quiz_show_prologue_obj,
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
    /* 0x00 */ func_080465f8
};

// [D_089ebbcc] Prologue (Quiz Show) Game Engine
struct GameEngine quiz_show_prologue_engine = {
    /* Size in Memory */ sizeof(struct QuizShowPrologueEngineData),
    /* Start Engine   */ quiz_show_prologue_engine_start,
    /* Update Engine  */ quiz_show_prologue_engine_update,
    /* Stop Engine    */ quiz_show_prologue_engine_stop,
    /* Cue Index      */ NULL,
    /* Common Events  */ NULL,
    /* Engine Events  */ quiz_show_prologue_engine_events,
    /* Input Event    */ NULL
};
