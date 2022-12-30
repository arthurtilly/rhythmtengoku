#include "engines/quiz_show.h"


  /* QUIZ SHOW - GAME ENGINE DATA */


extern const struct Animation anim_quiz_host_press_button_r[];
extern const struct Animation anim_quiz_host_press_button_l[];
extern const struct Animation anim_quiz_host_arm_r[];
extern const struct Animation anim_quiz_player_arm_r[];
extern const struct Animation anim_quiz_host_arm_l[];
extern const struct Animation anim_quiz_player_arm_l[];
extern const struct Animation anim_quiz_host_head[];
extern const struct Animation anim_quiz_player_head[];
extern const struct Animation anim_quiz_host_head_success[];
extern const struct Animation anim_quiz_player_head_success[];
extern const struct Animation anim_quiz_host_head_failure[];
extern const struct Animation anim_quiz_player_head_failure[];
extern const struct Animation anim_quiz_host_head_endless1[];
extern const struct Animation anim_quiz_host_head_endless2[];
extern const struct Animation anim_quiz_host_head_endless3[];
extern const struct Animation anim_quiz_host_head_endless4[];
extern const struct Animation anim_quiz_player_head_endless2[];
extern const struct Animation anim_quiz_player_head_endless3[];
extern const struct Animation anim_quiz_player_head_endless4[];

extern const struct CompressedGraphics D_08c7d2ac;
extern const struct CompressedGraphics D_08c7db1c;
extern const struct CompressedGraphics D_08c7da68;
extern const struct CompressedGraphics D_08c7d524;
extern const struct CompressedGraphics D_08c7d9d0;
extern const struct CompressedGraphics D_08c7c8e0;

extern const Palette quiz_bg_pal[];
extern const Palette quiz_obj_pal[];

extern const struct SequenceData s_f_dummy_vol0_seqData;
extern const struct SequenceData s_f_dummy_vol0_seqData;
extern const struct SequenceData s_witch_donats_seqData;


  //  //  //  GRAPHICS DATA  //  //  //


// [D_089e5d2c] Buffered Textures List
const struct CompressedGraphics *const quiz_buffered_textures[] = {
    END_OF_BUFFERED_TEXTURES_LIST
};

