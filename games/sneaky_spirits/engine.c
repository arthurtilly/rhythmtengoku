#include "engines/sneaky_spirits.h"


  //  //  //  GRAPHICS DATA  //  //  //


// [D_089de6e0] Buffered Textures List
struct CompressedData *sneaky_spirits_buffered_textures[] = {
    END_OF_BUFFERED_TEXTURES_LIST
};

// [D_089de6e4] Graphics Table (Sneaky Spirits)
struct GraphicsTable sneaky_spirits_1_gfx_table[] = {
    /* BG Tileset */ {
        /* Src.  */ &sneaky_spirits_bg_tiles,
        /* Dest. */ BG_TILESET_BASE(0),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Map */ {
        /* Src.  */ &sneaky_spirits_bg_map_foreground,
        /* Dest. */ BG_MAP_BASE(0xE800),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Map */ {
        /* Src.  */ &sneaky_spirits_bg_map,
        /* Dest. */ BG_MAP_BASE(0xF000),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* OBJ Tileset */ {
        /* Src.  */ &sneaky_spirits_obj,
        /* Dest. */ OBJ_TILESET_BASE(0),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Palette */ {
        /* Src.  */ sneaky_spirits_1_pal,
        /* Dest. */ BG_PALETTE_BUFFER(0),
        /* Size  */ 0x140
    },
    /* OBJ Palette */ {
        /* Src.  */ sneaky_spirits_1_pal,
        /* Dest. */ OBJ_PALETTE_BUFFER(0),
        /* Size  */ 0x140
    },
    /* OBJ Palette */ {
        /* Src.  */ D_089ccbc8[1],
        /* Dest. */ OBJ_PALETTE_BUFFER(12.5),
        /* Size  */ 0x8
    },
    END_OF_GRAPHICS_TABLE
};

// [D_089de744] Graphics Table (Sneaky Spirits 2)
struct GraphicsTable sneaky_spirits_2_gfx_table[] = {
    /* BG Tileset */ {
        /* Src.  */ &sneaky_spirits_bg_tiles,
        /* Dest. */ BG_TILESET_BASE(0),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Map */ {
        /* Src.  */ &sneaky_spirits_bg_map_foreground,
        /* Dest. */ BG_MAP_BASE(0xE800),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Map */ {
        /* Src.  */ &sneaky_spirits_bg_map,
        /* Dest. */ BG_MAP_BASE(0xF000),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* OBJ Tileset */ {
        /* Src.  */ &sneaky_spirits_obj,
        /* Dest. */ OBJ_TILESET_BASE(0),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Palette */ {
        /* Src.  */ sneaky_spirits_2_pal,
        /* Dest. */ BG_PALETTE_BUFFER(0),
        /* Size  */ 0x140
    },
    /* OBJ Palette */ {
        /* Src.  */ sneaky_spirits_2_pal,
        /* Dest. */ OBJ_PALETTE_BUFFER(0),
        /* Size  */ 0x140
    },
    /* OBJ Palette */ {
        /* Src.  */ D_089ccbc8[1],
        /* Dest. */ OBJ_PALETTE_BUFFER(12.5),
        /* Size  */ 0x8
    },
    END_OF_GRAPHICS_TABLE
};

// [D_089de7a4] Graphics Table Index
struct GraphicsTable *sneaky_spirits_gfx_tables[] = {
    /* 0x00 */ sneaky_spirits_1_gfx_table,
    /* 0x01 */ sneaky_spirits_1_gfx_table,
    /* 0x02 */ sneaky_spirits_2_gfx_table
};


  //  //  //  CUE DATA  //  //  //


// [D_089de7b0] Cue 00 (Normal)
struct CueDefinition sneaky_spirits_cue_0 = {
    /* Unknown Param.  */ 0,
    /* Input Buttons   */ PRESS_BUTTON(A_BUTTON),
    /* Total Duration  */ 0x18,
    /* Hit Window      */ -0x03, 0x03,
    /* Barely Window   */ -0x05, 0x05,
    /* Tempo-Dependent */ FALSE,
    /* Force-Delete    */ FALSE,
    /* Size in Memory  */ sizeof(struct SneakySpiritsCue),
    /* Func. Spawn     */ sneaky_spirits_cue_spawn,
    /* Spawn Parameter */ FALSE,
    /* Func. Update    */ sneaky_spirits_cue_update,
    /* Func. Despawn   */ sneaky_spirits_cue_despawn,
    /* Func. Hit       */ sneaky_spirits_cue_hit,
    /* Func. Barely    */ sneaky_spirits_cue_barely,
    /* Func. Miss      */ sneaky_spirits_cue_miss,
    /* SFX Spawn       */ NULL,
    /* SFX Hit         */ NULL,
    /* SFX Barely      */ NULL,
    /* SFX Miss        */ NULL,
    /* Miss Condition  */ NULL
};

// [D_089de7f0] Cue 01 (More Lenient)
struct CueDefinition sneaky_spirits_cue_1 = {
    /* Unknown Param.  */ 0,
    /* Input Buttons   */ PRESS_BUTTON(A_BUTTON),
    /* Total Duration  */ 0x18,
    /* Hit Window      */ -0x04, 0x04,
    /* Barely Window   */ -0x07, 0x07,
    /* Tempo-Dependent */ FALSE,
    /* Force-Delete    */ FALSE,
    /* Size in Memory  */ sizeof(struct SneakySpiritsCue),
    /* Func. Spawn     */ sneaky_spirits_cue_spawn,
    /* Spawn Parameter */ FALSE,
    /* Func. Update    */ sneaky_spirits_cue_update,
    /* Func. Despawn   */ sneaky_spirits_cue_despawn,
    /* Func. Hit       */ sneaky_spirits_cue_hit,
    /* Func. Barely    */ sneaky_spirits_cue_barely,
    /* Func. Miss      */ sneaky_spirits_cue_miss,
    /* SFX Spawn       */ NULL,
    /* SFX Hit         */ NULL,
    /* SFX Barely      */ NULL,
    /* SFX Miss        */ NULL,
    /* Miss Condition  */ NULL
};

// [D_089de830] Cue 02 (Most Lenient)
struct CueDefinition sneaky_spirits_cue_2 = {
    /* Unknown Param.  */ 0,
    /* Input Buttons   */ PRESS_BUTTON(A_BUTTON),
    /* Total Duration  */ 0x18,
    /* Hit Window      */ -0x06, 0x06,
    /* Barely Window   */ -0x09, 0x09,
    /* Tempo-Dependent */ FALSE,
    /* Force-Delete    */ FALSE,
    /* Size in Memory  */ sizeof(struct SneakySpiritsCue),
    /* Func. Spawn     */ sneaky_spirits_cue_spawn,
    /* Spawn Parameter */ FALSE,
    /* Func. Update    */ sneaky_spirits_cue_update,
    /* Func. Despawn   */ sneaky_spirits_cue_despawn,
    /* Func. Hit       */ sneaky_spirits_cue_hit,
    /* Func. Barely    */ sneaky_spirits_cue_barely,
    /* Func. Miss      */ sneaky_spirits_cue_miss,
    /* SFX Spawn       */ NULL,
    /* SFX Hit         */ NULL,
    /* SFX Barely      */ NULL,
    /* SFX Miss        */ NULL,
    /* Miss Condition  */ NULL
};

// [D_089de870] Cue 03 (Tutorial - No Taunt)
struct CueDefinition sneaky_spirits_cue_tutorial = {
    /* Unknown Param.  */ 0,
    /* Input Buttons   */ PRESS_BUTTON(A_BUTTON),
    /* Total Duration  */ 0x18,
    /* Hit Window      */ -0x02, 0x00,
    /* Barely Window   */ -0x05, 0x00,
    /* Tempo-Dependent */ FALSE,
    /* Force-Delete    */ FALSE,
    /* Size in Memory  */ sizeof(struct SneakySpiritsCue),
    /* Func. Spawn     */ sneaky_spirits_cue_spawn,
    /* Spawn Parameter */ TRUE,
    /* Func. Update    */ sneaky_spirits_cue_update,
    /* Func. Despawn   */ sneaky_spirits_cue_despawn,
    /* Func. Hit       */ sneaky_spirits_cue_hit,
    /* Func. Barely    */ sneaky_spirits_cue_barely,
    /* Func. Miss      */ sneaky_spirits_cue_miss,
    /* SFX Spawn       */ NULL,
    /* SFX Hit         */ NULL,
    /* SFX Barely      */ NULL,
    /* SFX Miss        */ NULL,
    /* Miss Condition  */ NULL
};

// [D_089de8b0] Cue Definition Index
struct CueDefinition *sneaky_spirits_cue_index[] = {
    /* 0x00 */ &sneaky_spirits_cue_0,
    /* 0x01 */ &sneaky_spirits_cue_1,
    /* 0x02 */ &sneaky_spirits_cue_2,
    /* 0x03 */ &sneaky_spirits_cue_tutorial,
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

const char D_08059f90[] = "";

  //  //  //  GAME ENGINE DATA  //  //  //


// [D_089de8e4] Common Events
EngineEvent sneaky_spirits_common_events[] = {
    /* BEAT_ANIMATION */ sneaky_spirits_common_beat_animation,
    /* DISPLAY_TEXT   */ sneaky_spirits_common_display_text,
    /* INIT_TUTORIAL  */ // None
    END_OF_COMMON_EVENT_LIST
};

// [D_089de8f0] Engine Events
EngineEvent sneaky_spirits_engine_events[] = {
    /* 0x00 */ sneaky_spirits_show_ghost,
    /* 0x01 */ sneaky_spirits_set_ghost_height,
    /* 0x02 */ sneaky_spirits_spawn_bow,
    /* 0x03 */ sneaky_spirits_draw_bow,
    /* 0x04 */ sneaky_spirits_wind_sfx_enabled,
    /* 0x05 */ sneaky_spirits_display_text,
    /* 0x06 */ sneaky_spirits_event_set_rain_speed,
    /* 0x07 */ sneaky_spirits_freeze_slow_rain,
    /* 0x08 */ sneaky_spirits_display_tutorial_ghost,
    /* 0x09 */ sneaky_spirits_animate_tutorial_ghost,
    /* 0x0A */ sneaky_spirits_engine_event_stub
};

// [D_089de91c] Sneaky Spirits Game Engine
struct GameEngine sneaky_spirits_engine = {
    /* Size in Memory */ sizeof(struct SneakySpiritsEngineData),
    /* Start Engine   */ sneaky_spirits_engine_start,
    /* Update Engine  */ sneaky_spirits_engine_update,
    /* Stop Engine    */ sneaky_spirits_engine_stop,
    /* Cue Index      */ sneaky_spirits_cue_index,
    /* Common Events  */ sneaky_spirits_common_events,
    /* Engine Events  */ sneaky_spirits_engine_events,
    /* Input Event    */ sneaky_spirits_input_event
};
