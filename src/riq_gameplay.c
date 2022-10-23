#include "global.h"
#include "src/riq_gameplay.h"
#include "code_08001360.h"
#include "code_08003980.h"
#include "code_08007468.h"
#include "code_0800b778.h"
#include "lib_0804c870.h"

asm(".include \"include/gba.inc\"");//Temporary


#define PAUSE_MENU_PALETTE_MOD 0x3DEF3DEF // Equivalent to RGB #7F7F7F

enum PauseMenuOptionsEnum {
    PAUSE_OPTION_CONTINUE,
    PAUSE_OPTION_QUIT
};


extern const struct Scene D_089cfd60; // Perfect Certificate Scene
extern const struct BeatScript D_089cfda4[]; // Generic Fade-Out Sequence
extern const struct Scene D_089d77e4; // Results Scene (Level-type)
extern const struct Scene D_089d7c18; // Results Scene (Epilogue)
extern const struct Scene D_089ddbcc; // Debug Menu Scene


/* MAIN GAMEPLAY SCENE */


static const struct Scene *D_03001328; // ?


// [func_08016e04] Set Sound Effect Original Tempo
void func_08016e04(u32 tempo) {
    gGameplayInfo.sfxTempo = tempo;
}


// [func_08016e18] Match SoundPlayer to Current Tempo
struct SoundPlayer *func_08016e18(struct SoundPlayer *player) {
    u16 tempo = gGameplayInfo.sfxTempo;

    if (tempo != 0) {
        func_08002894(player, Div(func_0800c1a8() << 8, tempo));
    }

    return player;
}


// [func_08016e54] Play Sound
struct SoundPlayer *func_08016e54(const struct SequenceData *sfx) {
    return func_08016e18(func_08002634(sfx));
}


// [func_08016e64] Play Sound
struct SoundPlayer *func_08016e64(u32 player, const struct SequenceData *sfx) {
    return func_08016e18(func_0800267c(player, sfx));
}


// [func_08016e74] Play Sound
struct SoundPlayer *func_08016e74(const struct SequenceData *sfx, u32 volume, u32 pitch) {
    return func_08016e18(func_08002698(sfx, volume, pitch));
}


// [func_08016e84] Play Sound
struct SoundPlayer *func_08016e84(u32 player, const struct SequenceData *sfx, u32 volume, s32 pitch) {
    return func_08016e18(func_080026c4(player, sfx, volume, pitch));
}


// [func_08016e94] Initialise Static Variables
void func_08016e94(void) {
    func_080182ac(&D_089ddbcc);
}


// [func_08016ea4] Graphics Init. 0
void func_08016ea4(void) {
    u32 data;

    data = func_080087b4(0, D_089cfda0);
    func_08005d38(data, func_0800bd04, 0);
}


// [func_08016ec4] Gameplay Scene Init.
void func_08016ec4(s32 arg) {
    func_08002e78(D_089cfd7c);
    func_08007324(FALSE);
    func_080073f0();
    func_08018154();
    func_08018524(); // Script-related, gPauseMenu
    func_08018630(NULL);
    gGameplayInfo.gameEngine = NULL;
    func_080178e4();
    func_08019324(FALSE); // Disable input assessment.
    func_080192a4(); // Results-related, some operation on bit-wise struct D_03001338
    gGameplayInfo.unk5B7 = TRUE;
    gGameplayInfo.unk5B8 = 0;
    gGameplayInfo.playInputsEnabled = FALSE;
    gGameplayInfo.buttonPressFilter = 0;
    gGameplayInfo.buttonReleaseFilter = 0;
    gGameplayInfo.unk9 = 1;
    gGameplayInfo.unk64 = 0;
    gGameplayInfo.isTutorial = FALSE;
    gGameplayInfo.skippingTutorial = FALSE;
    gGameplayInfo.skipDestination = NULL;
    gGameplayInfo.skipTutorialButton = SELECT_BUTTON;
    gGameplayInfo.fadeInTicks = 0x10;
    gGameplayInfo.allowCueInputOverlap = FALSE;
    gGameplayInfo.unk8A = 0;
    gGameplayInfo.goingForPerfect = FALSE;
    gGameplayInfo.assessPerfectInputs = TRUE;
    gGameplayInfo.perfectFailed = FALSE;
    gGameplayInfo.unk4A7 = 0;
    gGameplayInfo.unk4A8 = 0xC;
    gGameplayInfo.unk5B4 = 1;
    gGameplayInfo.unk5B5 = 1;
    gGameplayInfo.earlinessRangeMax = -1;
    gGameplayInfo.latenessRangeMin = 1;
    gGameplayInfo.earlinessRangeMin = -0x80;
    gGameplayInfo.latenessRangeMax = 0x7f;
    func_0804c340(35, 2, 2, 4); // Reverb
    if (func_08000608() == NULL) {
        func_08000584(&D_089d77e4);
    }
    func_0801911c(0); // set D_03001330 to 0
}


