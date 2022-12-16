#include "engines/prologues/karate_man.h"
#include "beatscript_notation.h"


  /* PROLOGUE (KARATE MAN) - SCRIPT DATA */


extern const struct CompressedGraphics D_08bea934;
extern const struct CompressedGraphics D_08beab8c;
extern const struct CompressedGraphics D_08be9f5c;
extern const Palette D_088adb20[];
extern const Palette D_088adae0[];


  //  //  //  GAME ENGINE DATA  //  //  //


// [D_089ea650] Buffered Textures List
const struct CompressedGraphics *const prologue_karate_buffered_textures[] = {
    END_OF_BUFFERED_TEXTURES_LIST
};

// [D_089ea654] Graphics Table
const struct GraphicsTable prologue_karate_gfx_table[] = {
    /* BG Tileset */ {
        /* Src.  */ &D_08bea934,
        /* Dest. */ BG_TILESET_BASE(0),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Map */ {
        /* Src.  */ &D_08beab8c,
        /* Dest. */ BG_MAP_BASE(0xE800),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* OBJ Tileset */ {
        /* Src.  */ &D_08be9f5c,
        /* Dest. */ OBJ_TILESET_BASE(0),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Palette */ {
        /* Src.  */ D_088adb20,
        /* Dest. */ BG_PALETTE_BUFFER(0),
        /* Size  */ 0x140
    },
    /* OBJ Palette */ {
        /* Src.  */ D_088adae0,
        /* Dest. */ OBJ_PALETTE_BUFFER(0),
        /* Size  */ 0x140
    },
    END_OF_GRAPHICS_TABLE
};

// [D_089ea69c] Engine Events
const EngineEvent prologue_karate_engine_events[] = {
    /* 0x00 */ (EngineEvent) func_080455f8
};

// [D_089ea6a0] Prologue (Karate Man) Game Engine
const struct GameEngine D_089ea6a0 = {
    /* Size in Memory */ sizeof(struct PrologueKarateManInfo),
    /* Init. Engine   */ func_0804557c,
    /* Update Engine  */ func_080455fc,
    /* Stop Engine    */ func_08045600,
    /* Cue Index      */ NULL,
    /* Common Events  */ NULL,
    /* Engine Events  */ prologue_karate_engine_events,
    /* Input Event    */ NULL
};


  //  //  //  SCRIPT  //  //  //


// [D_089ea6c0] Prologue (Karate Man) BeatScript - Main
const struct BeatScript D_089ea6c0[] = {
    BSC_RUN_FUNC_1(gameplay_set_screen_fade_in_time, 0x8),
    BSC4_LOAD_GAME_ENGINE(&D_089ea6a0, 0),
    BSC_RUN_FUNC_1(stop_all_soundplayers, 0),
    BSC_REST(0x18),
    BSC_PLAY_SOUND(&s_jingle_karate_seqData),
    BSC_RUN_FUNC_1(func_08045604, 1),
    BSC_REST(0x06),
    BSC_RUN_FUNC_1(func_08045604, 2),
    BSC_REST(0x06),
    BSC_RUN_FUNC_1(func_08045604, 3),
    BSC_REST(0x06),
    BSC_RUN_FUNC_1(func_08045604, 4),
    BSC_REST(0x06),
    BSC_REST(0x06),
    BSC_REST(0x06),
    BSC_REST(0x06),
    BSC_REST(0x0C),
    BSC_PLAY_SOUND(&s_f_boxing_title_hit_seqData),
    BSC_RUN_FUNC_1(func_08045628, 0),
    BSC_REST(0x03),
    BSC_REST(0x03),
    BSC_REST(0x03),
    BSC_REST(0x03),
    BSC_REST(0x0C),
    BSC_REST(0x0C),
    BSC_REST(0x0C),
    BSC_REST(0x0C),
    BSC_REST(0x18),
    BSC_REST(0x0C),
    BSC_PLAY_SOUND(&s_intro_uh_seqData),
    BSC_REST(0x06),
    BSC_RUN_FUNC_1(func_08006d80, 0),
    BSC_REST(0x12),
    BSC_RUN_FUNC_1(gameplay_set_screen_fade_in_time, 0x10),
    BSC_RETURN
};
