#include "global.h"
#include "gameplay.h"
#include "src/code_08001360.h"
#include "src/bitmap_font.h"
#include "src/task_pool.h"
#include "src/memory_heap.h"
#include "src/code_08007468.h"
#include "src/text_printer.h"
#include "src/code_0800b778.h"
#include "src/lib_0804ca80.h"

asm(".include \"include/gba.inc\"");//Temporary

// For readability.
#define gGameplayInfo ((struct GameplaySceneInfo *)D_030046a4)

#define PAUSE_MENU_PALETTE_MOD 0x3DEF3DEF // Equivalent to RGB #7F7F7F

enum PauseMenuOptionsEnum {
    PAUSE_OPTION_CONTINUE,
    PAUSE_OPTION_QUIT
};


extern struct Scene D_089cfd60; // Perfect Certificate Scene
extern const struct Beatscript D_089cfda4[]; // Generic Fade-Out Sequence
extern struct Scene D_089d77e4; // Results Scene (Level-type)
extern struct Scene D_089d7c18; // Results Scene (Epilogue)
extern struct Scene D_089ddbcc; // Debug Menu Scene


/* MAIN GAMEPLAY SCENE */


static struct Scene *D_03001328; // ?


// [func_08016e04] Set Sound Effect Original Tempo
void gameplay_set_sound_tempo(u32 tempo) {
    gGameplayInfo->sfxTempo = tempo;
}


// [func_08016e18] Match SoundPlayer to Current Tempo
struct SoundPlayer *gameplay_align_soundplayer_to_tempo(struct SoundPlayer *player) {
    u16 tempo = gGameplayInfo->sfxTempo;

    if (tempo != 0) {
        set_soundplayer_speed(player, Div(INT_TO_FIXED(get_beatscript_tempo()), tempo));
    }

    return player;
}


// [func_08016e54] Play Sound
struct SoundPlayer *gameplay_play_sound(struct SequenceData *sfx) {
    return gameplay_align_soundplayer_to_tempo(play_sound(sfx));
}


// [func_08016e64] Play Sound
struct SoundPlayer *gameplay_play_sound_in_player(u32 player, struct SequenceData *sfx) {
    return gameplay_align_soundplayer_to_tempo(play_sound_in_player(player, sfx));
}


// [func_08016e74] Play Sound
struct SoundPlayer *gameplay_play_sound_w_pitch_volume(struct SequenceData *sfx, u32 volume, u32 pitch) {
    return gameplay_align_soundplayer_to_tempo(play_sound_w_pitch_volume(sfx, volume, pitch));
}


// [func_08016e84] Play Sound
struct SoundPlayer *gameplay_play_sound_in_player_w_pitch_volume(u32 player, struct SequenceData *sfx, u32 volume, s32 pitch) {
    return gameplay_align_soundplayer_to_tempo(play_sound_in_player_w_pitch_volume(player, sfx, volume, pitch));
}


// [func_08016e94] Initialise Static Variables
void gameplay_init_scene_static_var(void) {
    gameplay_pause_menu_set_quit_destination(&D_089ddbcc);
}


// [func_08016ea4] Graphics Init. 1
void gameplay_init_gfx1(void) {
    u32 data;

    data = func_080087b4(0, D_089cfda0);
    run_func_after_task(data, pause_beatscript_scene, FALSE);
}


// [func_08016ec4] Scene Start
void gameplay_start_scene(s32 unused) {
    func_08002e78(D_089cfd7c);
    func_08007324(FALSE);
    func_080073f0();
    gameplay_init_overlay();
    gameplay_init_pause_menu();
    gameplay_set_text_printer(NULL);
    gGameplayInfo->gameEngine = NULL;
    gameplay_init_cues();
    func_08019324(FALSE); // Disable input assessment.
    func_080192a4(); // Reset results handler.
    gGameplayInfo->mercyEnabled = TRUE;
    gGameplayInfo->forgivableMisses = 0;
    gGameplayInfo->playInputsEnabled = FALSE;
    gGameplayInfo->buttonPressFilter = 0;
    gGameplayInfo->buttonReleaseFilter = 0;
    gGameplayInfo->assessIrrelevantInputs = TRUE;
    gGameplayInfo->unk64 = 0;
    gGameplayInfo->isTutorial = FALSE;
    gGameplayInfo->skippingTutorial = FALSE;
    gGameplayInfo->skipDestination = NULL;
    gGameplayInfo->skipTutorialButton = SELECT_BUTTON;
    gGameplayInfo->fadeInTicks = 0x10;
    gGameplayInfo->allowCueInputOverlap = FALSE;
    gGameplayInfo->unk8A = 0;
    gGameplayInfo->goingForPerfect = FALSE;
    gGameplayInfo->assessPerfectInputs = TRUE;
    gGameplayInfo->perfectFailed = FALSE;
    gGameplayInfo->missPunishmentTimer = 0;
    gGameplayInfo->missPunishmentInterval = 0x0C;
    gGameplayInfo->dpadCannotOverlap = TRUE;
    gGameplayInfo->dpadIsOpen = TRUE;
    gGameplayInfo->earlinessRangeMax = -1;
    gGameplayInfo->latenessRangeMin = 1;
    gGameplayInfo->earlinessRangeMin = -0x80;
    gGameplayInfo->latenessRangeMax = 0x7f;
    func_0804c340(35, 2, 2, 4); // Reverb
    if (func_08000608() == NULL) {
        func_08000584(&D_089d77e4);
    }
    func_0801911c(0); // set D_03001330 to 0
}


// [func_08016ffc] Scene Update Frozen
void func_08016ffc(s32 unused) {
}