// [func_08016ffc] Scene STUB
void func_08016ffc(s32 arg) {
}


// [func_08017000] Scene Main
void func_08017000(s32 arg) {
    u32 pressed, released, buttonsOnly;

    if (gGameplayInfo.skippingTutorial) return;

    if (gGameplayInfo.gameEngine != NULL) {
        if (gGameplayInfo.gameEngine->updateFunc != NULL) {
            gGameplayInfo.gameEngine->updateFunc();
        }
    }

    pressed = D_03004afc & gGameplayInfo.buttonPressFilter;
    released = D_03004b00 & gGameplayInfo.buttonReleaseFilter;

    if (gGameplayInfo.unk5B4 == 1) {
        if (gGameplayInfo.unk5B5 != 0) {
            if (pressed & (DPAD_DOWN | DPAD_UP | DPAD_LEFT | DPAD_RIGHT)) {
                buttonsOnly = pressed & ~(DPAD_DOWN | DPAD_UP | DPAD_LEFT | DPAD_RIGHT);
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
                gGameplayInfo.unk5B5 = 0;
                gGameplayInfo.unk5B6 = 10;
            }
        } else {
            pressed &= ~(DPAD_DOWN | DPAD_UP | DPAD_LEFT | DPAD_RIGHT);
            if (D_03004ac0 & (DPAD_DOWN | DPAD_UP | DPAD_LEFT | DPAD_RIGHT)) {
                if (--gGameplayInfo.unk5B6 == 0) {
                    gGameplayInfo.unk5B5 = 1;
                }
            } else {
                gGameplayInfo.unk5B5 = 1;
            }
        }
    }

    if (func_0801714c()) { // if play inputs are enabled
        if ((pressed != 0) || (released != 0)) {
            func_08017ec8(pressed, released); // Update Inputs
        }
    }

    func_08017c68(); // Update Cues
    func_0801875c(); // Update Text

    if (gGameplayInfo.unk4A7 != 0) {
        gGameplayInfo.unk4A7--;
    }

    if (D_03004afc & gGameplayInfo.skipTutorialButton) {
        if (gGameplayInfo.isTutorial) {
            func_08017514(); // Skip Tutorial
        }
    }
}


// [func_0801714c] Check if Play Inputs are Enabled
u32 func_0801714c(void) {
    if (gGameplayInfo.playInputsEnabled) {
        return TRUE;
    } else {
        return FALSE;
    }
}


// Gameplay - Clear Secondary Palette Buffer
void func_08017168(Palette buffer) {
    func_080018e0(0, buffer, 0x3E0, 0x20, 0x200);
}


// [func_08017188] Load New Engine
#include "asm/gameplay/asm_08017188.s"


// [func_0801732c] Get Current Game Engine Info
union GameEngineInfo *func_0801732c(void) {
    return gGameplayInfo.gameEngineInfo;
}


// [func_08017338] Set Input Button Filters
void func_08017338(u16 press, u16 release) {
    gGameplayInfo.buttonPressFilter = press;
    gGameplayInfo.buttonReleaseFilter = release;
}


// [func_08017348] Run Engine-Common Event
s32 func_08017348(s32 param, s32 id) {
    s32 returnVal = 0;
    EngineFunc *functions = gGameplayInfo.commonFunctions;

    if (functions == NULL) { // literally never possible
        return returnVal;
    }

    if (functions[id] != NULL) {
        returnVal = functions[id](param);
    }

    return returnVal;
}


// [func_08017380] Set Parameter for Engine-Specific Event
void func_08017380(s32 param) {
    gGameplayInfo.engineFuncParam = param;
}


// [func_0801738c] Run Engine-Specific Event
s32 func_0801738c(const struct GameEngine *engine, s32 id) {
    s32 returnVal = 0;

    if (gGameplayInfo.gameEngine != engine) {
        return returnVal;
    }

    if ((gGameplayInfo.gameEngine->engineFunctions != NULL) && (gGameplayInfo.gameEngine->engineFunctions[id] != NULL)) {
        returnVal = gGameplayInfo.gameEngine->engineFunctions[id](gGameplayInfo.engineFuncParam);
    }

    return returnVal;
}


// [func_080173c4] Enable Play Inputs
void func_080173c4(u32 enable) {
    gGameplayInfo.playInputsEnabled = enable;
}


// [func_080173d0] Set unk9
void func_080173d0(u32 arg) {
    gGameplayInfo.unk9 = arg;
}


// [func_080173dc] Set Next Cue Spawn SFX
void func_080173dc(const struct SequenceData *sfx) {
    gGameplayInfo.nextCueSpawnSfx = sfx;
}


