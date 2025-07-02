#include "engines/samurai_slice.h"


  //  //  //  GRAPHICS DATA  //  //  //


// [D_089e4798] Buffered Textures List
struct CompressedData *samurai_slice_buffered_textures[] = {
    END_OF_BUFFERED_TEXTURES_LIST
};

// [D_089e479c] Graphics Table (Samurai Slice)
struct GraphicsTable samurai_slice_gfx_table[] = {
    /* BG Tileset */ {
        /* Src.  */ &samurai_slice_bg_tiles,
        /* Dest. */ BG_TILESET_BASE(0),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Map */ {
        /* Src.  */ &samurai_slice_bg_map_fog_bottom,
        /* Dest. */ BG_MAP_BASE(0xF000),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Map */ {
        /* Src.  */ &samurai_slice_bg_map_fog_top,
        /* Dest. */ BG_MAP_BASE(0xE000),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Map */ {
        /* Src.  */ &samurai_slice_bg_map,
        /* Dest. */ BG_MAP_BASE(0xD800),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* OBJ Tileset */ {
        /* Src.  */ &samurai_slice_obj,
        /* Dest. */ OBJ_TILESET_BASE(0),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Palette */ {
        /* Src.  */ samurai_slice_pal,
        /* Dest. */ BG_PALETTE_BUFFER(0),
        /* Size  */ 0x140
    },
    /* OBJ Palette */ {
        /* Src.  */ samurai_slice_pal,
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


  //  //  //  CUE DATA  //  //  //


// [D_089e4808] Cue 00 (First Slice)
struct CueDefinition samurai_slice_cue_first = {
    /* Unknown Param.  */ 0,
    /* Input Buttons   */ PRESS_BUTTON(A_BUTTON),
    /* Total Duration  */ 0x18,
    /* Hit Window      */ -0x03, 0x03,
    /* Barely Window   */ -0x05, 0x05,
    /* Tempo-Dependent */ FALSE,
    /* Force-Delete    */ FALSE,
    /* Size in Memory  */ 0x4,
    /* Func. Spawn     */ samurai_slice_cue_spawn,
    /* Spawn Parameter */ 0,
    /* Func. Update    */ samurai_slice_cue_update,
    /* Func. Despawn   */ samurai_slice_cue_despawn,
    /* Func. Hit       */ samurai_slice_cue_hit,
    /* Func. Barely    */ samurai_slice_cue_barely,
    /* Func. Miss      */ samurai_slice_cue_miss,
    /* SFX Spawn       */ &s_kuma_sakana_seqData,
    /* SFX Hit         */ &s_f_iai_cut_seqData,
    /* SFX Barely      */ &s_iai_miss_seqData,
    /* SFX Miss        */ NULL,
    /* Miss Condition  */ NULL
};

// [D_089e4848] Cue 01 (Second Slice)
struct CueDefinition samurai_slice_cue_second = {
    /* Unknown Param.  */ 0,
    /* Input Buttons   */ PRESS_BUTTON(A_BUTTON),
    /* Total Duration  */ 0x18,
    /* Hit Window      */ -0x03, 0x03,
    /* Barely Window   */ -0x05, 0x05,
    /* Tempo-Dependent */ FALSE,
    /* Force-Delete    */ FALSE,
    /* Size in Memory  */ 0x4,
    /* Func. Spawn     */ samurai_slice_cue_spawn,
    /* Spawn Parameter */ 1,
    /* Func. Update    */ samurai_slice_cue_update,
    /* Func. Despawn   */ samurai_slice_cue_despawn,
    /* Func. Hit       */ samurai_slice_cue_hit,
    /* Func. Barely    */ samurai_slice_cue_barely,
    /* Func. Miss      */ samurai_slice_cue_miss,
    /* SFX Spawn       */ &s_kuma_sakana_seqData,
    /* SFX Hit         */ &s_f_iai_cut2_seqData,
    /* SFX Barely      */ &s_iai_miss_seqData,
    /* SFX Miss        */ NULL,
    /* Miss Condition  */ NULL
};

// [D_089e4888] Cue Definition Index
struct CueDefinition *samurai_slice_cue_index[] = {
    /* 0x00 */ &samurai_slice_cue_first,
    /* 0x01 */ &samurai_slice_cue_second,
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

// [D_089e48bc] Samurai Slicing Animations
struct Animation *samurai_slicing_anim[] = {
    /* 0x00 */ anim_samurai_slice_1,
    /* 0x01 */ anim_samurai_slice_2,
    /* 0x02 */ anim_samurai_slice_3
};

// [D_089e48c8] Samurai Beat Animations
struct Animation *samurai_beat_anim[] = {
    /* 0x00 */ anim_samurai_beat_1,
    /* 0x01 */ anim_samurai_beat_2,
    /* 0x02 */ anim_samurai_beat_3
};

// Blank Text
const char D_0805a5d0[] = "";


// ?
const struct SamuraiSlice_0805a5d4 D_0805a5d4[] = {
    { anim_demon_hurt, 0x80, -0x200 },
    { anim_small_demon_hit, 0x80, -0x300 },
    { anim_med_demon_hit, 0x80, -0x300 },
    { anim_small_demon_hit, 0x80, -0x300 },
    { anim_propeller_demon_hit, 0x80, -0x500 },
    { anim_winged_demon_hit, 0x80, -0x300 },
    { anim_large_demon_hit1, 0x80, -0x400 },
    { anim_large_demon_hit2, 0x80, -0x400 },
    { anim_small_demon_barely, 0x80, 0x100 },
    { anim_med_demon_barely, 0x80, 0x100 },
    { anim_propeller_demon_barely, 0x80, 0x100 },
    { anim_winged_demon_barely, 0x80, 0x100 },
    { anim_large_demon_barely, 0x80, 0x100 },
};


  //  //  //  GAME ENGINE DATA  //  //  //


// [D_089e48d4] Common Events
EngineEvent samurai_slice_common_events[] = {
    /* BEAT_ANIMATION */ samurai_slice_common_beat_animation,
    /* DISPLAY_TEXT   */ samurai_slice_common_display_text,
    /* INIT_TUTORIAL  */ // None
    END_OF_COMMON_EVENT_LIST
};

// [D_089e48e0] Engine Events
EngineEvent samurai_slice_engine_events[] = {
    /* 0x00 */ samurai_slice_engine_event_stub,
    /* 0x01 */ func_08030f04,
    /* 0x02 */ func_08031bc0,
    /* 0x03 */ func_08032430,
    /* 0x04 */ func_08031c54,
    /* 0x05 */ func_0803113c,
    /* 0x06 */ func_08030f34,
    /* 0x07 */ func_080324a4,
    /* 0x08 */ func_08031770,
    /* 0x09 */ func_0803118c
};

// [D_089e4908] Samurai Slice Game Engine
struct GameEngine samurai_slice_engine = {
    /* Size in Memory */ sizeof(struct SamuraiSliceEngineData),
    /* Start Engine   */ samurai_slice_engine_start,
    /* Update Engine  */ samurai_slice_engine_update,
    /* Stop Engine    */ samurai_slice_engine_stop,
    /* Cue Index      */ samurai_slice_cue_index,
    /* Common Events  */ samurai_slice_common_events,
    /* Engine Events  */ samurai_slice_engine_events,
    /* Input Event    */ samurai_slice_input_event
};


  //  //  //  MISCELLANEOUS DATA  //  //  //


// [D_089e4928] Demon Moving Animations
struct Animation *D_089e4928[] = {
    /* 0x00 */ anim_small_demon_hop,
    /* 0x01 */ anim_med_demon_hop,
    /* 0x02 */ anim_winged_demon_fly,
    /* 0x03 */ anim_propeller_demon_hover,
    /* 0x04 */ anim_large_demon_walk,
    /* 0x05 */ anim_large_demon_walk
};

// [D_089e4940] Demon Moving Animations
struct Animation *D_089e4940[] = {
    /* 0x00 */ anim_med_demon_hop,
    /* 0x01 */ anim_small_demon_hop,
    /* 0x02 */ anim_winged_demon_fly,
    /* 0x03 */ anim_propeller_demon_hover,
    /* 0x04 */ anim_large_demon_walk,
    /* 0x05 */ anim_large_demon_walk
};