// [func_08017000] Scene Update
void gameplay_update_scene(s32 unused) {
    u32 pressed, released, buttonsOnly;

    if (gGameplayInfo->skippingTutorial) return;

    if (gGameplayInfo->gameEngine != NULL) {
        if (gGameplayInfo->gameEngine->updateFunc != NULL) {
            gGameplayInfo->gameEngine->updateFunc();
        }
    }

    pressed = D_03004afc & gGameplayInfo->buttonPressFilter;
    released = D_03004b00 & gGameplayInfo->buttonReleaseFilter;

    if (gGameplayInfo->dpadCannotOverlap == TRUE) {
        if (gGameplayInfo->dpadIsOpen) {
            if (pressed & DPAD_ALL) {
                buttonsOnly = pressed & ~DPAD_ALL;
                if (pressed & DPAD_UP) {
                    pressed = DPAD_UP;
                }
                if (pressed & DPAD_DOWN) {
                    pressed = DPAD_DOWN;
                }
                if (pressed & DPAD_LEFT) {
                    pressed = DPAD_LEFT;
                }
                if (pressed & DPAD_RIGHT) {
                    pressed = DPAD_RIGHT;
                }
                pressed |= buttonsOnly;
                gGameplayInfo->dpadIsOpen = FALSE;
                gGameplayInfo->dpadClosedTimer = 10;
            }
        } else {
            pressed &= ~DPAD_ALL;
            if (D_03004ac0 & DPAD_ALL) {
                if (--gGameplayInfo->dpadClosedTimer == 0) {
                    gGameplayInfo->dpadIsOpen = TRUE;
                }
            } else {
                gGameplayInfo->dpadIsOpen = TRUE;
            }
        }
    }

    if (gameplay_inputs_are_enabled()) { // if play inputs are enabled
        if ((pressed != 0) || (released != 0)) {
            gameplay_update_inputs(pressed, released); // Update Inputs
        }
    }

    gameplay_update_all_cues(); // Update Cues
    gameplay_update_text(); // Update Text

    if (gGameplayInfo->missPunishmentTimer != 0) {
        gGameplayInfo->missPunishmentTimer--;
    }

    if (D_03004afc & gGameplayInfo->skipTutorialButton) {
        if (gGameplayInfo->isTutorial) {
            gameplay_skip_tutorial(); // Skip Tutorial
        }
    }
}


// [func_0801714c] Check if Play Inputs are Enabled
u32 gameplay_inputs_are_enabled(void) {
    if (gGameplayInfo->playInputsEnabled) {
        return TRUE;
    } else {
        return FALSE;
    }
}


// [func_08017168] Clear Secondary Palette Buffer
void gameplay_clear_palette_buffer(Palette buffer) {
    dma3_fill(0, buffer, 0x3E0, 0x20, 0x200);
}


// [func_08017188] Load New Engine
#include "asm/gameplay/asm_08017188.s"


// [func_0801732c] Get Current Game Engine Info
void *gameplay_get_engine_info(void) {
    return gGameplayInfo->gameEngineInfo;
}


// [func_08017338] Set Input Button Filters
void gameplay_set_input_buttons(u16 press, u16 release) {
    gGameplayInfo->buttonPressFilter = press;
    gGameplayInfo->buttonReleaseFilter = release;
}


// [func_08017348] Run Engine-Common Event
s32 gameplay_run_common_event(s32 param, s32 id) {
    s32 returnVal = 0;
    EngineEvent *functions = gGameplayInfo->commonFunctions;

    if (functions == NULL) { // literally never possible
        return returnVal;
    }

    if (functions[id] != NULL) {
        returnVal = functions[id](param);
    }

    return returnVal;
}


// [func_08017380] Set Parameter for Engine-Specific Event
void gameplay_set_engine_event_param(s32 param) {
    gGameplayInfo->engineFuncParam = param;
}


// [func_0801738c] Run Engine-Specific Event
s32 gameplay_run_engine_event(const struct GameEngine *engine, s32 id) {
    s32 returnVal = 0;

    if (gGameplayInfo->gameEngine != engine) {
        return returnVal;
    }

    if ((gGameplayInfo->gameEngine->engineFunctions != NULL) && (gGameplayInfo->gameEngine->engineFunctions[id] != NULL)) {
        returnVal = gGameplayInfo->gameEngine->engineFunctions[id](gGameplayInfo->engineFuncParam);
    }

    return returnVal;
}


// [func_080173c4] Enable Play Inputs
void gameplay_enable_inputs(u32 enable) {
    gGameplayInfo->playInputsEnabled = enable;
}


// [func_080173d0] Assess Non-Cue Inputs
void gameplay_assess_irrelevant_inputs(u32 arg) {
    gGameplayInfo->assessIrrelevantInputs = arg;
}


// [func_080173dc] Set Next Cue Spawn SFX
void gameplay_set_next_cue_spawn_sfx(struct SequenceData *sfx) {
    gGameplayInfo->nextCueSpawnSfx = sfx;
}


// [func_080173e8] Set Next Cue Hit SFX
void gameplay_set_next_cue_hit_sfx(struct SequenceData *sfx) {
    gGameplayInfo->nextCueHitSfx = sfx;
}


// [func_080173f4] Set Next Cue Barely SFX
void gameplay_set_next_cue_barely_sfx(struct SequenceData *sfx) {
    gGameplayInfo->nextCueBarelySfx = sfx;
}


// [func_08017400] Set Next Cue Miss SFX
void gameplay_set_next_cue_miss_sfx(struct SequenceData *sfx) {
    gGameplayInfo->nextCueMissSfx = sfx;
}


// [func_0801740c] Force-Stop Music MIDI Track
void gameplay_force_stop_music_midi_track(s32 midiTrack) {
    struct SoundPlayer *soundPlayer = D_030053c0.musicPlayer;

    if ((soundPlayer == NULL) || (midiTrack < 0)) return;

    soundPlayer->midiReader[midiTrack].active_curr = FALSE;
    soundPlayer->midiReader[midiTrack].active_loop = FALSE;
}


// [func_08017448] Set isTutorial
void gameplay_enable_tutorial(u32 isTutorial) {
    gGameplayInfo->isTutorial = isTutorial;
}


