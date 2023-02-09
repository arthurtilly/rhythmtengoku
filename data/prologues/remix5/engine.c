#include "prologues/remix5.h"
#include "bs_ext.h"


  /* PROLOGUE (REMIX 5) - SCRIPT DATA */


extern const struct CompressedGraphics D_08c127e4;
extern const struct CompressedGraphics D_08c12cfc;
extern const struct CompressedGraphics D_08c0e864;
extern const Palette prologue_remix5_pal[];


  //  //  //  GAME ENGINE DATA  //  //  //


// [D_089ec3e8] Buffered Textures List
const struct CompressedGraphics *const prologue_remix5_buffered_textures[] = {
    END_OF_BUFFERED_TEXTURES_LIST
};

// [D_089ec3ec] Graphics Table
const struct GraphicsTable prologue_remix5_gfx_table[] = {
    /* BG Tileset */ {
        /* Src.  */ &D_08c127e4,
        /* Dest. */ BG_TILESET_BASE(0),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Map */ {
        /* Src.  */ &D_08c12cfc,
        /* Dest. */ BG_MAP_BASE(0xE800),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* OBJ Tileset */ {
        /* Src.  */ &D_08c0e864,
        /* Dest. */ OBJ_TILESET_BASE(0),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Palette */ {
        /* Src.  */ prologue_remix5_pal,
        /* Dest. */ BG_PALETTE_BUFFER(0),
        /* Size  */ 0x140
    },
    /* OBJ Palette */ {
        /* Src.  */ prologue_remix5_pal,
        /* Dest. */ OBJ_PALETTE_BUFFER(0),
        /* Size  */ 0x140
    },
    END_OF_GRAPHICS_TABLE
};

// [D_089ec434] Engine Events
const EngineEvent prologue_remix5_engine_events[] = {
    /* 0x00 */ (EngineEvent) func_08046ae4
};

// [D_089ec438] Prologue (Remix 5) Game Engine
const struct GameEngine D_089ec438 = {
    /* Size in Memory */ sizeof(struct PrologueRemix5Info),
    /* Start Engine   */ func_08046a88,
    /* Update Engine  */ func_08046ae8,
    /* Stop Engine    */ func_08046aec,
    /* Cue Index      */ NULL,
    /* Common Events  */ NULL,
    /* Engine Events  */ prologue_remix5_engine_events,
    /* Input Event    */ NULL
};


  //  //  //  SCRIPT  //  //  //


// [D_089ec458] Prologue (Remix 5) BeatScript - Main
const struct BeatScript D_089ec458[] = {
    BS_RIQ_FADE_SCREEN_IN(0x08),
    BS_RIQ_LOAD_GAME_ENGINE(&D_089ec438, 0),
    BS_RUN1(stop_all_soundplayers, 0),
    BS_REST(0x18),
    BS_PLAY_SOUND(&s_jingle_remix_seqData),
    BS_REST(0x18),
    BS_REST(0x18),
    BS_RUN1(func_08046af0, 1),
    BS_REST(0x02),
    BS_RUN1(func_08046af0, 2),
    BS_REST(0x02),
    BS_RUN1(func_08046af0, 3),
    BS_REST(0x02),
    BS_RUN1(func_08046af0, 4),
    BS_REST(0x02),
    BS_RUN1(func_08046af0, 5),
    BS_REST(0x02),
    BS_RUN1(func_08046af0, 6),
    BS_REST(0x06),
    BS_REST(0x06),
    BS_REST(0x18),
    BS_REST(0x18),
    BS_REST(0x0C),
    BS_PLAY_SOUND(&s_f_scratch_seqData),
    BS_REST(0x06),
    BS_RUN1(func_08006d80, 0),
    BS_REST(0x12),
    BS_REST(0x18),
    BS_RIQ_FADE_SCREEN_IN(0x10),
    BS_RETURN
};