// [func_080173e8] Set Next Cue Hit SFX
void func_080173e8(const struct SequenceData *sfx) {
    gGameplayInfo.nextCueHitSfx = sfx;
}


// [func_080173f4] Set Next Cue Barely SFX
void func_080173f4(const struct SequenceData *sfx) {
    gGameplayInfo.nextCueBarelySfx = sfx;
}


// [func_08017400] Set Next Cue Miss SFX
void func_08017400(const struct SequenceData *sfx) {
    gGameplayInfo.nextCueMissSfx = sfx;
}


#include "asm/gameplay/asm_0801740c.s"


// [func_08017448] Set isTutorial
void func_08017448(u32 isTutorial) {
    gGameplayInfo.isTutorial = isTutorial;
}


// [func_08017458] Set skipDestination
void func_08017458(const struct Scene *scene) {
    gGameplayInfo.skipDestination = scene;
}


// [func_08017468] Set Skip Tutorial Button
void func_08017468(u32 buttons) {
    gGameplayInfo.skipTutorialButton = buttons;
}


// [func_0801747c] Set Skip Destination
void func_0801747c(const struct Scene *scene) {
    if (scene != NULL) {
        func_08017448(TRUE);
        func_08017458(scene);
        func_0804d770(D_03005380, gGameplayInfo.skipTutorialSprite, TRUE);
    } else {
        func_08017448(FALSE);
        func_08017458(NULL);
        func_0804d770(D_03005380, gGameplayInfo.skipTutorialSprite, FALSE);
    }
}


// [func_080174e8] Display Skip Tutorial Icon
void func_080174e8(u32 corner) {
    func_0804cebc(D_03005380, gGameplayInfo.skipTutorialSprite, corner);
}


// [func_08017514] Skip Tutorial
void func_08017514(void) {
    func_0804e0f0(D_03005380, func_0800c3b8(), 1);
    func_08005e18(func_0800c3b8(), 1);
    func_0800bd04(0);
    func_0801d968(D_089cfda4);
    func_0801db04(FALSE);
    gGameplayInfo.skippingTutorial = TRUE;
}


// [func_08017568] Set Screen Fade-In
void func_08017568(u32 duration) {
    gGameplayInfo.fadeInTicks = duration;
}


// [func_08017578] Fade-In Screen
void func_08017578(void) {
    if (gGameplayInfo.fadeInTicks != 0) {
        func_0800703c(gGameplayInfo.fadeInTicks, 0);
    }
    func_08007324(TRUE);
    func_08007370();
}


// [func_080175a0] Set unk8A
void func_080175a0(u32 count) {
    gGameplayInfo.unk8A = count;
}


// [func_080175b0] Set unk88 to unk8A
void func_080175b0(void) {
    gGameplayInfo.unk88 = gGameplayInfo.unk8A;
}


// [func_080175c4] Increment unk88
void func_080175c4(void) {
    gGameplayInfo.unk88++;
}


// [func_080175d8] Get unk88
u32 func_080175d8(void) {
    return gGameplayInfo.unk88;
}


// [func_080175e8] Set Global Reverb
void func_080175e8(u32 level) {
    func_0804c340(func_080087d4(level + 35, 0, 127), 2, 2, 4);
}


// [func_08017604] Start Perfect Campaign
void func_08017604(u32 start) {
    if ((func_0801286c() < 0)) return; // (s8) D_03001320, related to Game Select

    if (!gGameplayInfo.goingForPerfect) {
        gGameplayInfo.goingForPerfect = TRUE;
        func_0804d770(D_03005380, gGameplayInfo.perfectSprite, TRUE);
    }
}


// [func_08017648] Start/Stop Assessing Inputs for Perfect Campaign
void func_08017648(u32 assessInputs) {
    gGameplayInfo.assessPerfectInputs = assessInputs;
}


// [func_0801765c] Register Imperfect Input
void func_0801765c(void) {
    if (!gGameplayInfo.perfectFailed && gGameplayInfo.goingForPerfect && gGameplayInfo.assessPerfectInputs) {
        func_0804d8f8(D_03005380, gGameplayInfo.perfectSprite, D_0890aca0, 0, 1, 0, 2);
        func_08002634(&s_f_fail_perfect_seqData);
        gGameplayInfo.perfectFailed = TRUE;
    }
}


// [func_080176cc] Register Perfect Input
void func_080176cc(void) {
    if (!gGameplayInfo.perfectFailed && gGameplayInfo.goingForPerfect && gGameplayInfo.assessPerfectInputs) {
        func_0804d8f8(D_03005380, gGameplayInfo.perfectSprite, D_0890ad60, 0, 1, 0x7f, 0);
    }
}


// [func_08017728] Run Game Engine Event (convenience method)
s32 func_08017728(const struct GameEngine *engine, u32 function, s32 param) {
    func_08017380(param);
    return func_0801738c(engine, function);
}