// [func_08017458] Set skipDestination
void gameplay_set_skip_destination(struct Scene *scene) {
    gGameplayInfo->skipDestination = scene;
}


// [func_08017468] Set Skip Tutorial Button
void gameplay_set_skip_button(u32 buttons) {
    gGameplayInfo->skipTutorialButton = buttons;
}


// [func_0801747c] Set Skip Destination
void gameplay_set_tutorial(struct Scene *scene) {
    if (scene != NULL) {
        gameplay_enable_tutorial(TRUE);
        gameplay_set_skip_destination(scene);
        func_0804d770(D_03005380, gGameplayInfo->skipTutorialSprite, TRUE);
    } else {
        gameplay_enable_tutorial(FALSE);
        gameplay_set_skip_destination(NULL);
        func_0804d770(D_03005380, gGameplayInfo->skipTutorialSprite, FALSE);
    }
}


// [func_080174e8] Display Skip Tutorial Icon
void gameplay_display_skip_icon(u32 corner) {
    func_0804cebc(D_03005380, gGameplayInfo->skipTutorialSprite, corner);
}


// [func_08017514] Skip Tutorial
void gameplay_skip_tutorial(void) {
    func_0804e0f0(D_03005380, get_current_mem_id(), 1);
    task_pool_pause_id(get_current_mem_id(), TRUE);
    pause_beatscript_scene(FALSE);
    func_0801d968(D_089cfda4);
    func_0801db04(FALSE);
    gGameplayInfo->skippingTutorial = TRUE;
}


// [func_08017568] Set Screen Fade-In
void gameplay_set_screen_fade_in_time(u32 duration) {
    gGameplayInfo->fadeInTicks = duration;
}


// [func_08017578] Fade-In Screen
void gameplay_start_screen_fade_in(void) {
    if (gGameplayInfo->fadeInTicks != 0) {
        func_0800703c(gGameplayInfo->fadeInTicks, 0);
    }
    func_08007324(TRUE);
    func_08007370();
}


// [func_080175a0] Set unk8A
void func_080175a0(u32 count) {
    gGameplayInfo->unk8A = count;
}


// [func_080175b0] Set unk88 to unk8A
void func_080175b0(void) {
    gGameplayInfo->unk88 = gGameplayInfo->unk8A;
}


// [func_080175c4] Increment unk88
void func_080175c4(void) {
    gGameplayInfo->unk88++;
}


// [func_080175d8] Get unk88
u32 func_080175d8(void) {
    return gGameplayInfo->unk88;
}


// [func_080175e8] Set Global Reverb
void gameplay_set_reverb(u32 level) {
    func_0804c340(clamp_int32(level + 35, 0, 127), 2, 2, 4);
}


// [func_08017604] Start Perfect Campaign
void gameplay_start_perfect_campaign(void) {
    if ((func_0801286c() < 0)) return; // (s8) D_03001320, related to Game Select

    if (!gGameplayInfo->goingForPerfect) {
        gGameplayInfo->goingForPerfect = TRUE;
        func_0804d770(D_03005380, gGameplayInfo->perfectSprite, TRUE);
    }
}


// [func_08017648] Start/Stop Assessing Inputs for Perfect Campaign
void gameplay_check_for_perfect(u32 assessInputs) {
    gGameplayInfo->assessPerfectInputs = assessInputs;
}


// [func_0801765c] Register Imperfect Input
void gameplay_register_imperfect_input(void) {
    if (!gGameplayInfo->perfectFailed && gGameplayInfo->goingForPerfect && gGameplayInfo->assessPerfectInputs) {
        func_0804d8f8(D_03005380, gGameplayInfo->perfectSprite, anim_gameplay_perfect_miss, 0, 1, 0, 2);
        play_sound(&s_f_fail_perfect_seqData);
        gGameplayInfo->perfectFailed = TRUE;
    }
}


// [func_080176cc] Register Perfect Input
void gameplay_register_perfect_input(void) {
    if (!gGameplayInfo->perfectFailed && gGameplayInfo->goingForPerfect && gGameplayInfo->assessPerfectInputs) {
        func_0804d8f8(D_03005380, gGameplayInfo->perfectSprite, anim_gameplay_perfect_hit, 0, 1, 0x7f, 0);
    }
}


// [func_08017728] Run Game Engine Event (convenience method)
s32 gameplay_run_engine_event_w_param(const struct GameEngine *engine, u32 function, s32 param) {
    gameplay_set_engine_event_param(param);
    return gameplay_run_engine_event(engine, function);
}


// [func_08017744] Set Miss Punishment Interval
void gameplay_set_miss_punishment_duration(u32 duration) {
    gGameplayInfo->missPunishmentInterval = duration;
}


// [func_08017758] Set Inter-Engine Variable
void gameplay_set_inter_engine_variable(u32 i, s32 val) {
    if (i >= 64) {
        return;
    }

    gGameplayInfo->interEngineVariableSpace[i] = val;
}


// [func_0801777c] Get Inter-Engine Variable
s32 gameplay_get_inter_engine_variable(u32 i) {
    if (i >= 64) {
        return 0;
    }

    return gGameplayInfo->interEngineVariableSpace[i];
}


// [func_080177a4] Set D-Pad Input Overlap Handling
void gameplay_prevent_dpad_overlap(u32 preventOverlap) {
    gGameplayInfo->dpadCannotOverlap = preventOverlap;
    gGameplayInfo->dpadIsOpen = TRUE;
}


// [func_080177c8] Enable Mercy
void gameplay_enable_mercy(u32 enable) {
    gGameplayInfo->mercyEnabled = enable;
}


// [func_080177dc] Set Total Forgivable Misses
void gameplay_set_mercy_count(u32 total) {
    gGameplayInfo->forgivableMisses = total;
}


