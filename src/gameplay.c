#include "gameplay.h"
#include "code_08001360.h"
#include "code_08003980.h"
#include "code_08007468.h"
#include "code_0800b778.h"

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
    gGameplayInfo.unk5E = 0;
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

#include "asm/gameplay/asm_0801747c.s"

#include "asm/gameplay/asm_080174e8.s"

#include "asm/gameplay/asm_08017514.s"

#include "asm/gameplay/asm_08017568.s"

#include "asm/gameplay/asm_08017578.s"

#include "asm/gameplay/asm_080175a0.s"

#include "asm/gameplay/asm_080175b0.s"

#include "asm/gameplay/asm_080175c4.s"

#include "asm/gameplay/asm_080175d8.s"

#include "asm/gameplay/asm_080175e8.s"

#include "asm/gameplay/asm_08017604.s"

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

#include "asm/gameplay/asm_080178ac.s"

#include "asm/gameplay/asm_080178e4.s"

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

#include "asm/gameplay/asm_08017b44.s"

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
                func_08017928(cue->markingCriteria, 2, 0);
            }
            func_08016e54(cue->missSfx);
            if (cueDef->deleteWithoutUpdate) { // another unused feature! awesome!
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

#include "asm/gameplay/asm_08017c8c.s"

#include "asm/gameplay/asm_08017e2c.s"

#include "asm/gameplay/asm_08017ec8.s"


// [func_08018054] Get Timing Offset of Most Recent Input
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

#include "asm/gameplay/asm_080185d0.s"

#include "asm/gameplay/asm_08018630.s"

#include "asm/gameplay/asm_08018660.s"

#include "asm/gameplay/asm_08018698.s"

#include "asm/gameplay/asm_080186d4.s"

#include "asm/gameplay/asm_0801875c.s"

#include "asm/gameplay/asm_08018828.s"

#include "asm/gameplay/asm_0801884c.s"

#include "asm/gameplay/asm_08018870.s"
