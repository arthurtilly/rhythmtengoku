#include "engines/sick_beats.h"


  //  //  //  MISCELLANEOUS DATA  //  //  //


// [D_089e90d0] Endless Particle SFX Pitch Offsets
s16 sick_beats_particle_sfx_pitch[] = {
    /* 0x00 */ INT_TO_FIXED(0.0),
    /* 0x01 */ INT_TO_FIXED(4.0),
    /* 0x02 */ INT_TO_FIXED(-5.0),
    /* 0x03 */ INT_TO_FIXED(11.0),
    /* 0x04 */ INT_TO_FIXED(12.0),
    /* 0x05 */ INT_TO_FIXED(16.0),
    /* 0x06 */ INT_TO_FIXED(7.0),
    /* 0x07 */ INT_TO_FIXED(-1.0)
};


  //  //  //  GRAPHICS DATA  //  //  //


// [D_089e90e0] Yellow Microbe Event Animations
struct Animation *sick_beats_microbe_event_anim[] = {
    /* 0x00 */ anim_yellow_microbe_beat,
    /* 0x01 */ anim_yellow_microbe_hurt,
    /* 0x02 */ anim_yellow_microbe_vanish,
    /* 0x03 */ anim_virus_attack,
    /* 0x04 */ anim_yellow_microbe_return
};

// [D_089e90f4] Yellow Microbe Event Animation Durations
u16 sick_beats_microbe_event_durations[] = {
    /* 0x00 */ 0x00,
    /* 0x01 */ 0x20,
    /* 0x02 */ 0x18,
    /* 0x03 */ 0x30,
    /* 0x04 */ 0x18
};

// [D_089e9100] Buffered Textures List
struct CompressedData *sick_beats_buffered_textures[] = {
    END_OF_BUFFERED_TEXTURES_LIST
};

