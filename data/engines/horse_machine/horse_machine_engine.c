#include "engines/horse_machine.h"


  /* HORSE MACHINE - GAME ENGINE DATA */


extern const struct GraphicsTable D_0805a9d8[];
extern const struct GraphicsTable D_0805a9b4[];
extern const struct GraphicsTable D_0805a990[];
extern const struct GraphicsTable D_0805a96c[];
extern const struct GraphicsTable D_0805a948[];
extern const struct GraphicsTable D_0805a924[];

extern const struct CompressedGraphics D_08d16210;
extern const struct CompressedGraphics D_08d17a60;
extern const struct CompressedGraphics D_08d17c24;
extern const struct CompressedGraphics D_08d17d24;
extern const struct CompressedGraphics D_08d08208;
extern const struct CompressedGraphics D_08d0af74;
extern const struct CompressedGraphics D_08d16648;

extern const Palette horse_machine_pal[];
extern const Palette horse_machine_bg_01_pal[];
extern const Palette horse_machine_bg_02_pal[];
extern const Palette horse_machine_bg_03_pal[];
extern const Palette horse_machine_bg_04_pal[];
extern const Palette horse_machine_bg_05_pal[];
extern const Palette horse_machine_bg_06_pal[];

extern const struct SequenceData s_uma_walk1_seqData;
extern const struct SequenceData s_uma_walk2_seqData;
extern const struct SequenceData s_uma_walk3_seqData;
extern const struct SequenceData s_uma_walk4_seqData;
extern const struct SequenceData s_uma_trot1_seqData;
extern const struct SequenceData s_uma_trot2_seqData;
extern const struct SequenceData s_uma_canter1_seqData;
extern const struct SequenceData s_uma_canter2_seqData;
extern const struct SequenceData s_uma_canter3_seqData;
extern const struct SequenceData s_uma_hihin_seqData;
extern const struct SequenceData s_uma_galop1_seqData;
extern const struct SequenceData s_uma_galop2_seqData;
extern const struct SequenceData s_uma_galop3_seqData;
extern const struct SequenceData s_uma_galop4_seqData;

extern const struct SequenceData s_uma_walk1_t_seqData;
extern const struct SequenceData s_uma_walk2_t_seqData;
extern const struct SequenceData s_uma_walk3_t_seqData;
extern const struct SequenceData s_uma_walk4_t_seqData;
extern const struct SequenceData s_uma_trot1_t_seqData;
extern const struct SequenceData s_uma_trot2_t_seqData;
extern const struct SequenceData s_uma_canter1_t_seqData;
extern const struct SequenceData s_uma_canter2_t_seqData;
extern const struct SequenceData s_uma_canter3_t_seqData;
extern const struct SequenceData s_uma_hihin_seqData;
extern const struct SequenceData s_uma_galop1_t_seqData;
extern const struct SequenceData s_uma_galop2_t_seqData;
extern const struct SequenceData s_uma_galop3_t_seqData;
extern const struct SequenceData s_uma_galop4_t_seqData;

extern const struct SequenceData s_uma_bgm1_seqData;
extern const struct SequenceData s_uma_bgm2_seqData;
extern const struct SequenceData s_uma_bgm3_seqData;
extern const struct SequenceData s_uma_bgm4_seqData;

extern const struct Animation anim_horse_walk[];
extern const struct Animation anim_horse_trot[];
extern const struct Animation anim_horse_canter[];
extern const struct Animation anim_horse_gallop[];
extern const struct Animation anim_horse_walk_jockey[];
extern const struct Animation anim_horse_trot_jockey[];
extern const struct Animation anim_horse_canter_jockey[];
extern const struct Animation anim_horse_gallop_jockey[];
extern const struct Animation anim_horse_text_pak[];
extern const struct Animation anim_horse_text_ka[];
extern const struct Animation anim_horse_text_tot[];
extern const struct Animation anim_horse_text_pa[];
extern const struct Animation anim_horse_text_rap[];
extern const struct Animation anim_horse_text_do[];
extern const struct Animation anim_horse_text_dod[];


  //  //  //  GRAPHICS DATA  //  //  //


// [D_089e8d9c] Backgrounds
const struct HorseMachineBG horse_machine_backgrounds[] = {
    /* 0x00 */ {
        /* Palette   */ horse_machine_bg_01_pal,
        /* GFX Table */ D_0805a9d8
    },
    /* 0x01 */ {
        /* Palette   */ horse_machine_bg_02_pal,
        /* GFX Table */ D_0805a9b4
    },
    /* 0x02 */ {
        /* Palette   */ horse_machine_bg_03_pal,
        /* GFX Table */ D_0805a990
    },
    /* 0x03 */ {
        /* Palette   */ horse_machine_bg_04_pal,
        /* GFX Table */ D_0805a96c
    },
    /* 0x04 */ {
        /* Palette   */ horse_machine_bg_05_pal,
        /* GFX Table */ D_0805a948
    },
    /* 0x05 */ {
        /* Palette   */ horse_machine_bg_06_pal,
        /* GFX Table */ D_0805a924
    }
};

