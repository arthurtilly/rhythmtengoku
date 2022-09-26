#include "gameplay.h"
#include "code_08001360.h"
#include "code_08003980.h"
#include "code_08007468.h"
#include "code_0800b778.h"
#include "lib_0804c870.h"

asm(".include \"include/gba.inc\"");//Temporary


extern struct Scene D_089d77e4; // Results (Level-type)


/* MAIN GAMEPLAY SCENE */


static s32 D_03001328; // unknown type, could be 2 words


#include "asm/gameplay/asm_08016e04.s"

#include "asm/gameplay/asm_08016e18.s"

#include "asm/gameplay/asm_08016e54.s"

#include "asm/gameplay/asm_08016e64.s"

#include "asm/gameplay/asm_08016e74.s"

#include "asm/gameplay/asm_08016e84.s"

#include "asm/gameplay/asm_08016e94.s"

#include "asm/gameplay/asm_08016ea4.s"


// [func_08016ec4] Gameplay Scene Init.
void func_08016ec4(s32 arg) {
    func_08002e78(D_089cfd7c);
    func_08007324(0);
    func_080073f0();
    func_08018154();
    func_08018524(); // Script-related, D_030055e0
    func_08018630(NULL);
    gGameplayInfo.gameEngine = NULL;
    func_080178e4();
    func_08019324(0); // Results-related, some operation on bit-wise struct D_03001338
    func_080192a4(); // Results-related, some operation on bit-wise struct D_03001338
    gGameplayInfo.unk5B7 = 1;
    gGameplayInfo.unk5B8 = 0;
    gGameplayInfo.enablePlayInputs = FALSE;
    gGameplayInfo.buttonPressFilter = 0;
    gGameplayInfo.buttonReleaseFilter = 0;
    gGameplayInfo.unk9 = 1;
    gGameplayInfo.unk64 = 0;
    gGameplayInfo.unk7B = FALSE;
    gGameplayInfo.unk7C = 0;
    gGameplayInfo.skipDestination = NULL;
    gGameplayInfo.skipTutorialButton = SELECT_BUTTON;
    gGameplayInfo.fadeInTicks = 0x10;
    gGameplayInfo.allowCueInputOverlap = FALSE;
    gGameplayInfo.unk8A = 0;
    gGameplayInfo.goingForPerfect = FALSE;
    gGameplayInfo.assessPerfectInputs = TRUE;
    gGameplayInfo.unk4A6 = 0;
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

    if (gGameplayInfo.unk7C) return;

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
        if (gGameplayInfo.unk7B) {
            func_08017514(); // Skip Tutorial
        }
    }
}


#include "asm/gameplay/asm_0801714c.s"

#include "asm/gameplay/asm_08017168.s"

#include "asm/gameplay/asm_08017188.s"

#include "asm/gameplay/asm_0801732c.s"


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
s32 func_0801738c(struct GameEngine *engine, s32 id) {
    s32 returnVal = 0;

    if (gGameplayInfo.gameEngine != engine) {
        return returnVal;
    }

    if ((gGameplayInfo.gameEngine->engineFunctions != NULL) && (gGameplayInfo.gameEngine->engineFunctions[id] != NULL)) {
        returnVal = gGameplayInfo.gameEngine->engineFunctions[id](gGameplayInfo.engineFuncParam);
    }

    return returnVal;
}


#include "asm/gameplay/asm_080173c4.s"

#include "asm/gameplay/asm_080173d0.s"

#include "asm/gameplay/asm_080173dc.s"

#include "asm/gameplay/asm_080173e8.s"

#include "asm/gameplay/asm_080173f4.s"

#include "asm/gameplay/asm_08017400.s"

#include "asm/gameplay/asm_0801740c.s"

#include "asm/gameplay/asm_08017448.s"

#include "asm/gameplay/asm_08017458.s"

#include "asm/gameplay/asm_08017468.s"


// [func_0801747c] Set Skip Destination
void func_0801747c(struct Scene *scene) {
    if (scene != NULL) {
        func_08017448(TRUE); // set unk7B
        func_08017458(scene); // set skipDestination
        func_0804d770(D_03005380, gGameplayInfo.skipTutorialSprite, TRUE);
    } else {
        func_08017448(FALSE);
        func_08017458(NULL);
        func_0804d770(D_03005380, gGameplayInfo.skipTutorialSprite, FALSE);
    }
}