#include "asm/gameplay/asm_08017744.s"

#include "asm/gameplay/asm_08017758.s"

#include "asm/gameplay/asm_0801777c.s"

#include "asm/gameplay/asm_080177a4.s"

#include "asm/gameplay/asm_080177c8.s"

#include "asm/gameplay/asm_080177dc.s"


// [func_080177f0] Scene Close
void func_080177f0(s32 arg) {
    const struct Scene *tempScene;

    func_0804e0c4(D_03005380, 0x10);
    func_080178ac(); // Reset Cues
    if (gGameplayInfo.gameEngine->closeFunc != NULL) {
        gGameplayInfo.gameEngine->closeFunc();
    }
    if (gGameplayInfo.gameEngineInfo != NULL) {
        mem_heap_dealloc(gGameplayInfo.gameEngineInfo);
    }
    if (gGameplayInfo.skippingTutorial) {
        if (gGameplayInfo.skipDestination != NULL) {
            tempScene = func_08000608();
            func_08000584(gGameplayInfo.skipDestination);
            func_080006b0(gGameplayInfo.skipDestination, tempScene);
        }
        func_08002838(); // Sound
    } else {
        if (gGameplayInfo.goingForPerfect && !gGameplayInfo.perfectFailed) {
            func_08000584(&D_089cfd60);
            func_080006b0(&D_089cfd60, func_080005e0(&D_089d7c18));
        }
    }

    func_08008628();
    func_08004058();
    func_0804c340(35, 2, 2, 4); // Reverb
}


// [func_080178ac] Reset All Cue Data
void func_080178ac(void) {
    struct Cue *cue, *prev;

    cue = gGameplayInfo.cues;
    while (cue != NULL) {
        prev = cue->prev;
        func_08017b44(cue);
        cue = prev;
    }

    gGameplayInfo.cues = NULL;
    gGameplayInfo.nextCueSpawnSfx = NULL;
    gGameplayInfo.nextCueHitSfx = NULL;
    gGameplayInfo.nextCueBarelySfx = NULL;
    gGameplayInfo.nextCueMissSfx = NULL;
    gGameplayInfo.nextCueDuration = 0;
}


// [func_080178e4] Initialise Cues
void func_080178e4(void) {
    gGameplayInfo.cues = NULL;
    gGameplayInfo.currentCue = NULL;
    gGameplayInfo.unk5C = TRUE;
    gGameplayInfo.currentMarkingCriteria = 0;
    func_080178ac();
}


// [func_08017908] Set Current Marking Criteria
void func_08017908(u32 criteria) {
    gGameplayInfo.currentMarkingCriteria = criteria;
}


// [func_08017918] Get Current Marking Criteria
u32 func_08017918(void) {
    return gGameplayInfo.currentMarkingCriteria;
}


// [func_08017928] Register Cue Result
void func_08017928(u32 markingCriteria, u32 cueResult, s32 timingOffset) {
    u32 noCue = (cueResult == CUE_RESULT_NONE);

    if (!gGameplayInfo.unk9 && noCue) return;

    // some kind of score-related mercy system or something
    if ((cueResult == CUE_RESULT_MISS) && gGameplayInfo.unk5B7 && (gGameplayInfo.unk5B8 != 0)) {
        cueResult = CUE_RESULT_BARELY;
        gGameplayInfo.unk5B8--;
    }

    // Results
    func_08019350(0, cueResult, timingOffset);
    if (!noCue) {
        func_08019420(markingCriteria, cueResult, timingOffset);
    }

    // Perfect Campaign
    if (cueResult == CUE_RESULT_HIT) {
        func_080176cc();
    } else if (cueResult < 4) {
        func_0801765c();
    }
}


// [func_080179a0] Add Input Hit
void func_080179a0(s32 offset) {
    func_08017928(gGameplayInfo.currentMarkingCriteria, CUE_RESULT_HIT, offset);
}


// [func_080179bc] Add Input Barely
void func_080179bc(s32 offset) {
    func_08017928(gGameplayInfo.currentMarkingCriteria, CUE_RESULT_BARELY, offset);
}


// [func_080179d8] Add Input Miss
void func_080179d8(s32 offset) {
    func_08017928(gGameplayInfo.currentMarkingCriteria, CUE_RESULT_MISS, offset);
}


