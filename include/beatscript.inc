.include "include/beatscript_main.inc"

@ Scene-global variable, most commonly set by function calls and read for conditional statements.
.set GLOBAL_VARIABLE, (D_030053c0 + 0x24)


/* ------------------------ Extension Macros (Beatscript) ------------------------ */


@ [SCENE] Set Tempo
.macro set_tempo bpm
    run set_beatscript_tempo, \bpm
.endm


@ [SCENE] Set Music Key
.macro set_music_key key
    run scene_set_music_key, \key
.endm


@ [SCENE] Set Music Volume
.macro set_music_volume volume
    run scene_set_music_volume, \volume
.endm


@ [SCENE] Pause Scene
.macro pause_scene
    run set_pause_beatscript_scene, TRUE
.endm

@ [SCENE] Unpause Scene
.macro unpause_scene
    run set_pause_beatscript_scene, FALSE
.endm


/* ------------------------ Extension Macros (Rhythm Tengoku) ------------------------ */


@ [RIQ] Enable/Disable Pause Menu
.macro enable_pause_menu
    run pause_menu_enabled, TRUE
.endm

.macro disable_pause_menu
    run pause_menu_enabled, FALSE
.endm


@ [RIQ] Enable/Disable Play Inputs
.macro enable_play_inputs
    run gameplay_inputs_enabled, TRUE
.endm

.macro disable_play_inputs
    run gameplay_inputs_enabled, FALSE
.endm


@ [RIQ] Print Text (Standard Printer)
.macro print_text_s text
    run gameplay_display_text, \text
.endm

.macro clear_text_s
    print_text_s NULL
.endm


@ [RIQ] Set Results Header Text
.macro set_results_header text
    run results_set_header, \text
.endm


@ [RIQ] Import Marking Criteria
.macro import_marking_criteria list
    run results_import_marking_criteria, \list
.endm


@ [RIQ] Enable Input Assessment
.macro start_tracking_inputs
    run results_enable_input_tracking, TRUE
.endm

.macro stop_tracking_inputs
    run results_enable_input_tracking, FALSE
.endm


@ [RIQ] Set Current Marking Criteria
.macro set_marking_criteria id
    run gameplay_set_marking_criteria, \id
.endm


@ [RIQ] Start Perfect Campaign
.macro start_perfect_campaign
    run gameplay_start_perfect_campaign
.endm


@ [RIQ] Enable Input Assessment for Perfect Campaign
.macro start_tracking_perfect_campaign
    run gameplay_check_for_perfect, TRUE
.endm

.macro stop_tracking_perfect_campaign
    run gameplay_check_for_perfect, FALSE
.endm


@ [RIQ] Set Current Game Engine
.macro load_game engine, version
    run2 gameplay_set_current_engine, \version, \engine
.endm


@ [RIQ] Run Game Engine Event
.macro game_event engine, event, args=0
    run gameplay_set_engine_event_param, \args
    run2 gameplay_run_engine_event, \event, \engine
.endm


@ [RIQ] Run Game Common Event
.macro common_event event, arg=0
    run2 gameplay_run_common_event, \event, \arg
.endm


@ Play Beat Animations
.macro beat_anim
    common_event 0
.endm


@ Print Special Text/Sprite
.macro print_text_f arg
    common_event 1, \arg
.endm

.macro clear_text_f
    print_text_f 0
.endm


@ Initialise Tutorial
.macro init_tutorial skipDest
    common_event 2, \skipDest
.endm

.macro stop_tutorial
    init_tutorial NULL
.endm


@ [RIQ] Spawn Cue
.macro spawn_cue cueID
    run gameplay_spawn_cue, \cueID
.endm


@ [RIQ] Set Screen Fade-In Time
.macro set_game_fade_in_time time
    run gameplay_set_screen_fade_in_time, \time
.endm
