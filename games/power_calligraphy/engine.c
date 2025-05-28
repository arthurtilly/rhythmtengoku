#include "engines/power_calligraphy.h"


  //  //  //  GRAPHICS DATA  //  //  //


// [D_089e4958] Little People Start Positions
struct Vector2 power_calligraphy_people_start_pos[] = {
    /* M */ {  32, -160 },
    /* W */ { 216,  192 }
};

// [D_089e4960] Little People Dancing Animations
struct Animation *power_calligraphy_people_dance_anim[][2] = {
    /* M */ { anim_power_calligraphy_people_m_dance_l, anim_power_calligraphy_people_m_dance_r },
    /* W */ { anim_power_calligraphy_people_w_dance_r, anim_power_calligraphy_people_w_dance_l }
};

// [D_089e4970] Little People Stumbling Animations
struct Animation *power_calligraphy_people_fall_anim[][2] = {
    /* M */ { anim_power_calligraphy_people_m_fall_r, anim_power_calligraphy_people_m_fall_l },
    /* W */ { anim_power_calligraphy_people_w_fall_r, anim_power_calligraphy_people_w_fall_l }
};

// [D_089e4980] Little People Bowing Animations
struct Animation *power_calligraphy_people_bow_anim[][2] = {
    /* M */ { anim_power_calligraphy_people_m_bow_r, anim_power_calligraphy_people_m_bow_l },
    /* W */ { anim_power_calligraphy_people_w_bow_r, anim_power_calligraphy_people_w_bow_l }
};

// [D_089e4990] Buffered Textures List
struct CompressedData *power_calligraphy_buffered_textures[] = {
    END_OF_BUFFERED_TEXTURES_LIST
};