// [func_080177f0] Scene Stop
void gameplay_stop_scene(s32 unused) {
    struct Scene *tempScene;

    func_0804e0c4(D_03005380, 0x10);
    gameplay_reset_cues(); // Reset Cues
    if (gGameplayInfo->gameEngine->closeFunc != NULL) {
        gGameplayInfo->gameEngine->closeFunc();
    }
    if (gGameplayInfo->gameEngineInfo != NULL) {
        mem_heap_dealloc(gGameplayInfo->gameEngineInfo);
    }
    if (gGameplayInfo->skippingTutorial) {
        if (gGameplayInfo->skipDestination != NULL) {
            tempScene = func_08000608();
            func_08000584(gGameplayInfo->skipDestination);
            func_080006b0(gGameplayInfo->skipDestination, tempScene);
        }
        stop_all_soundplayers(); // Sound
    } else {
        if (gGameplayInfo->goingForPerfect && !gGameplayInfo->perfectFailed) {
            func_08000584(&D_089cfd60);
            func_080006b0(&D_089cfd60, func_080005e0(&D_089d7c18));
        }
    }

    func_08008628();
    func_08004058();
    func_0804c340(35, 2, 2, 4); // Reverb
}


// [func_080178ac] Reset All Cue Data
void gameplay_reset_cues(void) {
    struct Cue *cue, *prev;

    cue = gGameplayInfo->cues;
    while (cue != NULL) {
        prev = cue->prev;
        gameplay_despawn_cue(cue);
        cue = prev;
    }

    gGameplayInfo->cues = NULL;
    gGameplayInfo->nextCueSpawnSfx = NULL;
    gGameplayInfo->nextCueHitSfx = NULL;
    gGameplayInfo->nextCueBarelySfx = NULL;
    gGameplayInfo->nextCueMissSfx = NULL;
    gGameplayInfo->nextCueDuration = 0;
}


// [func_080178e4] Initialise Cues
void gameplay_init_cues(void) {
    gGameplayInfo->cues = NULL;
    gGameplayInfo->currentCue = NULL;
    gGameplayInfo->cueSpawnsEnabled = TRUE;
    gGameplayInfo->currentMarkingCriteria = 0;
    gameplay_reset_cues();
}


// [func_08017908] Set Current Marking Criteria
void gameplay_set_marking_criteria(u32 criteria) {
    gGameplayInfo->currentMarkingCriteria = criteria;
}


// [func_08017918] Get Current Marking Criteria
u32 gameplay_get_marking_criteria(void) {
    return gGameplayInfo->currentMarkingCriteria;
}


// [func_08017928] Register Cue Result
void gameplay_add_cue_result(u32 markingCriteria, u32 cueResult, s32 timingOffset) {
    u32 noCue = (cueResult == CUE_RESULT_NONE);

    if (!gGameplayInfo->assessIrrelevantInputs && noCue) {
        return;
    }

    // some kind of score-related mercy system or something
    if ((cueResult == CUE_RESULT_MISS) && gGameplayInfo->mercyEnabled && (gGameplayInfo->forgivableMisses != 0)) {
        cueResult = CUE_RESULT_BARELY;
        gGameplayInfo->forgivableMisses--;
    }

    // Results
    func_08019350(0, cueResult, timingOffset);
    if (!noCue) {
        func_08019420(markingCriteria, cueResult, timingOffset);
    }

    // Perfect Campaign
    if (cueResult == CUE_RESULT_HIT) {
        gameplay_register_perfect_input();
    } else if (cueResult < 4) {
        gameplay_register_imperfect_input();
    }
}


// [func_080179a0] Add Input Hit
void gameplay_add_cue_result_hit(s32 offset) {
    gameplay_add_cue_result(gGameplayInfo->currentMarkingCriteria, CUE_RESULT_HIT, offset);
}


// [func_080179bc] Add Input Barely
void gameplay_add_cue_result_barely(s32 offset) {
    gameplay_add_cue_result(gGameplayInfo->currentMarkingCriteria, CUE_RESULT_BARELY, offset);
}


// [func_080179d8] Add Input Miss
void gameplay_add_cue_result_miss(s32 offset) {
    gameplay_add_cue_result(gGameplayInfo->currentMarkingCriteria, CUE_RESULT_MISS, offset);
}


// [func_080179f4] Spawn Cue
void gameplay_spawn_cue(s32 id) {
    const struct CueDefinition *cueDef;
    struct Cue *newCue, *prevCue;

    if ((!gGameplayInfo->cueSpawnsEnabled) || ((cueDef = gGameplayInfo->cueDefinitions[id]) == NULL)) {
        return;
    }

    newCue = mem_heap_alloc(sizeof(struct Cue));
    if (cueDef->cueInfoSize != 0) {
        newCue->gameCueInfo = mem_heap_alloc(cueDef->cueInfoSize);
    } else {
        newCue->gameCueInfo = NULL;
    }
    dma3_set(cueDef, &newCue->data, sizeof(struct CueDefinition), 0x20, 0x200);

    newCue->unk48_b0 = FALSE;
    newCue->hasExpired = FALSE;

    do {} while (0); // fake matching / macro?

    newCue->runningTime = 0;

    if (gGameplayInfo->nextCueDuration != 0) {
        newCue->duration = beats_to_ticks(gGameplayInfo->nextCueDuration);
        gGameplayInfo->nextCueDuration = 0;
    } else {
        newCue->duration = beats_to_ticks(cueDef->duration);
    }

    newCue->spawnSfx  = ((gGameplayInfo->nextCueSpawnSfx != NULL)  ? gGameplayInfo->nextCueSpawnSfx  : cueDef->spawnSfx);
    newCue->hitSfx    = ((gGameplayInfo->nextCueHitSfx != NULL)    ? gGameplayInfo->nextCueHitSfx    : cueDef->hitSfx);
    newCue->barelySfx = ((gGameplayInfo->nextCueBarelySfx != NULL) ? gGameplayInfo->nextCueBarelySfx : cueDef->barelySfx);
    newCue->missSfx   = ((gGameplayInfo->nextCueMissSfx != NULL)   ? gGameplayInfo->nextCueMissSfx   : cueDef->missSfx);

    newCue->markingCriteria = gGameplayInfo->currentMarkingCriteria;

    gGameplayInfo->nextCueSpawnSfx = NULL;
    gGameplayInfo->nextCueHitSfx = NULL;
    gGameplayInfo->nextCueBarelySfx = NULL;
    gGameplayInfo->nextCueMissSfx = NULL;

    prevCue = gGameplayInfo->cues;

    newCue->next = NULL;
    newCue->prev = prevCue;

    if (prevCue != NULL) {
        prevCue->next = newCue;
    }

    gGameplayInfo->cues = newCue;

    gGameplayInfo->cancelThisCueSpawning = FALSE;

    if (cueDef->spawnFunc != NULL) {
        cueDef->spawnFunc(newCue, newCue->gameCueInfo, cueDef->spawnParam);
    }

    if (gGameplayInfo->cancelThisCueSpawning) {
        gGameplayInfo->cues = prevCue;
        prevCue->next = NULL;
        mem_heap_dealloc(newCue);
    } else {
        gGameplayInfo->currentCue = newCue;
        gameplay_play_sound(newCue->spawnSfx);
    }
}


