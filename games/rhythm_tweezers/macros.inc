
/* ------------------------ Beatscript Labels: Rhythm Tweezers ------------------------ */


@ Load Data
.macro load_rhythm_tweezers_labels
    @ Game Events
    .set SPAWN_TWEEZERS,        0x00
    .set START_HAIR_CYCLE,      0x01
    .set SCROLL_VEG,            0x02
    .set SET_NEXT_VEG,          0x03
    .set PLAY_REGISTER_SFX,     0x04
    .set HIDE_TUTORIAL_TEXT,    0x05
    .set REMOVED_EVENT,         0x06
    .set SHOW_MASK,             0x07
    .set HIDE_MASK,             0x08

    @ Cues
    .set CUE_SHORT,     0x00
    .set CUE_LONG,      0x01
    .set CUE_FAST,      0x02
    .set CUE_8_SHORT,   0x04
    .set CUE_8_LONG,    0x05
    .set CUE_8_FAST,    0x06

    @ [Event 0x03] Vegetable Types
    .set VEG_ONION,     0
    .set VEG_TURNIP,    1
    .set VEG_POTATO,    2
.endm


@ Load Game: Rhythm Tweezers (First Vegetable: Onion)
.macro load_rhythm_tweezers
    load_rhythm_tweezers_labels
    load_game rhythm_tweezers_engine, 0
.endm

@ Load Game: Rhythm Tweezers (First Vegetable: Turnip)
.macro load_rhythm_tweezers_turnip
    load_rhythm_tweezers_labels
    load_game rhythm_tweezers_engine, 1
.endm

@ Load Game: Rhythm Tweezers (First Vegetable: Potato)
.macro load_rhythm_tweezers_potato
    load_rhythm_tweezers_labels
    load_game rhythm_tweezers_engine, 2
.endm

@ Load Game: Rhythm Tweezers 2 (First Vegetable: Onion)
.macro load_rhythm_tweezers_2
    load_rhythm_tweezers_labels
    load_game rhythm_tweezers_engine, 3
.endm

@ Load Game: Rhythm Tweezers 2 (First Vegetable: Turnip)
.macro load_rhythm_tweezers_2_turnip
    load_rhythm_tweezers_labels
    load_game rhythm_tweezers_engine, 4
.endm

@ Load Game: Rhythm Tweezers 2 (First Vegetable: Potato)
.macro load_rhythm_tweezers_2_potato
    load_rhythm_tweezers_labels
    load_game rhythm_tweezers_engine, 5
.endm


/* ---------------- Game Engine Events ---------------- */


@ Run Game Event
.macro rhythm_tweezers_event event, args
    game_event rhythm_tweezers_engine, \event, \args
.endm


@ [Event 0x00] Spawn Tweezers (appears two beats before hair cycle start position)
.macro rhythm_tweezers_spawn_tweezers
    rhythm_tweezers_event SPAWN_TWEEZERS, 0
.endm


@ [Event 0x01] Start Hair Placement Cycle
.macro rhythm_tweezers_start_hair_cycle
    rhythm_tweezers_event START_HAIR_CYCLE, 0
.endm


@ [Event 0x02] Scroll to Next Vegetable
.macro rhythm_tweezers_scroll_veg scrollTime
    rhythm_tweezers_event SCROLL_VEG, \scrollTime
.endm


@ [Event 0x03] Set Next Vegetable Type
.macro rhythm_tweezers_set_next_veg vegType
    rhythm_tweezers_event SET_NEXT_VEG, \vegType
.endm


@ [Event 0x04] Play Cash Register SFX
.macro rhythm_tweezers_play_register_sfx
    rhythm_tweezers_event PLAY_REGISTER_SFX, 0
.endm


@ [Event 0x05] Hide Unused Tutorial Text Sprite
.macro rhythm_tweezers_hide_tutorial_text
    rhythm_tweezers_event HIDE_TUTORIAL_TEXT, 0
.endm


@ [Event 0x06] Nothing (present in script, but its functionality seems to have been removed entirely)
.macro rhythm_tweezers_removed_event
    rhythm_tweezers_event REMOVED_EVENT, 0
.endm


@ [Event 0x07] Show "No Peeking~!" Mask
.macro rhythm_tweezers_show_veg_mask
    rhythm_tweezers_event SHOW_MASK, 0
.endm


@ [Event 0x08] Hide "No Peeking~!" Mask
.macro rhythm_tweezers_hide_veg_mask
    rhythm_tweezers_event HIDE_MASK, 0
.endm
