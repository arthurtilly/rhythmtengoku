
/* ------------------------ Beatscript Labels: Night Walk ------------------------ */


@ Load Data
.macro load_night_walk_labels
    @ Game Events
    .set PLAY_DRUMTECH_NOTE,    0x00
    .set INIT_BALLOONS,         0x01
    .set POP_BALLOON,           0x02
    .set SET_END_SCRIPT,        0x03
    .set SET_PLATFORM,          0x04
    .set SET_MARKING_CRITERIA,  0x05
    .set SET_CUE_EARLINESS,     0x06
    .set ENABLE_SWING,          0x07
    .set SET_DRUM_VOLUME,       0x08
    .set EXPAND_STARS,          0x09

    @ Cues
    .set CUE_KICK,      0x00
    .set CUE_SNARE,     0x01
    .set CUE_CYMBAL,    0x02
    .set CUE_ROLL,      0x03
    .set CUE_STAR_WAND, 0x04

    @ [Event 0x04] Bridge Types
    .set PLATFORM_BRIDGE,   0
    .set PLATFORM_GAP,      1
    .set PLATFORM_RANDOM,   2
    .set PLATFORM_FISH,     3
.endm


@ Load Game: Night Walk
.macro load_night_walk
    load_night_walk_labels
    load_game night_walk_engine, 0
.endm

@ Load Game: Night Walk (unused, getting a Barely will reset the current star stage progress)
.macro load_night_walk_ver1
    load_night_walk_labels
    load_game night_walk_engine, 1
.endm


/* ---------------- Game Engine Events ---------------- */


@ Run Game Event
.macro night_walk_event event, args
    game_event night_walk_engine, \event, \args
.endm


@ [Event 0x00] Play DrumTech Note
.macro night_walk_play_drumtech_note drumID, volume, pitch
    night_walk_event PLAY_DRUMTECH_NOTE, (((\drumID & 0xFF)) | ((\volume & 0x1FF) << 8) | ((\pitch) << 17))
.endm


@ [Event 0x01] Initialise Balloons (max. 30)
.macro night_walk_init_balloons balloonCount
    night_walk_event INIT_BALLOONS, \balloonCount
.endm


@ [Event 0x02] Pop Balloon
.macro night_walk_pop_balloon
    night_walk_event POP_BALLOON, 0
.endm


@ [Event 0x03] Set Ending Script
.macro night_walk_set_end_script script
    night_walk_event SET_END_SCRIPT, \script
.endm


@ [Event 0x04] Set Bridge Type
.macro night_walk_set_platform type
    night_walk_event SET_PLATFORM, \type
.endm


@ [Event 0x05] Set Marking Criteria
.macro night_walk_set_marking_criteria id
    night_walk_event SET_MARKING_CRITERIA, \id
.endm


@ [Event 0x06] Set Cue Earliness Offset (used to initialise the level without using balloons)
.macro night_walk_set_cue_earliness time
    night_walk_event SET_CUE_EARLINESS, \time
.endm


@ [Event 0x07] Enable Swing
.macro night_walk_enable_swing enable
    night_walk_event ENABLE_SWING, \enable
.endm


@ [Event 0x08] Set DrumTech Volume
.macro night_walk_set_drumtech_volume volume
    night_walk_event SET_DRUM_VOLUME, \volume
.endm


@ [Event 0x09] Increment Stars Stage
.macro night_walk_inc_stars_progress totalStages
    night_walk_event EXPAND_STARS, \totalStages
.endm