// [func_08017b34] Request Scene to Delete the Currently-Spawning Cue
void gameplay_cancel_this_cue_spawn(void) {
    gGameplayInfo->cancelThisCueSpawning = TRUE;
}


// [func_08017b44] Despawn Cue
void gameplay_despawn_cue(struct Cue *cue) {
    struct Cue *prev, *next;

    if (cue->data.despawnFunc != NULL) {
        cue->data.despawnFunc(cue, cue->gameCueInfo);
    }

    if (cue->gameCueInfo != NULL) {
        mem_heap_dealloc(cue->gameCueInfo);
    }

    next = cue->next;
    prev = cue->prev;

    if (next != NULL) {
        next->prev = prev;
    } else {
        gGameplayInfo->cues = prev;
    }

    if (prev != NULL) {
        prev->next = next;
    }

    mem_heap_dealloc(cue);
}


// [func_08017b88] Enable Cue Spawning
void gameplay_enable_cue_spawning(u32 enable) {
    gGameplayInfo->cueSpawnsEnabled = enable;
}


// [func_08017b98] Update Cue
void gameplay_update_cue(struct Cue *cue) {
    struct CueDefinition *cueDef;
    s32 missTimeOffset;
    u32 hasExpired;

    cueDef = &cue->data;

    cue->runningTime++;
    gGameplayInfo->ignoreThisCueResult = FALSE;
    if (cueDef->tempoDependent) {
        missTimeOffset = beats_to_ticks(cueDef->missWindowLate);
    } else {
        missTimeOffset = cueDef->missWindowLate;
    }
    if (!cue->unk48_b0 && !cue->hasExpired) {
        if (cue->runningTime > cue->duration + missTimeOffset) {
            cue->hasExpired = TRUE;
            if (cueDef->missFunc != NULL) {
                cueDef->missFunc(cue, cue->gameCueInfo);
            }
            if (!gGameplayInfo->ignoreThisCueResult) {
                gameplay_add_cue_result(cue->markingCriteria, CUE_RESULT_MISS, 0);
            }
            gameplay_play_sound(cue->missSfx);
            if (cueDef->deleteWithoutUpdate) { // unused feature! awesome!
                gameplay_despawn_cue(cue); // Despawn Cue
                return;
            }
        }
    }
    if (cueDef->updateFunc != NULL) {
        hasExpired = cueDef->updateFunc(cue, cue->gameCueInfo, cue->runningTime, cue->duration);
        if (hasExpired) {
            if (hasExpired == TRUE) gameplay_despawn_cue(cue); // Despawn Cue
        }
    }
}


// [func_08017c68] Update All Cues
void gameplay_update_all_cues(void) {
    struct Cue *cue, *prev;

    cue = gGameplayInfo->cues;
    while (cue != NULL) {
        prev = cue->prev;
        gameplay_update_cue(cue);
        cue = prev;
    }
}


// [func_08017c8c] Determine Cue Input Timing
s32 gameplay_calculate_input_timing(struct Cue *cue, u16 pressed, u16 released, s32 *offset) {
    struct CueDefinition *cueDef;
    s32 runningTime, duration;
    s32 hitEarly, hitLate, missEarly, missLate;
    u16 input;

    cueDef = &cue->data;
    input = (cueDef->buttonFilter & 0x8000) ? released : pressed;

    if (((input & cueDef->buttonFilter & ~0x8000) == 0) || cue->unk48_b0 || cue->hasExpired) {
        return CUE_TIMING_MISS;
    }

    runningTime = cue->runningTime;
    duration = cue->duration;

    if (cueDef->tempoDependent) { // Used by the Rhythm Test, Mr. Upbeat, and the unused drumming tutorials.
        hitEarly = beats_to_ticks(cueDef->hitWindowEarly);
        hitLate = beats_to_ticks(cueDef->hitWindowLate);
        missEarly = beats_to_ticks(cueDef->missWindowEarly);
        missLate = beats_to_ticks(cueDef->missWindowLate);
    } else {
        hitEarly = cueDef->hitWindowEarly;
        hitLate = cueDef->hitWindowLate;
        missEarly = cueDef->missWindowEarly;
        missLate = cueDef->missWindowLate;
    }

    hitEarly = clamp_int32(hitEarly, gGameplayInfo->earlinessRangeMin, gGameplayInfo->earlinessRangeMax);
    hitLate = clamp_int32(hitLate, gGameplayInfo->latenessRangeMin, gGameplayInfo->latenessRangeMax);
    missEarly = clamp_int32(missEarly, gGameplayInfo->earlinessRangeMin, gGameplayInfo->earlinessRangeMax);
    missLate = clamp_int32(missLate, gGameplayInfo->latenessRangeMin, gGameplayInfo->latenessRangeMax);

    if (gGameplayInfo->missPunishmentTimer != 0) {
        hitEarly = -1;
        hitLate = 1;
    }

    hitEarly += duration;
    hitLate += duration;
    missEarly += duration;
    missLate += duration;

    if ((runningTime < missEarly) || (runningTime > missLate)) {
        return CUE_TIMING_MISS;
    }

    if (cueDef->missCondition != NULL) { // unused feature! cool!
        if (cueDef->missCondition(cue, cue->gameCueInfo)) {
            return CUE_TIMING_MISS;
        }
    }

    *offset = runningTime - duration;
    if ((runningTime >= hitEarly) && (runningTime <= hitLate)) {
        return CUE_TIMING_HIT;
    } else {
        return CUE_TIMING_BARELY;
    }
}


