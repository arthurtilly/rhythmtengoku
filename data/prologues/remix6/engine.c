#include "prologues/remix6.h"
#include "bs_ext.h"


  /* PROLOGUE (REMIX 6) - SCRIPT DATA */


extern const struct CompressedGraphics D_08c167f8;
extern const struct CompressedGraphics D_08c16d10;
extern const struct CompressedGraphics D_08c13400;
extern const Palette prologue_remix6_pal[];


  //  //  //  GAME ENGINE DATA  //  //  //


// [D_089ec5c0] Buffered Textures List
const struct CompressedGraphics *const prologue_remix6_buffered_textures[] = {
    END_OF_BUFFERED_TEXTURES_LIST
};

// [D_089ec5c4] Graphics Table
const struct GraphicsTable prologue_remix6_gfx_table[] = {
    /* BG Tileset */ {
        /* Src.  */ &D_08c167f8,
        /* Dest. */ BG_TILESET_BASE(0),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Map */ {
        /* Src.  */ &D_08c16d10,
        /* Dest. */ BG_MAP_BASE(0xE800),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* OBJ Tileset */ {
        /* Src.  */ &D_08c13400,
        /* Dest. */ OBJ_TILESET_BASE(0),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Palette */ {
        /* Src.  */ prologue_remix6_pal,
        /* Dest. */ BG_PALETTE_BUFFER(0),
        /* Size  */ 0x140
    },
    /* OBJ Palette */ {
        /* Src.  */ prologue_remix6_pal,
        /* Dest. */ OBJ_PALETTE_BUFFER(0),
        /* Size  */ 0x140
    },
    END_OF_GRAPHICS_TABLE
};

// [D_089ec60c] Engine Events
const EngineEvent prologue_remix6_engine_events[] = {
    /* 0x00 */ (EngineEvent) func_08046be0
};

// [D_089ec610] Prologue (Remix 6) Game Engine
const struct GameEngine D_089ec610 = {
    /* Size in Memory */ sizeof(struct PrologueRemix6Info),
    /* Start Engine   */ func_08046b84,
    /* Update Engine  */ func_08046be4,
    /* Stop Engine    */ func_08046be8,
    /* Cue Index      */ NULL,
    /* Common Events  */ NULL,
    /* Engine Events  */ prologue_remix6_engine_events,
    /* Input Event    */ NULL
};


  //  //  //  SCRIPT  //  //  //


// [D_089ec630] Prologue (Remix 6) BeatScript - Main
const struct BeatScript D_089ec630[] = {
    BS_RIQ_FADE_SCREEN_IN(0x08),
    BS_RIQ_LOAD_GAME_ENGINE(&D_089ec610, 0),
    BS_RUN1(stop_all_soundplayers, 0),
    BS_REST(0x18),
    BS_PLAY_SOUND(&s_jingle_remix_seqData),
    BS_REST(0x18),
    BS_REST(0x18),
    BS_RUN1(func_08046bec, 1),
    BS_REST(0x02),
    BS_RUN1(func_08046bec, 2),
    BS_REST(0x02),
    BS_RUN1(func_08046bec, 3),
    BS_REST(0x02),
    BS_RUN1(func_08046bec, 4),
    BS_REST(0x02),
    BS_RUN1(func_08046bec, 5),
    BS_REST(0x02),
    BS_RUN1(func_08046bec, 6),
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
    BS_REST(0x18),
    BS_REST(0x18),
    BS_RIQ_FADE_SCREEN_IN(0x10),
    BS_RETURN
};
