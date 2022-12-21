#include "engines/showtime.h"


  /* SHOWTIME - GAME ENGINE DATA */


extern const struct CompressedGraphics D_08c551e8;
extern const struct CompressedGraphics D_08c57038;
extern const struct CompressedGraphics D_08c571c0;
extern const struct CompressedGraphics D_08c54f7c;
extern const struct CompressedGraphics D_08c56bd8;
extern const struct CompressedGraphics D_08c57650;
extern const struct CompressedGraphics D_08c577d8;
extern const Palette showtime_bg_pal[];
extern const Palette showtime_obj_pal[];
extern const Palette showtime_remix3_bg_pal[];


  //  //  //  GRAPHICS DATA  //  //  //


// [D_089e384c] Buffered Textures List
const struct CompressedGraphics *const showtime_buffered_textures[] = {
    NULL
};

// [D_089e3850] Graphics Table (Showtime)
const struct GraphicsTable showtime_gfx_table[] = {
    /* BG Tileset */ {
        /* Src.  */ &D_08c551e8,
        /* Dest. */ BG_TILESET_BASE(0),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Map */ {
        /* Src.  */ &D_08c57038,
        /* Dest. */ BG_MAP_BASE(0xE800),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Map */ {
        /* Src.  */ &D_08c571c0,
        /* Dest. */ BG_MAP_BASE(0xF000),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* OBJ Tileset */ {
        /* Src.  */ &D_08c54f7c,
        /* Dest. */ OBJ_TILESET_BASE(0),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Palette */ {
        /* Src.  */ showtime_bg_pal,
        /* Dest. */ BG_PALETTE_BUFFER(0),
        /* Size  */ 0x140
    },
    /* OBJ Palette */ {
        /* Src.  */ showtime_obj_pal,
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

// [D_089e38b0] Graphics Table (Remix 3)
const struct GraphicsTable showtime_remix3_gfx_table[] = {
    /* BG Tileset */ {
        /* Src.  */ &D_08c56bd8,
        /* Dest. */ BG_TILESET_BASE(0),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Map */ {
        /* Src.  */ &D_08c57650,
        /* Dest. */ BG_MAP_BASE(0xE800),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Map */ {
        /* Src.  */ &D_08c577d8,
        /* Dest. */ BG_MAP_BASE(0xF000),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* OBJ Tileset */ {
        /* Src.  */ &D_08c54f7c,
        /* Dest. */ OBJ_TILESET_BASE(0),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Palette */ {
        /* Src.  */ showtime_remix3_bg_pal,
        /* Dest. */ BG_PALETTE_BUFFER(0),
        /* Size  */ 0x140
    },
    /* OBJ Palette */ {
        /* Src.  */ showtime_obj_pal,
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

// [D_089e3910] Graphics Table Index
const struct GraphicsTable *const showtime_gfx_tables[] = {
    /* 0x00 */ showtime_gfx_table,
    /* 0x01 */ showtime_remix3_gfx_table
};


  //  //  //  CUE DATA  //  //  //


// [D_089e3918] Cue 00 (Gray Penguin)
const struct CueDefinition showtime_cue_gray = {
    /* Unknown Param.  */ 0,
    /* Input Buttons   */ PRESS_BUTTON(A_BUTTON),
    /* Total Duration  */ 0x48,
    /* Hit Window      */ -0x03, 0x03,
    /* Barely Window   */ -0x05, 0x05,
    /* Tempo-Dependent */ FALSE,
    /* Force-Delete    */ FALSE,
    /* Size in Memory  */ sizeof(struct ShowtimeCue),
    /* Func. Spawn     */ showtime_cue_spawn_gray,
    /* Spawn Parameter */ 0,
    /* Func. Update    */ showtime_cue_update_gray,
    /* Func. Despawn   */ showtime_cue_despawn_gray,
    /* Func. Hit       */ showtime_cue_hit,
    /* Func. Barely    */ showtime_cue_barely,
    /* Func. Miss      */ showtime_cue_miss,
    /* SFX Spawn       */ NULL,
    /* SFX Hit         */ &s_f_esa_jump_seqData,
    /* SFX Barely      */ &s_f_esa_jump_seqData,
    /* SFX Miss        */ NULL,
    /* Miss Condition  */ NULL
};

// [D_089e3958] Cue 01 (Black Penguin)
const struct CueDefinition showtime_cue_black = {
    /* Unknown Param.  */ 0,
    /* Input Buttons   */ PRESS_BUTTON(A_BUTTON),
    /* Total Duration  */ 0x78,
    /* Hit Window      */ -0x03, 0x03,
    /* Barely Window   */ -0x05, 0x05,
    /* Tempo-Dependent */ FALSE,
    /* Force-Delete    */ FALSE,
    /* Size in Memory  */ sizeof(struct ShowtimeCue),
    /* Func. Spawn     */ showtime_cue_spawn_black,
    /* Spawn Parameter */ 0,
    /* Func. Update    */ showtime_cue_update_black,
    /* Func. Despawn   */ showtime_cue_despawn_black,
    /* Func. Hit       */ showtime_cue_hit,
    /* Func. Barely    */ showtime_cue_barely,
    /* Func. Miss      */ showtime_cue_miss,
    /* SFX Spawn       */ NULL,
    /* SFX Hit         */ &s_f_esa_jump_seqData,
    /* SFX Barely      */ &s_f_esa_jump_seqData,
    /* SFX Miss        */ NULL,
    /* Miss Condition  */ NULL
};

// [D_089e3998] Cue 02 (White Penguin - Fast)
const struct CueDefinition showtime_cue_white_fast = {
    /* Unknown Param.  */ 0,
    /* Input Buttons   */ PRESS_BUTTON(A_BUTTON),
    /* Total Duration  */ 0x30,
    /* Hit Window      */ -0x03, 0x03,
    /* Barely Window   */ -0x05, 0x05,
    /* Tempo-Dependent */ FALSE,
    /* Force-Delete    */ FALSE,
    /* Size in Memory  */ sizeof(struct ShowtimeCue),
    /* Func. Spawn     */ showtime_cue_spawn_white_fast,
    /* Spawn Parameter */ 0,
    /* Func. Update    */ showtime_cue_update_white_fast,
    /* Func. Despawn   */ showtime_cue_despawn_white_fast,
    /* Func. Hit       */ showtime_cue_hit,
    /* Func. Barely    */ showtime_cue_barely,
    /* Func. Miss      */ showtime_cue_miss,
    /* SFX Spawn       */ NULL,
    /* SFX Hit         */ &s_f_esa_jump_seqData,
    /* SFX Barely      */ &s_f_esa_jump_seqData,
    /* SFX Miss        */ NULL,
    /* Miss Condition  */ NULL
};

// [D_089e39d8] Cue 03 (White Penguin - Fast, Swing)
const struct CueDefinition showtime_cue_white_fast_swing = {
    /* Unknown Param.  */ 0,
    /* Input Buttons   */ PRESS_BUTTON(A_BUTTON),
    /* Total Duration  */ 0x30,
    /* Hit Window      */ -0x03, 0x03,
    /* Barely Window   */ -0x05, 0x05,
    /* Tempo-Dependent */ FALSE,
    /* Force-Delete    */ FALSE,
    /* Size in Memory  */ sizeof(struct ShowtimeCue),
    /* Func. Spawn     */ showtime_cue_spawn_white_fast_swing,
    /* Spawn Parameter */ 0,
    /* Func. Update    */ showtime_cue_update_white_fast_swing,
    /* Func. Despawn   */ showtime_cue_despawn_white_fast_swing,
    /* Func. Hit       */ showtime_cue_hit,
    /* Func. Barely    */ showtime_cue_barely,
    /* Func. Miss      */ showtime_cue_miss,
    /* SFX Spawn       */ NULL,
    /* SFX Hit         */ &s_f_esa_jump_seqData,
    /* SFX Barely      */ &s_f_esa_jump_seqData,
    /* SFX Miss        */ NULL,
    /* Miss Condition  */ NULL
};

// [D_089e3a18] Cue 04 (White Penguin)
const struct CueDefinition showtime_cue_white = {
    /* Unknown Param.  */ 0,
    /* Input Buttons   */ PRESS_BUTTON(A_BUTTON),
    /* Total Duration  */ 0x30,
    /* Hit Window      */ -0x03, 0x03,
    /* Barely Window   */ -0x05, 0x05,
    /* Tempo-Dependent */ FALSE,
    /* Force-Delete    */ FALSE,
    /* Size in Memory  */ sizeof(struct ShowtimeCue),
    /* Func. Spawn     */ showtime_cue_spawn_white,
    /* Spawn Parameter */ 0,
    /* Func. Update    */ showtime_cue_update_white,
    /* Func. Despawn   */ showtime_cue_despawn_white,
    /* Func. Hit       */ showtime_cue_hit,
    /* Func. Barely    */ showtime_cue_barely,
    /* Func. Miss      */ showtime_cue_miss,
    /* SFX Spawn       */ NULL,
    /* SFX Hit         */ &s_f_esa_jump_seqData,
    /* SFX Barely      */ &s_f_esa_jump_seqData,
    /* SFX Miss        */ NULL,
    /* Miss Condition  */ NULL
};

// [D_089e3a58] Cue Index
const struct CueDefinition *const showtime_cue_index[] = {
    /* 0x00 */ &showtime_cue_gray,
    /* 0x01 */ &showtime_cue_black,
    /* 0x02 */ &showtime_cue_white_fast,
    /* 0x03 */ &showtime_cue_white_fast_swing,
    /* 0x04 */ &showtime_cue_white,
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


// [D_089e3a8c] Common Events
const EngineEvent showtime_common_events[] = {
    /* BEAT_ANIMATION */ (EngineEvent) showtime_common_beat_animation,
    /* DISPLAY_TEXT   */ (EngineEvent) showtime_common_display_text,
    /* INIT_TUTORIAL  */ (EngineEvent) showtime_common_init_tutorial,
    END_OF_COMMON_EVENT_LIST
};

// [D_089e3a9c] Engine Events
const EngineEvent showtime_engine_events[] = {
    /* 0x00 */ (EngineEvent) func_0802be10,
    /* 0x01 */ (EngineEvent) showtime_engine_event_stub
};

// [D_089e3aa4] Showtime Game Engine
const struct GameEngine D_089e3aa4 = {
    /* Size in Memory */ sizeof(struct ShowtimeInfo),
    /* Start Engine   */ showtime_engine_start,
    /* Update Engine  */ showtime_engine_update,
    /* Stop Engine    */ showtime_engine_stop,
    /* Cue Index      */ showtime_cue_index,
    /* Common Events  */ showtime_common_events,
    /* Engine Events  */ showtime_engine_events,
    /* Input Event    */ showtime_input_event
};


  //  //  //  MISCELLANEOUS DATA  //  //  //


// [D_089e3ac4] ?
const struct Animation *const D_089e3ac4[] = {
    /* 0x00 */ showtime_anim00,
    /* 0x01 */ showtime_anim11,
    /* 0x02 */ showtime_anim00,
    /* 0x03 */ showtime_anim00,
    /* 0x04 */ showtime_anim00
};

// [D_089e3ad8] ?
const struct Animation *const D_089e3ad8[] = {
    /* 0x00 */ showtime_anim08,
    /* 0x01 */ showtime_anim16,
    /* 0x02 */ showtime_anim08,
    /* 0x03 */ showtime_anim08,
    /* 0x04 */ showtime_anim08
};

// [D_089e3aec] ?
const struct Animation *const D_089e3aec[] = {
    /* 0x00 */ showtime_anim07,
    /* 0x01 */ showtime_anim15,
    /* 0x02 */ showtime_anim07,
    /* 0x03 */ showtime_anim07,
    /* 0x04 */ showtime_anim07
};

// [D_089e3b00] ?
const struct Animation *const D_089e3b00[] = {
    /* 0x00 */ showtime_anim09,
    /* 0x01 */ showtime_anim23,
    /* 0x02 */ showtime_anim09,
    /* 0x03 */ showtime_anim09,
    /* 0x04 */ showtime_anim09
};

// [D_089e3b14] ?
const u32 D_089e3b14[][5] = {
    { 0x00, 0x00, 0x00, 0x00, 0x00 },
    { 0x18, 0x18, 0x18, 0x18, 0x10 },
    { 0x08, 0x08, 0x08, 0x08, 0x08 },
    { 0x18, 0x30, 0x0C, 0x10, 0x10 },
    { 0x18, 0x30, 0x0C, 0x08, 0x08 },
    { 0x18, 0x30, 0x0C, 0x08, 0x08 },
    { 0x18, 0x18, 0x18, 0x18, 0x18 },
    { 0x18, 0x18, 0x18, 0x18, 0x18 },
    { 0x18, 0x18, 0x18, 0x18, 0x18 },
    { 0x0A, 0x0A, 0x0A, 0x0A, 0x0A },
    { 0x18, 0x18, 0x18, 0x18, 0x18 },
    { 0x18, 0x18, 0x18, 0x18, 0x18 }
};
