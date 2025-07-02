#include "engines/staff_credit.h"


  //  //  //  GRAPHICS DATA  //  //  //


// [D_089df618] Buffered Textures List
struct CompressedData *staff_credit_buffered_textures[] = {
    END_OF_BUFFERED_TEXTURES_LIST
};

// [D_089df61c] Graphics Table
struct GraphicsTable staff_credit_gfx_table[] = {
    END_OF_GRAPHICS_TABLE
};

// [D_089df628] Text Position/Alignment Data
struct CreditsTextStartPos staff_credit_text_positions[] = {
    /* Left-Aligned */ {
        /* Anchor */ TEXT_ANCHOR_BOTTOM_LEFT,
        /* X Pos. */ 100
    },
    /* Right-Aligned */ {
        /* Anchor */ TEXT_ANCHOR_BOTTOM_RIGHT,
        /* X Pos. */ 232
    },
    /* Center-Aligned */ {
        /* Anchor */ TEXT_ANCHOR_BOTTOM_CENTER,
        /* X Pos. */ 120
    }
};


  //  //  //  CUE DATA  //  //  //


// [D_089df634] Cue 00
struct CueDefinition staff_credit_cue_00 = {
    /* Unknown Param.  */ 0,
    /* Input Buttons   */ PRESS_BUTTON(A_BUTTON),
    /* Total Duration  */ 0x18,
    /* Hit Window      */ -0x02, 0x02,
    /* Barely Window   */ -0x05, 0x05,
    /* Tempo-Dependent */ FALSE,
    /* Force-Delete    */ FALSE,
    /* Size in Memory  */ 0x4,
    /* Func. Spawn     */ staff_credit_cue_spawn,
    /* Spawn Parameter */ 0,
    /* Func. Update    */ staff_credit_cue_update,
    /* Func. Despawn   */ staff_credit_cue_despawn,
    /* Func. Hit       */ staff_credit_cue_hit,
    /* Func. Barely    */ staff_credit_cue_barely,
    /* Func. Miss      */ staff_credit_cue_miss,
    /* SFX Spawn       */ NULL,
    /* SFX Hit         */ NULL,
    /* SFX Barely      */ NULL,
    /* SFX Miss        */ NULL,
    /* Miss Condition  */ NULL
};

// [D_089df674] Cue Index
struct CueDefinition *staff_credit_cue_index[] = {
    /* 0x00 */ &staff_credit_cue_00,
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


// [D_089df6a8] Common Events
EngineEvent staff_credit_common_events[] = {
    /* BEAT_ANIMATION */ staff_credit_common_beat_animation,
    /* DISPLAY_TEXT   */ staff_credit_common_display_text,
    /* INIT_TUTORIAL  */ staff_credit_common_init_tutorial,
    END_OF_COMMON_EVENT_LIST
};

// [D_089df6b8] Engine Events
EngineEvent staff_credit_engine_events[] = {
    /* 0x00 */ staff_credit_print_text,
    /* 0x01 */ staff_credit_set_text_alignment,
    /* 0x02 */ staff_credit_set_text_scroll,
    /* 0x03 */ staff_credit_set_bg,
    /* 0x04 */ staff_credit_engine_event_stub
};

// [D_089df6cc] Staff Credit Game Engine
struct GameEngine staff_credit_engine = {
    /* Size in Memory */ sizeof(struct StaffCreditEngineData),
    /* Start Engine   */ staff_credit_engine_start,
    /* Update Engine  */ staff_credit_engine_update,
    /* Stop Engine    */ staff_credit_engine_stop,
    /* Cue Index      */ staff_credit_cue_index,
    /* Common Events  */ staff_credit_common_events,
    /* Engine Events  */ staff_credit_engine_events,
    /* Input Event    */ staff_credit_input_event
};