// [D_089e5d30] Graphics Table
const struct GraphicsTable quiz_gfx_table[] = {
    /* BG Tileset */ {
        /* Src.  */ &D_08c7d2ac,
        /* Dest. */ BG_TILESET_BASE(0),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Map */ {
        /* Src.  */ &D_08c7db1c,
        /* Dest. */ BG_MAP_BASE(0xE000),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Map */ {
        /* Src.  */ &D_08c7da68,
        /* Dest. */ BG_MAP_BASE(0xE800),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Map */ {
        /* Src.  */ &D_08c7d524,
        /* Dest. */ BG_MAP_BASE(0xF000),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Map */ {
        /* Src.  */ &D_08c7d9d0,
        /* Dest. */ BG_MAP_BASE(0xF800),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* OBJ Tileset */ {
        /* Src.  */ &D_08c7c8e0,
        /* Dest. */ OBJ_TILESET_BASE(0),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Palette */ {
        /* Src.  */ quiz_bg_pal,
        /* Dest. */ BG_PALETTE_BUFFER(0),
        /* Size  */ 0x140
    },
    /* OBJ Palette */ {
        /* Src.  */ quiz_obj_pal,
        /* Dest. */ OBJ_PALETTE_BUFFER(0),
        /* Size  */ 0x140
    },
    END_OF_GRAPHICS_TABLE
};

// [D_089e5d9c] Right Arm Animations
const struct Animation *const quiz_arm_r_anim[] = {
    /* HOST   */ anim_quiz_host_arm_r,
    /* PLAYER */ anim_quiz_player_arm_r
};

// [D_089e5da4] Left Arm Animations
const struct Animation *const quiz_arm_l_anim[] = {
    /* HOST   */ anim_quiz_host_arm_l,
    /* PLAYER */ anim_quiz_player_arm_l
};

// [D_089e5dac] Neutral Expression Animations
const struct Animation *const quiz_face_neutral_anim[] = {
    /* HOST   */ anim_quiz_host_head,
    /* PLAYER */ anim_quiz_player_head
};

// [D_089e5db4] Success Expression Animations
const struct Animation *const quiz_face_success_anim[] = {
    /* HOST   */ anim_quiz_host_head_success,
    /* PLAYER */ anim_quiz_player_head_success
};

// [D_089e5dbc] Failure Expression Animations
const struct Animation *const quiz_face_failure_anim[] = {
    /* HOST   */ anim_quiz_host_head_failure,
    /* PLAYER */ anim_quiz_player_head_failure
};


  //  //  //  CUE DATA  //  //  //


// [D_089e5dc4] Quiz Host Button Press Animations
const struct Animation *const quiz_host_button_press_anim[] = {
    /* RIGHT */ anim_quiz_host_press_button_r,
    /* LEFT  */ anim_quiz_host_press_button_l
};

// [D_089e5dcc] Quiz Endless Host Expression Animations
const struct Animation *const quiz_ex_host_face_anim[] = {
    /* 0x00 */ anim_quiz_host_head,
    /* 0x01 */ anim_quiz_host_head_endless1,
    /* 0x02 */ anim_quiz_host_head_endless2,
    /* 0x03 */ anim_quiz_host_head_endless3,
    /* 0x04 */ anim_quiz_host_head_endless4
};

// [D_089e5de0] Cue 00 (Default)
const struct CueDefinition quiz_cue_default = {
    /* Unknown Param.  */ 0,
    /* Input Buttons   */ PRESS_BUTTON(A_BUTTON),
    /* Total Duration  */ 0x18,
    /* Hit Window      */ -0x02, 0x02,
    /* Barely Window   */ -0x05, 0x05,
    /* Tempo-Dependent */ FALSE,
    /* Force-Delete    */ FALSE,
    /* Size in Memory  */ 0x4,
    /* Func. Spawn     */ quiz_cue_spawn,
    /* Spawn Parameter */ 0,
    /* Func. Update    */ quiz_cue_update,
    /* Func. Despawn   */ quiz_cue_despawn,
    /* Func. Hit       */ quiz_cue_hit,
    /* Func. Barely    */ quiz_cue_barely,
    /* Func. Miss      */ quiz_cue_miss,
    /* SFX Spawn       */ &s_f_dummy_vol0_seqData,
    /* SFX Hit         */ &s_f_dummy_vol0_seqData,
    /* SFX Barely      */ &s_witch_donats_seqData,
    /* SFX Miss        */ NULL,
    /* Miss Condition  */ NULL
};

// [D_089e5e20] Cue Definition Index
const struct CueDefinition *const quiz_cue_index[] = {
    /* 0x00 */ &quiz_cue_default,
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

// [D_089e5e54] Quiz Endless Player Expression Animations
const struct Animation *const quiz_ex_player_face_anim[] = {
    /* 0x00 */ anim_quiz_player_head,
    /* 0x01 */ anim_quiz_player_head,
    /* 0x02 */ anim_quiz_player_head_endless2,
    /* 0x03 */ anim_quiz_player_head_endless3,
    /* 0x04 */ anim_quiz_player_head_endless4
};


  //  //  //  GAME ENGINE DATA  //  //  //


// [D_089e5e68] Common Events
const EngineEvent quiz_common_events[] = {
    /* BEAT_ANIMATION */ (EngineEvent) quiz_common_beat_animation,
    /* DISPLAY_TEXT   */ (EngineEvent) quiz_common_display_text,
    /* INIT_TUTORIAL  */ (EngineEvent) quiz_common_init_tutorial,
    END_OF_COMMON_EVENT_LIST
};

// [D_089e5e78] Engine Events
const EngineEvent quiz_engine_events[] = {
    /* 0x00 */ (EngineEvent) func_08037be0,
    /* 0x01 */ (EngineEvent) func_08037a64,
    /* 0x02 */ (EngineEvent) func_08037bf4,
    /* 0x03 */ (EngineEvent) func_08037cb8,
    /* 0x04 */ (EngineEvent) func_08037cd0,
    /* 0x05 */ (EngineEvent) func_080373ac,
    /* 0x06 */ (EngineEvent) func_080373dc,
    /* 0x07 */ (EngineEvent) func_08037d00,
    /* 0x08 */ (EngineEvent) func_08037d0c,
    /* 0x09 */ (EngineEvent) func_08037d1c,
    /* 0x0A */ (EngineEvent) func_08037d2c,
    /* 0x0B */ (EngineEvent) func_08037d6c,
    /* 0x0C */ (EngineEvent) func_08037d90,
    /* 0x0D */ (EngineEvent) func_08037dc8,
    /* 0x0E */ (EngineEvent) func_08037e24,
    /* 0x0F */ (EngineEvent) func_08037280,
    /* 0x10 */ (EngineEvent) func_080372c0,
    /* 0x11 */ (EngineEvent) quiz_engine_event_stub
};

// [D_089e5ec0] Quiz Show Game Engine
const struct GameEngine D_089e5ec0 = {
    /* Size in Memory */ 0x58,
    /* Start Engine   */ quiz_engine_start,
    /* Update Engine  */ quiz_engine_update,
    /* Stop Engine    */ quiz_engine_stop,
    /* Cue Index      */ quiz_cue_index,
    /* Common Events  */ quiz_common_events,
    /* Engine Events  */ quiz_engine_events,
    /* Input Event    */ quiz_input_event
};
