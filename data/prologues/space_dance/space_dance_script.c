#include "prologues/space_dance.h"
#include "bs_ext.h"


  /* PROLOGUE (SPACE DANCE) - SCRIPT DATA */


extern const struct CompressedGraphics D_08c2575c;
extern const struct CompressedGraphics D_08c25aa8;
extern const struct CompressedGraphics D_08c24f60;
extern const Palette prologue_space_dance_pal[];


  //  //  //  GAME ENGINE DATA  //  //  //


// [D_089ed400] Buffered Textures List
const struct CompressedGraphics *const prologue_space_dance_buffered_textures[] = {
    END_OF_BUFFERED_TEXTURES_LIST
};

// [D_089ed404] Graphics Table
const struct GraphicsTable prologue_space_dance_gfx_table[] = {
    /* BG Tileset */ {
        /* Src.  */ &D_08c2575c,
        /* Dest. */ BG_TILESET_BASE(0),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Map */ {
        /* Src.  */ &D_08c25aa8,
        /* Dest. */ BG_MAP_BASE(0xE800),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* OBJ Tileset */ {
        /* Src.  */ &D_08c24f60,
        /* Dest. */ OBJ_TILESET_BASE(0),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Palette */ {
        /* Src.  */ prologue_space_dance_pal,
        /* Dest. */ BG_PALETTE_BUFFER(0),
        /* Size  */ 0x140
    },
    /* OBJ Palette */ {
        /* Src.  */ prologue_space_dance_pal,
        /* Dest. */ OBJ_PALETTE_BUFFER(0),
        /* Size  */ 0x140
    },
    END_OF_GRAPHICS_TABLE
};

// [D_089ed44c] Engine Events
const EngineEvent prologue_space_dance_engine_events[] = {
    /* 0x00 */ (EngineEvent) func_08047624
};

// [D_089ed450] Prologue (Space Dance) Game Engine
const struct GameEngine D_089ed450 = {
    /* Size in Memory */ sizeof(struct PrologueSpaceDanceInfo),
    /* Init. Engine   */ func_0804754c,
    /* Update Engine  */ func_08047628,
    /* Stop Engine    */ func_0804762c,
    /* Cue Index      */ NULL,
    /* Common Events  */ NULL,
    /* Engine Events  */ prologue_space_dance_engine_events,
    /* Input Event    */ NULL
};


  //  //  //  SCRIPT  //  //  //


// [D_089ed470] Prologue (Space Dance) BeatScript - Main
const struct BeatScript D_089ed470[] = {
    BS_RIQ_FADE_SCREEN_IN(0x08),
    BS_RIQ_LOAD_GAME_ENGINE(&D_089ed450, 0),
    BS_RUN1(stop_all_soundplayers, 0),
    BS_REST(0x18),
    BS_RUN1(func_08047630, 0),
    BS_PLAY_SOUND(&s_jingle_handclap_seqData),
    BS_REST(0x18),
    BS_REST(0x18),
    BS_REST(0x18),
    BS_RUN1(func_08047630, 1),
    BS_RUN1(func_08047630, 2),
    BS_REST(0x18),
    BS_REST(0x18),
    BS_REST(0x18),
    BS_RUN1(func_08006d80, 0),
    BS_REST(0x18),
    BS_RIQ_FADE_SCREEN_IN(0x10),
    BS_RETURN
};