// [func_080179f4] Spawn Cue
void func_080179f4(s32 id) {
    const struct CueDefinition *cueDef;
    struct Cue *newCue, *prevCue;

    if ((gGameplayInfo.unk5C == 0) || ((cueDef = gGameplayInfo.cueDefinitions[id]) == NULL)) {
        return;
    }

    newCue = mem_heap_alloc(sizeof(struct Cue));
    if (cueDef->cueInfoSize != 0) {
        newCue->gameCueInfo = mem_heap_alloc(cueDef->cueInfoSize);
    } else {
        newCue->gameCueInfo = NULL;
    }
    func_0800186c(cueDef, &newCue->data, sizeof(struct CueDefinition), 0x20, 0x200);

    newCue->unk48_b0 = FALSE;
    newCue->hasExpired = FALSE;

    do {} while (0); // fake matching / macro?

    newCue->runningTime = 0;

    if (gGameplayInfo.nextCueDuration != 0) {
        newCue->duration = func_0800c3a4(gGameplayInfo.nextCueDuration);
        gGameplayInfo.nextCueDuration = 0;
    } else {
        newCue->duration = func_0800c3a4(cueDef->duration);
    }

    newCue->spawnSfx  = ((gGameplayInfo.nextCueSpawnSfx != NULL)  ? gGameplayInfo.nextCueSpawnSfx  : cueDef->spawnSfx);
    newCue->hitSfx    = ((gGameplayInfo.nextCueHitSfx != NULL)    ? gGameplayInfo.nextCueHitSfx    : cueDef->hitSfx);
    newCue->barelySfx = ((gGameplayInfo.nextCueBarelySfx != NULL) ? gGameplayInfo.nextCueBarelySfx : cueDef->barelySfx);
    newCue->missSfx   = ((gGameplayInfo.nextCueMissSfx != NULL)   ? gGameplayInfo.nextCueMissSfx   : cueDef->missSfx);

    newCue->markingCriteria = gGameplayInfo.currentMarkingCriteria;

    gGameplayInfo.nextCueSpawnSfx = NULL;
    gGameplayInfo.nextCueHitSfx = NULL;
    gGameplayInfo.nextCueBarelySfx = NULL;
    gGameplayInfo.nextCueMissSfx = NULL;

    prevCue = gGameplayInfo.cues;

    newCue->next = NULL;
    newCue->prev = prevCue;

    if (prevCue != NULL) {
        prevCue->next = newCue;
    }

    gGameplayInfo.cues = newCue;

    gGameplayInfo.unk5D = FALSE;

    if (cueDef->spawnFunc != NULL) {
        cueDef->spawnFunc(newCue, newCue->gameCueInfo, cueDef->spawnParam);
    }

    if (gGameplayInfo.unk5D) {
        gGameplayInfo.cues = prevCue;
        prevCue->next = NULL;
        mem_heap_dealloc(newCue);
    } else {
        gGameplayInfo.currentCue = newCue;
        func_08016e54(newCue->spawnSfx);
    }
}


// [func_08017b34] Set unk5D to TRUE
void func_08017b34(void) {
    gGameplayInfo.unk5D = TRUE;
}


// [func_08017b44] Despawn Cue
void func_08017b44(struct Cue *cue) {
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
        gGameplayInfo.cues = prev;
    }

    if (prev != NULL) {
        prev->next = next;
    }

    mem_heap_dealloc(cue);
}


// [func_08017b88] Set unk5C
void func_08017b88(u32 arg) {
    gGameplayInfo.unk5C = arg;
}


// [func_08017b98] Update Cue
void func_08017b98(struct Cue *cue) {
    struct CueDefinition *cueDef;
    s32 missTimeOffset;
    u32 hasExpired;

    cueDef = &cue->data;

    cue->runningTime++;
    gGameplayInfo.unk78 = FALSE;
    if (cueDef->tempoDependent) {
        missTimeOffset = func_0800c3a4(cueDef->missWindowLate);
    } else {
        missTimeOffset = cueDef->missWindowLate;
    }
    if (!cue->unk48_b0 && !cue->hasExpired) {
        if (cue->runningTime > cue->duration + missTimeOffset) {
            cue->hasExpired = TRUE;
            if (cueDef->missFunc != NULL) {
                cueDef->missFunc(cue, cue->gameCueInfo);
            }
            if (!gGameplayInfo.unk78) {
                func_08017928(cue->markingCriteria, CUE_RESULT_MISS, 0);
            }
            func_08016e54(cue->missSfx);
            if (cueDef->deleteWithoutUpdate) { // unused feature! awesome!
                func_08017b44(cue); // Despawn Cue
                return;
            }
        }
    }
    if (cueDef->updateFunc != NULL) {
        hasExpired = cueDef->updateFunc(cue, cue->gameCueInfo, cue->runningTime, cue->duration);
        if (hasExpired) {
            if (hasExpired == TRUE) func_08017b44(cue); // Despawn Cue
        }
    }
}


// [func_08017c68] Update All Cues
void func_08017c68(void) {
    struct Cue *cue, *prev;

    cue = gGameplayInfo.cues;
    while (cue != NULL) {
        prev = cue->prev;
        func_08017b98(cue);
        cue = prev;
    }
}


