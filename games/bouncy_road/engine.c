#include "engines/bouncy_road.h"


  //  //  //  GRAPHICS DATA  //  //  //


// [D_089e3c04] Player Bouncer Animation Table (Unused)
struct Animation *bouncy_road_player_bouncer_anim[] = {
    /* 0x00 */ anim_bouncy_road_player_a,
    /* 0x01 */ anim_bouncy_road_player_dpad
};

// [D_089e3c0c] Buffered Textures List
struct CompressedGraphics *bouncy_road_buffered_textures[] = {
    END_OF_BUFFERED_TEXTURES_LIST
};

// [D_089e3c10] Graphics Table (Bouncy Road)
struct GraphicsTable bouncy_road_1_gfx_table[] = {
    /* OBJ Tileset */ {
        /* Src.  */ &D_08c57a14,
        /* Dest. */ OBJ_TILESET_BASE(0),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Palette */ {
        /* Src.  */ bouncy_road_pal,
        /* Dest. */ BG_PALETTE_BUFFER(0),
        /* Size  */ 0x140
    },
    /* OBJ Palette */ {
        /* Src.  */ bouncy_road_pal,
        /* Dest. */ OBJ_PALETTE_BUFFER(0),
        /* Size  */ 0x140
    },
    END_OF_GRAPHICS_TABLE
};

// [D_089e3c40] Graphics Table (Remix 5)
struct GraphicsTable bouncy_road_remix_5_gfx_table[] = {
    /* BG Tileset */ {
        /* Src.  */ &D_08c583bc,
        /* Dest. */ BG_TILESET_BASE(0),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Map */ {
        /* Src.  */ &D_08c585a4,
        /* Dest. */ BG_MAP_BASE(0xE800),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Map */ {
        /* Src.  */ &D_08c58738,
        /* Dest. */ BG_MAP_BASE(0xF000),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Map */ {
        /* Src.  */ &D_08c58940,
        /* Dest. */ BG_MAP_BASE(0xF800),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* OBJ Tileset */ {
        /* Src.  */ &D_08c57a14,
        /* Dest. */ OBJ_TILESET_BASE(0),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Palette */ {
        /* Src.  */ bouncy_road_remix_5_bg_pal,
        /* Dest. */ BG_PALETTE_BUFFER(0),
        /* Size  */ 0x140
    },
    /* OBJ Palette */ {
        /* Src.  */ bouncy_road_remix_5_obj_pal,
        /* Dest. */ OBJ_PALETTE_BUFFER(0),
        /* Size  */ 0x140
    },
    END_OF_GRAPHICS_TABLE
};

// [D_089e3ca0] Graphics Table (Bouncy Road 2)
struct GraphicsTable bouncy_road_2_gfx_table[] = {
    /* OBJ Tileset */ {
        /* Src.  */ &D_08c57a14,
        /* Dest. */ OBJ_TILESET_BASE(0),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Palette */ {
        /* Src.  */ bouncy_road_2_pal,
        /* Dest. */ BG_PALETTE_BUFFER(0),
        /* Size  */ 0x140
    },
    /* OBJ Palette */ {
        /* Src.  */ bouncy_road_2_pal,
        /* Dest. */ OBJ_PALETTE_BUFFER(0),
        /* Size  */ 0x140
    },
    END_OF_GRAPHICS_TABLE
};

// [D_089e3cd0] Graphics Table Index
struct GraphicsTable *bouncy_road_gfx_tables[] = {
    /* 0x00 */ bouncy_road_1_gfx_table,
    /* 0x01 */ bouncy_road_remix_5_gfx_table,
    /* 0x02 */ bouncy_road_2_gfx_table
};


  //  //  //  CUE DATA  //  //  //


// [D_089e3cdc] Cue 00 (Default)
struct CueDefinition bouncy_road_cue_default = {
    /* Unknown Param.  */ 0,
    /* Input Buttons   */ PRESS_BUTTON(A_BUTTON),
    /* Total Duration  */ 0x18,
    /* Hit Window      */ -0x03, 0x03,
    /* Barely Window   */ -0x04, 0x04,
    /* Tempo-Dependent */ FALSE,
    /* Force-Delete    */ FALSE,
    /* Size in Memory  */ 0x4,
    /* Func. Spawn     */ bouncy_road_cue_spawn,
    /* Spawn Parameter */ 0,
    /* Func. Update    */ bouncy_road_cue_update,
    /* Func. Despawn   */ bouncy_road_cue_despawn,
    /* Func. Hit       */ bouncy_road_cue_hit,
    /* Func. Barely    */ bouncy_road_cue_barely,
    /* Func. Miss      */ bouncy_road_cue_miss,
    /* SFX Spawn       */ NULL,
    /* SFX Hit         */ NULL,
    /* SFX Barely      */ NULL,
    /* SFX Miss        */ NULL,
    /* Miss Condition  */ NULL
};

// [D_089e3d1c] Cue Definition Index
struct CueDefinition *bouncy_road_cue_index[] = {
    /* 0x00 */ &bouncy_road_cue_default,
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


// [D_089e3d50] Common Events
EngineEvent bouncy_road_common_events[] = {
    /* BEAT_ANIMATION */ bouncy_road_common_beat_animation,
    /* DISPLAY_TEXT   */ bouncy_road_common_display_text,
    /* INIT_TUTORIAL  */ // None
    END_OF_COMMON_EVENT_LIST
};

// [D_089e3d5c] Engine Events
EngineEvent bouncy_road_engine_events[] = {
    /* 0x00 */ func_0802dd84,
    /* 0x01 */ func_0802deb0,
    /* 0x02 */ func_0802e234,
    /* 0x03 */ func_0802df98,
    /* 0x04 */ func_0802e248,
    /* 0x05 */ func_0802e25c,
    /* 0x06 */ bouncy_road_engine_event_stub
};

// [D_089e3d78] Bouncy Road Game Engine
struct GameEngine bouncy_road_engine = {
    /* Size in Memory */ sizeof(struct BouncyRoadEngineData),
    /* Start Engine   */ bouncy_road_engine_start,
    /* Update Engine  */ bouncy_road_engine_update,
    /* Stop Engine    */ bouncy_road_engine_stop,
    /* Cue Index      */ bouncy_road_cue_index,
    /* Common Events  */ bouncy_road_common_events,
    /* Engine Events  */ bouncy_road_engine_events,
    /* Input Event    */ bouncy_road_input_event
};
