#include "engines/power_calligraphy.h"


  //  //  //  GRAPHICS DATA  //  //  //


// [D_089e4958] Little People Start Positions
struct Vector2 calligraphy_people_start_pos[] = {
    /* M */ {  32, -160 },
    /* W */ { 216,  192 }
};

// [D_089e4960] Little People Dancing Animations
struct Animation *calligraphy_people_dance_anim[][2] = {
    /* M */ { anim_calligraphy_people_m_dance_l, anim_calligraphy_people_m_dance_r },
    /* W */ { anim_calligraphy_people_w_dance_r, anim_calligraphy_people_w_dance_l }
};

// [D_089e4970] Little People Stumbling Animations
struct Animation *calligraphy_people_fall_anim[][2] = {
    /* M */ { anim_calligraphy_people_m_fall_r, anim_calligraphy_people_m_fall_l },
    /* W */ { anim_calligraphy_people_w_fall_r, anim_calligraphy_people_w_fall_l }
};

// [D_089e4980] Little People Bowing Animations
struct Animation *calligraphy_people_bow_anim[][2] = {
    /* M */ { anim_calligraphy_people_m_bow_r, anim_calligraphy_people_m_bow_l },
    /* W */ { anim_calligraphy_people_w_bow_r, anim_calligraphy_people_w_bow_l }
};

// [D_089e4990] Buffered Textures List
struct CompressedGraphics *calligraphy_buffered_textures[] = {
    END_OF_BUFFERED_TEXTURES_LIST
};

// [D_089e4994] Graphics Table (Power Calligraphy)
struct GraphicsTable calligraphy_gfx_table[] = {
    /* BG Tileset */ {
        /* Src.  */ &D_08c68d64,
        /* Dest. */ BG_TILESET_BASE(0),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Map */ {
        /* Src.  */ &D_08c69844,
        /* Dest. */ BG_MAP_BASE(0xE800),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* OBJ Tileset */ {
        /* Src.  */ &D_08c68d1c,
        /* Dest. */ OBJ_TILESET_BASE(0),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* OBJ Tileset */ {
        /* Src.  */ &D_08c69698,
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
struct Animation *calligraphy_pattern_anim[] = {
    /* 0x00 */ anim_calligraphy_onore,
    /* 0x01 */ anim_calligraphy_chikara,
    /* 0x02 */ anim_calligraphy_sun,
    /* 0x03 */ anim_calligraphy_kokoro,
    /* 0x04 */ anim_calligraphy_re,
    /* 0x05 */ anim_calligraphy_comma,
    /* 0x06 */ anim_calligraphy_face,
    /* 0x07 */ anim_calligraphy_end_kanji
};

// [D_089e4a08] Player Brush Stroke Animations
struct Animation *calligraphy_pattern_input_anim[] = {
    /* ONORE 1   */ anim_calligraphy_onore_input1,
    /* CHIKARA 1 */ anim_calligraphy_chikara_input1,
    /* CHIKARA 2 */ anim_calligraphy_chikara_input2,
    /* SUN 1     */ anim_calligraphy_sun_input1,
    /* SUN 2     */ anim_calligraphy_sun_input2,
    /* KOKORO 1  */ anim_calligraphy_kokoro_input1,
    /* KOKORO 2  */ anim_calligraphy_kokoro_input2,
    /* KOKORO 3  */ anim_calligraphy_kokoro_input3,
    /* RE 1      */ anim_calligraphy_re_input1,
    /* COMMA 1   */ anim_calligraphy_comma_input1,
    /* FACE 1    */ anim_calligraphy_face_input1
};

// [D_089e4a34] Paper Motions (?)
struct Vector2 calligraphy_paper_motions[] = {
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

// [D_089e4a60] Brush Motions
struct CalligraphyBrushMotion calligraphy_brush_motions[][3] = {
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
struct SequenceData *calligraphy_input_hit_sfx[] = {
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
struct SequenceData *calligraphy_input_barely_sfx[] = {
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
struct CueDefinition calligraphy_cue_default = {
    /* Unknown Param.  */ 0,
    /* Input Buttons   */ PRESS_BUTTON(A_BUTTON),
    /* Total Duration  */ 0x18,
    /* Hit Window      */ -0x04, 0x04,
    /* Barely Window   */ -0x18, 0x0C,
    /* Tempo-Dependent */ FALSE,
    /* Force-Delete    */ FALSE,
    /* Size in Memory  */ 0x4,
    /* Func. Spawn     */ calligraphy_cue_spawn,
    /* Spawn Parameter */ 0,
    /* Func. Update    */ calligraphy_cue_update,
    /* Func. Despawn   */ calligraphy_cue_despawn,
    /* Func. Hit       */ calligraphy_cue_hit,
    /* Func. Barely    */ calligraphy_cue_barely,
    /* Func. Miss      */ calligraphy_cue_miss,
    /* SFX Spawn       */ NULL,
    /* SFX Hit         */ NULL,
    /* SFX Barely      */ NULL,
    /* SFX Miss        */ &s_f_shuji_v_nuahaha_seqData,
    /* Miss Condition  */ NULL
};

// [D_089e4b7c] Cue Definition Index
struct CueDefinition *calligraphy_cue_index[] = {
    /* 0x00 */ &calligraphy_cue_default,
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
EngineEvent calligraphy_common_events[] = {
    /* BEAT_ANIMATION */ (EngineEvent) calligraphy_common_beat_animation,
    /* DISPLAY_TEXT   */ (EngineEvent) calligraphy_common_display_text,
    /* INIT_TUTORIAL  */ (EngineEvent) calligraphy_common_init_tutorial,
    END_OF_COMMON_EVENT_LIST
};

// [D_089e4bc0] Engine Events
EngineEvent calligraphy_engine_events[] = {
    /* 0x00 */ (EngineEvent) func_0803312c,
    /* 0x01 */ (EngineEvent) func_0803316c,
    /* 0x02 */ (EngineEvent) func_080331c0,
    /* 0x03 */ (EngineEvent) func_080331dc,
    /* 0x04 */ (EngineEvent) func_080333dc,
    /* 0x05 */ (EngineEvent) func_080333e8,
    /* 0x06 */ (EngineEvent) func_080334d4,
    /* 0x07 */ (EngineEvent) func_080334ec,
    /* 0x08 */ (EngineEvent) func_08033558,
    /* 0x09 */ (EngineEvent) func_080335e8,
    /* 0x0A */ (EngineEvent) func_08032c8c,
    /* 0x0B */ (EngineEvent) func_08032a64,
    /* 0x0C */ (EngineEvent) func_08032a04,
    /* 0x0D */ (EngineEvent) calligraphy_engine_event_stub
};

// [D_089e4bf8] Power Calligraphy Game Engine
struct GameEngine power_calligraphy_engine = {
    /* Size in Memory */ 0x218,
    /* Start Engine   */ calligraphy_engine_start,
    /* Update Engine  */ calligraphy_engine_update,
    /* Stop Engine    */ calligraphy_engine_stop,
    /* Cue Index      */ calligraphy_cue_index,
    /* Common Events  */ calligraphy_common_events,
    /* Engine Events  */ calligraphy_engine_events,
    /* Input Event    */ calligraphy_input_event
};
