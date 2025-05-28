#include "engines/ninja_bodyguard.h"


  //  //  //  GRAPHICS DATA  //  //  //


// [D_089e68b8] All Animations
struct Animation *ninja_bodyguard_anim[][2] = {
    /* 0x00 */ { anim_feudal_lord_blink, anim_girlfriend_blink },
    /* 0x01 */ { anim_feudal_lord_scared, anim_girlfriend_scared },
    /* 0x02 */ { anim_feudal_lord_shaking, anim_girlfriend_shaking },
    /* 0x03 */ { anim_feudal_lord_walk, anim_girlfriend_walk },
    /* 0x04 */ { anim_ninja1_heart_eyes, anim_ninja2_heart_eyes },
    /* 0x05 */ { anim_archer_draw_bow, anim_bad_guy_draw_slingshot },
    /* 0x06 */ { anim_ninja1_arrow_to_wall, anim_ninja2_rock_to_wall },
    /* 0x07 */ { anim_ninja1_arrow_in_wall1, anim_ninja2_rock_in_wall1 },
    /* 0x08 */ { anim_ninja1_arrow_in_wall2, anim_ninja2_rock_in_wall2 },
    /* 0x09 */ { anim_ninja1_arrow_in_wall3, anim_ninja2_rock_in_wall3 },
    /* 0x0A */ { anim_ninja1_arrow_deflect_l, anim_ninja2_rock_deflect_l },
    /* 0x0B */ { anim_ninja1_arrow_deflect_r, anim_ninja2_rock_deflect_r },
    /* 0x0C */ { anim_archer_release_bow, anim_bad_guy_release_slingshot },
    /* 0x0D */ { anim_ninja1_arrow_pieces, anim_ninja2_rock_pieces },
    /* 0x0E */ { anim_ninja1_arrow_to_ninja, anim_ninja2_rock_to_tanaka },
    /* 0x0F */ { anim_ninja_swing_r, anim_tanaka_swing_r },
    /* 0x10 */ { anim_ninja_swing_l, anim_tanaka_swing_l },
    /* 0x11 */ { anim_ninja_slice_r, anim_tanaka_slice_r },
    /* 0x12 */ { anim_ninja_slice_l, anim_tanaka_slice_l },
    /* 0x13 */ { anim_ninja_appear, anim_tanaka_appear },
    /* 0x14 */ { anim_ninja_raise_sword, anim_tanaka_raise_stick },
    /* 0x15 */ { anim_ninja1_button_indicators, anim_ninja2_button_indicators },
    /* 0x16 */ { anim_ninja1_cutscene_arrow, anim_ninja2_cutscene_rock }
};

// [D_089e6970] Animation Table
struct Animation **ninja_bodyguard_anim_table[] = {
    /* 0x00 */ ninja_bodyguard_anim[0],
    /* 0x01 */ ninja_bodyguard_anim[1],
    /* 0x02 */ ninja_bodyguard_anim[2],
    /* 0x03 */ ninja_bodyguard_anim[3],
    /* 0x04 */ ninja_bodyguard_anim[4],
    /* 0x05 */ ninja_bodyguard_anim[5],
    /* 0x06 */ ninja_bodyguard_anim[6],
    /* 0x07 */ ninja_bodyguard_anim[7],
    /* 0x08 */ ninja_bodyguard_anim[8],
    /* 0x09 */ ninja_bodyguard_anim[9],
    /* 0x0A */ ninja_bodyguard_anim[10],
    /* 0x0B */ ninja_bodyguard_anim[11],
    /* 0x0C */ ninja_bodyguard_anim[12],
    /* 0x0D */ ninja_bodyguard_anim[13],
    /* 0x0E */ ninja_bodyguard_anim[14],
    /* 0x0F */ ninja_bodyguard_anim[15],
    /* 0x10 */ ninja_bodyguard_anim[16],
    /* 0x11 */ ninja_bodyguard_anim[17],
    /* 0x12 */ ninja_bodyguard_anim[18],
    /* 0x13 */ ninja_bodyguard_anim[19],
    /* 0x14 */ ninja_bodyguard_anim[20],
    /* 0x15 */ ninja_bodyguard_anim[21],
    /* 0x16 */ ninja_bodyguard_anim[22]
};

// [D_089e69cc] ?
struct SpriteVector3 D_089e69cc[] = {
    /* 0x00 */ { 118, 70, 0x486e },
    /* 0x01 */ { 149, 68, 0x485a },
    /* 0x02 */ { 150, 96, 0x485a },
    /* 0x03 */ { 120, 91, 0x486e }
};

// [D_089e69ec] Buffered Textures List
struct CompressedData *ninja_bodyguard_buffered_textures[] = {
    END_OF_BUFFERED_TEXTURES_LIST
};

