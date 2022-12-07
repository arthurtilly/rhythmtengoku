#include "engines/prologues/remix4.h"
#include "beatscript_notation.h"


  /* PROLOGUE (REMIX 4) - SCRIPT DATA */


extern const struct CompressedGraphics D_08c0dc88;
extern const struct CompressedGraphics D_08c0e168;
extern const struct CompressedGraphics D_08c0b644;
extern const Palette D_088b242c[];


  //  //  //  GAME ENGINE DATA  //  //  //


// [D_089ec210] Buffered Textures List
const struct CompressedGraphics *const prologue_remix4_buffered_textures[] = {
    END_OF_BUFFERED_TEXTURES_LIST
};

// [D_089ec214] Graphics Table
const struct GraphicsTable prologue_remix4_gfx_table[] = {
    /* BG Tileset */ {
        /* Src.  */ &D_08c0dc88,
        /* Dest. */ BG_TILESET_BASE(0),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Map */ {
        /* Src.  */ &D_08c0e168,
        /* Dest. */ BG_MAP_BASE(0xE800),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* OBJ Tileset */ {
        /* Src.  */ &D_08c0b644,
        /* Dest. */ OBJ_TILESET_BASE(0),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Palette */ {
        /* Src.  */ D_088b242c,
        /* Dest. */ BG_PALETTE_BUFFER(0),
        /* Size  */ 0x140
    },
    /* OBJ Palette */ {
        /* Src.  */ D_088b242c,
        /* Dest. */ OBJ_PALETTE_BUFFER(0),
        /* Size  */ 0x140
    },
    END_OF_GRAPHICS_TABLE
};

// [D_089ec25c] Engine Events
const EngineEvent prologue_remix4_engine_events[] = {
    /* 0x00 */ (EngineEvent) func_080469e8
};

// [D_089ec260] Prologue (Remix 4) Game Engine
const struct GameEngine D_089ec260 = {
    /* Size in Memory */ sizeof(struct PrologueRemix4Info),
    /* Init. Engine   */ func_0804698c,
    /* Update Engine  */ func_080469ec,
    /* Stop Engine    */ func_080469f0,
    /* Cue Index      */ NULL,
    /* Common Events  */ NULL,
    /* Engine Events  */ prologue_remix4_engine_events,
    /* Input Event    */ NULL
};


  //  //  //  SCRIPT  //  //  //


// [D_089ec280] Prologue (Remix 4) BeatScript - Main
const struct BeatScript D_089ec280[] = {
    BSC_RUN_FUNC_1(func_08017568, 0x8),
    BSC4_LOAD_GAME_ENGINE(&D_089ec260, 0),
    BSC_RUN_FUNC_1(func_08002838, 0),
    BSC_REST(0x18),
    BSC_PLAY_SOUND(&s_jingle_remix_seqData),
    BSC_REST(0x18),
    BSC_REST(0x18),
    BSC_RUN_FUNC_1(func_080469f4, 1),
    BSC_REST(0x02),
    BSC_RUN_FUNC_1(func_080469f4, 2),
    BSC_REST(0x02),
    BSC_RUN_FUNC_1(func_080469f4, 3),
    BSC_REST(0x02),
    BSC_RUN_FUNC_1(func_080469f4, 4),
    BSC_REST(0x02),
    BSC_RUN_FUNC_1(func_080469f4, 5),
    BSC_REST(0x02),
    BSC_RUN_FUNC_1(func_080469f4, 6),
    BSC_REST(0x06),
    BSC_REST(0x06),
    BSC_REST(0x18),
    BSC_REST(0x18),
    BSC_REST(0x0C),
    BSC_PLAY_SOUND(&s_f_scratch_seqData),
    BSC_REST(0x06),
    BSC_RUN_FUNC_1(func_08006d80, 0),
    BSC_REST(0x12),
    BSC_REST(0x18),
    BSC_RUN_FUNC_1(func_08017568, 0x10),
    BSC_RETURN
};
