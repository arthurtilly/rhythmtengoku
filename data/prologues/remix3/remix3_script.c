#include "prologues/remix3.h"
#include "bs_ext.h"


  /* PROLOGUE (REMIX 3) - SCRIPT DATA */


extern const struct CompressedGraphics D_08c0ab00;
extern const struct CompressedGraphics D_08c0af50;
extern const struct CompressedGraphics D_08c092e0;
extern const Palette prologue_remix3_pal[];


  //  //  //  GAME ENGINE DATA  //  //  //


// [D_089ec044] Buffered Textures List
const struct CompressedGraphics *const prologue_remix3_buffered_textures[] = {
    END_OF_BUFFERED_TEXTURES_LIST
};

// [D_089ec048] Graphics Table
const struct GraphicsTable prologue_remix3_gfx_table[] = {
    /* BG Tileset */ {
        /* Src.  */ &D_08c0ab00,
        /* Dest. */ BG_TILESET_BASE(0),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Map */ {
        /* Src.  */ &D_08c0af50,
        /* Dest. */ BG_MAP_BASE(0xE800),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* OBJ Tileset */ {
        /* Src.  */ &D_08c092e0,
        /* Dest. */ OBJ_TILESET_BASE(0),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Palette */ {
        /* Src.  */ prologue_remix3_pal,
        /* Dest. */ BG_PALETTE_BUFFER(0),
        /* Size  */ 0x140
    },
    /* OBJ Palette */ {
        /* Src.  */ prologue_remix3_pal,
        /* Dest. */ OBJ_PALETTE_BUFFER(0),
        /* Size  */ 0x140
    },
    END_OF_GRAPHICS_TABLE
};

// [D_089ec090] Engine Events
const EngineEvent prologue_remix3_engine_events[] = {
    /* 0x00 */ (EngineEvent) func_080468ec
};

// [D_089ec094] Prologue (Remix 3) Game Engine
const struct GameEngine D_089ec094 = {
    /* Size in Memory */ sizeof(struct PrologueRemix3Info),
    /* Init. Engine   */ func_08046890,
    /* Update Engine  */ func_080468f0,
    /* Stop Engine    */ func_080468f4,
    /* Cue Index      */ NULL,
    /* Common Events  */ NULL,
    /* Engine Events  */ prologue_remix3_engine_events,
    /* Input Event    */ NULL
};


  //  //  //  SCRIPT  //  //  //


// [D_089ec0b4] Prologue (Remix 3) BeatScript - Main
const struct BeatScript D_089ec0b4[] = {
    BS_RIQ_FADE_SCREEN_IN(0x08),
    BS_RIQ_LOAD_GAME_ENGINE(&D_089ec094, 0),
    BS_RUN1(stop_all_soundplayers, 0),
    BS_REST(0x18),
    BS_PLAY_SOUND(&s_jingle_remix_seqData),
    BS_REST(0x18),
    BS_REST(0x18),
    BS_RUN1(func_080468f8, 1),
    BS_REST(0x02),
    BS_RUN1(func_080468f8, 2),
    BS_REST(0x02),
    BS_RUN1(func_080468f8, 3),
    BS_REST(0x02),
    BS_RUN1(func_080468f8, 4),
    BS_REST(0x02),
    BS_RUN1(func_080468f8, 5),
    BS_REST(0x02),
    BS_RUN1(func_080468f8, 6),
    BS_REST(0x06),
    BS_REST(0x06),
    BS_REST(0x18),
    BS_REST(0x18),
    BS_REST(0x0C),
    BS_PLAY_SOUND(&s_f_scratch_seqData),
    BS_REST(0x06),
    BS_RUN1(func_08006d80, 0),
    BS_REST(0x12),
    BS_RIQ_FADE_SCREEN_IN(0x10),
    BS_RETURN
};