// [func_08017e2c] Hit/Barely Event
#include "asm/gameplay/asm_08017e2c.s"


// [func_08017ec8] Update Inputs
void gameplay_update_inputs(u32 pressed, u32 released) {
    s32 timingOffset, closestCueTimingOffset; // input accuracy offset in ticks
    s32 hitAnyCue, missInput, missedCuesForThisButton; // boolean
    struct Cue *cue, *prev, *closestCue;
    enum CueHitTiming timingLevel, closestCueTimingLevel;
    u32 currentInput, unrelatedInputs; // button combo
    u16 press, release; // button combo
    u32 i;

    hitAnyCue = FALSE;
    missInput = FALSE;
    unrelatedInputs = 0;

    for (i = 0; i < 32; i++) {
        currentInput = (pressed | (released << 16)) & (1 << i);

        if (currentInput == 0) {
            continue;
        }

        press = currentInput;
        release = currentInput >> 16;
        missedCuesForThisButton = TRUE;
        closestCue = NULL;
        closestCueTimingOffset = 9999;
        closestCueTimingLevel = CUE_TIMING_MISS;

        cue = gGameplayInfo->cues;
        while (cue != NULL) {
            prev = cue->prev;
            timingLevel = gameplay_calculate_input_timing(cue, press, release, &timingOffset);
            switch (gGameplayInfo->allowCueInputOverlap) {
                case FALSE: // If cues overlap, only register the closest cue to this input.
                    if (timingLevel != CUE_TIMING_MISS) {
                        if (ABS(timingOffset) < ABS(closestCueTimingOffset)) {
                            closestCue = cue;
                            closestCueTimingOffset = timingOffset;
                            closestCueTimingLevel = timingLevel;
                        }
                        missedCuesForThisButton = FALSE;
                    }
                    break;
                case TRUE: // If cues overlap, register input for all.
                    if (timingLevel != CUE_TIMING_MISS) {
                        gameplay_register_hit_barely(cue, timingLevel, timingOffset, press, release);
                        hitAnyCue = TRUE;
                        missedCuesForThisButton = FALSE;
                    }
                    break;
            }
            cue = prev;
        }

        if (closestCue != NULL) {
            gameplay_register_hit_barely(closestCue, closestCueTimingLevel, closestCueTimingOffset, press, release);
            hitAnyCue = TRUE;
        }

        if (missedCuesForThisButton) {
            unrelatedInputs |= currentInput;
            missInput = TRUE;
        }
        pressed &= gGameplayInfo->buttonPressFilter;
        released &= gGameplayInfo->buttonReleaseFilter;
    }

    if (!hitAnyCue) {
        unrelatedInputs = press | (release << 16);
        missInput = TRUE;
    }

    unrelatedInputs &= gGameplayInfo->buttonPressFilter | (gGameplayInfo->buttonReleaseFilter << 16);

    if (unrelatedInputs == 0) {
        missInput = FALSE;
    }

    if (missInput) {
        gameplay_add_cue_result(0, CUE_RESULT_NONE, 0); // marking criteria, enum, accuracy
        if (gGameplayInfo->gameEngine->inputFunc != NULL) {
            gGameplayInfo->gameEngine->inputFunc(unrelatedInputs & 0xffff, unrelatedInputs >> 16);
        }
        gGameplayInfo->missPunishmentTimer = beats_to_ticks(gGameplayInfo->missPunishmentInterval);
    }
}


// [func_08018054] Get Timing Offset of Most Recent Hit/Barely
s32 gameplay_get_last_hit_offset(void) {
    return gGameplayInfo->lastCueInputOffset;
}

// [func_08018068] Prevent Scene from Updating Results for This Cue
void gameplay_ignore_this_cue_result(void) {
    gGameplayInfo->ignoreThisCueResult = TRUE;
}


// [func_08018078] Allow Cue Input Overlap
void gameplay_enable_cue_input_overlap(u32 allow) {
    gGameplayInfo->allowCueInputOverlap = allow;
}


// [func_08018088] Set Cue Spawn SFX
void gameplay_set_cue_spawn_sfx(struct Cue *cue, struct SequenceData *sfx) {
    cue->spawnSfx = sfx;
}


// [func_0801808c] Set Cue Hit SFX
void gameplay_set_cue_hit_sfx(struct Cue *cue, struct SequenceData *sfx) {
    cue->hitSfx = sfx;
}


// [func_08018090] Set Cue Barely SFX
void gameplay_set_cue_barely_sfx(struct Cue *cue, struct SequenceData *sfx) {
    cue->barelySfx = sfx;
}


// [func_08018094] Set Cue Miss SFX
void gameplay_set_cue_miss_sfx(struct Cue *cue, struct SequenceData *sfx) {
    cue->missSfx = sfx;
}


// [func_08018098] Get Cue Spawn SFX
struct SequenceData *gameplay_get_cue_spawn_sfx(struct Cue *cue) {
    return cue->spawnSfx;
}


// [func_0801809c] Get Cue Hit SFX
struct SequenceData *gameplay_get_cue_hit_sfx(struct Cue *cue) {
    return cue->hitSfx;
}


