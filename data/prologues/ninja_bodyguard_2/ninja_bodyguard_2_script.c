#include "prologues/ninja_bodyguard_2.h"
#include "bs_ext.h"


  /* PROLOGUE (NINJA BODYGUARD 2) - SCRIPT DATA */


extern const struct CompressedGraphics D_08c24604;
extern const struct CompressedGraphics D_08c24804;
extern const struct CompressedGraphics D_08c24200;
extern const Palette prologue_ninja_2_pal[];


  //  //  //  GAME ENGINE DATA  //  //  //


// [D_089ed2c4] Buffered Textures List
const struct CompressedGraphics *const prologue_ninja_2_buffered_textures[] = {
    END_OF_BUFFERED_TEXTURES_LIST
};

// [D_089ed2c8] Graphics Table
const struct GraphicsTable prologue_ninja_2_gfx_table[] = {
    /* BG Tileset */ {
        /* Src.  */ &D_08c24604,
        /* Dest. */ BG_TILESET_BASE(0),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Map */ {
        /* Src.  */ &D_08c24804,
        /* Dest. */ BG_MAP_BASE(0xE800),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* OBJ Tileset */ {
        /* Src.  */ &D_08c24200,
        /* Dest. */ OBJ_TILESET_BASE(0),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Palette */ {
        /* Src.  */ prologue_ninja_2_pal,
        /* Dest. */ BG_PALETTE_BUFFER(0),
        /* Size  */ 0x140
    },
    /* OBJ Palette */ {
        /* Src.  */ prologue_ninja_2_pal,
        /* Dest. */ OBJ_PALETTE_BUFFER(0),
        /* Size  */ 0x140
    },
    END_OF_GRAPHICS_TABLE
};

// [D_089ed310] Engine Events
const EngineEvent prologue_ninja_2_engine_events[] = {
    /* 0x00 */ (EngineEvent) func_080474a0
};

// [D_089ed314] Prologue (Ninja Bodyguard 2) Game Engine
const struct GameEngine D_089ed314 = {
    /* Size in Memory */ sizeof(struct PrologueNinjaBodyguard2Info),
    /* Init. Engine   */ func_08047444,
    /* Update Engine  */ func_080474a4,
    /* Stop Engine    */ func_080474a8,
    /* Cue Index      */ NULL,
    /* Common Events  */ NULL,
    /* Engine Events  */ prologue_ninja_2_engine_events,
    /* Input Event    */ NULL
};


  //  //  //  SCRIPT  //  //  //


// [D_089ed334] Prologue (Ninja Bodyguard 2) BeatScript - Main
const struct BeatScript D_089ed334[] = {
    BS_RIQ_FADE_SCREEN_IN(0x08),
    BS_RIQ_LOAD_GAME_ENGINE(&D_089ed314, 0),
    BS_RUN1(stop_all_soundplayers, 0),
    BS_PLAY_SOUND(&s_jingle_iai_seqData),
    BS_REST(0x18),
    BS_REST(0x18),
    BS_RUN1(func_080474ac, 1),
    BS_REST(0x18),
    BS_REST(0x18),
    BS_RUN1(func_080474ac, 0),
    BS_REST(0x18),
    BS_REST(0x18),
    BS_REST(0x18),
    BS_RUN1(func_08006d80, 0),
    BS_REST(0x18),
    BS_RIQ_FADE_SCREEN_IN(0x10),
    BS_RETURN
};
