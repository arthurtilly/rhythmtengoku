#include "prologues/night_walk.h"
#include "bs_ext.h"


  /* PROLOGUE (NIGHT WALK) - SCRIPT DATA */


extern const struct CompressedGraphics D_08bebaa4;
extern const struct CompressedGraphics D_08bebbd4;
extern const struct CompressedGraphics D_08beba58;
extern const Palette prologue_night_walk_pal[];


  //  //  //  GAME ENGINE DATA  //  //  //


// [D_089ea988] Buffered Textures List
const struct CompressedGraphics *const prologue_night_walk_buffered_textures[] = {
    END_OF_BUFFERED_TEXTURES_LIST
};

// [D_089ea98c] Graphics Table
const struct GraphicsTable prologue_night_walk_gfx_table[] = {
    /* BG Tileset */ {
        /* Src.  */ &D_08bebaa4,
        /* Dest. */ BG_TILESET_BASE(0),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Map */ {
        /* Src.  */ &D_08bebbd4,
        /* Dest. */ BG_MAP_BASE(0xE800),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* OBJ Tileset */ {
        /* Src.  */ &D_08beba58,
        /* Dest. */ OBJ_TILESET_BASE(0),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Palette */ {
        /* Src.  */ prologue_night_walk_pal,
        /* Dest. */ BG_PALETTE_BUFFER(0),
        /* Size  */ 0x140
    },
    /* OBJ Palette */ {
        /* Src.  */ prologue_night_walk_pal,
        /* Dest. */ OBJ_PALETTE_BUFFER(0),
        /* Size  */ 0x140
    },
    END_OF_GRAPHICS_TABLE
};

// [D_089ea9d4] Engine Events
const EngineEvent prologue_night_walk_engine_events[] = {
    /* 0x00 */ (EngineEvent) func_080458e0
};

// [D_089ea9d8] Prologue (Night Walk) Game Engine
const struct GameEngine D_089ea9d8 = {
    /* Size in Memory */ sizeof(struct PrologueNightWalkInfo),
    /* Start Engine   */ func_08045824,
    /* Update Engine  */ func_080458e4,
    /* Stop Engine    */ func_080458e8,
    /* Cue Index      */ NULL,
    /* Common Events  */ NULL,
    /* Engine Events  */ prologue_night_walk_engine_events,
    /* Input Event    */ NULL
};


  //  //  //  SCRIPT  //  //  //


// [D_089ea9f8] Prologue (Night Walk) BeatScript - Main
const struct BeatScript D_089ea9f8[] = {
    BS_RIQ_FADE_SCREEN_IN(0x08),
    BS_RIQ_LOAD_GAME_ENGINE(&D_089ea9d8, 0),
    BS_RUN1(stop_all_soundplayers, 0),
    BS_RUN1(func_080458ec, 0),
    BS_REST(0x18),
    BS_REST(0x18),
    BS_REST(0x18),
    BS_RUN1(func_080458ec, 1),
    BS_REST(0x18),
    BS_PLAY_SOUND(&s_jingle_handclap_seqData),
    BS_REST(0x18),
    BS_REST(0x18),
    BS_REST(0x18),
    BS_REST(0x18),
    BS_REST(0x18),
    BS_RUN1(func_08006d80, 0),
    BS_REST(0x18),
    BS_RIQ_FADE_SCREEN_IN(0x10),
    BS_RETURN
};
