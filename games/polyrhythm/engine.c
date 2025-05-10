#include "engines/polyrhythm.h"


  //  //  //  GRAPHICS DATA  //  //  //


// [D_089e5968] Buffered Textures List
struct CompressedData *polyrhythm_buffered_textures[] = {
    END_OF_BUFFERED_TEXTURES_LIST
};

// [D_089e596c] Graphics Table (Polyrhythm, Remix 4)
struct GraphicsTable polyrhythm_1_gfx_table[] = {
    /* BG Tileset */ {
        /* Src.  */ &polyrhythm_obj,
        /* Dest. */ BG_TILESET_BASE(0),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Map */ {
        /* Src.  */ &polyrhythm_bg_map,
        /* Dest. */ BG_MAP_BASE(0xE800),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* OBJ Tileset */ {
        /* Src.  */ &polyrhythm_obj,
        /* Dest. */ OBJ_TILESET_BASE(0),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Palette */ {
        /* Src.  */ polyrhythm_pal,
        /* Dest. */ BG_PALETTE_BUFFER(0),
        /* Size  */ 0x140
    },
    /* OBJ Palette */ {
        /* Src.  */ polyrhythm_pal,
        /* Dest. */ OBJ_PALETTE_BUFFER(0),
        /* Size  */ 0x140
    },
    END_OF_GRAPHICS_TABLE
};

// [D_089e59b4] Graphics Table (Polyrhythm 2)
struct GraphicsTable polyrhythm_2_gfx_table[] = {
    /* BG Tileset */ {
        /* Src.  */ &polyrhythm_obj,
        /* Dest. */ BG_TILESET_BASE(0),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Map */ {
        /* Src.  */ &polyrhythm_bg_map,
        /* Dest. */ BG_MAP_BASE(0xE800),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* OBJ Tileset */ {
        /* Src.  */ &polyrhythm_obj,
        /* Dest. */ OBJ_TILESET_BASE(0),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Palette */ {
        /* Src.  */ polyrhythm_2_pal,
        /* Dest. */ BG_PALETTE_BUFFER(0),
        /* Size  */ 0x140
    },
    /* OBJ Palette */ {
        /* Src.  */ polyrhythm_2_pal,
        /* Dest. */ OBJ_PALETTE_BUFFER(0),
        /* Size  */ 0x140
    },
    END_OF_GRAPHICS_TABLE
};

// [D_089e59fc] Graphics Table Index
struct GraphicsTable *polyrhythm_gfx_tables[] = {
    /* 0x00 */ polyrhythm_1_gfx_table,
    /* 0x01 */ polyrhythm_1_gfx_table,
    /* 0x02 */ polyrhythm_2_gfx_table
};


  //  //  //  CUE DATA  //  //  //


// [D_089e5a08] Cue 00 (0.5 Beats, Upside)
struct CueDefinition polyrhythm_cue_upside = {
    /* Unknown Param.  */ 0,
    /* Input Buttons   */ PRESS_BUTTON(DPAD_RIGHT | DPAD_LEFT | DPAD_UP | DPAD_DOWN),
    /* Total Duration  */ 0x0C,
    /* Hit Window      */ -0x04, 0x04,
    /* Barely Window   */ -0x63, 0x63,
    /* Tempo-Dependent */ FALSE,
    /* Force-Delete    */ FALSE,
    /* Size in Memory  */ sizeof(struct PolyrhythmCue),
    /* Func. Spawn     */ polyrhythm_cue_spawn,
    /* Spawn Parameter */ POLYRHYTHM_LANE_UPSIDE,
    /* Func. Update    */ polyrhythm_cue_update,
    /* Func. Despawn   */ polyrhythm_cue_despawn,
    /* Func. Hit       */ polyrhythm_cue_hit,
    /* Func. Barely    */ polyrhythm_cue_barely,
    /* Func. Miss      */ polyrhythm_cue_miss,
    /* SFX Spawn       */ NULL,
    /* SFX Hit         */ NULL,
    /* SFX Barely      */ NULL,
    /* SFX Miss        */ NULL,
    /* Miss Condition  */ NULL
};

// [D_089e5a48] Cue 01 (0.5 Beats, Downside)
struct CueDefinition polyrhythm_cue_downside = {
    /* Unknown Param.  */ 0,
    /* Input Buttons   */ PRESS_BUTTON(A_BUTTON),
    /* Total Duration  */ 0x0C,
    /* Hit Window      */ -0x03, 0x03,
    /* Barely Window   */ -0x63, 0x63,
    /* Tempo-Dependent */ FALSE,
    /* Force-Delete    */ FALSE,
    /* Size in Memory  */ sizeof(struct PolyrhythmCue),
    /* Func. Spawn     */ polyrhythm_cue_spawn,
    /* Spawn Parameter */ POLYRHYTHM_LANE_DOWNSIDE,
    /* Func. Update    */ polyrhythm_cue_update,
    /* Func. Despawn   */ polyrhythm_cue_despawn,
    /* Func. Hit       */ polyrhythm_cue_hit,
    /* Func. Barely    */ polyrhythm_cue_barely,
    /* Func. Miss      */ polyrhythm_cue_miss,
    /* SFX Spawn       */ NULL,
    /* SFX Hit         */ NULL,
    /* SFX Barely      */ NULL,
    /* SFX Miss        */ NULL,
    /* Miss Condition  */ NULL
};

// [D_089e5a88] Cue 04 (4 Beats, Upside)
struct CueDefinition polyrhythm_cue_4beat_upside = {
    /* Unknown Param.  */ 0,
    /* Input Buttons   */ PRESS_BUTTON(DPAD_RIGHT | DPAD_LEFT | DPAD_UP | DPAD_DOWN),
    /* Total Duration  */ 0x60,
    /* Hit Window      */ -0x04, 0x04,
    /* Barely Window   */ -0x63, 0x63,
    /* Tempo-Dependent */ FALSE,
    /* Force-Delete    */ FALSE,
    /* Size in Memory  */ sizeof(struct PolyrhythmCue),
    /* Func. Spawn     */ polyrhythm_cue_spawn,
    /* Spawn Parameter */ POLYRHYTHM_LANE_UPSIDE,
    /* Func. Update    */ polyrhythm_cue_update,
    /* Func. Despawn   */ polyrhythm_cue_despawn,
    /* Func. Hit       */ polyrhythm_cue_hit,
    /* Func. Barely    */ polyrhythm_cue_barely,
    /* Func. Miss      */ polyrhythm_cue_miss,
    /* SFX Spawn       */ NULL,
    /* SFX Hit         */ NULL,
    /* SFX Barely      */ NULL,
    /* SFX Miss        */ NULL,
    /* Miss Condition  */ NULL
};

// [D_089e5ac8] Cue 05 (4 Beats, Downside)
struct CueDefinition polyrhythm_cue_4beat_downside = {
    /* Unknown Param.  */ 0,
    /* Input Buttons   */ PRESS_BUTTON(A_BUTTON),
    /* Total Duration  */ 0x60,
    /* Hit Window      */ -0x03, 0x03,
    /* Barely Window   */ -0x63, 0x63,
    /* Tempo-Dependent */ FALSE,
    /* Force-Delete    */ FALSE,
    /* Size in Memory  */ sizeof(struct PolyrhythmCue),
    /* Func. Spawn     */ polyrhythm_cue_spawn,
    /* Spawn Parameter */ POLYRHYTHM_LANE_DOWNSIDE,
    /* Func. Update    */ polyrhythm_cue_update,
    /* Func. Despawn   */ polyrhythm_cue_despawn,
    /* Func. Hit       */ polyrhythm_cue_hit,
    /* Func. Barely    */ polyrhythm_cue_barely,
    /* Func. Miss      */ polyrhythm_cue_miss,
    /* SFX Spawn       */ NULL,
    /* SFX Hit         */ NULL,
    /* SFX Barely      */ NULL,
    /* SFX Miss        */ NULL,
    /* Miss Condition  */ NULL
};

// [D_089e5b08] Cue 08 (8 Beats, Upside)
struct CueDefinition polyrhythm_cue_8beat_upside = {
    /* Unknown Param.  */ 0,
    /* Input Buttons   */ PRESS_BUTTON(DPAD_RIGHT | DPAD_LEFT | DPAD_UP | DPAD_DOWN),
    /* Total Duration  */ 0xC0,
    /* Hit Window      */ -0x04, 0x04,
    /* Barely Window   */ -0x63, 0x63,
    /* Tempo-Dependent */ FALSE,
    /* Force-Delete    */ FALSE,
    /* Size in Memory  */ sizeof(struct PolyrhythmCue),
    /* Func. Spawn     */ polyrhythm_cue_spawn,
    /* Spawn Parameter */ POLYRHYTHM_LANE_UPSIDE,
    /* Func. Update    */ polyrhythm_cue_update,
    /* Func. Despawn   */ polyrhythm_cue_despawn,
    /* Func. Hit       */ polyrhythm_cue_hit,
    /* Func. Barely    */ polyrhythm_cue_barely,
    /* Func. Miss      */ polyrhythm_cue_miss,
    /* SFX Spawn       */ NULL,
    /* SFX Hit         */ NULL,
    /* SFX Barely      */ NULL,
    /* SFX Miss        */ NULL,
    /* Miss Condition  */ NULL
};

// [D_089e5b48] Cue 09 (8 Beats, Downside)
struct CueDefinition polyrhythm_cue_8beat_downside = {
    /* Unknown Param.  */ 0,
    /* Input Buttons   */ PRESS_BUTTON(A_BUTTON),
    /* Total Duration  */ 0xC0,
    /* Hit Window      */ -0x03, 0x03,
    /* Barely Window   */ -0x63, 0x63,
    /* Tempo-Dependent */ FALSE,
    /* Force-Delete    */ FALSE,
    /* Size in Memory  */ sizeof(struct PolyrhythmCue),
    /* Func. Spawn     */ polyrhythm_cue_spawn,
    /* Spawn Parameter */ POLYRHYTHM_LANE_DOWNSIDE,
    /* Func. Update    */ polyrhythm_cue_update,
    /* Func. Despawn   */ polyrhythm_cue_despawn,
    /* Func. Hit       */ polyrhythm_cue_hit,
    /* Func. Barely    */ polyrhythm_cue_barely,
    /* Func. Miss      */ polyrhythm_cue_miss,
    /* SFX Spawn       */ NULL,
    /* SFX Hit         */ NULL,
    /* SFX Barely      */ NULL,
    /* SFX Miss        */ NULL,
    /* Miss Condition  */ NULL
};

// [D_089e5b88] Cue Definition Index
struct CueDefinition *polyrhythm_cue_index[] = {
    /* 0x00 */ &polyrhythm_cue_upside,
    /* 0x01 */ &polyrhythm_cue_downside,
    /* 0x02 */ NULL,
    /* 0x03 */ NULL,
    /* 0x04 */ &polyrhythm_cue_4beat_upside,
    /* 0x05 */ &polyrhythm_cue_4beat_downside,
    /* 0x06 */ NULL,
    /* 0x07 */ NULL,
    /* 0x08 */ &polyrhythm_cue_8beat_upside,
    /* 0x09 */ &polyrhythm_cue_8beat_downside,
    /* 0x0A */ NULL,
    /* 0x0B */ NULL,
    END_OF_CUE_INDEX
};


  //  //  //  GAME ENGINE DATA  //  //  //


// [D_089e5bbc] Common Events
EngineEvent polyrhythm_common_events[] = {
    /* BEAT_ANIMATION */ polyrhythm_common_beat_animation,
    /* DISPLAY_TEXT   */ polyrhythm_common_display_text,
    /* INIT_TUTORIAL  */ // None
    END_OF_COMMON_EVENT_LIST
};

// [D_089e5bc8] Engine Events
EngineEvent polyrhythm_engine_events[] = {
    /* 0x00 */ polyrhythm_spawn_piston,
    /* 0x01 */ polyrhythm_despawn_piston,
    /* 0x02 */ polyrhythm_retract_pistons,
    /* 0x03 */ polyrhythm_event_spawn_rod,
    /* 0x04 */ polyrhythm_event_play_applause,
    /* 0x05 */ polyrhythm_engine_event_stub
};

// [D_089e5be0] Polyrhythm Game Engine
struct GameEngine polyrhythm_engine = {
    /* Size in Memory */ sizeof(struct PolyrhythmEngineData),
    /* Start Engine   */ polyrhythm_engine_start,
    /* Update Engine  */ polyrhythm_engine_update,
    /* Stop Engine    */ polyrhythm_engine_stop,
    /* Cue Index      */ polyrhythm_cue_index,
    /* Common Events  */ polyrhythm_common_events,
    /* Engine Events  */ polyrhythm_engine_events,
    /* Input Event    */ polyrhythm_input_event
};


  //  //  //  MISCELLANEOUS DATA  //  //  //


// [D_089e5c00] Lane Start X Positions
s16 polyrhythm_lane_start_x[] = {
    /* UPSIDE   */ 48,
    /* DOWNSIDE */ 96
};

// [D_089e5c04] Lane Start Y Positions
s16 polyrhythm_lane_start_y[] = {
    /* UPSIDE   */ 104,
    /* DOWNSIDE */ 128
};

// [D_089e5c08] Block Heights
s16 polyrhythm_block_heights[] = {
    /* HIDDEN */ 0,
    /* BLOCK  */ 16,
    /* OPEN   */ 20
};

// [D_089e5c10] Block Appear Animations
struct Animation *polyrhythm_block_appear_anim[] = {
    /* PLATFORM */ anim_polyrhythm_block,
    /* UPSIDE   */ anim_polyrhythm_spawn_upside,
    /* DOWNSIDE */ anim_polyrhythm_spawn_downside
};

// [D_089e5c1c] Block Open Animations
struct Animation *polyrhythm_block_open_anim[] = {
    /* PLATFORM */ anim_polyrhythm_block,
    /* UPSIDE   */ anim_polyrhythm_push_upside,
    /* DOWNSIDE */ anim_polyrhythm_push_downside
};

// [D_089e5c28] Block Appear SFX
struct SongHeader *polyrhythm_block_appear_sfx[] = {
    /* PLATFORM */ NULL,
    /* UPSIDE   */ &s_f_poly_appear_upside_seqData,
    /* DOWNSIDE */ &s_f_poly_open_downside_seqData
};

// [D_089e5c34] Block Open SFX
struct SongHeader *polyrhythm_block_open_sfx[] = {
    /* PLATFORM */ NULL,
    /* UPSIDE   */ &s_f_poly_open_upside_seqData,
    /* DOWNSIDE */ &s_f_poly_open_downside_seqData
};
