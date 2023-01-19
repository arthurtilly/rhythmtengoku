#include "prologues/samurai_slice.h"
#include "beatscript_notation.h"


  /* PROLOGUE (SAMURAI SLICE) - SCRIPT DATA */


extern const struct CompressedGraphics D_08bf7aa4;
extern const struct CompressedGraphics D_08bf7f04;
extern const struct CompressedGraphics D_08bf7d5c;
extern const struct CompressedGraphics D_08bf6678;
extern const Palette prologue_samurai_slice_pal[];


  //  //  //  GAME ENGINE DATA  //  //  //


// [D_089eb37c] Buffered Textures List
const struct CompressedGraphics *const prologue_samurai_slice_buffered_textures[] = {
    END_OF_BUFFERED_TEXTURES_LIST
};

// [D_089eb380] Graphics Table
const struct GraphicsTable prologue_samurai_slice_gfx_table[] = {
    /* BG Tileset */ {
        /* Src.  */ &D_08bf7aa4,
        /* Dest. */ BG_TILESET_BASE(0),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Map */ {
        /* Src.  */ &D_08bf7f04,
        /* Dest. */ BG_MAP_BASE(0xE800),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Map */ {
        /* Src.  */ &D_08bf7d5c,
        /* Dest. */ BG_MAP_BASE(0xF000),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* OBJ Tileset */ {
        /* Src.  */ &D_08bf6678,
        /* Dest. */ OBJ_TILESET_BASE(0),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Palette */ {
        /* Src.  */ prologue_samurai_slice_pal,
        /* Dest. */ BG_PALETTE_BUFFER(0),
        /* Size  */ 0x140
    },
    /* OBJ Palette */ {
        /* Src.  */ prologue_samurai_slice_pal,
        /* Dest. */ OBJ_PALETTE_BUFFER(0),
        /* Size  */ 0x140
    },
    END_OF_GRAPHICS_TABLE
};

// [D_089eb3d4] Engine Events
const EngineEvent prologue_samurai_slice_engine_events[] = {
    /* 0x00 */ (EngineEvent) func_080460c8
};

// [D_089eb3d8] Prologue (Samurai Slice) Game Engine
const struct GameEngine D_089eb3d8 = {
    /* Size in Memory */ sizeof(struct PrologueSamuraiSliceInfo),
    /* Init. Engine   */ func_08046054,
    /* Update Engine  */ func_080460cc,
    /* Stop Engine    */ func_080460d0,
    /* Cue Index      */ NULL,
    /* Common Events  */ NULL,
    /* Engine Events  */ prologue_samurai_slice_engine_events,
    /* Input Event    */ NULL
};


  //  //  //  SCRIPT  //  //  //


// [D_089eb3f8] Prologue (Samurai Slice) BeatScript - Main
const struct BeatScript D_089eb3f8[] = {
    BSC_RUN_FUNC_1(gameplay_set_screen_fade_in_time, 0x8),
    BSC4_LOAD_GAME_ENGINE(&D_089eb3d8, 0),
    BSC_RUN_FUNC_1(stop_all_soundplayers, 0),
    BSC_PLAY_SOUND(&s_jingle_iai_seqData),
    BSC_REST(0x18),
    BSC_REST(0x18),
    BSC_REST(0x18),
    BSC_PLAY_SOUND_1(&s_f_iai_title_seqData, 0xC0, 0x00),
    BSC_RUN_FUNC_1(scene_hide_bg_layer, 1),
    BSC_RUN_FUNC_1(scene_show_bg_layer, 2),
    BSC_REST(0x18),
    BSC_RUN_FUNC_1(func_080460d4, 1),
    BSC_REST(0x06),
    BSC_RUN_FUNC_1(func_080460d4, 2),
    BSC_REST(0x06),
    BSC_RUN_FUNC_1(func_080460d4, 3),
    BSC_REST(0x06),
    BSC_RUN_FUNC_1(func_080460d4, 4),
    BSC_REST(0x06),
    BSC_RUN_FUNC_1(func_080460d4, 5),
    BSC_REST(0x18),
    BSC_REST(0x18),
    BSC_RUN_FUNC_1(func_08006d80, 0),
    BSC_REST(0x18),
    BSC_RUN_FUNC_1(gameplay_set_screen_fade_in_time, 0x10),
    BSC_RETURN
};
