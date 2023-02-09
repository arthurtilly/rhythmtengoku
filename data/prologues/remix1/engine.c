#include "prologues/remix1.h"
#include "bs_ext.h"


  /* PROLOGUE (REMIX 1) - SCRIPT DATA */


extern const struct CompressedGraphics D_08c06384;
extern const struct CompressedGraphics D_08c06888;
extern const struct CompressedGraphics D_08c04fec;
extern const Palette prologue_remix1_bg_pal[];
extern const Palette prologue_remix1_obj_pal[];


  //  //  //  GAME ENGINE DATA  //  //  //


// [D_089ebcac] Buffered Textures List
const struct CompressedGraphics *const prologue_remix1_buffered_textures[] = {
    END_OF_BUFFERED_TEXTURES_LIST
};

// [D_089ebcb0] Graphics Table
const struct GraphicsTable prologue_remix1_gfx_table[] = {
    /* BG Tileset */ {
        /* Src.  */ &D_08c06384,
        /* Dest. */ BG_TILESET_BASE(0),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Map */ {
        /* Src.  */ &D_08c06888,
        /* Dest. */ BG_MAP_BASE(0xE800),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* OBJ Tileset */ {
        /* Src.  */ &D_08c04fec,
        /* Dest. */ OBJ_TILESET_BASE(0),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Palette */ {
        /* Src.  */ prologue_remix1_bg_pal,
        /* Dest. */ BG_PALETTE_BUFFER(0),
        /* Size  */ 0x140
    },
    /* OBJ Palette */ {
        /* Src.  */ prologue_remix1_obj_pal,
        /* Dest. */ OBJ_PALETTE_BUFFER(0),
        /* Size  */ 0x140
    },
    END_OF_GRAPHICS_TABLE
};

// [D_089ebcf8] Engine Events
const EngineEvent prologue_remix1_engine_events[] = {
    /* 0x00 */ (EngineEvent) func_080466f4
};

// [D_089ebcfc] Prologue (Remix 1) Game Engine
const struct GameEngine D_089ebcfc = {
    /* Size in Memory */ sizeof(struct PrologueRemix1Info),
    /* Start Engine   */ func_08046698,
    /* Update Engine  */ func_080466f8,
    /* Stop Engine    */ func_080466fc,
    /* Cue Index      */ NULL,
    /* Common Events  */ NULL,
    /* Engine Events  */ prologue_remix1_engine_events,
    /* Input Event    */ NULL
};


  //  //  //  SCRIPT  //  //  //


// [D_089ebd1c] Prologue (Remix 1) BeatScript - Main
const struct BeatScript D_089ebd1c[] = {
    BS_RIQ_FADE_SCREEN_IN(0x08),
    BS_RIQ_LOAD_GAME_ENGINE(&D_089ebcfc, 0),
    BS_RUN1(stop_all_soundplayers, 0),
    BS_REST(0x18),
    BS_PLAY_SOUND(&s_jingle_remix_seqData),
    BS_REST(0x18),
    BS_REST(0x18),
    BS_RUN1(func_08046700, 1),
    BS_REST(0x02),
    BS_RUN1(func_08046700, 2),
    BS_REST(0x02),
    BS_RUN1(func_08046700, 3),
    BS_REST(0x02),
    BS_RUN1(func_08046700, 4),
    BS_REST(0x02),
    BS_RUN1(func_08046700, 5),
    BS_REST(0x02),
    BS_RUN1(func_08046700, 6),
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