// [func_08017c8c] Determine Cue Input Timing
s32 func_08017c8c(struct Cue *cue, u16 pressed, u16 released, s32 *offset) {
    struct CueDefinition *cueDef;
    s32 runningTime, duration;
    s32 hitEarly, hitLate, missEarly, missLate;
    u16 input;

    cueDef = &cue->data;
    input = (cueDef->buttonFilter & 0x8000) ? released : pressed;

    if ((input & cueDef->buttonFilter & ~0x8000) == 0) return CUE_TIMING_MISS;
    if (cue->unk48_b0 || cue->hasExpired) return CUE_TIMING_MISS;

    runningTime = cue->runningTime;
    duration = cue->duration;

    if (cueDef->tempoDependent) { // Used by the Rhythm Test, Mr. Upbeat, and the unused drumming tutorials.
        hitEarly = func_0800c3a4(cueDef->hitWindowEarly);
        hitLate = func_0800c3a4(cueDef->hitWindowLate);
        missEarly = func_0800c3a4(cueDef->missWindowEarly);
        missLate = func_0800c3a4(cueDef->missWindowLate);
    } else {
        hitEarly = cueDef->hitWindowEarly;
        hitLate = cueDef->hitWindowLate;
        missEarly = cueDef->missWindowEarly;
        missLate = cueDef->missWindowLate;
    }

    hitEarly = func_080087d4(hitEarly, gGameplayInfo.earlinessRangeMin, gGameplayInfo.earlinessRangeMax);
    hitLate = func_080087d4(hitLate, gGameplayInfo.latenessRangeMin, gGameplayInfo.latenessRangeMax);
    missEarly = func_080087d4(missEarly, gGameplayInfo.earlinessRangeMin, gGameplayInfo.earlinessRangeMax);
    missLate = func_080087d4(missLate, gGameplayInfo.latenessRangeMin, gGameplayInfo.latenessRangeMax);

    if (gGameplayInfo.unk4A7) {
        hitEarly = -1;
        hitLate = 1;
    }

    hitEarly += duration;
    hitLate += duration;
    missEarly += duration;
    missLate += duration;

    if ((runningTime < missEarly) || (runningTime > missLate)) return CUE_TIMING_MISS;

    if (cueDef->missCondition != NULL) { // unused feature! cool!
        if (cueDef->missCondition(cue, cue->gameCueInfo)) return CUE_TIMING_MISS;
    }

    *offset = runningTime - duration;

    if ((runningTime >= hitEarly) && (runningTime <= hitLate)) return CUE_TIMING_HIT;

    return CUE_TIMING_BARELY;
}


// [func_08017e2c] Hit/Barely Event
#include "asm/gameplay/asm_08017e2c.s"


// [func_08017ec8] Update Inputs
void func_08017ec8(u32 pressed, u32 released) {
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
        currentInput = (pressed | (released << 0x10)) & (1 << i);

        if (currentInput == 0) continue;

        press = currentInput;
        release = currentInput >> 0x10;
        missedCuesForThisButton = TRUE;
        closestCue = NULL;
        closestCueTimingOffset = 9999;
        closestCueTimingLevel = CUE_TIMING_MISS;

        cue = gGameplayInfo.cues;
        while (cue != NULL) {
            prev = cue->prev;
            timingLevel = func_08017c8c(cue, press, release, &timingOffset);
            switch (gGameplayInfo.allowCueInputOverlap) {
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
                        func_08017e2c(cue, timingLevel, timingOffset, press, release);
                        hitAnyCue = TRUE;
                        missedCuesForThisButton = FALSE;
                    }
                    break;
            }
            cue = prev;
        }

        if (closestCue != NULL) {
            func_08017e2c(closestCue, closestCueTimingLevel, closestCueTimingOffset, press, release);
            hitAnyCue = TRUE;
        }

        if (missedCuesForThisButton) {
            unrelatedInputs |= currentInput;
            missInput = TRUE;
        }
        pressed &= gGameplayInfo.buttonPressFilter;
        released &= gGameplayInfo.buttonReleaseFilter;
    }

    if (!hitAnyCue) {
        unrelatedInputs = press | (release << 0x10);
        missInput = TRUE;
    }

    unrelatedInputs &= gGameplayInfo.buttonPressFilter | (gGameplayInfo.buttonReleaseFilter << 0x10);

    if (unrelatedInputs == 0) {
        missInput = FALSE;
    }

    if (missInput) {
        func_08017928(0, CUE_RESULT_NONE, 0); // marking criteria, enum, accuracy
        if (gGameplayInfo.gameEngine->inputFunc != NULL) {
            gGameplayInfo.gameEngine->inputFunc(unrelatedInputs & 0xffff, unrelatedInputs >> 0x10);
        }
        gGameplayInfo.unk4A7 = func_0800c3a4(gGameplayInfo.unk4A8);
    }
}


