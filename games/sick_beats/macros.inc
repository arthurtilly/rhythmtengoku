
/* ------------------------ Beatscript Labels: Sick Beats ------------------------ */


@ Load Data
.macro load_sick_beats_labels
    @ Game Events
    .set EVENT_00,           0x00
    .set SPAWN_VIRUS,        0x01
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


@ [Event 0x01] Spawn Virus
.macro sick_beats_spawn_virus position
    sick_beats_event SPAWN_VIRUS, \position
.endm 


@ [Event 0x02] Set Virus Hits Needed
.macro sick_beats_set_hits_needed hits
    sick_beats_event SET_HITS_NEEDED, \hits
.endm


@ [Event 0x03] Set Virus Palette
.macro sick_beats_set_virus_palette palette
    sick_beats_event SET_VIRUS_PALETTE, \palette
.endm

.macro sick_beats_spawn_1_hit_virus position
    sick_beats_set_hits_needed 1
    sick_beats_set_virus_palette 0
    sick_beats_spawn_virus \position
.endm

.macro sick_beats_spawn_2_hit_virus position
    sick_beats_set_hits_needed 2
    sick_beats_set_virus_palette 8
    sick_beats_spawn_virus \position
.endm

.macro sick_beats_spawn_3_hit_virus position
    sick_beats_set_hits_needed 3
    sick_beats_set_virus_palette 9
    sick_beats_spawn_virus \position
.endm


@ [Event 0x04] ?
.macro sick_beats_event04 args
    sick_beats_event EVENT_04, \args
.endm


@ [Event 0x05] ?
.macro sick_beats_event05
    sick_beats_event EVENT_05, 0
.endm


@ [Event 0x06] ?
.macro sick_beats_event06
    sick_beats_event EVENT_06, 0
.endm


/* ---------------- Sick Beats Pathing Script ---------------- */


@ Generic Sick Beats Pathing Command
.macro sick_beats_cmd id, arg, rest
    .byte \id, \arg
    .hword \rest
.endm


@ [0xFE] Rest
.macro sb_rest rest
    sick_beats_cmd 0xFE, 0, \rest
.endm


@ [0xFF] Stop
.macro sb_stop
    sick_beats_cmd 0xFF, 0, 0
.endm


@ [0x0E] Set Marking Criteria
.macro sb_set_marking_criteria criteria
    sick_beats_cmd 0x0E, \criteria, 0
.endm


@ [0x0F] Initiate Without Entering Animation
.macro sb_init_no_entering
    sick_beats_cmd 0x0F, 0, 0
.endm


@ Spawn Cue
.macro sb_spawn_cue type, cue
    sick_beats_cmd \type, \cue, CUE_SICK_BEATS_00
.endm

.macro sb_enter_tube
    sb_spawn_cue 0, 0
.endm


@ Appear at Point
.macro sb_appear point
    sb_spawn_cue (\point*3 - 2), CUE_SICK_BEATS_00
.endm


@ Dash from Point
.macro sb_dash_from point
    sb_spawn_cue (\point*3 - 1), CUE_SICK_BEATS_00
.endm


@ Dash from Point (Always used after an invulnerable dash)
.macro sb_dash_from_after_inv point
    sb_spawn_cue (\point*3 - 1), CUE_SICK_BEATS_04
.endm


@ Dash from Point (Invulnerable)
.macro sb_dash_from_invulnerable point
    sb_spawn_cue (\point*3), CUE_SICK_BEATS_08
.endm


@ Dash from Point (Invulnerable, difference from above unknown)
.macro sb_dash_from_invulnerable2 point
    sb_spawn_cue (\point*3), CUE_SICK_BEATS_00
.endm


@ Attack Microbe
.macro sb_attack_microbe
    sb_spawn_cue 0x0D, 0
.endm