// [D_089e8dcc] Buffered Textures List
const struct CompressedGraphics *const horse_machine_buffered_textures[] = {
    END_OF_BUFFERED_TEXTURES_LIST
};

// [D_089e8dd0] Graphics Table
const struct GraphicsTable gfx_table_horse_machine[] = {
    /* BG Tileset */ {
        /* Src.  */ &D_08d16210,
        /* Dest. */ BG_TILESET_BASE(0),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Map */ {
        /* Src.  */ &D_08d17a60,
        /* Dest. */ BG_MAP_BASE(0xE800),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Map */ {
        /* Src.  */ &D_08d17c24,
        /* Dest. */ BG_MAP_BASE(0xF000),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Map */ {
        /* Src.  */ &D_08d17d24,
        /* Dest. */ BG_MAP_BASE(0xF800),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* OBJ Tileset */ {
        /* Src.  */ &D_08d08208,
        /* Dest. */ OBJ_TILESET_BASE(0),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Palette */ {
        /* Src.  */ horse_machine_pal,
        /* Dest. */ BG_PALETTE_BUFFER(0),
        /* Size  */ 0x140
    },
    /* OBJ Palette */ {
        /* Src.  */ horse_machine_pal,
        /* Dest. */ OBJ_PALETTE_BUFFER(0),
        /* Size  */ 0x140
    },
    /* BG Tileset */ {
        /* Src.  */ &D_08d0af74,
        /* Dest. */ BG_TILESET_BASE(0x8000),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Map */ {
        /* Src.  */ &D_08d16648,
        /* Dest. */ BG_MAP_BASE(0xE000),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Palette */ {
        /* Src.  */ horse_machine_bg_01_pal,
        /* Dest. */ BG_PALETTE_BUFFER(0),
        /* Size  */ 0x20
    },
    /* OBJ Palette */ {
        /* Src.  */ D_089ccbc8[2],
        /* Dest. */ OBJ_PALETTE_BUFFER(12.5),
        /* Size  */ 0x8
    },
    END_OF_GRAPHICS_TABLE
};


  //  //  //  LESSON DATA  //  //  //


// [D_089e8e60] Horse Clops (Player)
const struct SequenceData *const horse_machine_player_horse_sfx[][4] = {
    /* WALK */ {
        /* 0x00 */ &s_uma_walk1_seqData,
        /* 0x01 */ &s_uma_walk2_seqData,
        /* 0x02 */ &s_uma_walk3_seqData,
        /* 0x03 */ &s_uma_walk4_seqData
    },
    /* TROT */ {
        /* 0x00 */ &s_uma_trot1_seqData,
        /* 0x01 */ &s_uma_trot2_seqData,
        /* 0x02 */ &s_uma_trot1_seqData,
        /* 0x03 */ &s_uma_trot2_seqData
    },
    /* CANTER */ {
        /* 0x00 */ &s_uma_canter1_seqData,
        /* 0x01 */ &s_uma_canter2_seqData,
        /* 0x02 */ &s_uma_canter3_seqData,
        /* 0x03 */ &s_uma_hihin_seqData
    },
    /* GALLOP */ {
        /* 0x00 */ &s_uma_galop1_seqData,
        /* 0x01 */ &s_uma_galop2_seqData,
        /* 0x02 */ &s_uma_galop3_seqData,
        /* 0x03 */ &s_uma_galop4_seqData
    }
};

// [D_089e8ea0] Horse Clops (Teacher)
const struct SequenceData *const horse_machine_teacher_horse_sfx[][4] = {
    /* WALK */ {
        /* 0x00 */ &s_uma_walk1_t_seqData,
        /* 0x01 */ &s_uma_walk2_t_seqData,
        /* 0x02 */ &s_uma_walk3_t_seqData,
        /* 0x03 */ &s_uma_walk4_t_seqData
    },
    /* TROT */ {
        /* 0x00 */ &s_uma_trot1_t_seqData,
        /* 0x01 */ &s_uma_trot2_t_seqData,
        /* 0x02 */ &s_uma_trot1_t_seqData,
        /* 0x03 */ &s_uma_trot2_t_seqData
    },
    /* CANTER */ {
        /* 0x00 */ &s_uma_canter1_t_seqData,
        /* 0x01 */ &s_uma_canter2_t_seqData,
        /* 0x02 */ &s_uma_canter3_t_seqData,
        /* 0x03 */ &s_uma_hihin_seqData
    },
    /* GALLOP */ {
        /* 0x00 */ &s_uma_galop1_t_seqData,
        /* 0x01 */ &s_uma_galop2_t_seqData,
        /* 0x02 */ &s_uma_galop3_t_seqData,
        /* 0x03 */ &s_uma_galop4_t_seqData
    }
};

// [D_089e8ee0] Lesson BGM
const struct SequenceData *const horse_machine_lesson_bgm[] = {
    /* WALK   */ &s_uma_bgm1_seqData,
    /* TROT   */ &s_uma_bgm2_seqData,
    /* CANTER */ &s_uma_bgm3_seqData,
    /* GALLOP */ &s_uma_bgm4_seqData
};

// [D_089e8ef0] Horse Animations
const struct Animation *const horse_machine_anim[] = {
    /* WALK   */ anim_horse_walk,
    /* TROT   */ anim_horse_trot,
    /* CANTER */ anim_horse_canter,
    /* GALLOP */ anim_horse_gallop
};

// [D_089e8f00] Jockey Animations
const struct Animation *const horse_machine_jockey_anim[] = {
    /* WALK   */ anim_horse_walk_jockey,
    /* TROT   */ anim_horse_trot_jockey,
    /* CANTER */ anim_horse_canter_jockey,
    /* GALLOP */ anim_horse_gallop_jockey
};

// [D_089e8f10] Lesson Text Animations
const struct Animation *const horse_machine_lesson_text_anim[][4] = {
    /* WALK */ {
        /* 0x00 */ anim_horse_text_pak,
        /* 0x01 */ anim_horse_text_ka,
        /* 0x02 */ anim_horse_text_pak,
        /* 0x03 */ anim_horse_text_ka
    },
    /* TROT */ {
        /* 0x00 */ anim_horse_text_tot,
        /* 0x01 */ anim_horse_text_tot,
        /* 0x02 */ anim_horse_text_tot,
        /* 0x03 */ anim_horse_text_tot
    },
    /* CANTER */ {
        /* 0x00 */ anim_horse_text_pa,
        /* 0x01 */ anim_horse_text_ka,
        /* 0x02 */ anim_horse_text_rap,
        /* 0x03 */ anim_horse_text_pa
    },
    /* GALLOP */ {
        /* 0x00 */ anim_horse_text_do,
        /* 0x01 */ anim_horse_text_do,
        /* 0x02 */ anim_horse_text_do,
        /* 0x03 */ anim_horse_text_dod
    }
};


  //  //  //  CUE DATA  //  //  //


// [D_089e8f50] Cue 00 (Walk)
const struct CueDefinition horse_machine_cue_walk = {
    /* Unknown Param.  */ 0,
    /* Input Buttons   */ PRESS_BUTTON(A_BUTTON | B_BUTTON | DPAD_RIGHT | DPAD_LEFT | DPAD_UP | DPAD_DOWN),
    /* Total Duration  */ 0x0C,
    /* Hit Window      */ -0x03, 0x03,
    /* Barely Window   */ -0x05, 0x05,
    /* Tempo-Dependent */ FALSE,
    /* Force-Delete    */ FALSE,
    /* Size in Memory  */ 0x4,
    /* Func. Spawn     */ horse_machine_cue_spawn,
    /* Spawn Parameter */ HORSE_LESSON_1_WALK,
    /* Func. Update    */ horse_machine_cue_update,
    /* Func. Despawn   */ horse_machine_cue_despawn,
    /* Func. Hit       */ horse_machine_cue_hit,
    /* Func. Barely    */ horse_machine_cue_barely,
    /* Func. Miss      */ horse_machine_cue_miss,
    /* SFX Spawn       */ NULL,
    /* SFX Hit         */ NULL,
    /* SFX Barely      */ NULL,
    /* SFX Miss        */ NULL,
    /* Miss Condition  */ NULL
};

// [D_089e8f90] Cue 01 (Trot)
const struct CueDefinition horse_machine_cue_trot = {
    /* Unknown Param.  */ 0,
    /* Input Buttons   */ PRESS_BUTTON(A_BUTTON | B_BUTTON | DPAD_RIGHT | DPAD_LEFT | DPAD_UP | DPAD_DOWN),
    /* Total Duration  */ 0x0C,
    /* Hit Window      */ -0x03, 0x03,
    /* Barely Window   */ -0x05, 0x05,
    /* Tempo-Dependent */ FALSE,
    /* Force-Delete    */ FALSE,
    /* Size in Memory  */ 0x4,
    /* Func. Spawn     */ horse_machine_cue_spawn,
    /* Spawn Parameter */ HORSE_LESSON_2_TROT,
    /* Func. Update    */ horse_machine_cue_update,
    /* Func. Despawn   */ horse_machine_cue_despawn,
    /* Func. Hit       */ horse_machine_cue_hit,
    /* Func. Barely    */ horse_machine_cue_barely,
    /* Func. Miss      */ horse_machine_cue_miss,
    /* SFX Spawn       */ NULL,
    /* SFX Hit         */ NULL,
    /* SFX Barely      */ NULL,
    /* SFX Miss        */ NULL,
    /* Miss Condition  */ NULL
};

// [D_089e8fd0] Cue 02 (Canter)
const struct CueDefinition horse_machine_cue_canter = {
    /* Unknown Param.  */ 0,
    /* Input Buttons   */ PRESS_BUTTON(A_BUTTON | B_BUTTON | DPAD_RIGHT | DPAD_LEFT | DPAD_UP | DPAD_DOWN),
    /* Total Duration  */ 0x0C,
    /* Hit Window      */ -0x03, 0x03,
    /* Barely Window   */ -0x05, 0x05,
    /* Tempo-Dependent */ FALSE,
    /* Force-Delete    */ FALSE,
    /* Size in Memory  */ 0x4,
    /* Func. Spawn     */ horse_machine_cue_spawn,
    /* Spawn Parameter */ HORSE_LESSON_3_CANTER,
    /* Func. Update    */ horse_machine_cue_update,
    /* Func. Despawn   */ horse_machine_cue_despawn,
    /* Func. Hit       */ horse_machine_cue_hit,
    /* Func. Barely    */ horse_machine_cue_barely,
    /* Func. Miss      */ horse_machine_cue_miss,
    /* SFX Spawn       */ NULL,
    /* SFX Hit         */ NULL,
    /* SFX Barely      */ NULL,
    /* SFX Miss        */ NULL,
    /* Miss Condition  */ NULL
};

// [D_089e9010] Cue 03 (Gallop)
const struct CueDefinition horse_machine_cue_gallop = {
    /* Unknown Param.  */ 0,
    /* Input Buttons   */ PRESS_BUTTON(A_BUTTON | B_BUTTON | DPAD_RIGHT | DPAD_LEFT | DPAD_UP | DPAD_DOWN),
    /* Total Duration  */ 0x0C,
    /* Hit Window      */ -0x03, 0x03,
    /* Barely Window   */ -0x05, 0x05,
    /* Tempo-Dependent */ FALSE,
    /* Force-Delete    */ FALSE,
    /* Size in Memory  */ 0x4,
    /* Func. Spawn     */ horse_machine_cue_spawn,
    /* Spawn Parameter */ HORSE_LESSON_4_GALLOP,
    /* Func. Update    */ horse_machine_cue_update,
    /* Func. Despawn   */ horse_machine_cue_despawn,
    /* Func. Hit       */ horse_machine_cue_hit,
    /* Func. Barely    */ horse_machine_cue_barely,
    /* Func. Miss      */ horse_machine_cue_miss,
    /* SFX Spawn       */ NULL,
    /* SFX Hit         */ NULL,
    /* SFX Barely      */ NULL,
    /* SFX Miss        */ NULL,
    /* Miss Condition  */ NULL
};

// [D_089e9050] Cue Definition Index
const struct CueDefinition *const horse_machine_cue_index[] = {
    /* 0x00 */ &horse_machine_cue_walk,
    /* 0x01 */ &horse_machine_cue_trot,
    /* 0x02 */ &horse_machine_cue_canter,
    /* 0x03 */ &horse_machine_cue_gallop,
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


// [D_089e9084] Common Events
const EngineEvent horse_machine_common_events[] = {
    /* BEAT_ANIMATION */ (EngineEvent) horse_machine_common_beat_animation,
    /* DISPLAY_TEXT   */ (EngineEvent) horse_machine_common_display_text,
    /* INIT_TUTORIAL  */ // None
    END_OF_COMMON_EVENT_LIST
};

// [D_089e9090] Engine Events
const EngineEvent horse_machine_engine_events[] = {
    /* 0x00 */ (EngineEvent) func_08041444,
    /* 0x01 */ (EngineEvent) func_080415c0,
    /* 0x02 */ (EngineEvent) func_080416cc,
    /* 0x03 */ (EngineEvent) func_08041730,
    /* 0x04 */ (EngineEvent) func_08041744,
    /* 0x05 */ (EngineEvent) func_080417ac,
    /* 0x06 */ (EngineEvent) func_080424f0,
    /* 0x07 */ (EngineEvent) func_08042504
};

// [D_089e90b0] Horse Machine Game Engine
const struct GameEngine D_089e90b0 = {
    /* Size in Memory */ 0x310,
    /* Start Engine   */ horse_machine_engine_start,
    /* Update Engine  */ horse_machine_engine_update,
    /* Stop Engine    */ horse_machine_engine_stop,
    /* Cue Index      */ horse_machine_cue_index,
    /* Common Events  */ horse_machine_common_events,
    /* Engine Events  */ horse_machine_engine_events,
    /* Input Event    */ horse_machine_input_event
};