#include "asm/gameplay/asm_080174e8.s"

#include "asm/gameplay/asm_08017514.s"

#include "asm/gameplay/asm_08017568.s"

#include "asm/gameplay/asm_08017578.s"

#include "asm/gameplay/asm_080175a0.s"

#include "asm/gameplay/asm_080175b0.s"

#include "asm/gameplay/asm_080175c4.s"

#include "asm/gameplay/asm_080175d8.s"

#include "asm/gameplay/asm_080175e8.s"


// [func_08017604] Start Perfect Campaign
void func_08017604(u32 start) {
    if ((func_0801286c() < 0)) return; // (s8) D_03001320, related to Game Select

    if (!gGameplayInfo.goingForPerfect) {
        gGameplayInfo.goingForPerfect = TRUE;
        func_0804d770(D_03005380, gGameplayInfo.perfectSprite, TRUE);
    }
}


#include "asm/gameplay/asm_08017648.s"

#include "asm/gameplay/asm_0801765c.s"

#include "asm/gameplay/asm_080176cc.s"

#include "asm/gameplay/asm_08017728.s"

#include "asm/gameplay/asm_08017744.s"

#include "asm/gameplay/asm_08017758.s"

#include "asm/gameplay/asm_0801777c.s"

#include "asm/gameplay/asm_080177a4.s"

#include "asm/gameplay/asm_080177c8.s"

#include "asm/gameplay/asm_080177dc.s"

#include "asm/gameplay/asm_080177f0.s"


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


#include "asm/gameplay/asm_08017908.s"

#include "asm/gameplay/asm_08017918.s"

#include "asm/gameplay/asm_08017928.s"

#include "asm/gameplay/asm_080179a0.s"

#include "asm/gameplay/asm_080179bc.s"

#include "asm/gameplay/asm_080179d8.s"


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


#include "asm/gameplay/asm_08017b34.s"


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


#include "asm/gameplay/asm_08017b88.s"


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


#include "asm/gameplay/asm_08017c68.s"


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
    return gGameplayInfo.unk79;
}


#include "asm/gameplay/asm_08018068.s"

#include "asm/gameplay/asm_08018078.s"

#include "asm/gameplay/asm_08018088.s"

#include "asm/gameplay/asm_0801808c.s"

#include "asm/gameplay/asm_08018090.s"

#include "asm/gameplay/asm_08018094.s"

#include "asm/gameplay/asm_08018098.s"

#include "asm/gameplay/asm_0801809c.s"

#include "asm/gameplay/asm_080180a0.s"

#include "asm/gameplay/asm_080180a4.s"

#include "asm/gameplay/asm_080180a8.s"

#include "asm/gameplay/asm_080180ac.s"

#include "asm/gameplay/asm_080180b0.s"

#include "asm/gameplay/asm_080180b4.s"

#include "asm/gameplay/asm_080180bc.s"

#include "asm/gameplay/asm_080180c4.s"

#include "asm/gameplay/asm_080180ec.s"

#include "asm/gameplay/asm_08018114.s"

#include "asm/gameplay/asm_08018124.s"

#include "asm/gameplay/asm_08018138.s"

#include "asm/gameplay/asm_08018154.s"

#include "asm/gameplay/asm_080182ac.s"

#include "asm/gameplay/asm_080182b8.s"

#include "asm/gameplay/asm_08018318.s"

#include "asm/gameplay/asm_08018344.s"

#include "asm/gameplay/asm_080183c8.s"

#include "asm/gameplay/asm_08018524.s"

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
    if (gGameplayInfo.unk7C) return;

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
        func_08017338(gGameplayInfo.unk49E, gGameplayInfo.unk4A0); // Add these to the input button filters
        func_0800bd04(0);
        gGameplayInfo.unk49C = 0;
    }
}


#include "asm/gameplay/asm_08018828.s"

#include "asm/gameplay/asm_0801884c.s"

#include "asm/gameplay/asm_08018870.s"
