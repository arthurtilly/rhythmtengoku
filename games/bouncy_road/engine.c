#include "engines/bouncy_road.h"


  //  //  //  GRAPHICS DATA  //  //  //


// [D_089e3c04] Player Bouncer Animation Table (Unused)
struct Animation *bouncy_road_player_bouncer_anim[] = {
    /* 00 */ anim_bouncy_road_player_a,
    /* 01 */ anim_bouncy_road_player_dpad
};


// [D_089e3c0c] Buffered Textures List
struct CompressedData *bouncy_road_buffered_textures[] = {
    END_OF_BUFFERED_TEXTURES_LIST
};


// [D_089e3c10] Graphics Table (Bouncy Road)
struct GraphicsTable bouncy_road_1_gfx_table[] = {
    ADD_OBJ_TEXTURE(&bouncy_road_obj, 0),
    ADD_BG_PALETTE(bouncy_road_pal, 0, 160),
    ADD_OBJ_PALETTE(bouncy_road_pal, 0, 160),
    END_OF_GRAPHICS_TABLE
};

// [D_089e3c40] Graphics Table (Remix 5)
struct GraphicsTable bouncy_road_remix_5_gfx_table[] = {
    ADD_BG_TEXTURE(&bouncy_road_remix_5_bg_tiles, 0),
    ADD_BG_MAP(&bouncy_road_remix_5_bg_map_1, 29),
    ADD_BG_MAP(&bouncy_road_remix_5_bg_map_2, 30),
    ADD_BG_MAP(&bouncy_road_remix_5_bg_map_3, 31),
    ADD_OBJ_TEXTURE(&bouncy_road_obj, 0),
    ADD_BG_PALETTE(bouncy_road_remix_5_bg_pal, 0, 160),
    ADD_OBJ_PALETTE(bouncy_road_remix_5_obj_pal, 0, 160),
    END_OF_GRAPHICS_TABLE
};

// [D_089e3ca0] Graphics Table (Bouncy Road 2)
struct GraphicsTable bouncy_road_2_gfx_table[] = {
    ADD_OBJ_TEXTURE(&bouncy_road_obj, 0),
    ADD_BG_PALETTE(bouncy_road_2_pal, 0, 160),
    ADD_OBJ_PALETTE(bouncy_road_2_pal, 0, 160),
    END_OF_GRAPHICS_TABLE
};

// [D_089e3cd0] Graphics Table Index
struct GraphicsTable *bouncy_road_gfx_tables[] = {
    /* 0x00 */ bouncy_road_1_gfx_table,
    /* 0x01 */ bouncy_road_remix_5_gfx_table,
    /* 0x02 */ bouncy_road_2_gfx_table
};


  //  //  //  CUE DATA  //  //  //


// [D_089e3cdc] Cue 00 (Default)
struct CueDefinition bouncy_road_cue_default = {
    /* Unknown Param.  */ 0,
    /* Input Buttons   */ PRESS_BUTTON(A_BUTTON),
    /* Total Duration  */ 24,
    /* Hit Window      */ -3, 3,
    /* Barely Window   */ -4, 4,
    /* Tempo-Dependent */ FALSE,
    /* Force-Delete    */ FALSE,
    /* Size in Memory  */ sizeof(struct BouncyRoadCue),
    /* Func. Spawn     */ bouncy_road_cue_spawn,
    /* Spawn Parameter */ 0,
    /* Func. Update    */ bouncy_road_cue_update,
    /* Func. Despawn   */ bouncy_road_cue_despawn,
    /* Func. Hit       */ bouncy_road_cue_hit,
    /* Func. Barely    */ bouncy_road_cue_barely,
    /* Func. Miss      */ bouncy_road_cue_miss,
    /* SFX Spawn       */ NULL,
    /* SFX Hit         */ NULL,
    /* SFX Barely      */ NULL,
    /* SFX Miss        */ NULL,
    /* Miss Condition  */ NULL
};

// [D_089e3d1c] Cue Definition Index
struct CueDefinition *bouncy_road_cue_index[] = {
    /* 0x00 */ &bouncy_road_cue_default,
    /* 0x01 */ NULL,
    /* 0x02 */ NULL,
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


// [D_089e3d50] Common Events
EngineEvent bouncy_road_common_events[] = {
    /* BEAT_ANIMATION */ bouncy_road_common_beat_animation,
    /* DISPLAY_TEXT   */ bouncy_road_common_display_text,
    /* INIT_TUTORIAL  */ // None
    END_OF_COMMON_EVENT_LIST
};

// [D_089e3d5c] Engine Events
EngineEvent bouncy_road_engine_events[] = {
    /* 0x00 */ bouncy_road_deploy_ball,
    /* 0x01 */ bouncy_road_bounce_ball,
    /* 0x02 */ bouncy_road_enable_goal_sfx_for_next_ball,
    /* 0x03 */ bouncy_road_play_bounce_sfx_far,
    /* 0x04 */ bouncy_road_set_ball_palette,
    /* 0x05 */ bouncy_road_set_bounce_height_scale,
    /* 0x06 */ bouncy_road_engine_event_stub
};

// [D_089e3d78] Bouncy Road Game Engine
struct GameEngine bouncy_road_engine = {
    /* Size in Memory */ sizeof(struct BouncyRoadEngineData),
    /* Start Engine   */ bouncy_road_engine_start,
    /* Update Engine  */ bouncy_road_engine_update,
    /* Stop Engine    */ bouncy_road_engine_stop,
    /* Cue Index      */ bouncy_road_cue_index,
    /* Common Events  */ bouncy_road_common_events,
    /* Engine Events  */ bouncy_road_engine_events,
    /* Input Event    */ bouncy_road_input_event
};
