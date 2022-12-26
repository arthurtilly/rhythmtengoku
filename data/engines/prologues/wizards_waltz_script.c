#include "engines/prologues/wizards_waltz.h"
#include "beatscript_notation.h"


  /* PROLOGUE (WIZARD'S WALTZ) - SCRIPT DATA */


extern const struct CompressedGraphics D_08c339dc;
extern const struct CompressedGraphics D_08c33c14;
extern const struct CompressedGraphics D_08c33640;
extern const Palette prologue_wizards_waltz_pal[];


  //  //  //  GAME ENGINE DATA  //  //  //


// [D_089ede24] Buffered Textures List
const struct CompressedGraphics *const prologue_wizards_waltz_buffered_textures[] = {
    END_OF_BUFFERED_TEXTURES_LIST
};

// [D_089ede28] Graphics Table
const struct GraphicsTable prologue_wizards_waltz_gfx_table[] = {
    /* BG Tileset */ {
        /* Src.  */ &D_08c339dc,
        /* Dest. */ BG_TILESET_BASE(0),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Map */ {
        /* Src.  */ &D_08c33c14,
        /* Dest. */ BG_MAP_BASE(0xE800),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* OBJ Tileset */ {
        /* Src.  */ &D_08c33640,
        /* Dest. */ OBJ_TILESET_BASE(0),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Palette */ {
        /* Src.  */ prologue_wizards_waltz_pal,
        /* Dest. */ BG_PALETTE_BUFFER(0),
        /* Size  */ 0x140
    },
    /* OBJ Palette */ {
        /* Src.  */ prologue_wizards_waltz_pal,
        /* Dest. */ OBJ_PALETTE_BUFFER(0),
        /* Size  */ 0x140
    },
    END_OF_GRAPHICS_TABLE
};

// [D_089ede70] Engine Events
const EngineEvent prologue_wizards_waltz_engine_events[] = {
    /* 0x00 */ (EngineEvent) func_08047e18
};

// [D_089ede74] Prologue (Wizard's Waltz) Game Engine
const struct GameEngine D_089ede74 = {
    /* Size in Memory */ sizeof(struct PrologueWizardsWaltzInfo),
    /* Init. Engine   */ func_08047dbc,
    /* Update Engine  */ func_08047e1c,
    /* Stop Engine    */ func_08047e20,
    /* Cue Index      */ NULL,
    /* Common Events  */ NULL,
    /* Engine Events  */ prologue_wizards_waltz_engine_events,
    /* Input Event    */ NULL
};


  //  //  //  SCRIPT  //  //  //


// [D_089ede94] Prologue (Wizard's Waltz) BeatScript - Main
const struct BeatScript D_089ede94[] = {
    BSC_RUN_FUNC_1(gameplay_set_screen_fade_in_time, 0x8),
    BSC4_LOAD_GAME_ENGINE(&D_089ede74, 0),
    BSC_RUN_FUNC_1(stop_all_soundplayers, 0),
    BSC_PLAY_SOUND(&s_jingle_witch_seqData),
    BSC_REST(0x18),
    BSC_REST(0x18),
    BSC_REST(0x18),
    BSC_REST(0x18),
    BSC_REST(0x18),
    BSC_REST(0x18),
    BSC_REST(0x18),
    BSC_RUN_FUNC_1(func_08006d80, 0),
    BSC_REST(0x18),
    BSC_RUN_FUNC_1(gameplay_set_screen_fade_in_time, 0x10),
    BSC_RETURN
};