// [func_080180a0] Get Cue Barely SFX
struct SequenceData *gameplay_get_cue_barely_sfx(struct Cue *cue) {
    return cue->barelySfx;
}


// [func_080180a4] Get Cue Miss SFX
struct SequenceData *gameplay_get_cue_miss_sfx(struct Cue *cue) {
    return cue->missSfx;
}


// [func_080180a8] Get Cue Data unk0
u32 gameplay_get_cue_unk0(struct Cue *cue) {
    return cue->data.unk0;
}


// [func_080180ac] Get Cue Input Buttons
u32 gameplay_get_cue_input_buttons(struct Cue *cue) {
    return cue->data.buttonFilter;
}


// [func_080180b0] Set Cue Input Buttons
void gameplay_set_cue_input_buttons(struct Cue *cue, u32 buttons) {
    cue->data.buttonFilter = buttons;
}


// [func_080180b4] Set Cue Duration
void gameplay_set_cue_duration(struct Cue *cue, u32 duration) {
    cue->duration = duration;
}


// [func_080180bc] Get Cue Marking Criteria
u32 gameplay_get_cue_marking_criteria(struct Cue *cue) {
    return cue->markingCriteria;
}


// [func_080180c4] Set Cue Hit Window
void gameplay_set_cue_hit_window(s32 time) {
    gGameplayInfo->earlinessRangeMax = -time;
    gGameplayInfo->latenessRangeMin = time;
}


// [func_080180ec] Set Cue Barely Window
void gameplay_set_cue_barely_window(s32 time) {
    gGameplayInfo->earlinessRangeMin = -time;
    gGameplayInfo->latenessRangeMax = time;
}


// [func_08018114] Set Next Cue Duration
void gameplay_set_next_cue_duration(u32 duration) {
    gGameplayInfo->nextCueDuration = duration;
}


// [func_08018124] Get Cue and GameCueInfo
void gameplay_get_cue_info(struct Cue **cue, void **info) {
    *cue = gGameplayInfo->cues;
    *info = (*cue)->gameCueInfo;
}

// [func_08018138] Get Previous Cue and GameCueInfo
void gameplay_get_previous_cue_info(struct Cue *cue, struct Cue **prev, void **info) {
    if ((cue != NULL) && (cue->prev != NULL)) {
        *prev = cue->prev;
        *info = (*prev)->gameCueInfo;
    } else {
        *prev = NULL;
        *info = NULL;
    }
}


// [func_08018154] Initialise Common Graphics (Perfect Campaign, etc.)
#include "asm/gameplay/asm_08018154.s"


// [func_080182ac] Set D_03001328
void gameplay_pause_menu_set_quit_destination(struct Scene *scene) {
    D_03001328 = scene;
};


// [func_080182b8] Screen Darken (Pause)
void gameplay_pause_menu_darken_screen(void) {
    u32 *palBuf;
    u32 i;

    palBuf = (u32 *)D_03004b10.bgPalette;
    dma3_set(palBuf, &gGameplayInfo->paletteBuffer, sizeof(gGameplayInfo->paletteBuffer), 0x20, 0x200);

    for (i = 0; i < 0x3E; i++, palBuf += 4) {
        palBuf[0] = (palBuf[0] / 2) & PAUSE_MENU_PALETTE_MOD;
        palBuf[1] = (palBuf[1] / 2) & PAUSE_MENU_PALETTE_MOD;
        palBuf[2] = (palBuf[2] / 2) & PAUSE_MENU_PALETTE_MOD;
        palBuf[3] = (palBuf[3] / 2) & PAUSE_MENU_PALETTE_MOD;
    }
}


// [func_08018318] Screen Lighten (Unpause)
void gameplay_pause_menu_lighten_screen(void) {
    dma3_set(&gGameplayInfo->paletteBuffer, D_03004b10.bgPalette, sizeof(D_03004b10.bgPalette) + sizeof(D_03004b10.objPalette), 0x20, 0x200);
}


// [func_08018344] Open Pause Menu
void gameplay_start_pause_menu(void) {
    gGameplayInfo->unpausing = FALSE;
    gGameplayInfo->currentPauseOption = PAUSE_OPTION_CONTINUE;
    func_0804cebc(D_03005380, gGameplayInfo->pauseSprite, 0);
    func_0804d8f8(D_03005380, gGameplayInfo->pauseOptionsSprite, anim_gameplay_pause_option1, 0, 1, 0, 0);
    func_0804d770(D_03005380, gGameplayInfo->pauseSprite, TRUE);
    func_0804d770(D_03005380, gGameplayInfo->pauseOptionsSprite, TRUE);
    gameplay_pause_menu_darken_screen();
    play_sound(&s_f_pause_on_seqData);
}


