#include "prologues/sneaky_spirits.h"
#include "bs_ext.h"


  /* PROLOGUE (SNEAKY SPIRITS) - SCRIPT DATA */


extern const struct CompressedGraphics D_08be1c50;
extern const struct CompressedGraphics D_08be1dfc;
extern const struct CompressedGraphics D_08be0ff8;
extern const Palette prologue_sneaky_spirits_pal[];


  //  //  //  GAME ENGINE DATA  //  //  //


// [D_089ea088] Buffered Textures List
const struct CompressedGraphics *const prologue_sneaky_spirits_buffered_textures[] = {
    END_OF_BUFFERED_TEXTURES_LIST
};

// [D_089ea08c] Graphics Table
const struct GraphicsTable prologue_sneaky_spirits_gfx_table[] = {
    /* BG Tileset */ {
        /* Src.  */ &D_08be1c50,
        /* Dest. */ BG_TILESET_BASE(0),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Map */ {
        /* Src.  */ &D_08be1dfc,
        /* Dest. */ BG_MAP_BASE(0xE800),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* OBJ Tileset */ {
        /* Src.  */ &D_08be0ff8,
        /* Dest. */ OBJ_TILESET_BASE(0),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Palette */ {
        /* Src.  */ prologue_sneaky_spirits_pal,
        /* Dest. */ BG_PALETTE_BUFFER(0),
        /* Size  */ 0x140
    },
    /* OBJ Palette */ {
        /* Src.  */ prologue_sneaky_spirits_pal,
        /* Dest. */ OBJ_PALETTE_BUFFER(0),
        /* Size  */ 0x140
    },
    END_OF_GRAPHICS_TABLE
};

// [D_089ea0d4] Engine Events
const EngineEvent prologue_sneaky_spirits_engine_events[] = {
    /* 0x00 */ (EngineEvent) func_080451d8
};

// [D_089ea0d8] Prologue (Sneaky Spirits) Game Engine
const struct GameEngine D_089ea0d8 = {
    /* Size in Memory */ sizeof(struct PrologueSneakySpiritsInfo),
    /* Start Engine   */ func_0804517c,
    /* Update Engine  */ func_080451dc,
    /* Stop Engine    */ func_080451e0,
    /* Cue Index      */ NULL,
    /* Common Events  */ NULL,
    /* Engine Events  */ prologue_sneaky_spirits_engine_events,
    /* Input Event    */ NULL
};


  //  //  //  SCRIPT  //  //  //


// [D_089ea0f8] Prologue (Sneaky Spirits) BeatScript - Main
const struct BeatScript D_089ea0f8[] = {
    BS_RIQ_FADE_SCREEN_IN(0x08),
    BS_RIQ_LOAD_GAME_ENGINE(&D_089ea0d8, 0),
    BS_RUN1(stop_all_soundplayers, 0),
    BS_RUN1(func_080451e4, 6),
    BS_PLAY_SOUND(&s_jingle_ghost_seqData),
    BS_REST(0x18),
    BS_REST(0x18),
    BS_RUN1(func_080451e4, 0),
    BS_REST(0x06),
    BS_RUN1(func_080451e4, 1),
    BS_REST(0x06),
    BS_RUN1(func_080451e4, 2),
    BS_REST(0x06),
    BS_REST(0x06),
    BS_REST(0x06),
    BS_REST(0x06),
    BS_REST(0x06),
    BS_REST(0x0C),
    BS_RUN1(func_080451e4, 3),
    BS_REST(0x06),
    BS_REST(0x06),
    BS_RUN1(func_080451e4, 4),
    BS_REST(0x0C),
    BS_RUN1(func_080451e4, 5),
    BS_REST(0x0C),
    BS_REST(0x18),
    BS_REST(0x0C),
    BS_RUN1(func_08006d80, 0),
    BS_REST(0x18),
    BS_RIQ_FADE_SCREEN_IN(0x10),
    BS_RETURN
};
