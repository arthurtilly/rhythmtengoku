
/* ------------------------ Beatscript Labels: Drum Studio ------------------------ */


@ Load Data
.macro load_drum_studio_labels
    @ Game Events
    .set GET_NEXT_SCRIPT,   0x00
    .set EVENT_01,          0x01
    .set EVENT_02,          0x02
    .set START_BG_MONITOR,  0x03
    .set STOP_BG_MONITOR,   0x04
    .set SHOW_SAVE_OPTIONS, 0x05
    .set EVENT_06,          0x06
    .set EVENT_07,          0x07
    .set EVENT_08,          0x08
    .set EVENT_09,          0x09
    .set EVENT_0A,          0x0A
    .set EVENT_0B,          0x0B
    .set EVENT_0C,          0x0C
    .set SET_DIALOGUE_TEXT, 0x0D
    .set EVENT_0E,          0x0E
    .set EVENT_0F,          0x0F
    .set SHOW_DIALOGUE,     0x10
    .set EVENT_11,          0x11
    .set SET_TEACHER_EMOTE, 0x12
    .set EVENT_13,          0x13
    .set GET_LESSON_SCORE,  0x14
    .set EVENT_15,          0x15
    .set EVENT_16,          0x16
    .set EVENT_17,          0x17
    .set EVENT_18,          0x18
    .set EVENT_19,          0x19

    @ Cues
    .set CUE_KICK_L,    0x00
    .set CUE_KICK_R,    0x01
    .set CUE_SNARE_L,   0x02
    .set CUE_SNARE_R,   0x03
    .set CUE_HIHAT,     0x04
    .set CUE_TOM,       0x05
    .set CUE_SPLASH,    0x06
    .set CUE_CRASH,     0x07
    .set CUE_ROLL,      0x08

    @ [Event 0x12] Drum Samurai Expressions
    .set TEACHER_EXP_DRUM,      0
    .set TEACHER_EXP_LISTEN,    1
    .set TEACHER_EXP_POSITIVE,  2
    .set TEACHER_EXP_SHRUG,     3
    .set TEACHER_EXP_GIVE_RANK, 4
.endm


@ Load Game: Drum Studio (ver0)
.macro load_drum_studio_ver0
    load_drum_studio_labels
    load_game drum_studio_engine, 0
.endm

@ Load Game: Drum Studio (Drumming)
.macro load_drum_studio_play
    load_drum_studio_labels
    load_game drum_studio_engine, 1
.endm

@ Load Game: Drum Studio (ver2)
.macro load_drum_studio_ver2
    load_drum_studio_labels
    load_game drum_studio_engine, 2
.endm

@ Load Game: Drum Studio (Listening)
.macro load_drum_studio_listen
    load_drum_studio_labels
    load_game drum_studio_engine, 3
.endm

@ Load Game: Drum Lessons
.macro load_drum_lessons
    load_drum_studio_labels
    load_game drum_studio_engine, 4
.endm


/* ---------------- Game Engine Events ---------------- */


@ Run Game Event
.macro drum_studio_event event, args
    game_event drum_studio_engine, \event, \args
.endm


@ [Event 0x00] Get Next Script (sets global scene variable to the next script)
.macro dms_get_next_script
    drum_studio_event GET_NEXT_SCRIPT, 0
.endm


@ [Event 0x01] ?
.macro dms_event01
    drum_studio_event EVENT_01, 0
.endm


@ [Event 0x02] ?
.macro dms_event02 args
    drum_studio_event EVENT_02, \args
.endm


@ [Event 0x03] Start BG Monitor Display
.macro dms_start_bg_monitor args
    drum_studio_event START_BG_MONITOR, \args
.endm


@ [Event 0x04] Stop BG Monitor Display
.macro dms_stop_bg_monitor
    drum_studio_event STOP_BG_MONITOR, 0
.endm


@ [Event 0x05] Show "Save Replay" Options
.macro dms_show_save_options
    drum_studio_event SHOW_SAVE_OPTIONS, 0
.endm


@ [Event 0x06] ?
.macro dms_event06
    drum_studio_event EVENT_06, 0
.endm


@ [Event 0x07] ?
.macro dms_event07 args
    drum_studio_event EVENT_07, \args
.endm


@ [Event 0x08] ?
.macro dms_event08 args
    drum_studio_event EVENT_08, \args
.endm


@ [Event 0x09] ?
.macro dms_event09 args
    drum_studio_event EVENT_09, \args
.endm


@ [Event 0x0A] ?
.macro dms_event0A
    drum_studio_event EVENT_0A, 0
.endm


@ [Event 0x0B] ?
.macro dms_event0B
    drum_studio_event EVENT_0B, 0
.endm


@ [Event 0x0C] ?
.macro dms_event0C
    drum_studio_event EVENT_0C, 0
.endm


@ [Event 0x0D] Set Lesson Dialogue Text
.macro dms_set_dialogue_text string
    drum_studio_event SET_DIALOGUE_TEXT, \string
.endm


@ [Event 0x0E] ?
.macro dms_event0E args
    drum_studio_event EVENT_0E, \args
.endm


@ [Event 0x0F] ?
.macro dms_event0F args
    drum_studio_event EVENT_0F, \args
.endm


@ [Event 0x10] Show Lesson Dialogue
.macro dms_show_dialogue show
    drum_studio_event SHOW_DIALOGUE, \show
.endm


@ [Event 0x11] ?
.macro dms_event11
    drum_studio_event EVENT_11, 0
.endm


@ [Event 0x12] Set Drum Samurai Expression
.macro dms_set_teacher_exp expression
    drum_studio_event SET_TEACHER_EMOTE, \expression
.endm


@ [Event 0x13] ?
.macro dms_event13 args
    drum_studio_event EVENT_13, \args
.endm


@ [Event 0x14] Display Lesson Rank, Score and Dialogue
.macro dms_get_lesson_score
    drum_studio_event GET_LESSON_SCORE, 0
.endm


@ [Event 0x15] ?
.macro dms_event15
    drum_studio_event EVENT_15, 0
.endm


@ [Event 0x16] ?
.macro dms_event16
    drum_studio_event EVENT_16, 0
.endm


@ [Event 0x17] ?
.macro dms_event17 args
    drum_studio_event EVENT_17, \args
.endm


@ [Event 0x18] ?
.macro dms_event18 args
    drum_studio_event EVENT_18, \args
.endm


@ [Event 0x19] ?
.macro dms_event19 args
    drum_studio_event EVENT_19, \args
.endm
