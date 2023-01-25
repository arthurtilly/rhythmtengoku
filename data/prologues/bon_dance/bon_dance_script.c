#include "prologues/bon_dance.h"
#include "bs_ext.h"


  /* PROLOGUE (BON DANCE) - SCRIPT DATA */


extern const struct CompressedGraphics D_08be854c;
extern const struct CompressedGraphics D_08be8828;
extern const struct CompressedGraphics D_08be75b8;
extern const Palette prologue_bon_odori_bg_pal[];
extern const Palette prologue_bon_odori_obj_pal[];


  //  //  //  GAME ENGINE DATA  //  //  //


// [D_089ea514] Buffered Textures List
const struct CompressedGraphics *const prologue_bon_dance_buffered_textures[] = {
    END_OF_BUFFERED_TEXTURES_LIST
};

// [D_089ea518] Graphics Table
const struct GraphicsTable prologue_bon_dance_gfx_table[] = {
    /* BG Tileset */ {
        /* Src.  */ &D_08be854c,
        /* Dest. */ BG_TILESET_BASE(0),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Map */ {
        /* Src.  */ &D_08be8828,
        /* Dest. */ BG_MAP_BASE(0xE800),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* OBJ Tileset */ {
        /* Src.  */ &D_08be75b8,
        /* Dest. */ OBJ_TILESET_BASE(0),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Palette */ {
        /* Src.  */ prologue_bon_odori_bg_pal,
        /* Dest. */ BG_PALETTE_BUFFER(0),
        /* Size  */ 0x140
    },
    /* OBJ Palette */ {
        /* Src.  */ prologue_bon_odori_obj_pal,
        /* Dest. */ OBJ_PALETTE_BUFFER(0),
        /* Size  */ 0x140
    },
    END_OF_GRAPHICS_TABLE
};

// [D_089ea560] Engine Events
const EngineEvent prologue_bon_dance_engine_events[] = {
    /* 0x00 */ (EngineEvent) func_080454d4
};

// [D_089ea564] Prologue (Bon Dance) Game Engine
const struct GameEngine D_089ea564 = {
    /* Size in Memory */ sizeof(struct PrologueBonDanceInfo),
    /* Init. Engine   */ func_08045478,
    /* Update Engine  */ func_080454d8,
    /* Stop Engine    */ func_080454dc,
    /* Cue Index      */ NULL,
    /* Common Events  */ NULL,
    /* Engine Events  */ prologue_bon_dance_engine_events,
    /* Input Event    */ NULL
};


  //  //  //  SCRIPT  //  //  //


// [D_089ea584] Prologue (Bon Dance) BeatScript - Main
const struct BeatScript D_089ea584[] = {
    BS_RIQ_FADE_SCREEN_IN(0x08),
    BS_RIQ_LOAD_GAME_ENGINE(&D_089ea564, 0),
    BS_RUN1(stop_all_soundplayers, 0),
    BS_REST(0x18),
    BS_PLAY_SOUND(&s_jingle_bon_seqData),
    BS_REST(0x18),
    BS_REST(0x18),
    BS_RUN1(func_080454e0, 0x5),
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