// [func_08018054] Get Timing Offset of Most Recent Hit/Barely
s32 func_08018054(void) {
    return gGameplayInfo.lastCueInputOffset;
}

// [func_08018068] Set unk78 to TRUE
void func_08018068(void) {
    gGameplayInfo.unk78 = TRUE;
}


// [func_08018078] Allow Cue Input Overlap
void func_08018078(u32 allow) {
    gGameplayInfo.allowCueInputOverlap = allow;
}


// [func_08018088] Set Cue Spawn SFX
void func_08018088(struct Cue *cue, const struct SequenceData *sfx) {
    cue->spawnSfx = sfx;
}


// [func_0801808c] Set Cue Hit SFX
void func_0801808c(struct Cue *cue, const struct SequenceData *sfx) {
    cue->hitSfx = sfx;
}


// [func_08018090] Set Cue Barely SFX
void func_08018090(struct Cue *cue, const struct SequenceData *sfx) {
    cue->barelySfx = sfx;
}


// [func_08018094] Set Cue Miss SFX
void func_08018094(struct Cue *cue, const struct SequenceData *sfx) {
    cue->missSfx = sfx;
}


// [func_08018098] Get Cue Spawn SFX
const struct SequenceData *func_08018098(struct Cue *cue) {
    return cue->spawnSfx;
}


// [func_0801809c] Get Cue Hit SFX
const struct SequenceData *func_0801809c(struct Cue *cue) {
    return cue->hitSfx;
}


// [func_080180a0] Get Cue Barely SFX
const struct SequenceData *func_080180a0(struct Cue *cue) {
    return cue->barelySfx;
}


// [func_080180a4] Get Cue Miss SFX
const struct SequenceData *func_080180a4(struct Cue *cue) {
    return cue->missSfx;
}


// [func_080180a8] Get Cue Data unk0
u32 func_080180a8(struct Cue *cue) {
    return cue->data.unk0;
}


// [func_080180ac] Get Cue Input Buttons
u32 func_080180ac(struct Cue *cue) {
    return cue->data.buttonFilter;
}


// [func_080180b0] Set Cue Input Buttons
void func_080180b0(struct Cue *cue, u32 buttons) {
    cue->data.buttonFilter = buttons;
}


// [func_080180b4] Set Cue Duration
void func_080180b4(struct Cue *cue, u32 duration) {
    cue->duration = duration;
}


// [func_080180bc] Get Cue Marking Criteria
u32 func_080180bc(struct Cue *cue) {
    return cue->markingCriteria;
}


#include "asm/gameplay/asm_080180c4.s"

#include "asm/gameplay/asm_080180ec.s"


// [func_08018114] Set Next Cue Duration
void func_08018114(u32 duration) {
    gGameplayInfo.nextCueDuration = duration;
}


#include "asm/gameplay/asm_08018124.s"

#include "asm/gameplay/asm_08018138.s"

#include "asm/gameplay/asm_08018154.s"


// [func_080182ac] Set D_03001328
void func_080182ac(const struct Scene *scene) {
    D_03001328 = scene;
};


// [func_080182b8] Screen Darken (Pause)
void func_080182b8(void) {
    u32 *palBuf;
    u32 i;

    palBuf = (u32 *)D_03004b10.bgPalette;
    func_0800186c(palBuf, &gGameplayInfo.paletteBuffer, sizeof(gGameplayInfo.paletteBuffer), 0x20, 0x200);

    for (i = 0; i < 0x3E; i++, palBuf += 4) {
        palBuf[0] = (palBuf[0] / 2) & PAUSE_MENU_PALETTE_MOD;
        palBuf[1] = (palBuf[1] / 2) & PAUSE_MENU_PALETTE_MOD;
        palBuf[2] = (palBuf[2] / 2) & PAUSE_MENU_PALETTE_MOD;
        palBuf[3] = (palBuf[3] / 2) & PAUSE_MENU_PALETTE_MOD;
    }
}


// [func_08018318] Screen Lighten (Unpause)
void func_08018318(void) {
    func_0800186c(&gGameplayInfo.paletteBuffer, D_03004b10.bgPalette, sizeof(D_03004b10.bgPalette) + sizeof(D_03004b10.objPalette), 0x20, 0x200);
}


// [func_08018344] Open Pause Menu
void func_08018344(void) {
    gGameplayInfo.unpausing = FALSE;
    gGameplayInfo.currentPauseOption = PAUSE_OPTION_CONTINUE;
    func_0804cebc(D_03005380, gGameplayInfo.pauseSprite, 0);
    func_0804d8f8(D_03005380, gGameplayInfo.pauseOptionsSprite, D_0890ab88, 0, 1, 0, 0);
    func_0804d770(D_03005380, gGameplayInfo.pauseSprite, TRUE);
    func_0804d770(D_03005380, gGameplayInfo.pauseOptionsSprite, TRUE);
    func_080182b8();
    func_08002634(&s_f_pause_on_seqData);
}