// [func_080183c8] Update Pause Menu
s32 gameplay_update_pause_menu(void) {
    if (!gGameplayInfo->unpausing) {
        if (D_03004afc & DPAD_LEFT) {
            gGameplayInfo->currentPauseOption = PAUSE_OPTION_CONTINUE;
            func_0804d8f8(D_03005380, gGameplayInfo->pauseOptionsSprite, anim_gameplay_pause_option1, 0, 1, 0, 0);
            play_sound(&s_f_pause_cursor_seqData);
        }
        if (D_03004afc & DPAD_RIGHT) {
            gGameplayInfo->currentPauseOption = PAUSE_OPTION_QUIT;
            func_0804d8f8(D_03005380, gGameplayInfo->pauseOptionsSprite, anim_gameplay_pause_option2, 0, 1, 0, 0);
            play_sound(&s_f_pause_cursor_seqData);
        }
        if (D_03004afc & A_BUTTON) {
            func_0804d770(D_03005380, gGameplayInfo->pauseSprite, FALSE);
            func_0804d770(D_03005380, gGameplayInfo->pauseOptionsSprite, FALSE);
            if (gGameplayInfo->currentPauseOption == PAUSE_OPTION_CONTINUE) {
                gGameplayInfo->unpausing = TRUE;
                play_sound(&s_f_pause_continue_seqData);
                return PAUSE_MENU_SELECTION_PENDING;
            } else {
                gGameplayInfo->perfectFailed = TRUE;
                func_08000584(D_03001328);
                return PAUSE_MENU_SELECTION_QUIT;
            }
        }
        if (D_03004afc & (B_BUTTON | START_BUTTON)) {
            func_0804d770(D_03005380, gGameplayInfo->pauseSprite, FALSE);
            func_0804d770(D_03005380, gGameplayInfo->pauseOptionsSprite, FALSE);
            gGameplayInfo->unpausing = TRUE;
            play_sound(&s_f_pause_continue_seqData);
            return PAUSE_MENU_SELECTION_PENDING;
        }
        return PAUSE_MENU_SELECTION_PENDING;
    }

    if (D_03004ac0 & (A_BUTTON | B_BUTTON | START_BUTTON)) {
        return PAUSE_MENU_SELECTION_PENDING;
    }

    gameplay_pause_menu_lighten_screen();
    D_03004b00 = 0;
    return PAUSE_MENU_SELECTION_CONTINUE;
}


// [func_08018524] Initialise Pause Handler
void gameplay_init_pause_menu(void) {
    func_0801daf8(&D_089cfde0);
    func_0801db04(FALSE); // Disable Pause Menu
}


// [func_0801853c] Set Skip Tutorial Icon Display
void gameplay_set_skip_icon(u32 corner, u32 show) {
    func_0804cebc(D_03005380, gGameplayInfo->skipTutorialSprite, corner);
    func_0804d770(D_03005380, gGameplayInfo->skipTutorialSprite, show);
}


// [func_0801858c] Set Text Button Style
void gameplay_set_text_advance_icon(u32 style) {
    func_0804d8f8(D_03005380, gGameplayInfo->aButtonSprite, D_089cfdf0[style], 0, 1, 0, 0);
}


// [func_080185d0] Display A Button Prompt
void gameplay_display_text_advance_icon(s16 x, s16 y, s32 show) {
    func_0804d770(D_03005380, gGameplayInfo->aButtonSprite, show);
    if (show) {
        func_0804d5d4(D_03005380, gGameplayInfo->aButtonSprite, x, y);
    }
}


// [func_08018630] Initialise Text Elements
void gameplay_set_text_printer(struct TextPrinter *textPrinter) {
    gGameplayInfo->textPrinter = textPrinter;
    gGameplayInfo->pausedAtTextBox = FALSE;
    gGameplayInfo->printingTutorialText = FALSE;
}


// [func_08018660] Display Text
void gameplay_display_text(const char *text) {
    text_printer_set_string(gGameplayInfo->textPrinter, text);
    gameplay_display_text_advance_icon(0, 0, FALSE);
    gGameplayInfo->printingTutorialText = FALSE;
}


//
void gameplay_align_text_advance_icon(void) {
    s16 x, y;

    if (gGameplayInfo->textPrinter != NULL) {
        text_printer_get_x_y(gGameplayInfo->textPrinter, &x, &y);
        gameplay_display_text_advance_icon(x, y, TRUE);
    }
}


//
void gameplay_display_text_and_wait(void) {
    if (gGameplayInfo->skippingTutorial) return;

    if (text_printer_is_printing(gGameplayInfo->textPrinter)) {
        gGameplayInfo->printingTutorialText = TRUE;
    } else {
        gameplay_align_text_advance_icon();
        gGameplayInfo->printingTutorialText = FALSE;
    }
    gGameplayInfo->textButtonPressFilter = gGameplayInfo->buttonPressFilter;
    gGameplayInfo->textButtonReleaseFilter = gGameplayInfo->buttonReleaseFilter;
    gameplay_set_input_buttons(0, 0);
    pause_beatscript_scene(TRUE);
    gGameplayInfo->pausedAtTextBox = TRUE;
}


// [func_0801875c] Update Text
void gameplay_update_text(void) {
    if (gGameplayInfo->skippingTutorial) {
        return;
    }

    text_printer_update(gGameplayInfo->textPrinter);

    if (!gGameplayInfo->pausedAtTextBox) {
        return;
    }

    if (!text_printer_is_printing(gGameplayInfo->textPrinter) && gGameplayInfo->printingTutorialText) {
        gameplay_align_text_advance_icon(); // Text-related
        gGameplayInfo->printingTutorialText = FALSE;
    }

    if (!text_printer_is_printing(gGameplayInfo->textPrinter) && (D_03004afc & A_BUTTON)) {
        text_printer_set_string(gGameplayInfo->textPrinter, NULL);
        gameplay_display_text_advance_icon(0, 0, FALSE); // Hide A Button Prompt
        play_sound(&s_f_send_mes_seqData);
        gameplay_set_input_buttons(gGameplayInfo->textButtonPressFilter, gGameplayInfo->textButtonReleaseFilter);
        pause_beatscript_scene(FALSE);
        gGameplayInfo->pausedAtTextBox = FALSE;
    }
}


// Set Text X Position
void gameplay_set_text_x(s32 x) {
    if (gGameplayInfo->textPrinter != NULL) {
        text_printer_set_x(gGameplayInfo->textPrinter, x);
    }
}


// Set Text Y Position
void gameplay_set_text_y(s32 y) {
    if (gGameplayInfo->textPrinter != NULL) {
        text_printer_set_y(gGameplayInfo->textPrinter, y);
    }
}


// Set Text Z Position (Sprite Depth/Layer)
void gameplay_set_text_z(u16 z) {
    func_0804d67c(D_03005380, gGameplayInfo->aButtonSprite, z);

    if (gGameplayInfo->textPrinter != NULL) {
        text_printer_set_layer(gGameplayInfo->textPrinter, z);
    }
}
