#include "prologues/cosmic_dance.h"
#include "beatscript_notation.h"


  /* PROLOGUE (COSMIC DANCE) - SCRIPT DATA */


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
    /* Init. Engine   */ func_080456d4,
    /* Update Engine  */ func_08045734,
    /* Stop Engine    */ func_08045738,
    /* Cue Index      */ NULL,
    /* Common Events  */ NULL,
    /* Engine Events  */ prologue_cosmic_dance_engine_events,
    /* Input Event    */ NULL
};


  //  //  //  SCRIPT  //  //  //


// [D_089ea8d4] Prologue (Cosmic Dance) BeatScript - Main
const struct BeatScript D_089ea8d4[] = {
    BSC_RUN_FUNC_1(gameplay_set_screen_fade_in_time, 0x8),
    BSC4_LOAD_GAME_ENGINE(&D_089ea8b4, 0),
    BSC_RUN_FUNC_1(stop_all_soundplayers, 0),
    BSC_REST(0x18),
    BSC_PLAY_SOUND(&s_jingle_handclap_seqData),
    BSC_REST(0x18),
    BSC_RUN_FUNC_1(func_0804573c, 0),
    BSC_REST(0x18),
    BSC_REST(0x18),
    BSC_REST(0x18),
    BSC_REST(0x18),
    BSC_RUN_FUNC_1(func_08006d80, 0),
    BSC_REST(0x18),
    BSC_RUN_FUNC_1(gameplay_set_screen_fade_in_time, 0x10),
    BSC_RETURN
};
