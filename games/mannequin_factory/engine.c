#include "engines/mannequin_factory.h"


  //  //  //  GRAPHICS DATA  //  //  //


// [D_089df384] Mannequin Completion Animations
struct Animation *mannequin_finish_anim[] = {
    /* 0x00 */ anim_mannequin_complete_l,
    /* 0x01 */ anim_mannequin_complete_c,
    /* 0x02 */ anim_mannequin_complete_r,
    /* 0x03 */ NULL,
    /* 0x04 */ anim_mannequin_complete_l,
    /* 0x05 */ anim_mannequin_complete_c,
    /* 0x06 */ anim_mannequin_complete_r,
    /* 0x07 */ NULL
};

// [D_089df3a4] Input Buttons
u16 mannequin_input_buttons[] = {
    A_BUTTON,
    B_BUTTON,
    DPAD_RIGHT,
    DPAD_LEFT
};

// [D_089df3ac] Buffered Textures List
struct CompressedData *mannequin_buffered_textures[] = {
    END_OF_BUFFERED_TEXTURES_LIST
};

// [D_089df3b0] Graphics Table
struct GraphicsTable mannequin_gfx_table[] = {
    /* BG Tileset */ {
        /* Src.  */ &mannequin_factory_bg_tiles,
        /* Dest. */ BG_TILESET_BASE(0),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Map */ {
        /* Src.  */ &mannequin_factory_bg_map,
        /* Dest. */ BG_MAP_BASE(0xE800),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Map */ {
        /* Src.  */ &mannequin_factory_bg_map_practice,
        /* Dest. */ BG_MAP_BASE(0xF000),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* OBJ Tileset */ {
        /* Src.  */ &mannequin_factory_obj,
        /* Dest. */ OBJ_TILESET_BASE(0),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Palette */ {
        /* Src.  */ mannequin_factory_pal,
        /* Dest. */ BG_PALETTE_BUFFER(0),
        /* Size  */ 0x140
    },
    /* OBJ Palette */ {
        /* Src.  */ mannequin_factory_pal,
        /* Dest. */ OBJ_PALETTE_BUFFER(0),
        /* Size  */ 0x140
    },
    END_OF_GRAPHICS_TABLE
};


  //  //  //  CUE DATA  //  //  //


// [D_089df404] ?
struct SongHeader *D_089df404[] = {
    /* 0x00 */ &s_SD7_seqData,
    /* 0x01 */ &s_f_conveyer_hit_seqData,
    /* 0x02 */ &s_tom_M_seqData,
    /* 0x03 */ &s_tom_L_seqData
};

// [D_089df414] Cue 00
struct CueDefinition mannequin_cue_00 = {
    /* Unknown Param.  */ 0,
    /* Input Buttons   */ PRESS_BUTTON(A_BUTTON),
    /* Total Duration  */ 0x0C,
    /* Hit Window      */ -0x03, 0x03,
    /* Barely Window   */ -0x05, 0x05,
    /* Tempo-Dependent */ FALSE,
    /* Force-Delete    */ FALSE,
    /* Size in Memory  */ 0x8,
    /* Func. Spawn     */ mannequin_cue_spawn,
    /* Spawn Parameter */ 0,
    /* Func. Update    */ mannequin_cue_update,
    /* Func. Despawn   */ mannequin_cue_despawn,
    /* Func. Hit       */ mannequin_cue_hit,
    /* Func. Barely    */ mannequin_cue_barely,
    /* Func. Miss      */ mannequin_cue_miss,
    /* SFX Spawn       */ NULL,
    /* SFX Hit         */ NULL,
    /* SFX Barely      */ NULL,
    /* SFX Miss        */ NULL,
    /* Miss Condition  */ NULL
};

// [D_089df454] Cue 01
struct CueDefinition mannequin_cue_01 = {
    /* Unknown Param.  */ 0,
    /* Input Buttons   */ PRESS_BUTTON(B_BUTTON),
    /* Total Duration  */ 0x0C,
    /* Hit Window      */ -0x03, 0x03,
    /* Barely Window   */ -0x05, 0x05,
    /* Tempo-Dependent */ FALSE,
    /* Force-Delete    */ FALSE,
    /* Size in Memory  */ 0x8,
    /* Func. Spawn     */ mannequin_cue_spawn,
    /* Spawn Parameter */ 1,
    /* Func. Update    */ mannequin_cue_update,
    /* Func. Despawn   */ mannequin_cue_despawn,
    /* Func. Hit       */ mannequin_cue_hit,
    /* Func. Barely    */ mannequin_cue_barely,
    /* Func. Miss      */ mannequin_cue_miss,
    /* SFX Spawn       */ NULL,
    /* SFX Hit         */ NULL,
    /* SFX Barely      */ NULL,
    /* SFX Miss        */ NULL,
    /* Miss Condition  */ NULL
};

// [D_089df494] Cue 02
struct CueDefinition mannequin_cue_02 = {
    /* Unknown Param.  */ 0,
    /* Input Buttons   */ PRESS_BUTTON(DPAD_RIGHT),
    /* Total Duration  */ 0x0C,
    /* Hit Window      */ -0x03, 0x03,
    /* Barely Window   */ -0x05, 0x05,
    /* Tempo-Dependent */ FALSE,
    /* Force-Delete    */ FALSE,
    /* Size in Memory  */ 0x8,
    /* Func. Spawn     */ mannequin_cue_spawn,
    /* Spawn Parameter */ 2,
    /* Func. Update    */ mannequin_cue_update,
    /* Func. Despawn   */ mannequin_cue_despawn,
    /* Func. Hit       */ mannequin_cue_hit,
    /* Func. Barely    */ mannequin_cue_barely,
    /* Func. Miss      */ mannequin_cue_miss,
    /* SFX Spawn       */ NULL,
    /* SFX Hit         */ NULL,
    /* SFX Barely      */ NULL,
    /* SFX Miss        */ NULL,
    /* Miss Condition  */ NULL
};

// [D_089df4d4] Cue 03
struct CueDefinition mannequin_cue_03 = {
    /* Unknown Param.  */ 0,
    /* Input Buttons   */ PRESS_BUTTON(DPAD_LEFT),
    /* Total Duration  */ 0x0C,
    /* Hit Window      */ -0x03, 0x03,
    /* Barely Window   */ -0x05, 0x05,
    /* Tempo-Dependent */ FALSE,
    /* Force-Delete    */ FALSE,
    /* Size in Memory  */ 0x8,
    /* Func. Spawn     */ mannequin_cue_spawn,
    /* Spawn Parameter */ 3,
    /* Func. Update    */ mannequin_cue_update,
    /* Func. Despawn   */ mannequin_cue_despawn,
    /* Func. Hit       */ mannequin_cue_hit,
    /* Func. Barely    */ mannequin_cue_barely,
    /* Func. Miss      */ mannequin_cue_miss,
    /* SFX Spawn       */ NULL,
    /* SFX Hit         */ NULL,
    /* SFX Barely      */ NULL,
    /* SFX Miss        */ NULL,
    /* Miss Condition  */ NULL
};

// [D_089df514] Cue 04
struct CueDefinition mannequin_cue_04 = {
    /* Unknown Param.  */ 0,
    /* Input Buttons   */ PRESS_BUTTON(DPAD_LEFT),
    /* Total Duration  */ 0x0C,
    /* Hit Window      */ -0x03, 0x01,
    /* Barely Window   */ -0x05, 0x01,
    /* Tempo-Dependent */ FALSE,
    /* Force-Delete    */ FALSE,
    /* Size in Memory  */ 0x8,
    /* Func. Spawn     */ mannequin_cue_spawn,
    /* Spawn Parameter */ 3,
    /* Func. Update    */ mannequin_cue_update,
    /* Func. Despawn   */ mannequin_cue_despawn,
    /* Func. Hit       */ mannequin_cue_hit,
    /* Func. Barely    */ mannequin_cue_barely,
    /* Func. Miss      */ mannequin_cue_miss,
    /* SFX Spawn       */ NULL,
    /* SFX Hit         */ NULL,
    /* SFX Barely      */ NULL,
    /* SFX Miss        */ NULL,
    /* Miss Condition  */ NULL
};

// [D_089df554] Cue 05
struct CueDefinition mannequin_cue_05 = {
    /* Unknown Param.  */ 0,
    /* Input Buttons   */ 0,
    /* Total Duration  */ 0x0C,
    /* Hit Window      */ 0x00, 0x00,
    /* Barely Window   */ 0x00, 0x00,
    /* Tempo-Dependent */ FALSE,
    /* Force-Delete    */ FALSE,
    /* Size in Memory  */ 0x8,
    /* Func. Spawn     */ mannequin_cue_spawn,
    /* Spawn Parameter */ 5,
    /* Func. Update    */ mannequin_cue_update,
    /* Func. Despawn   */ mannequin_cue_despawn,
    /* Func. Hit       */ mannequin_cue_hit,
    /* Func. Barely    */ mannequin_cue_barely,
    /* Func. Miss      */ mannequin_cue_miss,
    /* SFX Spawn       */ NULL,
    /* SFX Hit         */ NULL,
    /* SFX Barely      */ NULL,
    /* SFX Miss        */ NULL,
    /* Miss Condition  */ NULL
};

// [D_089df594] Cue Definition Index
struct CueDefinition *mannequin_cue_index[] = {
    /* 0x00 */ &mannequin_cue_00,
    /* 0x01 */ &mannequin_cue_01,
    /* 0x02 */ &mannequin_cue_02,
    /* 0x03 */ &mannequin_cue_03,
    /* 0x04 */ &mannequin_cue_04,
    /* 0x05 */ &mannequin_cue_05,
    /* 0x06 */ NULL,
    /* 0x07 */ NULL,
    /* 0x08 */ NULL,
    /* 0x09 */ NULL,
    /* 0x0A */ NULL,
    /* 0x0B */ NULL,
    END_OF_CUE_INDEX
};


  //  //  //  GAME ENGINE DATA  //  //  //


// [D_089df5c8] Common Events
EngineEvent mannequin_common_events[] = {
    /* BEAT_ANIMATION */ mannequin_common_beat_animation,
    /* DISPLAY_TEXT   */ mannequin_common_display_text,
    /* INIT_TUTORIAL  */ mannequin_common_init_tutorial,
    END_OF_COMMON_EVENT_LIST
};

// [D_089df5d8] Engine Events
EngineEvent mannequin_engine_events[] = {
    /* 0x00 */ func_080226d4,
    /* 0x01 */ func_080229bc,
    /* 0x02 */ func_08022f00,
    /* 0x03 */ func_08022f1c,
    /* 0x04 */ func_08023150,
    /* 0x05 */ func_08023164,
    /* 0x06 */ func_08022ba0,
    /* 0x07 */ mannequin_engine_event_stub
};

// [D_089df5f8] Mannequin Factory Game Engine
struct GameEngine mannequin_factory_engine = {
    /* Size in Memory */ sizeof(struct MannequinFactoryEngineData),
    /* Start Engine   */ mannequin_engine_start,
    /* Update Engine  */ mannequin_engine_update,
    /* Stop Engine    */ mannequin_engine_stop,
    /* Cue Index      */ mannequin_cue_index,
    /* Common Events  */ mannequin_common_events,
    /* Engine Events  */ mannequin_engine_events,
    /* Input Event    */ mannequin_input_event
};
