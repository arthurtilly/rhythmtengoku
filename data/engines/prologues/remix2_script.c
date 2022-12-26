#include "engines/prologues/remix2.h"
#include "beatscript_notation.h"


  /* PROLOGUE (REMIX 2) - SCRIPT DATA */


extern const struct CompressedGraphics D_08c086e0;
extern const struct CompressedGraphics D_08c08bf8;
extern const struct CompressedGraphics D_08c06f74;
extern const Palette prologue_remix2_pal[];


  //  //  //  GAME ENGINE DATA  //  //  //


// [D_089ebe78] Buffered Textures List
const struct CompressedGraphics *const prologue_remix2_buffered_textures[] = {
    END_OF_BUFFERED_TEXTURES_LIST
};

// [D_089ebe7c] Graphics Table
const struct GraphicsTable prologue_remix2_gfx_table[] = {
    /* BG Tileset */ {
        /* Src.  */ &D_08c086e0,
        /* Dest. */ BG_TILESET_BASE(0),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Map */ {
        /* Src.  */ &D_08c08bf8,
        /* Dest. */ BG_MAP_BASE(0xE800),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* OBJ Tileset */ {
        /* Src.  */ &D_08c06f74,
        /* Dest. */ OBJ_TILESET_BASE(0),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Palette */ {
        /* Src.  */ prologue_remix2_pal,
        /* Dest. */ BG_PALETTE_BUFFER(0),
        /* Size  */ 0x140
    },
    /* OBJ Palette */ {
        /* Src.  */ prologue_remix2_pal,
        /* Dest. */ OBJ_PALETTE_BUFFER(0),
        /* Size  */ 0x140
    },
    END_OF_GRAPHICS_TABLE
};

// [D_089ebec4] Engine Events
const EngineEvent prologue_remix2_engine_events[] = {
    /* 0x00 */ (EngineEvent) func_080467f0
};

// [D_089ebec8] Prologue (Remix 2) Game Engine
const struct GameEngine D_089ebec8 = {
    /* Size in Memory */ sizeof(struct PrologueRemix2Info),
    /* Init. Engine   */ func_08046794,
    /* Update Engine  */ func_080467f4,
    /* Stop Engine    */ func_080467f8,
    /* Cue Index      */ NULL,
    /* Common Events  */ NULL,
    /* Engine Events  */ prologue_remix2_engine_events,
    /* Input Event    */ NULL
};


  //  //  //  SCRIPT  //  //  //


// [D_089ebee8] Prologue (Remix 2) BeatScript - Main
const struct BeatScript D_089ebee8[] = {
    BSC_RUN_FUNC_1(gameplay_set_screen_fade_in_time, 0x8),
    BSC4_LOAD_GAME_ENGINE(&D_089ebec8, 0),
    BSC_RUN_FUNC_1(stop_all_soundplayers, 0),
    BSC_REST(0x18),
    BSC_PLAY_SOUND(&s_jingle_remix_seqData),
    BSC_REST(0x18),
    BSC_REST(0x18),
    BSC_RUN_FUNC_1(func_080467fc, 1),
    BSC_REST(0x02),
    BSC_RUN_FUNC_1(func_080467fc, 2),
    BSC_REST(0x02),
    BSC_RUN_FUNC_1(func_080467fc, 3),
    BSC_REST(0x02),
    BSC_RUN_FUNC_1(func_080467fc, 4),
    BSC_REST(0x02),
    BSC_RUN_FUNC_1(func_080467fc, 5),
    BSC_REST(0x02),
    BSC_RUN_FUNC_1(func_080467fc, 6),
    BSC_REST(0x06),
    BSC_REST(0x06),
    BSC_REST(0x18),
    BSC_REST(0x18),
    BSC_REST(0x0C),
    BSC_PLAY_SOUND(&s_f_scratch_seqData),
    BSC_REST(0x06),
    BSC_RUN_FUNC_1(func_08006d80, 0),
    BSC_REST(0x12),
    BSC_RUN_FUNC_1(gameplay_set_screen_fade_in_time, 0x10),
    BSC_RETURN
};
