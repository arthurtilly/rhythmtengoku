
/* ------------------------ Beatscript Labels: Sick Beats ------------------------ */


@ Load Data
.macro load_sick_beats_labels
    @ Game Events
    .set EVENT_00,           0x00
    .set SET_VIRUS_POSITION, 0x01
    .set SET_HITS_NEEDED,    0x02
    .set SET_VIRUS_PALETTE,  0x03
    .set EVENT_04,           0x04
    .set EVENT_05,           0x05
    .set EVENT_06,           0x06

    @ Cues
    .set CUE_SICK_BEATS_00,    0x00
    .set CUE_SICK_BEATS_04,    0x04
    .set CUE_SICK_BEATS_08,    0x08
.endm


@ Load Game: Sick Beats
.macro load_sick_beats
    load_sick_beats_labels
    load_game sick_beats_engine, 0
.endm

@ Load Game: Sick Beats Endless
.macro load_sick_beats_endless
    load_sick_beats_labels
    load_game sick_beats_engine, 1
.endm


/* ---------------- Game Engine Events ---------------- */


@ Run Game Event
.macro sick_beats_event event, args
    game_event sick_beats_engine, \event, \args
.endm


@ [Event 0x00] ?
.macro sick_beats_event00 args
    sick_beats_event EVENT_00, \args
.endm

@ [Event 0x01] Set Virus Position
.macro sick_beats_set_virus_position position
    sick_beats_event SET_VIRUS_POSITION, \position
.endm

@ [Event 0x02] Set Virus Hits Needed
.macro sick_beats_set_hits_needed hits
    sick_beats_event SET_HITS_NEEDED, \hits
.endm

@ [Event 0x03] Set Virus Palette
.macro sick_beats_set_virus_palette palette
    sick_beats_event SET_VIRUS_PALETTE, \palette
.endm

@ [Event 0x04] ?
.macro sick_beats_event04 args
    sick_beats_event EVENT_04, \args
.endm

@ [Event 0x05] ?
.macro sick_beats_event05 args
    sick_beats_event EVENT_05, \args
.endm

@ [Event 0x06] ?
.macro sick_beats_event06 args
    sick_beats_event EVENT_06, \args
.endm
