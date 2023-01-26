#include "prologues/toss_boys.h"
#include "bs_ext.h"


  /* PROLOGUE (TOSS BOYS) - SCRIPT DATA */


extern const struct CompressedGraphics D_08c2d448;
extern const struct CompressedGraphics D_08c2d960;
extern const struct CompressedGraphics D_08c2a208;
extern const Palette prologue_toss_boys_bg_pal[];
extern const Palette prologue_toss_boys_obj_pal[];


  //  //  //  GAME ENGINE DATA  //  //  //


// [D_089ed820] Buffered Textures List
const struct CompressedGraphics *const prologue_toss_boys_buffered_textures[] = {
    END_OF_BUFFERED_TEXTURES_LIST
};

// [D_089ed824] Graphics Table
const struct GraphicsTable prologue_toss_boys_gfx_table[] = {
    /* BG Tileset */ {
        /* Src.  */ &D_08c2d448,
        /* Dest. */ BG_TILESET_BASE(0),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Map */ {
        /* Src.  */ &D_08c2d960,
        /* Dest. */ BG_MAP_BASE(0xE800),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* OBJ Tileset */ {
        /* Src.  */ &D_08c2a208,
        /* Dest. */ OBJ_TILESET_BASE(0),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Palette */ {
        /* Src.  */ prologue_toss_boys_bg_pal,
        /* Dest. */ BG_PALETTE_BUFFER(0),
        /* Size  */ 0x140
    },
    /* OBJ Palette */ {
        /* Src.  */ prologue_toss_boys_obj_pal,
        /* Dest. */ OBJ_PALETTE_BUFFER(0),
        /* Size  */ 0x140
    },
    END_OF_GRAPHICS_TABLE
};

// [D_089ed86c] Engine Events
const EngineEvent prologue_toss_boys_engine_events[] = {
    /* 0x00 */ (EngineEvent) func_080479a4
};

// [D_089ed870] Prologue (Toss Boys) Game Engine
const struct GameEngine D_089ed870 = {
    /* Size in Memory */ sizeof(struct PrologueTossBoysInfo),
    /* Init. Engine   */ func_08047948,
    /* Update Engine  */ func_080479a8,
    /* Stop Engine    */ func_080479ac,
    /* Cue Index      */ NULL,
    /* Common Events  */ NULL,
    /* Engine Events  */ prologue_toss_boys_engine_events,
    /* Input Event    */ NULL
};


  //  //  //  SCRIPT  //  //  //


// [D_089ed890] Prologue (Toss Boys) BeatScript - Main
const struct BeatScript D_089ed890[] = {
    BS_RIQ_FADE_SCREEN_IN(0x08),
    BS_RIQ_LOAD_GAME_ENGINE(&D_089ed870, 0),
    BS_RUN1(stop_all_soundplayers, 0),
    BS_PLAY_SOUND(&s_jingle_toss_seqData),
    BS_REST(0x18),
    BS_REST(0x18),
    BS_RUN1(func_080479b0, 1),
    BS_REST(0x06),
    BS_RUN1(func_080479b0, 2),
    BS_REST(0x06),
    BS_RUN1(func_080479b0, 3),
    BS_REST(0x06),
    BS_RUN1(func_080479b0, 4),
    BS_REST(0x06),
    BS_RUN1(func_080479b0, 5),
    BS_REST(0x06),
    BS_RUN1(func_080479b0, 6),
    BS_REST(0x06),
    BS_REST(0x06),
    BS_REST(0x0C),
    BS_REST(0x06),
    BS_REST(0x06),
    BS_REST(0x18),
    BS_REST(0x18),
    BS_REST(0x0C),
    BS_RUN1(func_08006d80, 0),
    BS_REST(0x18),
    BS_RIQ_FADE_SCREEN_IN(0x10),
    BS_RETURN
};