// [D_089e9104] Graphics Table
struct GraphicsTable gfx_table_sick_beats[] = {
    /* BG Tileset */ {
        /* Src.  */ &sick_beats_bg_tiles,
        /* Dest. */ BG_TILESET_BASE(0),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Map */ {
        /* Src.  */ &sick_beats_bg_map_foreground,
        /* Dest. */ BG_MAP_BASE(0xE800),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Tileset */ {
        /* Src.  */ &sick_beats_bg_tiles,
        /* Dest. */ BG_TILESET_BASE(0),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Map */ {
        /* Src.  */ &sick_beats_bg_map,
        /* Dest. */ BG_MAP_BASE(0xF000),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* OBJ Tileset */ {
        /* Src.  */ &sick_beats_obj,
        /* Dest. */ OBJ_TILESET_BASE(0),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Palette */ {
        /* Src.  */ sick_beats_pal,
        /* Dest. */ BG_PALETTE_BUFFER(0),
        /* Size  */ 0x140
    },
    /* OBJ Palette */ {
        /* Src.  */ sick_beats_pal,
        /* Dest. */ OBJ_PALETTE_BUFFER(0),
        /* Size  */ 0x140
    },
    END_OF_GRAPHICS_TABLE
};


  //  //  //  VIRUS ACTIONS DATA  //  //  //


// [D_089e9164] Virus Actions
struct VirusAction sick_beats_virus_actions[] = {
    /* 0x00 */ {
        /* Animation */ anim_virus_appear,
        /* X,Y Pos.  */ 256, 104,
        /* Playback1 */ 1,
        /* Playback2 */ 0,
        /* Playback3 */ 0,
        /* Unknown0C */ 0,
        /* Rotation  */ 0x00
    },
    /* 0x01 */ {
        /* Animation */ anim_virus_ready,
        /* X,Y Pos.  */ 176, 104,
        /* Playback1 */ 1,
        /* Playback2 */ 0x7f,
        /* Playback3 */ 0,
        /* Unknown0C */ 0,
        /* Rotation  */ 0x00
    },
    /* 0x02 */ {
        /* Animation */ anim_virus_dash_up_full,
        /* X,Y Pos.  */ 176, 60,
        /* Playback1 */ 1,
        /* Playback2 */ 0,
        /* Playback3 */ 0x8002,
        /* Unknown0C */ 0,
        /* Rotation  */ 0x00
    },
    /* 0x03 */ {
        /* Animation */ anim_virus_dash_up_full,
        /* X,Y Pos.  */ 176, 60,
        /* Playback1 */ 1,
        /* Playback2 */ 0x7f,
        /* Playback3 */ 2,
        /* Unknown0C */ 0,
        /* Rotation  */ 0x00
    },
    /* 0x04 */ {
        /* Animation */ anim_virus_ready,
        /* X,Y Pos.  */ 176, 16,
        /* Playback1 */ 1,
        /* Playback2 */ 0x7f,
        /* Playback3 */ 0,
        /* Unknown0C */ 0,
        /* Rotation  */ -0x200
    },
    /* 0x05 */ {
        /* Animation */ anim_virus_dash_left_full,
        /* X,Y Pos.  */ 104, 16,
        /* Playback1 */ 1,
        /* Playback2 */ 0,
        /* Playback3 */ 0x8002,
        /* Unknown0C */ 0,
        /* Rotation  */ 0x00
    },
    /* 0x06 */ {
        /* Animation */ anim_virus_dash_left_full,
        /* X,Y Pos.  */ 104, 16,
        /* Playback1 */ 1,
        /* Playback2 */ 0x7f,
        /* Playback3 */ 2,
        /* Unknown0C */ 0,
        /* Rotation  */ 0x00
    },
    /* 0x07 */ {
        /* Animation */ anim_virus_ready,
        /* X,Y Pos.  */ 32, 16,
        /* Playback1 */ 1,
        /* Playback2 */ 0x7f,
        /* Playback3 */ 0,
        /* Unknown0C */ 0,
        /* Rotation  */ 0x400
    },
    /* 0x08 */ {
        /* Animation */ anim_virus_dash_up_full,
        /* X,Y Pos.  */ 32, 60,
        /* Playback1 */ 1,
        /* Playback2 */ 0,
        /* Playback3 */ 0x8002,
        /* Unknown0C */ 0x2000,
        /* Rotation  */ 0x00
    },
    /* 0x09 */ {
        /* Animation */ anim_virus_dash_up_full,
        /* X,Y Pos.  */ 32, 60,
        /* Playback1 */ 1,
        /* Playback2 */ 0x7f,
        /* Playback3 */ 2,
        /* Unknown0C */ 0x2000,
        /* Rotation  */ 0x00
    },
    /* 0x0A */ {
        /* Animation */ anim_virus_ready,
        /* X,Y Pos.  */ 32, 104,
        /* Playback1 */ 1,
        /* Playback2 */ 0x7f,
        /* Playback3 */ 0,
        /* Unknown0C */ 0,
        /* Rotation  */ 0x200
    },
    /* 0x0B */ {
        /* Animation */ anim_virus_dash_left_full,
        /* X,Y Pos.  */ 104, 104,
        /* Playback1 */ 1,
        /* Playback2 */ 0,
        /* Playback3 */ 0x8002,
        /* Unknown0C */ 0x1000,
        /* Rotation  */ 0x00
    },
    /* 0x0C */ {
        /* Animation */ anim_virus_dash_left_full,
        /* X,Y Pos.  */ 104, 104,
        /* Playback1 */ 1,
        /* Playback2 */ 0x7f,
        /* Playback3 */ 2,
        /* Unknown0C */ 0x1000,
        /* Rotation  */ 0x00
    },
    /* 0x0D */ {
        /* Animation */ anim_virus_appear,
        /* X,Y Pos.  */ 176, 104,
        /* Playback1 */ 1,
        /* Playback2 */ 0,
        /* Playback3 */ 0,
        /* Unknown0C */ 0,
        /* Rotation  */ 0x00
    },
};


  //  //  //  CUE DATA  //  //  //


// [D_089e927c] Cue 00 (Default)
struct CueDefinition sick_beats_cue_default = {
    /* Unknown Param.  */ 0,
    /* Input Buttons   */ PRESS_BUTTON(0),
    /* Total Duration  */ 0x18,
    /* Hit Window      */ -0x03, 0x03,
    /* Barely Window   */ -0x05, 0x05,
    /* Tempo-Dependent */ FALSE,
    /* Force-Delete    */ FALSE,
    /* Size in Memory  */ 0x30,
    /* Func. Spawn     */ sick_beats_cue_spawn,
    /* Spawn Parameter */ 0,
    /* Func. Update    */ sick_beats_cue_update,
    /* Func. Despawn   */ sick_beats_cue_despawn,
    /* Func. Hit       */ sick_beats_cue_hit,
    /* Func. Barely    */ sick_beats_cue_barely,
    /* Func. Miss      */ sick_beats_cue_miss,
    /* SFX Spawn       */ NULL,
    /* SFX Hit         */ NULL,
    /* SFX Barely      */ NULL,
    /* SFX Miss        */ NULL,
    /* Miss Condition  */ NULL
};

// [D_089e92bc] Cue Definition Index
struct CueDefinition *sick_beats_cue_index[] = {
    /* 0x00 */ &sick_beats_cue_default,
    /* 0x01 */ NULL,
    /* 0x02 */ NULL,
    /* 0x03 */ NULL,
    /* 0x04 */ &sick_beats_cue_default,
    /* 0x05 */ NULL,
    /* 0x06 */ NULL,
    /* 0x07 */ NULL,
    /* 0x08 */ &sick_beats_cue_default,
    /* 0x09 */ NULL,
    /* 0x0A */ NULL,
    /* 0x0B */ NULL,
    END_OF_CUE_INDEX
};

// [D_089e92f0] ?
u8 D_089e92f0[] = {
    /* 0x00 */ 1,
    /* 0x01 */ 1,
    /* 0x02 */ 2,
    /* 0x03 */ 3
};

// [D_089e92f4] Doctor Animations
struct Animation *sick_beats_doctor_anim[] = {
    /* 0x00 */ anim_virus_doctor_beat,
    /* 0x01 */ anim_virus_doctor_hit1,
    /* 0x02 */ anim_virus_doctor_hit2,
    /* 0x03 */ anim_virus_doctor_fail
};


  //  //  //  GAME ENGINE DATA  //  //  //


// [D_089e9304] Common Events
EngineEvent sick_beats_common_events[] = {
    /* BEAT_ANIMATION */ sick_beats_common_beat_animation,
    /* DISPLAY_TEXT   */ sick_beats_common_display_text,
    /* INIT_TUTORIAL  */ // None
    END_OF_COMMON_EVENT_LIST
};

// [D_089e9310] Engine Events
EngineEvent sick_beats_engine_events[] = {
    /* 0x00 */ sick_beats_set_virus,
    /* 0x01 */ sick_beats_spawn_virus,
    /* 0x02 */ sick_beats_set_virus_hits,
    /* 0x03 */ sick_beats_set_virus_palette,
    /* 0x04 */ sick_beats_set_game_over_beatscript,
    /* 0x05 */ sick_beats_endless_play_game_over,
    /* 0x06 */ sick_beats_increment_particle_pitch,
    /* 0x07 */ sick_beats_engine_event_stub
};

// [D_089e9330] Sick Beats Game Engine
struct GameEngine sick_beats_engine = {
    /* Size in Memory */ sizeof(struct SickBeatsEngineData),
    /* Start Engine   */ sick_beats_engine_start,
    /* Update Engine  */ sick_beats_engine_update,
    /* Stop Engine    */ sick_beats_engine_stop,
    /* Cue Index      */ sick_beats_cue_index,
    /* Common Events  */ sick_beats_common_events,
    /* Engine Events  */ sick_beats_engine_events,
    /* Input Event    */ sick_beats_input_event
};
