#include "prologues/rat_race.h"
#include "bs_ext.h"


  /* PROLOGUE (RAT RACE) - SCRIPT DATA */


extern const struct CompressedGraphics D_08c22764;
extern const struct CompressedGraphics D_08c229b4;
extern const struct CompressedGraphics D_08c21f88;
extern const Palette prologue_rat_race_pal[];


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
        /* Src.  */ prologue_rat_race_pal,
        /* Dest. */ BG_PALETTE_BUFFER(0),
        /* Size  */ 0x140
    },
    /* OBJ Palette */ {
        /* Src.  */ prologue_rat_race_pal,
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
    /* Start Engine   */ func_080471d4,
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
    BS_RIQ_FADE_SCREEN_IN(0x08),
    BS_RIQ_LOAD_GAME_ENGINE(&D_089ed00c, 0),
    BS_RUN1(stop_all_soundplayers, 0),
    BS_PLAY_SOUND(&s_jingle_rat_seqData),
    BS_REST(0x18),
    BS_REST(0x18),
    BS_RUN1(func_08047280, 0),
    BS_RUN1(func_0804725c, 1),
    BS_REST(0x06),
    BS_RUN1(func_0804725c, 2),
    BS_REST(0x06),
    BS_RUN1(func_0804725c, 3),
    BS_REST(0x06),
    BS_RUN1(func_0804725c, 4),
    BS_REST(0x06),
    BS_REST(0x06),
    BS_REST(0x06),
    BS_REST(0x06),
    BS_REST(0x0C),
    BS_RUN1(func_0804725c, 5),
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
