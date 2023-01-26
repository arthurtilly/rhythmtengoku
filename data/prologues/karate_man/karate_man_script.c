#include "prologues/karate_man.h"
#include "bs_ext.h"


  /* PROLOGUE (KARATE MAN) - SCRIPT DATA */


extern const struct CompressedGraphics D_08bea934;
extern const struct CompressedGraphics D_08beab8c;
extern const struct CompressedGraphics D_08be9f5c;
extern const Palette prologue_karate_man_bg_pal[];
extern const Palette prologue_karate_man_obj_pal[];


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
        /* Src.  */ prologue_karate_man_bg_pal,
        /* Dest. */ BG_PALETTE_BUFFER(0),
        /* Size  */ 0x140
    },
    /* OBJ Palette */ {
        /* Src.  */ prologue_karate_man_obj_pal,
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
    BS_RIQ_FADE_SCREEN_IN(0x08),
    BS_RIQ_LOAD_GAME_ENGINE(&D_089ea6a0, 0),
    BS_RUN1(stop_all_soundplayers, 0),
    BS_REST(0x18),
    BS_PLAY_SOUND(&s_jingle_karate_seqData),
    BS_RUN1(func_08045604, 1),
    BS_REST(0x06),
    BS_RUN1(func_08045604, 2),
    BS_REST(0x06),
    BS_RUN1(func_08045604, 3),
    BS_REST(0x06),
    BS_RUN1(func_08045604, 4),
    BS_REST(0x06),
    BS_REST(0x06),
    BS_REST(0x06),
    BS_REST(0x06),
    BS_REST(0x0C),
    BS_PLAY_SOUND(&s_f_boxing_title_hit_seqData),
    BS_RUN1(func_08045628, 0),
    BS_REST(0x03),
    BS_REST(0x03),
    BS_REST(0x03),
    BS_REST(0x03),
    BS_REST(0x0C),
    BS_REST(0x0C),
    BS_REST(0x0C),
    BS_REST(0x0C),
    BS_REST(0x18),
    BS_REST(0x0C),
    BS_PLAY_SOUND(&s_intro_uh_seqData),
    BS_REST(0x06),
    BS_RUN1(func_08006d80, 0),
    BS_REST(0x12),
    BS_RIQ_FADE_SCREEN_IN(0x10),
    BS_RETURN
};
