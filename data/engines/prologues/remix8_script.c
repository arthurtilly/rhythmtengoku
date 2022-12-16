#include "engines/prologues/remix8.h"
#include "beatscript_notation.h"


  /* PROLOGUE (REMIX 8) - SCRIPT DATA */


extern const struct CompressedGraphics D_08c1e7d0;
extern const struct CompressedGraphics D_08c1ece8;
extern const struct CompressedGraphics D_08c1a47c;
extern const Palette D_088b336c[];


  //  //  //  GAME ENGINE DATA  //  //  //


// [D_089ec988] Buffered Textures List
const struct CompressedGraphics *const prologue_remix8_buffered_textures[] = {
    END_OF_BUFFERED_TEXTURES_LIST
};

// [D_089ec98c] Graphics Table
const struct GraphicsTable prologue_remix8_gfx_table[] = {
    /* BG Tileset */ {
        /* Src.  */ &D_08c1e7d0,
        /* Dest. */ BG_TILESET_BASE(0),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Map */ {
        /* Src.  */ &D_08c1ece8,
        /* Dest. */ BG_MAP_BASE(0xE800),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* OBJ Tileset */ {
        /* Src.  */ &D_08c1a47c,
        /* Dest. */ OBJ_TILESET_BASE(0),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Palette */ {
        /* Src.  */ D_088b336c,
        /* Dest. */ BG_PALETTE_BUFFER(0),
        /* Size  */ 0x140
    },
    /* OBJ Palette */ {
        /* Src.  */ D_088b336c,
        /* Dest. */ OBJ_PALETTE_BUFFER(0),
        /* Size  */ 0x140
    },
    END_OF_GRAPHICS_TABLE
};

// [D_089ec9d4] Engine Events
const EngineEvent prologue_remix8_engine_events[] = {
    /* 0x00 */ (EngineEvent) func_08046dd8
};

// [D_089ec9d8] Prologue (Remix 8) Game Engine
const struct GameEngine D_089ec9d8 = {
    /* Size in Memory */ sizeof(struct PrologueRemix8Info),
    /* Init. Engine   */ func_08046d7c,
    /* Update Engine  */ func_08046ddc,
    /* Stop Engine    */ func_08046de0,
    /* Cue Index      */ NULL,
    /* Common Events  */ NULL,
    /* Engine Events  */ prologue_remix8_engine_events,
    /* Input Event    */ NULL
};


  //  //  //  SCRIPT  //  //  //


// [D_089ec9f8] Prologue (Remix 8) BeatScript - Main
const struct BeatScript D_089ec9f8[] = {
    BSC_RUN_FUNC_1(gameplay_set_screen_fade_in_time, 0x8),
    BSC4_LOAD_GAME_ENGINE(&D_089ec9d8, 0),
    BSC_RUN_FUNC_1(stop_all_soundplayers, 0),
    BSC_REST(0x18),
    BSC_PLAY_SOUND(&s_jingle_remix_seqData),
    BSC_REST(0x18),
    BSC_REST(0x18),
    BSC_RUN_FUNC_1(func_08046de4, 1),
    BSC_REST(0x02),
    BSC_RUN_FUNC_1(func_08046de4, 2),
    BSC_REST(0x02),
    BSC_RUN_FUNC_1(func_08046de4, 3),
    BSC_REST(0x02),
    BSC_RUN_FUNC_1(func_08046de4, 4),
    BSC_REST(0x02),
    BSC_RUN_FUNC_1(func_08046de4, 5),
    BSC_REST(0x02),
    BSC_RUN_FUNC_1(func_08046de4, 6),
    BSC_REST(0x06),
    BSC_REST(0x06),
    BSC_REST(0x18),
    BSC_REST(0x18),
    BSC_REST(0x0C),
    BSC_PLAY_SOUND(&s_f_scratch_seqData),
    BSC_REST(0x06),
    BSC_RUN_FUNC_1(func_08006d80, 0),
    BSC_REST(0x12),
    BSC_REST(0x18),
    BSC_RUN_FUNC_1(gameplay_set_screen_fade_in_time, 0x10),
    BSC_RETURN
};
