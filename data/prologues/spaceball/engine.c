#include "prologues/spaceball.h"
#include "bs_ext.h"


  /* PROLOGUE (SPACEBALL) - SCRIPT DATA */


extern const struct CompressedGraphics D_08be2fd8;
extern const struct CompressedGraphics D_08be3398;
extern const struct CompressedGraphics D_08be2298;
extern const Palette prologue_spaceball_bg_pal[];
extern const Palette prologue_spaceball_obj_pal[];


  //  //  //  GAME ENGINE DATA  //  //  //


// [D_089ea26c] Buffered Textures List
const struct CompressedGraphics *const prologue_spaceball_buffered_textures[] = {
    END_OF_BUFFERED_TEXTURES_LIST
};

// [D_089ea270] Graphics Table
const struct GraphicsTable prologue_spaceball_gfx_table[] = {
    /* BG Tileset */ {
        /* Src.  */ &D_08be2fd8,
        /* Dest. */ BG_TILESET_BASE(0),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Map */ {
        /* Src.  */ &D_08be3398,
        /* Dest. */ BG_MAP_BASE(0xE800),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* OBJ Tileset */ {
        /* Src.  */ &D_08be2298,
        /* Dest. */ OBJ_TILESET_BASE(0),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Palette */ {
        /* Src.  */ prologue_spaceball_bg_pal,
        /* Dest. */ BG_PALETTE_BUFFER(0),
        /* Size  */ 0x140
    },
    /* OBJ Palette */ {
        /* Src.  */ prologue_spaceball_obj_pal,
        /* Dest. */ OBJ_PALETTE_BUFFER(0),
        /* Size  */ 0x140
    },
    END_OF_GRAPHICS_TABLE
};

// [D_089ea2b8] Engine Events
const EngineEvent prologue_spaceball_engine_events[] = {
    /* 0x00 */ (EngineEvent) func_080452d4
};

// [D_089ea2bc] Prologue (Spaceball) Game Engine
const struct GameEngine D_089ea2bc = {
    /* Size in Memory */ sizeof(struct PrologueSpaceballInfo),
    /* Start Engine   */ func_08045278,
    /* Update Engine  */ func_080452d8,
    /* Stop Engine    */ func_080452dc,
    /* Cue Index      */ NULL,
    /* Common Events  */ NULL,
    /* Engine Events  */ prologue_spaceball_engine_events,
    /* Input Event    */ NULL
};


  //  //  //  SCRIPT  //  //  //


// [D_089ea2dc] Prologue (Spaceball) BeatScript - Main
const struct BeatScript D_089ea2dc[] = {
    BS_RIQ_FADE_SCREEN_IN(0x08),
    BS_RIQ_LOAD_GAME_ENGINE(&D_089ea2bc, 0),
    BS_RUN1(stop_all_soundplayers, 0),
    BS_PLAY_SOUND(&s_jingle_baseball_seqData),
    BS_REST(0x18),
    BS_REST(0x18),
    BS_RUN1(func_080452e0, 1),
    BS_REST(0x02),
    BS_RUN1(func_080452e0, 2),
    BS_REST(0x02),
    BS_RUN1(func_080452e0, 3),
    BS_REST(0x02),
    BS_RUN1(func_080452e0, 4),
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
