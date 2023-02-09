.include "include/bs_ext.inc"

@ Rhythm Game Engines
.set BON_ODORI,         D_089deff0
.set BOUNCY_ROAD,       D_089e3d78
.set BUNNY_HOP,         D_089e6364
.set CLAPPY_TRIO,       D_089e4778
.set CONCERT_HALL,      D_089e5d0c
.set DRUM_INTRO,        D_089e0378
.set DRUM_LIVE,         D_089e0cc0
.set DRUM_STUDIO,       D_089e2ea0
.set FIREWORKS,         D_089e4500
.set HORSE_MACHINE,     D_089e90b0
.set KARATE_MAN,        D_089df044
.set RHYTHM_TOY,        D_089e9ef0
.set MANNEQUIN_FACTORY, D_089df5f8
.set MARCHING_ORDERS,   D_089e5518
.set METRONOME,         D_089e5948
.set MR_UPBEAT,         D_089e583c
.set NIGHT_WALK,        D_089e382c
.set NINJA_BODYGUARD,   D_089e6b84
.set POLYRHYTHM,        D_089e5be0
.set POWER_CALLIGRAPHY, D_089e4bf8
.set QUIZ_SHOW,         D_089e5ec0
.set RAP_MEN,           D_089e6614
.set RAT_RACE,          D_089e6814
.set RHYTHM_TEST,       D_089e50b8
.set RHYTHM_TWEEZERS,   D_089e41f4
.set SAMURAI_SLICE,     D_089e4908
.set SHOWTIME,          D_089e3aa4
.set SICK_BEATS,        D_089e9330
.set SNEAKY_SPIRITS,    D_089de91c
.set SPACE_DANCE,       D_089e702c
.set SPACEBALL,         D_089deb08
.set STAFF_CREDIT,      D_089df6cc
.set TAP_TRIAL,         D_089e8130
.set TOSS_BOYS,         D_089e8a08
.set TRAM_AND_PAULINE,  D_089e8d7c
.set WIZARDS_WALTZ,     D_089ea068

@ Game Versions
.set VER_0, 0
.set VER_1, 1
.set VER_2, 2
.set VER_3, 3
.set VER_4, 4
.set VER_5, 5


/* ------------------------ Extension Macros (Rhythm Tengoku) ------------------------ */


@ [RIQ] Enable Pause Menu
.macro enable_pause enable
    run func_0801db04, \enable
.endm


@ [RIQ] Enable Play Inputs
.macro enable_play_inputs enable
    run gameplay_enable_inputs, \enable
.endm


@ [RIQ] Print Text (Standard Printer)
.macro print_text_s text
    run gameplay_display_text, \text
.endm

.macro clear_text_s
    print_text_s 0
.endm


@ [RIQ] Set Results Header Text
.macro set_results_header text
    run func_08019310, \text
.endm


@ [RIQ] Import Marking Criteria
.macro import_marking_criteria list
    run func_08019304, \list
.endm


@ [RIQ] Enable Input Assessment
.macro assess_inputs enable
    run func_08019324, \enable
.endm


@ [RIQ] Set Current Marking Criteria
.macro set_marking_criteria id
    run gameplay_set_marking_criteria, \id
.endm


@ [RIQ] Forgive Some Misses
.macro forgive_x_misses total
    run gameplay_set_mercy_count, \total
.endm


@ [RIQ] Start Perfect Campaign
.macro start_perfect_campaign
    run gameplay_start_perfect_campaign, 0
.endm


@ [RIQ] Enable Input Assessment for Perfect Campaign
.macro assess_perfect_inputs enable
    run gameplay_check_for_perfect, \enable
.endm


@ [RIQ] Set Current Game Engine
.macro load_game engine, version
    run2 gameplay_set_current_engine, \version, \engine
.endm


@ [RIQ] Run Game Engine Event
.macro game_event engine, event, args
    run gameplay_set_engine_event_param, \args
    run2 gameplay_run_engine_event, \event, \engine
.endm


@ [RIQ] Run Game Common Event
.macro common_event event, arg
    run2 gameplay_run_common_event, \event, \arg
.endm

@ Play Beat Animations
.macro beat_anim
    common_event 0, 0
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
    init_tutorial 0
.endm


@ [RIQ] Spawn Cue
.macro spawn_cue cueID
    run gameplay_spawn_cue, \cueID
.endm


@ [RIQ] Set Screen Fade-In Time
.macro set_game_fade_in_time time
    run gameplay_set_screen_fade_in_time, \time
.endm
