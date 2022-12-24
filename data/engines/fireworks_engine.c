#include "engines/fireworks.h"


  /* FIREWORKS - GAME ENGINE DATA */


extern const struct CompressedGraphics D_08c5da78; // OBJ Tiles (+ BG Tiles for Fireworks 1)
extern const struct CompressedGraphics D_08c5fd10;
extern const struct CompressedGraphics D_08c5e20c;
extern const struct CompressedGraphics D_08c60044;
extern const struct CompressedGraphics D_08c5ebcc;
extern const struct CompressedGraphics D_08c60410;
extern const struct CompressedGraphics D_08c5f27c;
extern const struct CompressedGraphics D_08c606ec;
extern const struct CompressedGraphics D_08c5fa80;
extern const struct CompressedGraphics D_08c609a4;
extern const Palette fireworks_obj_pal[];
extern const Palette fireworks_bg_pal[];


  //  //  //  GRAPHICS DATA  //  //  //


// [D_089e4214] Buffered Textures List
const struct CompressedGraphics *const fireworks_buffered_textures[] = {
    END_OF_BUFFERED_TEXTURES_LIST
};

// [D_089e4218] Graphics Table (Fireworks)
const struct GraphicsTable fireworks_gfx_table[] = {
    /* BG Tileset */ {
        /* Src.  */ &D_08c5da78,
        /* Dest. */ BG_TILESET_BASE(0),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Map */ {
        /* Src.  */ &D_08c5fd10,
        /* Dest. */ BG_MAP_BASE(0xE800),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* OBJ Tileset */ {
        /* Src.  */ &D_08c5da78,
        /* Dest. */ OBJ_TILESET_BASE(0),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Palette */ {
        /* Src.  */ fireworks_obj_pal,
        /* Dest. */ BG_PALETTE_BUFFER(0),
        /* Size  */ 0x140
    },
    /* OBJ Palette */ {
        /* Src.  */ fireworks_obj_pal,
        /* Dest. */ OBJ_PALETTE_BUFFER(0),
        /* Size  */ 0x140
    },
    /* OBJ Palette */ {
        /* Src.  */ D_089ccbc8[8],
        /* Dest. */ OBJ_PALETTE_BUFFER(11.5),
        /* Size  */ 0x8
    },
    /* OBJ Palette */ {
        /* Src.  */ D_089ccbc8[7],
        /* Dest. */ OBJ_PALETTE_BUFFER(12.5),
        /* Size  */ 0x8
    },
    /* OBJ Palette */ {
        /* Src.  */ D_089ccbc8[13],
        /* Dest. */ OBJ_PALETTE_BUFFER(13.5),
        /* Size  */ 0x8
    },
    END_OF_GRAPHICS_TABLE
};

// [D_089e4284] Graphics Table (Remix 5 [1])
const struct GraphicsTable fireworks_remix5_gfx_table_1[] = {
    /* BG Tileset */ {
        /* Src.  */ &D_08c5e20c,
        /* Dest. */ BG_TILESET_BASE(0),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Map */ {
        /* Src.  */ &D_08c60044,
        /* Dest. */ BG_MAP_BASE(0xE800),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* OBJ Tileset */ {
        /* Src.  */ &D_08c5da78,
        /* Dest. */ OBJ_TILESET_BASE(0),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Palette */ {
        /* Src.  */ fireworks_bg_pal,
        /* Dest. */ BG_PALETTE_BUFFER(0),
        /* Size  */ 0x140
    },
    /* OBJ Palette */ {
        /* Src.  */ fireworks_obj_pal,
        /* Dest. */ OBJ_PALETTE_BUFFER(0),
        /* Size  */ 0x140
    },
    /* OBJ Palette */ {
        /* Src.  */ D_089ccbc8[7],
        /* Dest. */ OBJ_PALETTE_BUFFER(12.5),
        /* Size  */ 0x8
    },
    END_OF_GRAPHICS_TABLE
};

// [D_089e42d8] Graphics Table (Remix 5 [2])
const struct GraphicsTable fireworks_remix5_gfx_table_2[] = {
    /* BG Tileset */ {
        /* Src.  */ &D_08c5ebcc,
        /* Dest. */ BG_TILESET_BASE(0),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Map */ {
        /* Src.  */ &D_08c60410,
        /* Dest. */ BG_MAP_BASE(0xE800),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* OBJ Tileset */ {
        /* Src.  */ &D_08c5da78,
        /* Dest. */ OBJ_TILESET_BASE(0),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Palette */ {
        /* Src.  */ fireworks_bg_pal,
        /* Dest. */ BG_PALETTE_BUFFER(0),
        /* Size  */ 0x140
    },
    /* OBJ Palette */ {
        /* Src.  */ fireworks_obj_pal,
        /* Dest. */ OBJ_PALETTE_BUFFER(0),
        /* Size  */ 0x140
    },
    /* OBJ Palette */ {
        /* Src.  */ D_089ccbc8[7],
        /* Dest. */ OBJ_PALETTE_BUFFER(12.5),
        /* Size  */ 0x8
    },
    END_OF_GRAPHICS_TABLE
};

// [D_089e432c] Graphics Table (Remix 5 [3])
const struct GraphicsTable fireworks_remix5_gfx_table_3[] = {
    /* BG Tileset */ {
        /* Src.  */ &D_08c5f27c,
        /* Dest. */ BG_TILESET_BASE(0),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Map */ {
        /* Src.  */ &D_08c606ec,
        /* Dest. */ BG_MAP_BASE(0xE800),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* OBJ Tileset */ {
        /* Src.  */ &D_08c5da78,
        /* Dest. */ OBJ_TILESET_BASE(0),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Palette */ {
        /* Src.  */ fireworks_bg_pal,
        /* Dest. */ BG_PALETTE_BUFFER(0),
        /* Size  */ 0x140
    },
    /* OBJ Palette */ {
        /* Src.  */ fireworks_obj_pal,
        /* Dest. */ OBJ_PALETTE_BUFFER(0),
        /* Size  */ 0x140
    },
    /* OBJ Palette */ {
        /* Src.  */ D_089ccbc8[7],
        /* Dest. */ OBJ_PALETTE_BUFFER(12.5),
        /* Size  */ 0x8
    },
    END_OF_GRAPHICS_TABLE
};

// [D_089e4380] Graphics Table (Remix 5 [4])
const struct GraphicsTable fireworks_remix5_gfx_table_4[] = {
    /* BG Tileset */ {
        /* Src.  */ &D_08c5fa80,
        /* Dest. */ BG_TILESET_BASE(0),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Map */ {
        /* Src.  */ &D_08c609a4,
        /* Dest. */ BG_MAP_BASE(0xE800),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* OBJ Tileset */ {
        /* Src.  */ &D_08c5da78,
        /* Dest. */ OBJ_TILESET_BASE(0),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Palette */ {
        /* Src.  */ fireworks_bg_pal,
        /* Dest. */ BG_PALETTE_BUFFER(0),
        /* Size  */ 0x140
    },
    /* OBJ Palette */ {
        /* Src.  */ fireworks_obj_pal,
        /* Dest. */ OBJ_PALETTE_BUFFER(0),
        /* Size  */ 0x140
    },
    /* OBJ Palette */ {
        /* Src.  */ D_089ccbc8[7],
        /* Dest. */ OBJ_PALETTE_BUFFER(12.5),
        /* Size  */ 0x8
    },
    END_OF_GRAPHICS_TABLE
};

// [D_089e43d4] Graphics Table Index
const struct GraphicsTable *const fireworks_gfx_tables[] = {
    /* 0x00 */ fireworks_gfx_table,
    /* 0x01 */ fireworks_remix5_gfx_table_1,
    /* 0x02 */ fireworks_remix5_gfx_table_2,
    /* 0x03 */ fireworks_remix5_gfx_table_3,
    /* 0x04 */ fireworks_remix5_gfx_table_4
};


  //  //  //  CUE DATA  //  //  //


// [D_089e43e8] Firework Durations
const u16 fireworks_cue_durations[] = {
    /* SPIRIT SPARKLER */ 0x30,
    /* NORMAL FIREWORK */ 0x60,
    /* TAIKO BOMBER    */ 0x48
};

// [D_089e43f0] Cue 00 (Spirit Sparkler)
const struct CueDefinition fireworks_cue_spirit_sparkler = {
    /* Unknown Param.  */ 0,
    /* Input Buttons   */ PRESS_BUTTON(A_BUTTON),
    /* Total Duration  */ 0x18,
    /* Hit Window      */ -0x03, 0x03,
    /* Barely Window   */ -0x05, 0x05,
    /* Tempo-Dependent */ FALSE,
    /* Force-Delete    */ FALSE,
    /* Size in Memory  */ sizeof(struct FireworksCue),
    /* Func. Spawn     */ fireworks_cue_spawn,
    /* Spawn Parameter */ FIREWORKS_CUE_TYPE_SPIRIT_SPARKLER,
    /* Func. Update    */ fireworks_cue_update,
    /* Func. Despawn   */ fireworks_cue_despawn,
    /* Func. Hit       */ fireworks_cue_hit,
    /* Func. Barely    */ fireworks_cue_barely,
    /* Func. Miss      */ fireworks_cue_miss,
    /* SFX Spawn       */ &s_hanabi_utiage_seqData,
    /* SFX Hit         */ &s_hanabi_don_seqData,
    /* SFX Barely      */ &s_witch_donats_seqData,
    /* SFX Miss        */ NULL,
    /* Miss Condition  */ NULL
};

// [D_089e4430] Cue 01 (Normal Firework)
const struct CueDefinition fireworks_cue_normal = {
    /* Unknown Param.  */ 0,
    /* Input Buttons   */ PRESS_BUTTON(A_BUTTON),
    /* Total Duration  */ 0x48,
    /* Hit Window      */ -0x03, 0x03,
    /* Barely Window   */ -0x05, 0x05,
    /* Tempo-Dependent */ FALSE,
    /* Force-Delete    */ FALSE,
    /* Size in Memory  */ sizeof(struct FireworksCue),
    /* Func. Spawn     */ fireworks_cue_spawn,
    /* Spawn Parameter */ FIREWORKS_CUE_TYPE_NORMAL_FIREWORK,
    /* Func. Update    */ fireworks_cue_update,
    /* Func. Despawn   */ fireworks_cue_despawn,
    /* Func. Hit       */ fireworks_cue_hit,
    /* Func. Barely    */ fireworks_cue_barely,
    /* Func. Miss      */ fireworks_cue_miss,
    /* SFX Spawn       */ &s_hanabi_utiage_seqData,
    /* SFX Hit         */ &s_hanabi_don_seqData,
    /* SFX Barely      */ &s_witch_donats_seqData,
    /* SFX Miss        */ NULL,
    /* Miss Condition  */ NULL
};

// [D_089e4470] Cue 04 (Hawfinch Taiko Bomber)
const struct CueDefinition fireworks_cue_taiko_bomber = {
    /* Unknown Param.  */ 0,
    /* Input Buttons   */ PRESS_BUTTON(A_BUTTON),
    /* Total Duration  */ 0x30,
    /* Hit Window      */ -0x03, 0x03,
    /* Barely Window   */ -0x05, 0x05,
    /* Tempo-Dependent */ FALSE,
    /* Force-Delete    */ FALSE,
    /* Size in Memory  */ sizeof(struct FireworksCue),
    /* Func. Spawn     */ fireworks_cue_spawn,
    /* Spawn Parameter */ FIREWORKS_CUE_TYPE_HAWFINCH_TAIKO_BOMBER,
    /* Func. Update    */ fireworks_cue_update,
    /* Func. Despawn   */ fireworks_cue_despawn,
    /* Func. Hit       */ fireworks_cue_hit,
    /* Func. Barely    */ fireworks_cue_barely,
    /* Func. Miss      */ fireworks_cue_miss,
    /* SFX Spawn       */ &s_hanabi_utiage_v_seqData,
    /* SFX Hit         */ &s_hanabi_pon_seqData,
    /* SFX Barely      */ &s_witch_donats_seqData,
    /* SFX Miss        */ NULL,
    /* Miss Condition  */ NULL
};

// [D_089e44b0] Cue Definition Index
const struct CueDefinition *const fireworks_cue_index[] = {
    /* 0x00 */ &fireworks_cue_spirit_sparkler,
    /* 0x01 */ &fireworks_cue_normal,
    /* 0x02 */ NULL,
    /* 0x03 */ NULL,
    /* 0x04 */ &fireworks_cue_taiko_bomber,
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


// [D_089e44e4] Common Events
const EngineEvent fireworks_common_events[] = {
    /* BEAT_ANIMATION */ (EngineEvent) fireworks_common_beat_animation,
    /* DISPLAY_TEXT   */ (EngineEvent) fireworks_common_display_text,
    /* INIT_TUTORIAL  */ (EngineEvent) fireworks_common_init_tutorial,
    END_OF_COMMON_EVENT_LIST
};

// [D_089e44f4] Engine Events
const EngineEvent fireworks_engine_events[] = {
    /* 0x00 */ (EngineEvent) fireworks_set_pattern_mode,
    /* 0x01 */ (EngineEvent) fireworks_play_sound,
    /* 0x02 */ (EngineEvent) fireworks_set_pattern
};

// [D_089e4500] Fireworks Game Engine
const struct GameEngine D_089e4500 = {
    /* Size in Memory */ sizeof(struct FireworksInfo),
    /* Start Engine   */ fireworks_engine_start,
    /* Update Engine  */ fireworks_engine_update,
    /* Stop Engine    */ fireworks_engine_stop,
    /* Cue Index      */ fireworks_cue_index,
    /* Common Events  */ fireworks_common_events,
    /* Engine Events  */ fireworks_engine_events,
    /* Input Event    */ fireworks_input_event
};
