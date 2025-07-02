#include "engines/night_walk.h"


  //  //  //  MISCELLANEOUS DATA  //  //  //


// [D_089e2ed4] Star Animations
struct Animation *night_walk_star_anim[] = {
    anim_night_walk_star_tiny,
    anim_night_walk_star_small,
    anim_night_walk_star_med,
    anim_night_walk_star_big,
    anim_night_walk_star_huge
};

// [D_089e2ee8] Star Expand Animations
struct Animation *night_walk_star_expand_anim[] = {
    anim_night_walk_star_tiny_to_small,
    anim_night_walk_star_small_to_med,
    anim_night_walk_star_med_to_big,
    anim_night_walk_star_big_to_huge
};

#include "night_walk_drums.inc.c"


  //  //  //  GRAPHICS DATA  //  //  //


// [D_089e3380] Buffered Textures List
struct CompressedData *night_walk_buffered_textures[] = {
    END_OF_BUFFERED_TEXTURES_LIST
};

// [D_089e3384] Graphics Table
struct GraphicsTable night_walk_gfx_table[] = {
    /* BG Tileset */ {
        /* Src.  */ &night_walk_obj,
        /* Dest. */ BG_TILESET_BASE(0),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Map */ {
        /* Src.  */ &night_walk_bg_map,
        /* Dest. */ BG_MAP_BASE(0xE800),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* OBJ Tileset */ {
        /* Src.  */ &night_walk_obj,
        /* Dest. */ OBJ_TILESET_BASE(0),
        /* Size  */ COMPRESSED_GFX_SOURCE
    },
    /* BG Palette */ {
        /* Src.  */ night_walk_pal,
        /* Dest. */ BG_PALETTE_BUFFER(0),
        /* Size  */ 0x140
    },
    /* OBJ Palette */ {
        /* Src.  */ night_walk_pal,
        /* Dest. */ OBJ_PALETTE_BUFFER(0),
        /* Size  */ 0x140
    },
    END_OF_GRAPHICS_TABLE
};


  //  //  //  SOUND DATA  //  //  //


// [D_089e33cc] DrumTech Sequence
struct DrumTechNote drum_seq_night_walk_kick1[] = {
    {
        /* Drum ID */ 4,
        /* Volume  */ 0x100,
        /* Pitch   */ 0,
        /* Delta   */ 0x08
    },
    END_OF_DRUM_TECH_SEQUENCE
};

// [D_089e33dc] DrumTech Sequence
struct DrumTechNote drum_seq_night_walk_kick_barely[] = {
    {
        /* Drum ID */ 1,
        /* Volume  */ 0x100,
        /* Pitch   */ 0xc00,
        /* Delta   */ 0x0C
    },
    END_OF_DRUM_TECH_SEQUENCE
};

// [D_089e33ec] DrumTech Sequence Pool (Kick)
struct DrumTechNote *night_walk_drum_seq_kick[] = {
    /* 00 */ drum_seq_night_walk_kick1
};

// [D_089e33f0] DrumTech Sequence
struct DrumTechNote drum_seq_night_walk_kick_swing1[] = {
    {
        /* Drum ID */ 4,
        /* Volume  */ 0x100,
        /* Pitch   */ 0,
        /* Delta   */ 0x08
    },
    END_OF_DRUM_TECH_SEQUENCE
};

// [D_089e3400] DrumTech Sequence
struct DrumTechNote drum_seq_night_walk_kick_swing_barely[] = {
    {
        /* Drum ID */ 1,
        /* Volume  */ 0x100,
        /* Pitch   */ 0xc00,
        /* Delta   */ 0x0C
    },
    END_OF_DRUM_TECH_SEQUENCE
};

// [D_089e3410] DrumTech Sequence Pool (Kick - Swing)
struct DrumTechNote *night_walk_drum_seq_kick_swing[] = {
    /* 00 */ drum_seq_night_walk_kick_swing1
};

// [D_089e3414] DrumTech Sequence
struct DrumTechNote drum_seq_night_walk_snare1[] = {
    {
        /* Drum ID */ 4,
        /* Volume  */ 0x100,
        /* Pitch   */ 0,
        /* Delta   */ 0
    },
    {
        /* Drum ID */ 17,
        /* Volume  */ 0x100,
        /* Pitch   */ 0,
        /* Delta   */ 0x04
    },
    END_OF_DRUM_TECH_SEQUENCE
};

// [D_089e342c] DrumTech Sequence
struct DrumTechNote drum_seq_night_walk_snare_barely[] = {
    {
        /* Drum ID */ 13,
        /* Volume  */ 0x100,
        /* Pitch   */ 0x400,
        /* Delta   */ 0
    },
    {
        /* Drum ID */ 1,
        /* Volume  */ 0x100,
        /* Pitch   */ 0xc00,
        /* Delta   */ 0
    },
    END_OF_DRUM_TECH_SEQUENCE
};

// [D_089e3444] DrumTech Sequence Pool (Snare)
struct DrumTechNote *night_walk_drum_seq_snare[] = {
    /* 00 */ drum_seq_night_walk_snare1
};

// [D_089e3448] DrumTech Sequence
struct DrumTechNote drum_seq_night_walk_snare_swing1[] = {
    {
        /* Drum ID */ 4,
        /* Volume  */ 0x100,
        /* Pitch   */ 0,
        /* Delta   */ 0
    },
    {
        /* Drum ID */ 17,
        /* Volume  */ 0x100,
        /* Pitch   */ 0,
        /* Delta   */ 0x04
    },
    END_OF_DRUM_TECH_SEQUENCE
};

// [D_089e3460] DrumTech Sequence
struct DrumTechNote drum_seq_night_walk_snare_swing_barely[] = {
    {
        /* Drum ID */ 13,
        /* Volume  */ 0x100,
        /* Pitch   */ 0x400,
        /* Delta   */ 0
    },
    {
        /* Drum ID */ 1,
        /* Volume  */ 0x100,
        /* Pitch   */ 0xc00,
        /* Delta   */ 0
    },
    END_OF_DRUM_TECH_SEQUENCE
};

// [D_089e3478] DrumTech Sequence Pool (Snare - Swing)
struct DrumTechNote *night_walk_drum_seq_snare_swing[] = {
    /* 00 */ drum_seq_night_walk_snare_swing1
};

// [D_089e347c] DrumTech Sequence
struct DrumTechNote drum_seq_night_walk_cymbal1[] = {
    {
        /* Drum ID */ 4,
        /* Volume  */ 0x100,
        /* Pitch   */ 0,
        /* Delta   */ 0
    },
    {
        /* Drum ID */ 17,
        /* Volume  */ 0x100,
        /* Pitch   */ 0,
        /* Delta   */ 0
    },
    {
        /* Drum ID */ 34,
        /* Volume  */ 0x80,
        /* Pitch   */ 0,
        /* Delta   */ 0x0C
    },
    END_OF_DRUM_TECH_SEQUENCE
};

// [D_089e349c] DrumTech Sequence Pool (Cymbal)
struct DrumTechNote *night_walk_drum_seq_cymbal[] = {
    /* 00 */ drum_seq_night_walk_cymbal1
};

// [D_089e34a0] DrumTech Sequence
struct DrumTechNote drum_seq_night_walk_roll1[] = {
    {
        /* Drum ID */ 4,
        /* Volume  */ 0x100,
        /* Pitch   */ 0,
        /* Delta   */ 0x08
    },
    {
        /* Drum ID */ 24,
        /* Volume  */ 0x20,
        /* Pitch   */ 0,
        /* Delta   */ 0x04
    },
    {
        /* Drum ID */ 24,
        /* Volume  */ 0x30,
        /* Pitch   */ 0,
        /* Delta   */ 0x04
    },
    {
        /* Drum ID */ 24,
        /* Volume  */ 0x40,
        /* Pitch   */ 0,
        /* Delta   */ 0x04
    },
    {
        /* Drum ID */ 24,
        /* Volume  */ 0x60,
        /* Pitch   */ 0,
        /* Delta   */ 0x04
    },
    END_OF_DRUM_TECH_SEQUENCE
};

// [D_089e34d0] DrumTech Sequence
struct DrumTechNote drum_seq_night_walk_roll2[] = {
    {
        /* Drum ID */ 4,
        /* Volume  */ 0x100,
        /* Pitch   */ 0,
        /* Delta   */ 0x08
    },
    {
        /* Drum ID */ 24,
        /* Volume  */ 0x30,
        /* Pitch   */ 0,
        /* Delta   */ 0x04
    },
    {
        /* Drum ID */ 24,
        /* Volume  */ 0x40,
        /* Pitch   */ 0,
        /* Delta   */ 0x08
    },
    {
        /* Drum ID */ 24,
        /* Volume  */ 0x50,
        /* Pitch   */ 0,
        /* Delta   */ 0x04
    },
    END_OF_DRUM_TECH_SEQUENCE
};

// [D_089e34f8] DrumTech Sequence
struct DrumTechNote drum_seq_night_walk_roll3[] = {
    {
        /* Drum ID */ 4,
        /* Volume  */ 0x100,
        /* Pitch   */ 0,
        /* Delta   */ 0x08
    },
    {
        /* Drum ID */ 24,
        /* Volume  */ 0x40,
        /* Pitch   */ 0,
        /* Delta   */ 0x04
    },
    {
        /* Drum ID */ 13,
        /* Volume  */ 0x40,
        /* Pitch   */ 0,
        /* Delta   */ 0x0C
    },
    END_OF_DRUM_TECH_SEQUENCE
};

// [D_089e3518] DrumTech Sequence
struct DrumTechNote drum_seq_night_walk_roll4[] = {
    {
        /* Drum ID */ 4,
        /* Volume  */ 0x100,
        /* Pitch   */ 0,
        /* Delta   */ 0x18
    },
    END_OF_DRUM_TECH_SEQUENCE
};

// [D_089e3528] DrumTech Sequence Pool (Drum Roll)
struct DrumTechNote *night_walk_drum_seq_roll[] = {
    /* 00 */ drum_seq_night_walk_roll1,
    /* 01 */ drum_seq_night_walk_roll2,
    /* 02 */ drum_seq_night_walk_roll3,
    /* 03 */ drum_seq_night_walk_roll4
};

// [D_089e3538] DrumTech Sequence
struct DrumTechNote drum_seq_night_walk_default[] = {
    {
        /* Drum ID */ 2,
        /* Volume  */ 0x100,
        /* Pitch   */ 0,
        /* Delta   */ 0x0C
    },
    END_OF_DRUM_TECH_SEQUENCE
};

// [D_089e3548] DrumTech Sequence
struct DrumTechNote drum_seq_night_walk_offbeat_kick[] = {
    {
        /* Drum ID */ 40,
        /* Volume  */ 0x100,
        /* Pitch   */ 0,
        /* Delta   */ 0x0C
    },
    {
        /* Drum ID */ 4,
        /* Volume  */ 0x100,
        /* Pitch   */ 0,
        /* Delta   */ 0x0C
    },
    END_OF_DRUM_TECH_SEQUENCE
};

// [D_089e3560] DrumTech Sequence
struct DrumTechNote drum_seq_night_walk_offbeat_snare[] = {
    {
        /* Drum ID */ 40,
        /* Volume  */ 0x100,
        /* Pitch   */ 0,
        /* Delta   */ 0x06
    },
    {
        /* Drum ID */ 40,
        /* Volume  */ 0x100,
        /* Pitch   */ 0,
        /* Delta   */ 0x06
    },
    {
        /* Drum ID */ 4,
        /* Volume  */ 0x100,
        /* Pitch   */ 0,
        /* Delta   */ 0x0C
    },
    END_OF_DRUM_TECH_SEQUENCE
};

// [D_089e3580] DrumTech Sequence
struct DrumTechNote drum_seq_night_walk_offbeat_cymbal[] = {
    {
        /* Drum ID */ 40,
        /* Volume  */ 0x100,
        /* Pitch   */ 0,
        /* Delta   */ 0x04
    },
    {
        /* Drum ID */ 40,
        /* Volume  */ 0xc0,
        /* Pitch   */ 0,
        /* Delta   */ 0x04
    },
    {
        /* Drum ID */ 40,
        /* Volume  */ 0xa0,
        /* Pitch   */ 0,
        /* Delta   */ 0x04
    },
    {
        /* Drum ID */ 4,
        /* Volume  */ 0x100,
        /* Pitch   */ 0,
        /* Delta   */ 0x0C
    },
    END_OF_DRUM_TECH_SEQUENCE
};

// [D_089e35a8] DrumTech Sequences (Walking Click)
struct DrumTechNote *night_walk_drum_seq_offbeat[] = {
    /* KICK   */ drum_seq_night_walk_offbeat_kick,
    /* SNARE  */ drum_seq_night_walk_offbeat_snare,
    /* CYMBAL */ drum_seq_night_walk_offbeat_cymbal,
    /* ROLL   */ drum_seq_night_walk_offbeat_kick
};

// [D_089e35b8] DrumTech Sequence
struct DrumTechNote drum_seq_night_walk_offbeat_swing_kick[] = {
    {
        /* Drum ID */ 40,
        /* Volume  */ 0x100,
        /* Pitch   */ 0,
        /* Delta   */ 0x08
    },
    {
        /* Drum ID */ 4,
        /* Volume  */ 0x100,
        /* Pitch   */ 0,
        /* Delta   */ 0x0C
    },
    END_OF_DRUM_TECH_SEQUENCE
};

// [D_089e35d0] DrumTech Sequence
struct DrumTechNote drum_seq_night_walk_offbeat_swing_snare[] = {
    {
        /* Drum ID */ 40,
        /* Volume  */ 0x60,
        /* Pitch   */ 0,
        /* Delta   */ 0x04
    },
    {
        /* Drum ID */ 40,
        /* Volume  */ 0x20,
        /* Pitch   */ 0,
        /* Delta   */ 0x04
    },
    {
        /* Drum ID */ 4,
        /* Volume  */ 0x100,
        /* Pitch   */ 0,
        /* Delta   */ 0x0C
    },
    END_OF_DRUM_TECH_SEQUENCE
};

// [D_089e35f0] DrumTech Sequence
struct DrumTechNote drum_seq_night_walk_offbeat_swing_cymbal[] = {
    {
        /* Drum ID */ 40,
        /* Volume  */ 0x60,
        /* Pitch   */ 0,
        /* Delta   */ 0x04
    },
    {
        /* Drum ID */ 40,
        /* Volume  */ 0x60,
        /* Pitch   */ 0,
        /* Delta   */ 0x04
    },
    {
        /* Drum ID */ 4,
        /* Volume  */ 0x100,
        /* Pitch   */ 0,
        /* Delta   */ 0x0C
    },
    END_OF_DRUM_TECH_SEQUENCE
};

// [D_089e3610] DrumTech Sequences (Walking Click - Swing)
struct DrumTechNote *night_walk_drum_seq_offbeat_swing[] = {
    /* KICK   */ drum_seq_night_walk_offbeat_swing_kick,
    /* SNARE  */ drum_seq_night_walk_offbeat_swing_snare,
    /* CYMBAL */ drum_seq_night_walk_offbeat_swing_cymbal,
    /* ROLL   */ drum_seq_night_walk_offbeat_swing_kick
};

// [D_089e3620] Bridge Hit Animations
struct Animation *night_walk_bridge_anim[] = {
    /* KICK   */ anim_night_walk_heart_bridge,
    /* SNARE  */ anim_night_walk_lollipop_bridge,
    /* CYMBAL */ anim_night_walk_umbrella_bridge,
    /* ROLL   */ anim_night_walk_heart_bridge,
    /* WAND   */ anim_night_walk_umbrella_bridge
};

// [D_089e3634] Box Hit Animations
struct Animation *night_walk_box_anim[] = {
    /* KICK   */ anim_night_walk_heart_box,
    /* SNARE  */ anim_night_walk_lollipop_box,
    /* CYMBAL */ anim_night_walk_umbrella_box,
    /* ROLL   */ anim_night_walk_heart_box,
    /* WAND   */ anim_night_walk_ng_wand_box
};

// [D_089e3648] Bridge/Box Barely Animations
struct Animation *night_walk_barely_anim[][2] = {
    /* KICK   */ { anim_night_walk_ng_heart_bridge, anim_night_walk_ng_heart_box },
    /* SNARE  */ { anim_night_walk_ng_lollipop_bridge, anim_night_walk_ng_lollipop_box },
    /* CYMBAL */ { anim_night_walk_ng_umbrella_bridge, anim_night_walk_ng_umbrella_box },
    /* ROLL   */ { anim_night_walk_ng_heart_bridge, anim_night_walk_ng_heart_box },
    /* WAND   */ { anim_night_walk_ng_heart_bridge, anim_night_walk_ng_heart_box }
};


  //  //  //  CUE DATA  //  //  //


// [D_089e3670] Cue 00 (Heart)
struct CueDefinition night_walk_cue_kick = {
    /* Unknown Param.  */ 0,
    /* Input Buttons   */ PRESS_BUTTON(A_BUTTON),
    /* Total Duration  */ 0xC0,
    /* Hit Window      */ -0x03, 0x03,
    /* Barely Window   */ -0x05, 0x05,
    /* Tempo-Dependent */ FALSE,
    /* Force-Delete    */ FALSE,
    /* Size in Memory  */ sizeof(struct NightWalkCue),
    /* Func. Spawn     */ night_walk_cue_spawn,
    /* Spawn Parameter */ NIGHT_WALK_CUE_HEART,
    /* Func. Update    */ night_walk_cue_update,
    /* Func. Despawn   */ night_walk_cue_despawn,
    /* Func. Hit       */ night_walk_cue_hit,
    /* Func. Barely    */ night_walk_cue_barely,
    /* Func. Miss      */ night_walk_cue_miss,
    /* SFX Spawn       */ NULL,
    /* SFX Hit         */ NULL,
    /* SFX Barely      */ NULL,
    /* SFX Miss        */ NULL,
    /* Miss Condition  */ NULL
};

// [D_089e36b0] Cue 01 (Lollipop)
struct CueDefinition night_walk_cue_snare = {
    /* Unknown Param.  */ 0,
    /* Input Buttons   */ PRESS_BUTTON(A_BUTTON),
    /* Total Duration  */ 0xC0,
    /* Hit Window      */ -0x03, 0x03,
    /* Barely Window   */ -0x05, 0x05,
    /* Tempo-Dependent */ FALSE,
    /* Force-Delete    */ FALSE,
    /* Size in Memory  */ sizeof(struct NightWalkCue),
    /* Func. Spawn     */ night_walk_cue_spawn,
    /* Spawn Parameter */ NIGHT_WALK_CUE_LOLLIPOP,
    /* Func. Update    */ night_walk_cue_update,
    /* Func. Despawn   */ night_walk_cue_despawn,
    /* Func. Hit       */ night_walk_cue_hit,
    /* Func. Barely    */ night_walk_cue_barely,
    /* Func. Miss      */ night_walk_cue_miss,
    /* SFX Spawn       */ NULL,
    /* SFX Hit         */ NULL,
    /* SFX Barely      */ NULL,
    /* SFX Miss        */ NULL,
    /* Miss Condition  */ NULL
};

// [D_089e36f0] Cue 02 (Umbrella)
struct CueDefinition night_walk_cue_cymbal = {
    /* Unknown Param.  */ 0,
    /* Input Buttons   */ PRESS_BUTTON(A_BUTTON),
    /* Total Duration  */ 0xC0,
    /* Hit Window      */ -0x03, 0x03,
    /* Barely Window   */ -0x05, 0x05,
    /* Tempo-Dependent */ FALSE,
    /* Force-Delete    */ FALSE,
    /* Size in Memory  */ sizeof(struct NightWalkCue),
    /* Func. Spawn     */ night_walk_cue_spawn,
    /* Spawn Parameter */ NIGHT_WALK_CUE_UMBRELLA,
    /* Func. Update    */ night_walk_cue_update,
    /* Func. Despawn   */ night_walk_cue_despawn,
    /* Func. Hit       */ night_walk_cue_hit,
    /* Func. Barely    */ night_walk_cue_barely,
    /* Func. Miss      */ night_walk_cue_miss,
    /* SFX Spawn       */ NULL,
    /* SFX Hit         */ NULL,
    /* SFX Barely      */ NULL,
    /* SFX Miss        */ NULL,
    /* Miss Condition  */ NULL
};

// [D_089e3730] Cue 03 (Heart w/ Drum Roll)
struct CueDefinition night_walk_cue_roll = {
    /* Unknown Param.  */ 0,
    /* Input Buttons   */ PRESS_BUTTON(A_BUTTON),
    /* Total Duration  */ 0xC0,
    /* Hit Window      */ -0x03, 0x03,
    /* Barely Window   */ -0x05, 0x05,
    /* Tempo-Dependent */ FALSE,
    /* Force-Delete    */ FALSE,
    /* Size in Memory  */ sizeof(struct NightWalkCue),
    /* Func. Spawn     */ night_walk_cue_spawn,
    /* Spawn Parameter */ NIGHT_WALK_CUE_HEART_2,
    /* Func. Update    */ night_walk_cue_update,
    /* Func. Despawn   */ night_walk_cue_despawn,
    /* Func. Hit       */ night_walk_cue_hit,
    /* Func. Barely    */ night_walk_cue_barely,
    /* Func. Miss      */ night_walk_cue_miss,
    /* SFX Spawn       */ NULL,
    /* SFX Hit         */ NULL,
    /* SFX Barely      */ NULL,
    /* SFX Miss        */ NULL,
    /* Miss Condition  */ NULL
};

// [D_089e3770] Cue 04 (Star Wand)
struct CueDefinition night_walk_cue_star_wand = {
    /* Unknown Param.  */ 0,
    /* Input Buttons   */ PRESS_BUTTON(A_BUTTON),
    /* Total Duration  */ 0xC0,
    /* Hit Window      */ -0x04, 0x04,
    /* Barely Window   */ -0x04, 0x04,
    /* Tempo-Dependent */ FALSE,
    /* Force-Delete    */ FALSE,
    /* Size in Memory  */ sizeof(struct NightWalkCue),
    /* Func. Spawn     */ night_walk_cue_spawn,
    /* Spawn Parameter */ NIGHT_WALK_CUE_STAR_WAND,
    /* Func. Update    */ night_walk_cue_update,
    /* Func. Despawn   */ night_walk_cue_despawn,
    /* Func. Hit       */ night_walk_cue_hit,
    /* Func. Barely    */ night_walk_cue_barely,
    /* Func. Miss      */ night_walk_cue_miss,
    /* SFX Spawn       */ NULL,
    /* SFX Hit         */ NULL,
    /* SFX Barely      */ NULL,
    /* SFX Miss        */ NULL,
    /* Miss Condition  */ NULL
};

// [D_089e37b0] Cue Definition Index
struct CueDefinition *night_walk_cue_index[] = {
    /* 0x00 */ &night_walk_cue_kick,
    /* 0x01 */ &night_walk_cue_snare,
    /* 0x02 */ &night_walk_cue_cymbal,
    /* 0x03 */ &night_walk_cue_roll,
    /* 0x04 */ &night_walk_cue_star_wand,
    /* 0x05 */ NULL,
    /* 0x06 */ NULL,
    /* 0x07 */ NULL,
    /* 0x08 */ NULL,
    /* 0x09 */ NULL,
    /* 0x0A */ NULL,
    /* 0x0B */ NULL,
    END_OF_CUE_INDEX
};

// [D_089e37e4] DrumTech Sequence (Non-Cue Input)
struct DrumTechNote drum_seq_night_walk_short_hop[] = {
    {
        /* Drum ID */ 38,
        /* Volume  */ 0x80,
        /* Pitch   */ -0xc00,
        /* Delta   */ 0x0C
    },
    END_OF_DRUM_TECH_SEQUENCE
};


  //  //  //  GAME ENGINE DATA  //  //  //


// [D_089e37f4] Common Events
EngineEvent night_walk_common_events[] = {
    /* BEAT_ANIMATION */ night_walk_common_beat_animation,
    /* DISPLAY_TEXT   */ night_walk_common_display_text,
    /* INIT_TUTORIAL  */ // None
    END_OF_COMMON_EVENT_LIST
};


// [D_089e3800] Engine Events
EngineEvent night_walk_engine_events[] = {
    /* 0x00 */ play_drumtech_seq_from_beatscript,
    /* 0x01 */ night_walk_init_balloons,
    /* 0x02 */ night_walk_pop_balloon,
    /* 0x03 */ night_walk_set_ending_script,
    /* 0x04 */ night_walk_set_bridge_type,
    /* 0x05 */ night_walk_set_marking_criteria,
    /* 0x06 */ night_walk_set_cue_earliness,
    /* 0x07 */ night_walk_set_swing,
    /* 0x08 */ night_walk_set_drum_volume,
    /* 0x09 */ night_walk_event_expand_stars,
    /* 0x0A */ night_walk_engine_event_stub
};

// [D_089e382c] Night Walk Game Engine
struct GameEngine night_walk_engine = {
    /* Size in Memory */ sizeof(struct NightWalkEngineData),
    /* Start Engine   */ night_walk_engine_start,
    /* Update Engine  */ night_walk_engine_update,
    /* Stop Engine    */ night_walk_engine_stop,
    /* Cue Index      */ night_walk_cue_index,
    /* Common Events  */ night_walk_common_events,
    /* Engine Events  */ night_walk_engine_events,
    /* Input Event    */ night_walk_input_event
};