// [D_089e69f0] Graphics Table (Ninja Bodyguard)
struct GraphicsTable ninja_bodyguard_gfx_table[] = {
    /* BG Tileset */ {
        /* Src.  */ &ninja_bodyguard_intro_bg_tiles,
        /* Dest. */ BG_TILESET_BASE(0x8000),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Map */ {
        /* Src.  */ &ninja_bodyguard_intro_bg_map,
        /* Dest. */ BG_MAP_BASE(0xE000),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Tileset */ {
        /* Src.  */ &ninja_bodyguard_bg_tiles,
        /* Dest. */ BG_TILESET_BASE(0),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Map */ {
        /* Src.  */ &ninja_bodyguard_bg_map_r,
        /* Dest. */ BG_MAP_BASE(0xE800),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Map */ {
        /* Src.  */ &ninja_bodyguard_bg_map_l,
        /* Dest. */ BG_MAP_BASE(0xF000),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* OBJ Tileset */ {
        /* Src.  */ &ninja_bodyguard_obj,
        /* Dest. */ OBJ_TILESET_BASE(0),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Palette */ {
        /* Src.  */ ninja_bodyguard_bg_pal,
        /* Dest. */ BG_PALETTE_BUFFER(0),
        /* Size  */ 0x140
    },
    /* OBJ Palette */ {
        /* Src.  */ ninja_bodyguard_obj_pal,
        /* Dest. */ OBJ_PALETTE_BUFFER(0),
        /* Size  */ 0x140
    },
    END_OF_GRAPHICS_TABLE
};

// [D_089e6a5c] Graphics Table (Ninja Reincarnate)
struct GraphicsTable ninja_reincarnate_gfx_table[] = {
    /* BG Tileset */ {
        /* Src.  */ &ninja_reincarnate_bg_tiles,
        /* Dest. */ BG_TILESET_BASE(0),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Map */ {
        /* Src.  */ &ninja_reincarnate_bg_map_r,
        /* Dest. */ BG_MAP_BASE(0xE800),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Map */ {
        /* Src.  */ &ninja_reincarnate_bg_map_l,
        /* Dest. */ BG_MAP_BASE(0xF000),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* OBJ Tileset */ {
        /* Src.  */ &ninja_reincarnate_obj,
        /* Dest. */ OBJ_TILESET_BASE(0),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Palette */ {
        /* Src.  */ ninja_reincarnate_bg_pal,
        /* Dest. */ BG_PALETTE_BUFFER(0),
        /* Size  */ 0x140
    },
    /* OBJ Palette */ {
        /* Src.  */ ninja_reincarnate_obj_pal,
        /* Dest. */ OBJ_PALETTE_BUFFER(0),
        /* Size  */ 0x140
    },
    END_OF_GRAPHICS_TABLE
};

// [D_089e6ab0] Graphics Table Index
struct GraphicsTable *ninja_bodyguard_gfx_tables[] = {
    /* 0x00 */ ninja_bodyguard_gfx_table,
    /* 0x01 */ ninja_reincarnate_gfx_table
};


  //  //  //  CUE DATA  //  //  //


// [D_089e6ab8] Cue 00 (Default)
struct CueDefinition ninja_bodyguard_cue_default = {
    /* Unknown Param.  */ 0,
    /* Input Buttons   */ PRESS_BUTTON(A_BUTTON | DPAD_RIGHT | DPAD_LEFT | DPAD_UP | DPAD_DOWN),
    /* Total Duration  */ 0x18,
    /* Hit Window      */ -0x03, 0x03,
    /* Barely Window   */ -0x08, 0x05,
    /* Tempo-Dependent */ FALSE,
    /* Force-Delete    */ FALSE,
    /* Size in Memory  */ 0x4,
    /* Func. Spawn     */ ninja_bodyguard_cue_spawn,
    /* Spawn Parameter */ 0,
    /* Func. Update    */ ninja_bodyguard_cue_update,
    /* Func. Despawn   */ ninja_bodyguard_cue_despawn,
    /* Func. Hit       */ ninja_bodyguard_cue_hit,
    /* Func. Barely    */ ninja_bodyguard_cue_barely,
    /* Func. Miss      */ ninja_bodyguard_cue_miss,
    /* SFX Spawn       */ NULL,
    /* SFX Hit         */ NULL,
    /* SFX Barely      */ NULL,
    /* SFX Miss        */ NULL,
    /* Miss Condition  */ NULL
};

// [D_089e6af8] Cue Definition Index
struct CueDefinition *ninja_bodyguard_cue_index[] = {
    /* 0x00 */ &ninja_bodyguard_cue_default,
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


// [D_089e6b2c] Common Events
EngineEvent ninja_bodyguard_common_events[] = {
    /* BEAT_ANIMATION */ ninja_bodyguard_common_beat_animation,
    /* DISPLAY_TEXT   */ ninja_bodyguard_common_display_text,
    /* INIT_TUTORIAL  */ // None
    END_OF_COMMON_EVENT_LIST
};

// [D_089e6b38] Engine Events
EngineEvent ninja_bodyguard_engine_events[] = {
    /* 0x00 */ func_0803c9f8,
    /* 0x01 */ func_0803ca8c,
    /* 0x02 */ func_0803cad0,
    /* 0x03 */ func_0803c5cc,
    /* 0x04 */ func_0803c5f8,
    /* 0x05 */ func_0803c638,
    /* 0x06 */ func_0803c960,
    /* 0x07 */ func_0803bf74,
    /* 0x08 */ func_0803c034,
    /* 0x09 */ func_0803c08c,
    /* 0x0A */ func_0803cb0c,
    /* 0x0B */ func_0803c2b8,
    /* 0x0C */ func_0803c400,
    /* 0x0D */ func_0803c6fc,
    /* 0x0E */ func_0803ccb4,
    /* 0x0F */ func_0803cce0,
    /* 0x10 */ func_0803be04,
    /* 0x11 */ func_0803be88,
    /* 0x12 */ ninja_bodyguard_engine_event_stub
};

// [D_089e6b84] Ninja Bodyguard Game Engine
struct GameEngine ninja_bodyguard_engine = {
    /* Size in Memory */ sizeof(struct NinjaBodyguardEngineData),
    /* Start Engine   */ ninja_bodyguard_engine_start,
    /* Update Engine  */ ninja_bodyguard_engine_update,
    /* Stop Engine    */ ninja_bodyguard_engine_stop,
    /* Cue Index      */ ninja_bodyguard_cue_index,
    /* Common Events  */ ninja_bodyguard_common_events,
    /* Engine Events  */ ninja_bodyguard_engine_events,
    /* Input Event    */ ninja_bodyguard_input_event
};
