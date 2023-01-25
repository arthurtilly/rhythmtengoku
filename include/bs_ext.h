#pragma once

#include "bs.h"

#include "src/code_08001360.h"
#include "src/code_080068f8.h"
#include "src/code_0800b778.h"
#include "scenes/script.h"
#include "scenes/gameplay.h"
#include "scenes/results.h"


/* Extensions for Placeholder BeatScript Format */


// Scene: Set Tempo
#define BS_EXT_SET_TEMPO(bpm) BS_RUN1(&set_beatscript_tempo,bpm)

// Scene: Set Music Key
#define BS_EXT_SET_KEY(key) BS_RUN1(scene_set_music_key,key)

// Scene: Set Music Volume
#define BS_EXT_SET_VOLUME(volume) BS_RUN1(scene_set_music_volume,volume)

// Scene: Get Random Value Within Range
#define BS_EXT_GET_RANDOM(max) BS_RUN1(agb_random,max)

// RIQ Scene: Enable Pause Menu
#define BS_RIQ_ENABLE_PAUSE(enable) BS_RUN1(func_0801db04,enable)

// Gameplay: Enable Play Inputs
#define BS_RIQ_ENABLE_PLAY_INPUTS(enable) BS_RUN1(gameplay_enable_inputs,enable)

// Gameplay: Print Text
#define BS_RIQ_PRINT_TEXT(text) BS_RUN1(gameplay_display_text,text)

// Results: Set Header Text
#define BS_RIQ_SET_RESULTS_HEADER(text) BS_RUN1(func_08019310,text)

// Results: Set Marking Criteria
#define BS_RIQ_IMPORT_MARKING_CRITERIA(table) BS_RUN1(func_08019304,table)

// Results: Enable Input Assessment
#define BS_RIQ_ASSESS_INPUTS(enable) BS_RUN1(func_08019324,enable)

// Gameplay: Set Current Marking Criteria
#define BS_RIQ_SET_CURRENT_CRITERIA(id) BS_RUN1(gameplay_set_marking_criteria,id)

// Gameplay: Forgive Some Misses
#define BS_RIQ_FORGIVE_X_MISSES(x) BS_RUN1(gameplay_set_mercy_count,x)

// Gameplay: Start Perfect Campaign
#define BS_RIQ_START_PERFECT_CAMPAIGN BS_RUN1(gameplay_start_perfect_campaign,0)

// Gameplay: Enable Input Assessment for Perfect Campaign
#define BS_RIQ_ASSESS_INPUTS_FOR_PERFECT(enable) BS_RUN1(gameplay_check_for_perfect,enable)

// Gameplay: Load Game Engine
#define BS_RIQ_LOAD_GAME_ENGINE(engine,version) BS_RUN2(gameplay_set_current_engine,version,engine)

// Gameplay: Run Game Engine Event
#define BS_RIQ_GAME_EVENT(engine,event,args) BS_RUN1(gameplay_set_engine_event_param,args), BS_RUN2(gameplay_run_engine_event,event,engine)

// Gameplay: Run Game Common Event
#define BS_RIQ_COMMON_EVENT(event,arg) BS_RUN2(gameplay_run_common_event,event,arg)
#define BS_RIQ_COMMON_BEAT_ANIM(arg) BS_RIQ_COMMON_EVENT(0,arg)
#define BS_RIQ_COMMON_PRINT_TEXT(arg) BS_RIQ_COMMON_EVENT(1,arg)
#define BS_RIQ_COMMON_INIT_TUTORIAL(scene) BS_RIQ_COMMON_EVENT(2,scene)

// Gameplay: Spawn Cue
#define BS_RIQ_SPAWN_CUE(id) BS_RUN1(gameplay_spawn_cue,id)

// Gameplay: Fade-In Screen
#define BS_RIQ_FADE_SCREEN_IN(duration) BS_RUN1(gameplay_set_screen_fade_in_time,duration)
