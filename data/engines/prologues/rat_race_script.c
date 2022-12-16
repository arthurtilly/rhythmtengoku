#include "engines/prologues/rat_race.h"
#include "beatscript_notation.h"


  /* PROLOGUE (RAT RACE) - SCRIPT DATA */


extern const struct CompressedGraphics D_08c22764;
extern const struct CompressedGraphics D_08c229b4;
extern const struct CompressedGraphics D_08c21f88;
extern const Palette D_088b3dbc[];


  //  //  //  GAME ENGINE DATA  //  //  //


// [D_089ecfbc] Buffered Textures List
const struct CompressedGraphics *const prologue_rat_race_buffered_textures[] = {
    END_OF_BUFFERED_TEXTURES_LIST
};

// [D_089ecfc0] Graphics Table
const struct GraphicsTable prologue_rat_race_gfx_table[] = {
    /* BG Tileset */ {
        /* Src.  */ &D_08c22764,
        /* Dest. */ BG_TILESET_BASE(0),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Map */ {
        /* Src.  */ &D_08c229b4,
        /* Dest. */ BG_MAP_BASE(0xE800),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* OBJ Tileset */ {
        /* Src.  */ &D_08c21f88,
        /* Dest. */ OBJ_TILESET_BASE(0),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Palette */ {
        /* Src.  */ D_088b3dbc,
        /* Dest. */ BG_PALETTE_BUFFER(0),
        /* Size  */ 0x140
    },
    /* OBJ Palette */ {
        /* Src.  */ D_088b3dbc,
        /* Dest. */ OBJ_PALETTE_BUFFER(0),
        /* Size  */ 0x140
    },
    END_OF_GRAPHICS_TABLE
};

// [D_089ed008] Engine Events
const EngineEvent prologue_rat_race_engine_events[] = {
    /* 0x00 */ (EngineEvent) func_08047250
};

// [D_089ed00c] Prologue (Rat Race) Game Engine
const struct GameEngine D_089ed00c = {
    /* Size in Memory */ sizeof(struct PrologueRatRaceInfo),
    /* Init. Engine   */ func_080471d4,
    /* Update Engine  */ func_08047254,
    /* Stop Engine    */ func_08047258,
    /* Cue Index      */ NULL,
    /* Common Events  */ NULL,
    /* Engine Events  */ prologue_rat_race_engine_events,
    /* Input Event    */ NULL
};


  //  //  //  SCRIPT  //  //  //


// [D_089ed02c] Prologue (Rat Race) BeatScript - Main
const struct BeatScript D_089ed02c[] = {
    BSC_RUN_FUNC_1(gameplay_set_screen_fade_in_time, 0x8),
    BSC4_LOAD_GAME_ENGINE(&D_089ed00c, 0),
    BSC_RUN_FUNC_1(stop_all_soundplayers, 0),
    BSC_PLAY_SOUND(&s_jingle_rat_seqData),
    BSC_REST(0x18),
    BSC_REST(0x18),
    BSC_RUN_FUNC_1(func_08047280, 0),
    BSC_RUN_FUNC_1(func_0804725c, 1),
    BSC_REST(0x06),
    BSC_RUN_FUNC_1(func_0804725c, 2),
    BSC_REST(0x06),
    BSC_RUN_FUNC_1(func_0804725c, 3),
    BSC_REST(0x06),
    BSC_RUN_FUNC_1(func_0804725c, 4),
    BSC_REST(0x06),
    BSC_REST(0x06),
    BSC_REST(0x06),
    BSC_REST(0x06),
    BSC_REST(0x0C),
    BSC_RUN_FUNC_1(func_0804725c, 5),
    BSC_REST(0x06),
    BSC_REST(0x06),
    BSC_REST(0x18),
    BSC_REST(0x18),
    BSC_REST(0x0C),
    BSC_RUN_FUNC_1(func_08006d80, 0),
    BSC_REST(0x18),
    BSC_RUN_FUNC_1(gameplay_set_screen_fade_in_time, 0x10),
    BSC_RETURN
};