// [func_080183c8] Update Pause Menu
s32 func_080183c8(void) {
    if (!gGameplayInfo.unpausing) {
        if (D_03004afc & DPAD_LEFT) {
            gGameplayInfo.currentPauseOption = PAUSE_OPTION_CONTINUE;
            func_0804d8f8(D_03005380, gGameplayInfo.pauseOptionsSprite, D_0890ab88, 0, 1, 0, 0);
            func_08002634(&s_f_pause_cursor_seqData);
        }
        if (D_03004afc & DPAD_RIGHT) {
            gGameplayInfo.currentPauseOption = PAUSE_OPTION_QUIT;
            func_0804d8f8(D_03005380, gGameplayInfo.pauseOptionsSprite, D_0890abb0, 0, 1, 0, 0);
            func_08002634(&s_f_pause_cursor_seqData);
        }
        if (D_03004afc & A_BUTTON) {
            func_0804d770(D_03005380, gGameplayInfo.pauseSprite, FALSE);
            func_0804d770(D_03005380, gGameplayInfo.pauseOptionsSprite, FALSE);
            if (gGameplayInfo.currentPauseOption == PAUSE_OPTION_CONTINUE) {
                gGameplayInfo.unpausing = TRUE;
                func_08002634(&s_f_pause_continue_seqData);
                return PAUSE_MENU_SELECTION_PENDING;
            } else {
                gGameplayInfo.perfectFailed = TRUE;
                func_08000584(D_03001328);
                return PAUSE_MENU_SELECTION_QUIT;
            }
        }
        if (D_03004afc & (B_BUTTON | START_BUTTON)) {
            func_0804d770(D_03005380, gGameplayInfo.pauseSprite, FALSE);
            func_0804d770(D_03005380, gGameplayInfo.pauseOptionsSprite, FALSE);
            gGameplayInfo.unpausing = TRUE;
            func_08002634(&s_f_pause_continue_seqData);
            return PAUSE_MENU_SELECTION_PENDING;
        }
        return PAUSE_MENU_SELECTION_PENDING;
    }

    if (D_03004ac0 & (A_BUTTON | B_BUTTON | START_BUTTON)) {
        return PAUSE_MENU_SELECTION_PENDING;
    }

    func_08018318();
    D_03004b00 = 0;
    return PAUSE_MENU_SELECTION_CONTINUE;
}


// [func_08018524] Initialise Pause Handler
void func_08018524(void) {
    func_0801daf8(&D_089cfde0);
    func_0801db04(FALSE); // Disable Pause Menu
}


#include "asm/gameplay/asm_0801853c.s"

#include "asm/gameplay/asm_0801858c.s"


// [func_080185d0] Display A Button Prompt
void func_080185d0(s16 x, s16 y, s32 show) {
    func_0804d770(D_03005380, gGameplayInfo.aButtonSprite, show);
    if (show) {
        func_0804d5d4(D_03005380, gGameplayInfo.aButtonSprite, x, y);
    }
}


// [func_08018630] Initialise Text Elements
void func_08018630(void *arg) {
    gGameplayInfo.unk498 = arg;
    gGameplayInfo.unk49C = 0;
    gGameplayInfo.unk49D = 0;
}


// [func_08018660] Display Text
void func_08018660(char *text) {
    func_0800aa4c(gGameplayInfo.unk498, text);
    func_080185d0(0, 0, FALSE);
    gGameplayInfo.unk49D = 0;
}


#include "asm/gameplay/asm_08018698.s"

#include "asm/gameplay/asm_080186d4.s"


// [func_0801875c] Update Text
void func_0801875c(void) {
    if (gGameplayInfo.skippingTutorial) return;

    func_0800a914(gGameplayInfo.unk498);

    if (gGameplayInfo.unk49C == 0) return;

    if (!func_0800ac58(gGameplayInfo.unk498) && gGameplayInfo.unk49D) {
        func_08018698(); // Text-related
        gGameplayInfo.unk49D = FALSE;
    }

    if (!func_0800ac58(gGameplayInfo.unk498) && (D_03004afc & A_BUTTON)) {
        func_0800aa4c(gGameplayInfo.unk498, 0);
        func_080185d0(0, 0, FALSE); // Hide A Button Prompt
        func_08002634(&s_f_send_mes_seqData);
        func_08017338(gGameplayInfo.textButtonPressFilter, gGameplayInfo.textButtonReleaseFilter);
        func_0800bd04(0);
        gGameplayInfo.unk49C = 0;
    }
}


#include "asm/gameplay/asm_08018828.s"

#include "asm/gameplay/asm_0801884c.s"

#include "asm/gameplay/asm_08018870.s"
