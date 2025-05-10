#include "engines/quiz_show.h"


  //  //  //  GRAPHICS DATA  //  //  //


// [D_089e5d2c] Buffered Textures List
struct CompressedData *quiz_show_buffered_textures[] = {
    END_OF_BUFFERED_TEXTURES_LIST
};

// [D_089e5d30] Graphics Table
struct GraphicsTable quiz_show_gfx_table[] = {
    /* BG Tileset */ {
        /* Src.  */ &quiz_show_bg_tiles,
        /* Dest. */ BG_TILESET_BASE(0),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Map */ {
        /* Src.  */ &quiz_show_bg_map_spotlight,
        /* Dest. */ BG_MAP_BASE(0xE000),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Map */ {
        /* Src.  */ &quiz_show_bg_map_text_bubble,
        /* Dest. */ BG_MAP_BASE(0xE800),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Map */ {
        /* Src.  */ &quiz_show_bg_map_stands,
        /* Dest. */ BG_MAP_BASE(0xF000),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Map */ {
        /* Src.  */ &quiz_show_bg_map,
        /* Dest. */ BG_MAP_BASE(0xF800),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* OBJ Tileset */ {
        /* Src.  */ &quiz_show_obj,
        /* Dest. */ OBJ_TILESET_BASE(0),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Palette */ {
        /* Src.  */ quiz_show_bg_pal,
        /* Dest. */ BG_PALETTE_BUFFER(0),
        /* Size  */ 0x140
    },
    /* OBJ Palette */ {
        /* Src.  */ quiz_show_obj_pal,
        /* Dest. */ OBJ_PALETTE_BUFFER(0),
        /* Size  */ 0x140
    },
    END_OF_GRAPHICS_TABLE
};

// [D_089e5d9c] Right Arm Animations
struct Animation *quiz_show_arm_r_anim[] = {
    /* HOST   */ anim_quiz_show_host_arm_r,
    /* PLAYER */ anim_quiz_show_player_arm_r
};

// [D_089e5da4] Left Arm Animations
struct Animation *quiz_show_arm_l_anim[] = {
    /* HOST   */ anim_quiz_show_host_arm_l,
    /* PLAYER */ anim_quiz_show_player_arm_l
};

// [D_089e5dac] Neutral Expression Animations
struct Animation *quiz_show_face_neutral_anim[] = {
    /* HOST   */ anim_quiz_show_host_head,
    /* PLAYER */ anim_quiz_show_player_head
};

// [D_089e5db4] Success Expression Animations
struct Animation *quiz_show_face_success_anim[] = {
    /* HOST   */ anim_quiz_show_host_head_success,
    /* PLAYER */ anim_quiz_show_player_head_success
};

// [D_089e5dbc] Failure Expression Animations
struct Animation *quiz_show_face_failure_anim[] = {
    /* HOST   */ anim_quiz_show_host_head_failure,
    /* PLAYER */ anim_quiz_show_player_head_failure
};


  //  //  //  CUE DATA  //  //  //


// [D_089e5dc4] Quiz Host Button Press Animations
struct Animation *quiz_show_host_button_press_anim[] = {
    /* RIGHT */ anim_quiz_show_host_press_button_r,
    /* LEFT  */ anim_quiz_show_host_press_button_l
};

// [D_089e5dcc] Quiz Endless Host Expression Animations
struct Animation *quiz_show_endless_host_face_anim[] = {
    /* 0x00 */ anim_quiz_show_host_head,
    /* 0x01 */ anim_quiz_show_host_head_endless1,
    /* 0x02 */ anim_quiz_show_host_head_endless2,
    /* 0x03 */ anim_quiz_show_host_head_endless3,
    /* 0x04 */ anim_quiz_show_host_head_endless4
};

// [D_089e5de0] Cue 00 (Default)
struct CueDefinition quiz_show_cue_default = {
    /* Unknown Param.  */ 0,
    /* Input Buttons   */ PRESS_BUTTON(A_BUTTON),
    /* Total Duration  */ 0x18,
    /* Hit Window      */ -0x02, 0x02,
    /* Barely Window   */ -0x05, 0x05,
    /* Tempo-Dependent */ FALSE,
    /* Force-Delete    */ FALSE,
    /* Size in Memory  */ 0x4,
    /* Func. Spawn     */ quiz_show_cue_spawn,
    /* Spawn Parameter */ 0,
    /* Func. Update    */ quiz_show_cue_update,
    /* Func. Despawn   */ quiz_show_cue_despawn,
    /* Func. Hit       */ quiz_show_cue_hit,
    /* Func. Barely    */ quiz_show_cue_barely,
    /* Func. Miss      */ quiz_show_cue_miss,
    /* SFX Spawn       */ &s_f_dummy_vol0_seqData,
    /* SFX Hit         */ &s_f_dummy_vol0_seqData,
    /* SFX Barely      */ &s_witch_donats_seqData,
    /* SFX Miss        */ NULL,
    /* Miss Condition  */ NULL
};

// [D_089e5e20] Cue Definition Index
struct CueDefinition *quiz_show_cue_index[] = {
    /* 0x00 */ &quiz_show_cue_default,
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

// [D_089e5e54] Quiz Show Endless Player Expression Animations
struct Animation *quiz_show_endless_player_face_anim[] = {
    /* 0x00 */ anim_quiz_show_player_head,
    /* 0x01 */ anim_quiz_show_player_head,
    /* 0x02 */ anim_quiz_show_player_head_endless2,
    /* 0x03 */ anim_quiz_show_player_head_endless3,
    /* 0x04 */ anim_quiz_show_player_head_endless4
};


  //  //  //  GAME ENGINE DATA  //  //  //


// [D_089e5e68] Common Events
EngineEvent quiz_show_common_events[] = {
    /* BEAT_ANIMATION */ quiz_show_common_beat_animation,
    /* DISPLAY_TEXT   */ quiz_show_common_display_text,
    /* INIT_TUTORIAL  */ quiz_show_common_init_tutorial,
    END_OF_COMMON_EVENT_LIST
};

// [D_089e5e78] Engine Events
EngineEvent quiz_show_engine_events[] = {
    /* 0x00 */ func_08037be0,
    /* 0x01 */ func_08037a64,
    /* 0x02 */ func_08037bf4,
    /* 0x03 */ func_08037cb8,
    /* 0x04 */ func_08037cd0,
    /* 0x05 */ func_080373ac,
    /* 0x06 */ func_080373dc,
    /* 0x07 */ func_08037d00,
    /* 0x08 */ func_08037d0c,
    /* 0x09 */ func_08037d1c,
    /* 0x0A */ func_08037d2c,
    /* 0x0B */ func_08037d6c,
    /* 0x0C */ func_08037d90,
    /* 0x0D */ func_08037dc8,
    /* 0x0E */ func_08037e24,
    /* 0x0F */ func_08037280,
    /* 0x10 */ func_080372c0,
    /* 0x11 */ quiz_show_engine_event_stub
};

// [D_089e5ec0] Quiz Show Game Engine
struct GameEngine quiz_show_engine = {
    /* Size in Memory */ sizeof(struct QuizShowEngineData),
    /* Start Engine   */ quiz_show_engine_start,
    /* Update Engine  */ quiz_show_engine_update,
    /* Stop Engine    */ quiz_show_engine_stop,
    /* Cue Index      */ quiz_show_cue_index,
    /* Common Events  */ quiz_show_common_events,
    /* Engine Events  */ quiz_show_engine_events,
    /* Input Event    */ quiz_show_input_event
};
