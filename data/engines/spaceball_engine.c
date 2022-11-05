#include "engines/spaceball.h"


  /* SPACEBALL - GAME ENGINE DATA */


extern const struct CompressedGraphics D_08bd5524;
extern const struct CompressedGraphics D_08bd5878;
extern const struct CompressedGraphics D_08bd4e70;
extern const Palette spaceball_pal[];
extern const struct SequenceData s_f_dummy_vol0_seqData;
extern const struct SequenceData s_witch_donats_seqData;
extern const struct SequenceData s_batter_mit_seqData;
extern const struct SequenceData s_batter_hit_seqData;
extern const struct SequenceData s_f_batter_ball_high_seqData;


  //  //  //  GRAPHICS DATA  //  //  //


// [D_089de93c] Buffered Textures List
const struct CompressedGraphics *const spaceball_buffered_textures[] = {
    END_OF_BUFFERED_TEXTURES_LIST
};


// [D_089de940] Graphics Table
const struct GraphicsTable spaceball_gfx_table[] = {
    /* BG Tileset */ {
        /* Src.  */ &D_08bd5524,
        /* Dest. */ BG_TILESET_BASE(0),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Map */ {
        /* Src.  */ &D_08bd5878,
        /* Dest. */ BG_MAP_BASE(0xF000),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* OBJ Tileset */ {
        /* Src.  */ &D_08bd4e70,
        /* Dest. */ OBJ_TILESET_BASE(0),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Palette */ {
        /* Src.  */ spaceball_pal,
        /* Dest. */ BG_PALETTE_BUFFER(0),
        /* Size  */ 0x140
    },
    /* OBJ Palette */ {
        /* Src.  */ spaceball_pal,
        /* Dest. */ OBJ_PALETTE_BUFFER(0),
        /* Size  */ 0x140
    },
    END_OF_GRAPHICS_TABLE
};


// [D_089de988] Batter Animations (Close)
const struct Animation *const spaceball_anim_table_batter_close[] = {
    spaceball_anim00,
    spaceball_anim01,
    spaceball_anim14
};


// [D_089de994] Batter Animations (Far)
const struct Animation *const spaceball_anim_table_batter_far[] = {
    spaceball_anim17,
    spaceball_anim18,
    spaceball_anim19
};


// [D_089de9a0] Ball Animations
const struct Animation *const spaceball_anim_table_ball[] = {
    spaceball_anim04,
    spaceball_anim06,
    spaceball_anim08
};


  //  //  //  CUE DATA  //  //  //


// [D_089de9ac] Cue 00 (0.5 Beats)
const struct CueDefinition spaceball_cue_low_fast = {
    /* Unknown Param.  */ 0,
    /* Input Buttons   */ PRESS_BUTTON(A_BUTTON),
    /* Total Duration  */ 0x0C,
    /* Hit Window      */ -0x03, 0x03,
    /* Barely Window   */ -0x05, 0x05,
    /* Tempo-Dependent */ FALSE,
    /* Force-Delete    */ FALSE,
    /* Size in Memory  */ sizeof(struct SpaceballCue),
    /* Func. Spawn     */ func_0802030c,
    /* Spawn Parameter */ 0xC,
    /* Func. Update    */ func_08020564,
    /* Func. Despawn   */ func_080205a0,
    /* Func. Hit       */ func_080205ac,
    /* Func. Barely    */ func_080205e8,
    /* Func. Miss      */ func_08020644,
    /* SFX Spawn       */ &s_f_dummy_vol0_seqData,
    /* SFX Hit         */ &s_f_dummy_vol0_seqData,
    /* SFX Barely      */ &s_witch_donats_seqData,
    /* SFX Miss        */ NULL,
    /* Miss Condition  */ NULL
};

// [D_089de9ec] Cue 01 (1 Beat)
const struct CueDefinition spaceball_cue_low = {
    /* Unknown Param.  */ 0,
    /* Input Buttons   */ PRESS_BUTTON(A_BUTTON),
    /* Total Duration  */ 0x18,
    /* Hit Window      */ -0x03, 0x03,
    /* Barely Window   */ -0x05, 0x05,
    /* Tempo-Dependent */ FALSE,
    /* Force-Delete    */ FALSE,
    /* Size in Memory  */ sizeof(struct SpaceballCue),
    /* Func. Spawn     */ func_0802030c,
    /* Spawn Parameter */ 0x18,
    /* Func. Update    */ func_08020564,
    /* Func. Despawn   */ func_080205a0,
    /* Func. Hit       */ func_080205ac,
    /* Func. Barely    */ func_080205e8,
    /* Func. Miss      */ func_08020644,
    /* SFX Spawn       */ &s_batter_mit_seqData,
    /* SFX Hit         */ &s_batter_hit_seqData,
    /* SFX Barely      */ &s_witch_donats_seqData,
    /* SFX Miss        */ NULL,
    /* Miss Condition  */ NULL
};

// [D_089dea2c] Cue 02 (2 Beats)
const struct CueDefinition spaceball_cue_high = {
    /* Unknown Param.  */ 0,
    /* Input Buttons   */ PRESS_BUTTON(A_BUTTON),
    /* Total Duration  */ 0x30,
    /* Hit Window      */ -0x03, 0x03,
    /* Barely Window   */ -0x05, 0x05,
    /* Tempo-Dependent */ FALSE,
    /* Force-Delete    */ FALSE,
    /* Size in Memory  */ sizeof(struct SpaceballCue),
    /* Func. Spawn     */ func_0802030c,
    /* Spawn Parameter */ 0x30,
    /* Func. Update    */ func_08020564,
    /* Func. Despawn   */ func_080205a0,
    /* Func. Hit       */ func_080205ac,
    /* Func. Barely    */ func_080205e8,
    /* Func. Miss      */ func_08020644,
    /* SFX Spawn       */ &s_f_batter_ball_high_seqData,
    /* SFX Hit         */ &s_batter_hit_seqData,
    /* SFX Barely      */ &s_witch_donats_seqData,
    /* SFX Miss        */ NULL,
    /* Miss Condition  */ NULL
};

// [D_089dea6c] Cue 03 (1.5 Beats)
const struct CueDefinition spaceball_cue_high_fast = {
    /* Unknown Param.  */ 0,
    /* Input Buttons   */ PRESS_BUTTON(A_BUTTON),
    /* Total Duration  */ 0x24,
    /* Hit Window      */ -0x03, 0x03,
    /* Barely Window   */ -0x05, 0x05,
    /* Tempo-Dependent */ FALSE,
    /* Force-Delete    */ FALSE,
    /* Size in Memory  */ sizeof(struct SpaceballCue),
    /* Func. Spawn     */ func_0802030c,
    /* Spawn Parameter */ 0x24,
    /* Func. Update    */ func_08020564,
    /* Func. Despawn   */ func_080205a0,
    /* Func. Hit       */ func_080205ac,
    /* Func. Barely    */ func_080205e8,
    /* Func. Miss      */ func_08020644,
    /* SFX Spawn       */ &s_f_batter_ball_high_seqData,
    /* SFX Hit         */ &s_batter_hit_seqData,
    /* SFX Barely      */ &s_witch_donats_seqData,
    /* SFX Miss        */ NULL,
    /* Miss Condition  */ NULL
};

// [D_089deaac] Cue Definition Index
const struct CueDefinition *const spaceball_cue_index[] = {
    /* 0x00 */ &spaceball_cue_low_fast,
    /* 0x01 */ &spaceball_cue_low,
    /* 0x02 */ &spaceball_cue_high,
    /* 0x03 */ &spaceball_cue_high_fast,
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


// [D_089deae0] Common Events
const EngineEvent spaceball_common_events[] = {
    /* BEAT_ANIMATION */ (EngineEvent) func_08020698,
    /* DISPLAY_TEXT   */ (EngineEvent) func_0802069c,
    /* INIT_TUTORIAL  */ // None
    END_OF_COMMON_EVENT_LIST
};

// [D_089deaec] Engine Events
const EngineEvent spaceball_engine_events[] = {
    /* 0x00 */ (EngineEvent) func_080201a4,
    /* 0x01 */ (EngineEvent) func_08020200,
    /* 0x02 */ (EngineEvent) func_08020238,
    /* 0x03 */ (EngineEvent) func_0802026c,
    /* 0x04 */ (EngineEvent) func_080202a4,
    /* 0x05 */ (EngineEvent) func_08020290,
    /* 0x06 */ (EngineEvent) func_080201a0
};

// [D_089deb08] Spaceball Game Engine
const struct GameEngine D_089deb08 = {
    /* Size in Memory */ sizeof(struct SpaceballInfo),
    /* Init. Engine   */ func_0801ffcc,
    /* Update Engine  */ func_080202f0,
    /* Stop Engine    */ func_08020308,
    /* Cue Index      */ spaceball_cue_index,
    /* Common Events  */ spaceball_common_events,
    /* Engine Events  */ spaceball_engine_events,
    /* Input Event    */ func_08020660
};
