#include "prologues/remix7.h"
#include "beatscript_notation.h"


  /* PROLOGUE (REMIX 7) - SCRIPT DATA */


extern const struct CompressedGraphics D_08c1983c;
extern const struct CompressedGraphics D_08c19d54;
extern const struct CompressedGraphics D_08c173c0;
extern const Palette prologue_remix7_pal[];


  //  //  //  GAME ENGINE DATA  //  //  //


// [D_089ec7b0] Buffered Textures List
const struct CompressedGraphics *const prologue_remix7_buffered_textures[] = {
    END_OF_BUFFERED_TEXTURES_LIST
};

// [D_089ec7b4] Graphics Table
const struct GraphicsTable prologue_remix7_gfx_table[] = {
    /* BG Tileset */ {
        /* Src.  */ &D_08c1983c,
        /* Dest. */ BG_TILESET_BASE(0),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Map */ {
        /* Src.  */ &D_08c19d54,
        /* Dest. */ BG_MAP_BASE(0xE800),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* OBJ Tileset */ {
        /* Src.  */ &D_08c173c0,
        /* Dest. */ OBJ_TILESET_BASE(0),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Palette */ {
        /* Src.  */ prologue_remix7_pal,
        /* Dest. */ BG_PALETTE_BUFFER(0),
        /* Size  */ 0x140
    },
    /* OBJ Palette */ {
        /* Src.  */ prologue_remix7_pal,
        /* Dest. */ OBJ_PALETTE_BUFFER(0),
        /* Size  */ 0x140
    },
    END_OF_GRAPHICS_TABLE
};

// [D_089ec7fc] Engine Events
const EngineEvent prologue_remix7_engine_events[] = {
    /* 0x00 */ (EngineEvent) func_08046cdc
};

// [D_089ec800] Prologue (Remix 7) Game Engine
const struct GameEngine D_089ec800 = {
    /* Size in Memory */ sizeof(struct PrologueRemix7Info),
    /* Init. Engine   */ func_08046c80,
    /* Update Engine  */ func_08046ce0,
    /* Stop Engine    */ func_08046ce4,
    /* Cue Index      */ NULL,
    /* Common Events  */ NULL,
    /* Engine Events  */ prologue_remix7_engine_events,
    /* Input Event    */ NULL
};


  //  //  //  SCRIPT  //  //  //


// [D_089ec820] Prologue (Remix 7) BeatScript - Main
const struct BeatScript D_089ec820[] = {
    BSC_RUN_FUNC_1(gameplay_set_screen_fade_in_time, 0x8),
    BSC4_LOAD_GAME_ENGINE(&D_089ec800, 0),
    BSC_RUN_FUNC_1(stop_all_soundplayers, 0),
    BSC_REST(0x18),
    BSC_PLAY_SOUND(&s_jingle_remix_seqData),
    BSC_REST(0x18),
    BSC_REST(0x18),
    BSC_RUN_FUNC_1(func_08046ce8, 1),
    BSC_REST(0x02),
    BSC_RUN_FUNC_1(func_08046ce8, 2),
    BSC_REST(0x02),
    BSC_RUN_FUNC_1(func_08046ce8, 3),
    BSC_REST(0x02),
    BSC_RUN_FUNC_1(func_08046ce8, 4),
    BSC_REST(0x02),
    BSC_RUN_FUNC_1(func_08046ce8, 5),
    BSC_REST(0x02),
    BSC_RUN_FUNC_1(func_08046ce8, 6),
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
