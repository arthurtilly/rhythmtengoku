#include "engines/wizards_waltz.h"


  //  //  //  GRAPHICS DATA  //  //  //


// [D_089e9f10] Buffered Textures List
struct CompressedData *wizards_waltz_buffered_textures[] = {
    END_OF_BUFFERED_TEXTURES_LIST
};

// [D_089e9f14] Graphics Table
struct GraphicsTable gfx_table_wizards_waltz[] = {
    /* BG Tileset */ {
        /* Src.  */ &wizards_waltz_bg_tiles,
        /* Dest. */ BG_TILESET_BASE(0),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Map */ {
        /* Src.  */ &wizards_waltz_bg_map,
        /* Dest. */ BG_MAP_BASE(0xE800),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* OBJ Tileset */ {
        /* Src.  */ &wizards_waltz_obj,
        /* Dest. */ OBJ_TILESET_BASE(0),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Palette */ {
        /* Src.  */ wizards_waltz_pal,
        /* Dest. */ BG_PALETTE_BUFFER(0),
        /* Size  */ 0x140
    },
    /* OBJ Palette */ {
        /* Src.  */ wizards_waltz_pal,
        /* Dest. */ OBJ_PALETTE_BUFFER(0),
        /* Size  */ 0x140
    },
    END_OF_GRAPHICS_TABLE
};


  //  //  //  CUE DATA  //  //  //


// [D_089e9f5c] Cue 00 (Default)
struct CueDefinition wizards_waltz_cue_00 = {
    /* Unknown Param.  */ 0,
    /* Input Buttons   */ PRESS_BUTTON(A_BUTTON),
    /* Total Duration  */ 0x90,
    /* Hit Window      */ -0x03, 0x03,
    /* Barely Window   */ -0x05, 0x05,
    /* Tempo-Dependent */ FALSE,
    /* Force-Delete    */ FALSE,
    /* Size in Memory  */ 0x8,
    /* Func. Spawn     */ wizards_waltz_cue_spawn,
    /* Spawn Parameter */ 0,
    /* Func. Update    */ wizards_waltz_cue_update,
    /* Func. Despawn   */ wizards_waltz_cue_despawn,
    /* Func. Hit       */ wizards_waltz_cue_hit,
    /* Func. Barely    */ wizards_waltz_cue_barely,
    /* Func. Miss      */ wizards_waltz_cue_miss,
    /* SFX Spawn       */ &s_witch_candy_seqData,
    /* SFX Hit         */ &s_witch_cake_seqData,
    /* SFX Barely      */ &s_witch_donats_seqData,
    /* SFX Miss        */ NULL,
    /* Miss Condition  */ NULL
};

// [D_089e9f9c] Cue 01 (Duplicate)
struct CueDefinition wizards_waltz_cue_01 = {
    /* Unknown Param.  */ 0,
    /* Input Buttons   */ PRESS_BUTTON(A_BUTTON),
    /* Total Duration  */ 0x90,
    /* Hit Window      */ -0x03, 0x03,
    /* Barely Window   */ -0x05, 0x05,
    /* Tempo-Dependent */ FALSE,
    /* Force-Delete    */ FALSE,
    /* Size in Memory  */ 0x8,
    /* Func. Spawn     */ wizards_waltz_cue_spawn,
    /* Spawn Parameter */ 0,
    /* Func. Update    */ wizards_waltz_cue_update,
    /* Func. Despawn   */ wizards_waltz_cue_despawn,
    /* Func. Hit       */ wizards_waltz_cue_hit,
    /* Func. Barely    */ wizards_waltz_cue_barely,
    /* Func. Miss      */ wizards_waltz_cue_miss,
    /* SFX Spawn       */ &s_witch_candy_seqData,
    /* SFX Hit         */ &s_witch_cake_seqData,
    /* SFX Barely      */ &s_witch_donats_seqData,
    /* SFX Miss        */ NULL,
    /* Miss Condition  */ NULL
};

// [D_089e9fdc] Cue 02 (Duplicate)
struct CueDefinition wizards_waltz_cue_02 = {
    /* Unknown Param.  */ 0,
    /* Input Buttons   */ PRESS_BUTTON(A_BUTTON),
    /* Total Duration  */ 0x90,
    /* Hit Window      */ -0x03, 0x03,
    /* Barely Window   */ -0x05, 0x05,
    /* Tempo-Dependent */ FALSE,
    /* Force-Delete    */ FALSE,
    /* Size in Memory  */ 0x8,
    /* Func. Spawn     */ wizards_waltz_cue_spawn,
    /* Spawn Parameter */ 0,
    /* Func. Update    */ wizards_waltz_cue_update,
    /* Func. Despawn   */ wizards_waltz_cue_despawn,
    /* Func. Hit       */ wizards_waltz_cue_hit,
    /* Func. Barely    */ wizards_waltz_cue_barely,
    /* Func. Miss      */ wizards_waltz_cue_miss,
    /* SFX Spawn       */ &s_witch_candy_seqData,
    /* SFX Hit         */ &s_witch_cake_seqData,
    /* SFX Barely      */ &s_witch_donats_seqData,
    /* SFX Miss        */ NULL,
    /* Miss Condition  */ NULL
};

// [D_089ea01c] Cue Definition Index
struct CueDefinition *wizards_waltz_cue_index[] = {
    /* 0x00 */ &wizards_waltz_cue_00,
    /* 0x01 */ &wizards_waltz_cue_01,
    /* 0x02 */ &wizards_waltz_cue_02,
    /* 0x03 */ NULL,
    /* 0x04 */ NULL,
    /* 0x05 */ NULL,
    /* 0x06 */ NULL,
    /* 0x07 */ NULL,
    /* 0x08 */ NULL,
    /* 0x09 */ NULL,
    /* 0x0A */ NULL,
    /* 0x0B */ NULL,
    END_OF_CUE_INDEX
};


  //  //  //  GAME ENGINE DATA  //  //  //


// [D_089ea050] Common Events
EngineEvent wizards_waltz_common_events[] = {
    /* BEAT_ANIMATION */ wizards_waltz_common_beat_animation,
    /* DISPLAY_TEXT   */ wizards_waltz_common_display_text,
    /* INIT_TUTORIAL  */ wizards_waltz_common_init_tutorial,
    END_OF_COMMON_EVENT_LIST
};

// [D_089ea060] Engine Events
EngineEvent wizards_waltz_engine_events[] = {
    /* 0x00 */ wizards_waltz_set_cycle_duration,
    /* 0x01 */ wizards_waltz_tutorial_enabled
};

// [D_089ea068] Wizard's Waltz Game Engine
struct GameEngine wizards_waltz_engine = {
    /* Size in Memory */ sizeof(struct WizardsWaltzEngineData),
    /* Start Engine   */ wizards_waltz_engine_start,
    /* Update Engine  */ wizards_waltz_engine_update,
    /* Stop Engine    */ wizards_waltz_engine_stop,
    /* Cue Index      */ wizards_waltz_cue_index,
    /* Common Events  */ wizards_waltz_common_events,
    /* Engine Events  */ wizards_waltz_engine_events,
    /* Input Event    */ wizards_waltz_input_event
};