// [D_089e4994] Graphics Table (Power Calligraphy)
struct GraphicsTable power_calligraphy_gfx_table[] = {
    /* BG Tileset */ {
        /* Src.  */ &power_calligraphy_bg_tiles,
        /* Dest. */ BG_TILESET_BASE(0),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Map */ {
        /* Src.  */ &power_calligraphy_bg_map,
        /* Dest. */ BG_MAP_BASE(0xE800),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* OBJ Tileset */ {
        /* Src.  */ &power_calligraphy_obj,
        /* Dest. */ OBJ_TILESET_BASE(0),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* OBJ Tileset */ {
        /* Src.  */ &power_calligraphy_obj_dancers,
        /* Dest. */ OBJ_TILESET_BASE(0x5800),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Palette */ {
        /* Src.  */ power_calligraphy_pal,
        /* Dest. */ BG_PALETTE_BUFFER(0),
        /* Size  */ 0x140
    },
    /* OBJ Palette */ {
        /* Src.  */ power_calligraphy_pal,
        /* Dest. */ OBJ_PALETTE_BUFFER(0),
        /* Size  */ 0x1C0
    },
    END_OF_GRAPHICS_TABLE
};

// [D_089e49e8] Kana Animations
struct Animation *power_calligraphy_kana_anim[] = {
    /* ONORE   */ anim_power_calligraphy_onore,
    /* CHIKARA */ anim_power_calligraphy_chikara,
    /* SUN     */ anim_power_calligraphy_sun,
    /* KOKORO  */ anim_power_calligraphy_kokoro,
    /* RE      */ anim_power_calligraphy_re,
    /* COMMA   */ anim_power_calligraphy_comma,
    /* FACE    */ anim_power_calligraphy_face,
    /* END     */ anim_power_calligraphy_end_kanji
};

// [D_089e4a08] Player Brush Stroke Animations
struct Animation *power_calligraphy_pattern_input_anim[] = {
    /* ONORE 1   */ anim_power_calligraphy_onore_input1,
    /* CHIKARA 1 */ anim_power_calligraphy_chikara_input1,
    /* CHIKARA 2 */ anim_power_calligraphy_chikara_input2,
    /* SUN 1     */ anim_power_calligraphy_sun_input1,
    /* SUN 2     */ anim_power_calligraphy_sun_input2,
    /* KOKORO 1  */ anim_power_calligraphy_kokoro_input1,
    /* KOKORO 2  */ anim_power_calligraphy_kokoro_input2,
    /* KOKORO 3  */ anim_power_calligraphy_kokoro_input3,
    /* RE 1      */ anim_power_calligraphy_re_input1,
    /* COMMA 1   */ anim_power_calligraphy_comma_input1,
    /* FACE 1    */ anim_power_calligraphy_face_input1
};

// [D_089e4a34] Paper Input Motions
struct Vector2 power_calligraphy_paper_motions[] = {
    /* ONORE 1   */ {  0, -8 },
    /* CHIKARA 1 */ { -6, -6 },
    /* CHIKARA 2 */ { -4,  8 },
    /* SUN 1     */ { -4, -6 },
    /* SUN 2     */ {  4,  4 },
    /* KOKORO 1  */ { -4, -6 },
    /* KOKORO 2  */ {  4,  4 },
    /* KOKORO 3  */ {  6,  6 },
    /* RE 1      */ {  6, -6 },
    /* COMMA 1   */ {  5,  6 },
    /* FACE 1    */ {  6, -1 }
};

// [D_089e4a60] Brush Input Motions
struct CalligraphyBrushMotion power_calligraphy_brush_motions[][3] = {
    /* ONORE 1 */ {
        /* Hit   */ {  31, -30, 0 },
        /* Early */ {  65, -14, 0 },
        /* Late  */ {  36,  -7, 0 }
    },
    /* CHIKARA 1 */ {
        /* Hit   */ {   1, -22, 0 },
        /* Early */ { -11,  28, 0 },
        /* Late  */ {  19,  -4, 0 }
    },
    /* CHIKARA 2 */ {
        /* Hit   */ { -61,  43, 0 },
        /* Early */ { -46,  40, 0 },
        /* Late  */ {   3, -54, 0 }
    },
    /* SUN 1 */ {
        /* Hit   */ { -14, -15, 0 },
        /* Early */ { -19,  -8, 0 },
        /* Late  */ {   9,   6, 0 }
    },
    /* SUN 2 */ {
        /* Hit   */ {   1,  -7, 1 },
        /* Early */ {   2,  -8, 1 },
        /* Late  */ {   6, -18, 1 }
    },
    /* KOKORO 1 */ {
        /* Hit   */ {  29, -40, 0 },
        /* Early */ {  76, -30, 0 },
        /* Late  */ {  51, -22, 0 }
    },
    /* KOKORO 2 */ {
        /* Hit   */ {  17, -34, 1 },
        /* Early */ {  15, -41, 1 },
        /* Late  */ {  21, -54, 1 }
    },
    /* KOKORO 3 */ {
        /* Hit   */ {  44, -36, 1 },
        /* Early */ {  60, -32, 0 },
        /* Late  */ {  38, -51, 1 }
    },
    /* RE 1 */ {
        /* Hit   */ {  39, -29, 0 },
        /* Early */ {  30, -14, 0 },
        /* Late  */ {  17,  -8, 0 }
    },
    /* COMMA 1 */ {
        /* Hit   */ {  12,  -4, 1 },
        /* Early */ {  35,  -6, 0 },
        /* Late  */ {  20, -10, 0 }
    },
    /* FACE 1 */ {
        /* Hit   */ {  32, -11, 0 },
        /* Early */ {  10,  81, 0 },
        /* Late  */ {   0,  14, 0 }
    }
};


  //  //  //  CUE DATA  //  //  //


// [D_089e4ae4] Input Sounds (Hit)
struct SongHeader *power_calligraphy_input_hit_sfx[] = {
    /* ONORE 1   */ &s_sword_orya_seqData,
    /* CHIKARA 1 */ &s_sword_orya_seqData,
    /* CHIKARA 2 */ &s_sword_orya_seqData,
    /* SUN 1     */ &s_sword_orya_seqData,
    /* SUN 2     */ &s_sword_hi_seqData,
    /* KOKORO 1  */ &s_sword_orya_seqData,
    /* KOKORO 2  */ &s_sword_hi_seqData,
    /* KOKORO 3  */ &s_sword_hi_seqData,
    /* RE 1      */ &s_sword_orya_seqData,
    /* COMMA 1   */ &s_sword_hi_seqData,
    /* FACE 1    */ &s_sword_orya_seqData
};

// [D_089e4b10] Input Sounds (Barely)
struct SongHeader *power_calligraphy_input_barely_sfx[] = {
    /* ONORE 1   */ &s_f_shuji_v_nuaa_seqData,
    /* CHIKARA 1 */ &s_f_shuji_v_nuaa_seqData,
    /* CHIKARA 2 */ &s_f_shuji_v_unuu_seqData,
    /* SUN 1     */ &s_f_shuji_v_nuaa_seqData,
    /* SUN 2     */ &s_f_shuji_v_ouch_seqData,
    /* KOKORO 1  */ &s_f_shuji_v_nuaa_seqData,
    /* KOKORO 2  */ &s_f_shuji_v_ouch_seqData,
    /* KOKORO 3  */ &s_f_shuji_v_ouch_seqData,
    /* RE 1      */ &s_f_shuji_v_nuaa_seqData,
    /* COMMA 1   */ &s_f_shuji_v_ouch_seqData,
    /* FACE 1    */ &s_f_shuji_v_unuu_seqData
};

// [D_089e4b3c] Cue 00 (Stroke)
struct CueDefinition power_calligraphy_cue_default = {
    /* Unknown Param.  */ 0,
    /* Input Buttons   */ PRESS_BUTTON(A_BUTTON),
    /* Total Duration  */ 24,
    /* Hit Window      */ -4, 4,
    /* Barely Window   */ -24, 12,
    /* Tempo-Dependent */ FALSE,
    /* Force-Delete    */ FALSE,
    /* Size in Memory  */ sizeof(struct PowerCalligraphyCue),
    /* Func. Spawn     */ power_calligraphy_cue_spawn,
    /* Spawn Parameter */ 0,
    /* Func. Update    */ power_calligraphy_cue_update,
    /* Func. Despawn   */ power_calligraphy_cue_despawn,
    /* Func. Hit       */ power_calligraphy_cue_hit,
    /* Func. Barely    */ power_calligraphy_cue_barely,
    /* Func. Miss      */ power_calligraphy_cue_miss,
    /* SFX Spawn       */ NULL,
    /* SFX Hit         */ NULL,
    /* SFX Barely      */ NULL,
    /* SFX Miss        */ &s_f_shuji_v_nuahaha_seqData,
    /* Miss Condition  */ NULL
};

// [D_089e4b7c] Cue Definition Index
struct CueDefinition *power_calligraphy_cue_index[] = {
    /* 0x00 */ &power_calligraphy_cue_default,
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


// [D_089e4bb0] Common Events
EngineEvent power_calligraphy_common_events[] = {
    /* BEAT_ANIMATION */ power_calligraphy_common_beat_animation,
    /* DISPLAY_TEXT   */ power_calligraphy_common_display_text,
    /* INIT_TUTORIAL  */ power_calligraphy_common_init_tutorial,
    END_OF_COMMON_EVENT_LIST
};

// [D_089e4bc0] Engine Events
EngineEvent power_calligraphy_engine_events[] = {
    /* 0x00 */ power_calligraphy_set_kana,
    /* 0x01 */ power_calligraphy_set_kana_cel,
    /* 0x02 */ power_calligraphy_offset_paper,
    /* 0x03 */ power_calligraphy_remove_paper,
    /* 0x04 */ power_calligraphy_set_next_input,
    /* 0x05 */ power_calligraphy_finish_input_kokoro2,
    /* 0x06 */ power_calligraphy_event_set_brush,
    /* 0x07 */ power_calligraphy_charge_brush,
    /* 0x08 */ power_calligraphy_set_charge_effect,
    /* 0x09 */ power_calligraphy_raise_brush,
    /* 0x0A */ power_calligraphy_start_ink_swirl,
    /* 0x0B */ power_calligraphy_set_little_people_state,
    /* 0x0C */ power_calligraphy_set_little_people_pos,
    /* 0x0D */ power_calligraphy_engine_event_stub
};

// [D_089e4bf8] Power Calligraphy Game Engine
struct GameEngine power_calligraphy_engine = {
    /* Size in Memory */ sizeof(struct PowerCalligraphyEngineData),
    /* Start Engine   */ power_calligraphy_engine_start,
    /* Update Engine  */ power_calligraphy_engine_update,
    /* Stop Engine    */ power_calligraphy_engine_stop,
    /* Cue Index      */ power_calligraphy_cue_index,
    /* Common Events  */ power_calligraphy_common_events,
    /* Engine Events  */ power_calligraphy_engine_events,
    /* Input Event    */ power_calligraphy_input_event
};
