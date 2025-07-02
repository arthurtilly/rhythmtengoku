#include "engines/bunny_hop.h"


  //  //  //  GRAPHICS DATA  //  //  //


// [D_089e5ee0] Buffered Textures List
struct CompressedData *bunny_hop_buffered_textures[] = {
    END_OF_BUFFERED_TEXTURES_LIST
};

// [D_089e5ee4] Graphics Table (Bunny Hop)
struct GraphicsTable bunny_hop_gfx_table[] = {
    /* BG Tileset */ {
        /* Src.  */ &bunny_hop_bg_tiles,
        /* Dest. */ BG_TILESET_BASE(0),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Map */ {
        /* Src.  */ &bunny_hop_bg_map_water,
        /* Dest. */ BG_MAP_BASE(0xE000),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Map */ {
        /* Src.  */ &bunny_hop_bg_map,
        /* Dest. */ BG_MAP_BASE(0xF000),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Map */ {
        /* Src.  */ &bunny_hop_bg_map_ground,
        /* Dest. */ BG_MAP_BASE(0xD000),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* OBJ Tileset */ {
        /* Src.  */ &bunny_hop_obj,
        /* Dest. */ OBJ_TILESET_BASE(0),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Palette */ {
        /* Src.  */ bunny_hop_pal,
        /* Dest. */ BG_PALETTE_BUFFER(0),
        /* Size  */ 0x140
    },
    /* OBJ Palette */ {
        /* Src.  */ bunny_hop_pal,
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

// [D_089e5f50] Graphics Table (Remix 3)
struct GraphicsTable bunny_hop_remix_3_gfx_table[] = {
    /* BG Tileset */ {
        /* Src.  */ &bunny_hop_bg_tiles,
        /* Dest. */ BG_TILESET_BASE(0),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Map */ {
        /* Src.  */ &bunny_hop_bg_map_water,
        /* Dest. */ BG_MAP_BASE(0xE000),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Map */ {
        /* Src.  */ &bunny_hop_bg_map,
        /* Dest. */ BG_MAP_BASE(0xF000),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Map */ {
        /* Src.  */ &bunny_hop_bg_map_ground,
        /* Dest. */ BG_MAP_BASE(0xD000),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* OBJ Tileset */ {
        /* Src.  */ &bunny_hop_obj,
        /* Dest. */ OBJ_TILESET_BASE(0),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Palette */ {
        /* Src.  */ bunny_hop_remix_3_pal,
        /* Dest. */ BG_PALETTE_BUFFER(0),
        /* Size  */ 0x140
    },
    /* OBJ Palette */ {
        /* Src.  */ bunny_hop_remix_3_pal,
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

// [D_089e5fbc] Graphics Table Index
struct GraphicsTable *bunny_hop_gfx_tables[] = {
    /* 0x00 */ bunny_hop_gfx_table,
    /* 0x01 */ bunny_hop_gfx_table,
    /* 0x02 */ bunny_hop_gfx_table,
    /* 0x03 */ bunny_hop_remix_3_gfx_table
};


  //  //  //  MISCELLANEOUS DATA  //  //  //


// [D_089e5fcc] BGM Harmony
struct SongHeader *bunny_hop_bgm_harmony_parts[] = {
    /* 0x00 */ &s_rabbit_c7_seqData,
    /* 0x01 */ &s_rabbit_c7_brass_seqData,
    /* 0x02 */ &s_rabbit_f7_seqData,
    /* 0x03 */ &s_rabbit_c7_brass_seqData,
    /* 0x04 */ &s_rabbit_g7f7_1_seqData,
    /* 0x05 */ &s_rabbit_c7g7_seqData,
    /* 0x06 */ &s_rabbit_c7_seqData,
    /* 0x07 */ &s_rabbit_c7_brass_seqData,
    /* 0x08 */ &s_rabbit_f7_seqData,
    /* 0x09 */ &s_rabbit_c7_brass_seqData,
    /* 0x0A */ &s_rabbit_g7f7_2_seqData,
    /* 0x0B */ &s_rabbit_c7g7_seqData,
    /* 0x0C */ &s_rabbit_c7_seqData,
    /* 0x0D */ &s_rabbit_c7_brass_seqData,
    /* 0x0E */ &s_rabbit_f7_seqData,
    /* 0x0F */ &s_rabbit_c7_brass_seqData,
    /* 0x10 */ &s_rabbit_g7f7_1_seqData,
    /* 0x11 */ &s_rabbit_c7g7_seqData,
    /* 0x12 */ &s_rabbit_c7_seqData,
    /* 0x13 */ &s_rabbit_c7_seqData,
    /* 0x14 */ &s_rabbit_c7_seqData
};

// [D_089e6020] BGM Drum Fills
struct SongHeader *bunny_hop_bgm_drum_fills[] = {
    /* 0x00 */ &s_rabbit_fill_1_seqData,
    /* 0x01 */ &s_rabbit_fill_2_seqData,
    /* 0x02 */ &s_rabbit_fill_3_seqData,
    /* 0x03 */ &s_rabbit_fill_4_seqData
};

// [D_089e6030] Remix 3 Transition Palettes
Palette *bunny_hop_palettes[] = {
    /* 0x00 */ bunny_hop_pal,
    /* 0x01 */ bunny_hop_remix_3_pal,
};


  //  //  //  CUE DATA  //  //  //


// [D_089e6038] Cue 00 (?)
struct CueDefinition bunny_hop_cue_00 = {
    /* Unknown Param.  */ 0,
    /* Input Buttons   */ PRESS_BUTTON(A_BUTTON),
    /* Total Duration  */ 0x30,
    /* Hit Window      */ -0x03, 0x03,
    /* Barely Window   */ -0x05, 0x05,
    /* Tempo-Dependent */ FALSE,
    /* Force-Delete    */ FALSE,
    /* Size in Memory  */ 0x4,
    /* Func. Spawn     */ bunny_hop_cue_spawn,
    /* Spawn Parameter */ 0,
    /* Func. Update    */ bunny_hop_cue_update,
    /* Func. Despawn   */ bunny_hop_cue_despawn,
    /* Func. Hit       */ bunny_hop_cue_hit,
    /* Func. Barely    */ bunny_hop_cue_barely,
    /* Func. Miss      */ bunny_hop_cue_miss,
    /* SFX Spawn       */ NULL,
    /* SFX Hit         */ NULL,
    /* SFX Barely      */ &s_witch_donats_seqData,
    /* SFX Miss        */ &s_f_rabbit_miss_seqData,
    /* Miss Condition  */ NULL
};

// [D_089e6078] Cue 01 (?)
struct CueDefinition bunny_hop_cue_01 = {
    /* Unknown Param.  */ 0,
    /* Input Buttons   */ PRESS_BUTTON(A_BUTTON),
    /* Total Duration  */ 0x30,
    /* Hit Window      */ -0x03, 0x03,
    /* Barely Window   */ -0x05, 0x05,
    /* Tempo-Dependent */ FALSE,
    /* Force-Delete    */ FALSE,
    /* Size in Memory  */ 0x4,
    /* Func. Spawn     */ bunny_hop_cue_spawn,
    /* Spawn Parameter */ 1,
    /* Func. Update    */ bunny_hop_cue_update,
    /* Func. Despawn   */ bunny_hop_cue_despawn,
    /* Func. Hit       */ bunny_hop_cue_hit,
    /* Func. Barely    */ bunny_hop_cue_barely,
    /* Func. Miss      */ bunny_hop_cue_miss,
    /* SFX Spawn       */ NULL,
    /* SFX Hit         */ NULL,
    /* SFX Barely      */ NULL,
    /* SFX Miss        */ NULL,
    /* Miss Condition  */ NULL
};

// [D_089e60b8] Cue 02 (?)
struct CueDefinition bunny_hop_cue_02 = {
    /* Unknown Param.  */ 0,
    /* Input Buttons   */ PRESS_BUTTON(A_BUTTON),
    /* Total Duration  */ 0x30,
    /* Hit Window      */ -0x03, 0x03,
    /* Barely Window   */ -0x05, 0x05,
    /* Tempo-Dependent */ FALSE,
    /* Force-Delete    */ FALSE,
    /* Size in Memory  */ 0x4,
    /* Func. Spawn     */ bunny_hop_cue_spawn,
    /* Spawn Parameter */ 2,
    /* Func. Update    */ bunny_hop_cue_update,
    /* Func. Despawn   */ bunny_hop_cue_despawn,
    /* Func. Hit       */ bunny_hop_cue_hit,
    /* Func. Barely    */ bunny_hop_cue_barely,
    /* Func. Miss      */ bunny_hop_cue_miss,
    /* SFX Spawn       */ NULL,
    /* SFX Hit         */ NULL,
    /* SFX Barely      */ NULL,
    /* SFX Miss        */ NULL,
    /* Miss Condition  */ NULL
};

// [D_089e60f8] Cue 03 (?)
struct CueDefinition bunny_hop_cue_03 = {
    /* Unknown Param.  */ 0,
    /* Input Buttons   */ PRESS_BUTTON(A_BUTTON),
    /* Total Duration  */ 0x30,
    /* Hit Window      */ -0x03, 0x03,
    /* Barely Window   */ -0x05, 0x05,
    /* Tempo-Dependent */ FALSE,
    /* Force-Delete    */ FALSE,
    /* Size in Memory  */ 0x4,
    /* Func. Spawn     */ bunny_hop_cue_spawn,
    /* Spawn Parameter */ 3,
    /* Func. Update    */ bunny_hop_cue_update,
    /* Func. Despawn   */ bunny_hop_cue_despawn,
    /* Func. Hit       */ bunny_hop_cue_hit,
    /* Func. Barely    */ bunny_hop_cue_barely,
    /* Func. Miss      */ bunny_hop_cue_miss,
    /* SFX Spawn       */ NULL,
    /* SFX Hit         */ NULL,
    /* SFX Barely      */ &s_witch_donats_seqData,
    /* SFX Miss        */ &s_f_rabbit_miss_seqData,
    /* Miss Condition  */ NULL
};

// [D_089e6138] Cue 04 (?)
struct CueDefinition bunny_hop_cue_04 = {
    /* Unknown Param.  */ 0,
    /* Input Buttons   */ PRESS_BUTTON(A_BUTTON),
    /* Total Duration  */ 0x30,
    /* Hit Window      */ -0x03, 0x03,
    /* Barely Window   */ -0x05, 0x05,
    /* Tempo-Dependent */ FALSE,
    /* Force-Delete    */ FALSE,
    /* Size in Memory  */ 0x4,
    /* Func. Spawn     */ bunny_hop_cue_spawn,
    /* Spawn Parameter */ 4,
    /* Func. Update    */ bunny_hop_cue_update,
    /* Func. Despawn   */ bunny_hop_cue_despawn,
    /* Func. Hit       */ bunny_hop_cue_hit,
    /* Func. Barely    */ bunny_hop_cue_barely,
    /* Func. Miss      */ bunny_hop_cue_miss,
    /* SFX Spawn       */ NULL,
    /* SFX Hit         */ NULL,
    /* SFX Barely      */ NULL,
    /* SFX Miss        */ NULL,
    /* Miss Condition  */ NULL
};

// [D_089e6178] Cue 05 (?)
struct CueDefinition bunny_hop_cue_05 = {
    /* Unknown Param.  */ 0,
    /* Input Buttons   */ PRESS_BUTTON(A_BUTTON),
    /* Total Duration  */ 0x30,
    /* Hit Window      */ -0x03, 0x03,
    /* Barely Window   */ -0x05, 0x05,
    /* Tempo-Dependent */ FALSE,
    /* Force-Delete    */ FALSE,
    /* Size in Memory  */ 0x4,
    /* Func. Spawn     */ bunny_hop_cue_spawn,
    /* Spawn Parameter */ 5,
    /* Func. Update    */ bunny_hop_cue_update,
    /* Func. Despawn   */ bunny_hop_cue_despawn,
    /* Func. Hit       */ bunny_hop_cue_hit,
    /* Func. Barely    */ bunny_hop_cue_barely,
    /* Func. Miss      */ bunny_hop_cue_miss,
    /* SFX Spawn       */ NULL,
    /* SFX Hit         */ NULL,
    /* SFX Barely      */ NULL,
    /* SFX Miss        */ NULL,
    /* Miss Condition  */ NULL
};

// [D_089e61b8] Cue 06 (?)
struct CueDefinition bunny_hop_cue_06 = {
    /* Unknown Param.  */ 0,
    /* Input Buttons   */ PRESS_BUTTON(A_BUTTON),
    /* Total Duration  */ 0x30,
    /* Hit Window      */ -0x03, 0x03,
    /* Barely Window   */ -0x05, 0x05,
    /* Tempo-Dependent */ FALSE,
    /* Force-Delete    */ FALSE,
    /* Size in Memory  */ 0x4,
    /* Func. Spawn     */ bunny_hop_cue_spawn,
    /* Spawn Parameter */ 6,
    /* Func. Update    */ bunny_hop_cue_update,
    /* Func. Despawn   */ bunny_hop_cue_despawn,
    /* Func. Hit       */ bunny_hop_cue_hit,
    /* Func. Barely    */ bunny_hop_cue_barely,
    /* Func. Miss      */ bunny_hop_cue_miss,
    /* SFX Spawn       */ NULL,
    /* SFX Hit         */ NULL,
    /* SFX Barely      */ NULL,
    /* SFX Miss        */ NULL,
    /* Miss Condition  */ NULL
};

// [D_089e61f8] Cue 07 (?)
struct CueDefinition bunny_hop_cue_07 = {
    /* Unknown Param.  */ 0,
    /* Input Buttons   */ PRESS_BUTTON(A_BUTTON),
    /* Total Duration  */ 0x30,
    /* Hit Window      */ -0x03, 0x03,
    /* Barely Window   */ -0x05, 0x05,
    /* Tempo-Dependent */ FALSE,
    /* Force-Delete    */ FALSE,
    /* Size in Memory  */ 0x4,
    /* Func. Spawn     */ bunny_hop_cue_spawn,
    /* Spawn Parameter */ 7,
    /* Func. Update    */ bunny_hop_cue_update,
    /* Func. Despawn   */ bunny_hop_cue_despawn,
    /* Func. Hit       */ bunny_hop_cue_hit,
    /* Func. Barely    */ bunny_hop_cue_barely,
    /* Func. Miss      */ bunny_hop_cue_miss,
    /* SFX Spawn       */ NULL,
    /* SFX Hit         */ NULL,
    /* SFX Barely      */ NULL,
    /* SFX Miss        */ NULL,
    /* Miss Condition  */ NULL
};

// [D_089e6238] Cue 08 (?)
struct CueDefinition bunny_hop_cue_08 = {
    /* Unknown Param.  */ 0,
    /* Input Buttons   */ PRESS_BUTTON(A_BUTTON),
    /* Total Duration  */ 0x30,
    /* Hit Window      */ -0x03, 0x03,
    /* Barely Window   */ -0x05, 0x05,
    /* Tempo-Dependent */ FALSE,
    /* Force-Delete    */ FALSE,
    /* Size in Memory  */ 0x4,
    /* Func. Spawn     */ bunny_hop_cue_spawn,
    /* Spawn Parameter */ 8,
    /* Func. Update    */ bunny_hop_cue_update,
    /* Func. Despawn   */ bunny_hop_cue_despawn,
    /* Func. Hit       */ bunny_hop_cue_hit,
    /* Func. Barely    */ bunny_hop_cue_barely,
    /* Func. Miss      */ bunny_hop_cue_miss,
    /* SFX Spawn       */ NULL,
    /* SFX Hit         */ NULL,
    /* SFX Barely      */ NULL,
    /* SFX Miss        */ NULL,
    /* Miss Condition  */ NULL
};

// [D_089e6278] Cue 09 (?)
struct CueDefinition bunny_hop_cue_09 = {
    /* Unknown Param.  */ 0,
    /* Input Buttons   */ PRESS_BUTTON(A_BUTTON),
    /* Total Duration  */ 0x0C,
    /* Hit Window      */ -0x03, 0x03,
    /* Barely Window   */ -0x05, 0x05,
    /* Tempo-Dependent */ FALSE,
    /* Force-Delete    */ FALSE,
    /* Size in Memory  */ 0x4,
    /* Func. Spawn     */ bunny_hop_cue_spawn,
    /* Spawn Parameter */ 0,
    /* Func. Update    */ bunny_hop_cue_update,
    /* Func. Despawn   */ bunny_hop_cue_despawn,
    /* Func. Hit       */ bunny_hop_cue_hit,
    /* Func. Barely    */ bunny_hop_cue_barely,
    /* Func. Miss      */ bunny_hop_cue_miss,
    /* SFX Spawn       */ NULL,
    /* SFX Hit         */ NULL,
    /* SFX Barely      */ &s_f_dummy_vol0_seqData,
    /* SFX Miss        */ &s_f_dummy_vol0_seqData,
    /* Miss Condition  */ NULL
};

// [D_089e62b8] Cue 0A (?)
struct CueDefinition bunny_hop_cue_10 = {
    /* Unknown Param.  */ 0,
    /* Input Buttons   */ PRESS_BUTTON(A_BUTTON),
    /* Total Duration  */ 0x18,
    /* Hit Window      */ -0x03, 0x03,
    /* Barely Window   */ -0x05, 0x05,
    /* Tempo-Dependent */ FALSE,
    /* Force-Delete    */ FALSE,
    /* Size in Memory  */ 0x4,
    /* Func. Spawn     */ bunny_hop_cue_spawn,
    /* Spawn Parameter */ 0,
    /* Func. Update    */ bunny_hop_cue_update,
    /* Func. Despawn   */ bunny_hop_cue_despawn,
    /* Func. Hit       */ bunny_hop_cue_hit,
    /* Func. Barely    */ bunny_hop_cue_barely,
    /* Func. Miss      */ bunny_hop_cue_miss,
    /* SFX Spawn       */ NULL,
    /* SFX Hit         */ NULL,
    /* SFX Barely      */ &s_f_dummy_vol0_seqData,
    /* SFX Miss        */ &s_f_dummy_vol0_seqData,
    /* Miss Condition  */ NULL
};

// [D_089e62f8] Cue Definition Index
struct CueDefinition *bunny_hop_cue_index[] = {
    /* 0x00 */ &bunny_hop_cue_00,
    /* 0x01 */ &bunny_hop_cue_01,
    /* 0x02 */ &bunny_hop_cue_02,
    /* 0x03 */ &bunny_hop_cue_03,
    /* 0x04 */ &bunny_hop_cue_04,
    /* 0x05 */ &bunny_hop_cue_05,
    /* 0x06 */ &bunny_hop_cue_06,
    /* 0x07 */ &bunny_hop_cue_07,
    /* 0x08 */ &bunny_hop_cue_08,
    /* 0x09 */ &bunny_hop_cue_09,
    /* 0x0A */ &bunny_hop_cue_10,
    /* 0x0B */ NULL,
    END_OF_CUE_INDEX
};


  //  //  //  GAME ENGINE DATA  //  //  //


// [D_089e632c] Common Events
EngineEvent bunny_hop_common_events[] = {
    /* BEAT_ANIMATION */ bunny_hop_common_beat_animation,
    /* DISPLAY_TEXT   */ bunny_hop_common_display_text,
    /* INIT_TUTORIAL  */ bunny_hop_common_init_tutorial,
    END_OF_COMMON_EVENT_LIST
};

// [D_089e633c] Engine Events
EngineEvent bunny_hop_engine_events[] = {
    /* 0x00 */ bunny_hop_engine_event_stub,
    /* 0x01 */ func_0803899c,
    /* 0x02 */ func_0803934c,
    /* 0x03 */ func_08038248,
    /* 0x04 */ func_080382b0,
    /* 0x05 */ func_080382f4,
    /* 0x06 */ func_08038314,
    /* 0x07 */ func_0803833c,
    /* 0x08 */ func_080395dc,
    /* 0x09 */ func_080383f0
};

// [D_089e6364] Bunny Hop Game Engine
struct GameEngine bunny_hop_engine = {
    /* Size in Memory */ sizeof(struct BunnyHopEngineData),
    /* Start Engine   */ bunny_hop_engine_start,
    /* Update Engine  */ bunny_hop_engine_update,
    /* Stop Engine    */ bunny_hop_engine_stop,
    /* Cue Index      */ bunny_hop_cue_index,
    /* Common Events  */ bunny_hop_common_events,
    /* Engine Events  */ bunny_hop_engine_events,
    /* Input Event    */ bunny_hop_input_event
};


  //  //  //  MISCELLANEOUS DATA  //  //  //

const char D_0805a8ac[] = "";


// [D_089e6384] Sea-Life Animations
struct Animation *bunny_hop_platform_anim[] = {
    /* 0x00 */ anim_bunny_hop_1beat_turtle,
    /* 0x01 */ anim_bunny_hop_1beat_turtle,
    /* 0x02 */ anim_bunny_hop_1beat_whale,
    /* 0x03 */ anim_bunny_hop_2beat_whale,
    /* 0x04 */ anim_bunny_hop_4beat_whale,
    /* 0x05 */ anim_bunny_hop_8beat_whale,
    /* 0x06 */ anim_bunny_hop_last_whale
};
