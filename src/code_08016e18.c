#include "code_08016e18.h"
#include "code_08003980.h"

// Main gameplay stuff

asm(".include \"include/gba.inc\"");//Temporary

static s32 D_03001328; // unknown type, could be 2 words

#include "asm/code_08016e18/asm_08016e18.s"

#include "asm/code_08016e18/asm_08016e54.s"

#include "asm/code_08016e18/asm_08016e64.s"

#include "asm/code_08016e18/asm_08016e74.s"

#include "asm/code_08016e18/asm_08016e84.s"

#include "asm/code_08016e18/asm_08016e94.s"

#include "asm/code_08016e18/asm_08016ea4.s"

#include "asm/code_08016e18/asm_08016ec4.s"

#include "asm/code_08016e18/asm_08016ffc.s"

#include "asm/code_08016e18/asm_08017000.s"

#include "asm/code_08016e18/asm_0801714c.s"

#include "asm/code_08016e18/asm_08017168.s"

#include "asm/code_08016e18/asm_08017188.s"

#include "asm/code_08016e18/asm_0801732c.s"

// D_030046a4->unkA = arg0; D_030046a4->unkC = arg1
void func_08017338(s16 arg0, s16 arg1) {
    gRhythmGameInfo.unkA = arg0;
    gRhythmGameInfo.unkC = arg1;
}

s32 func_08017348(s32 arg1, s32 arg2) { // bobbing?
    s32 returnVal = 0;
    EngineFunc *temp = gRhythmGameInfo.commonFunctions;
    
    if (temp == NULL) { // literally never possible
        return returnVal;
    }

    if (temp[arg2] != NULL) {
        returnVal = temp[arg2](arg1);
    }
    
    return returnVal;
}

void func_08017380(s32 arg1) { // gfx command 1
    gRhythmGameInfo.unk60 = arg1;
}

s32 func_0801738c(struct GameEngine *arg1, s32 arg2) { // gfx command 2
    s32 returnVal = 0;

    if (gRhythmGameInfo.currentEngine != arg1) {
        return returnVal;
    }

    if ((gRhythmGameInfo.currentEngine->engineFunctions != NULL) && (gRhythmGameInfo.currentEngine->engineFunctions[arg2] != NULL)) {
        returnVal = gRhythmGameInfo.currentEngine->engineFunctions[arg2](gRhythmGameInfo.unk60);
    }

    return returnVal;
}

#include "asm/code_08016e18/asm_080173c4.s"

#include "asm/code_08016e18/asm_080173d0.s"

#include "asm/code_08016e18/asm_080173dc.s"

#include "asm/code_08016e18/asm_080173e8.s"

#include "asm/code_08016e18/asm_080173f4.s"

#include "asm/code_08016e18/asm_08017400.s"

#include "asm/code_08016e18/asm_0801740c.s"

#include "asm/code_08016e18/asm_08017448.s"

#include "asm/code_08016e18/asm_08017458.s"

#include "asm/code_08016e18/asm_08017468.s"

#include "asm/code_08016e18/asm_0801747c.s"

#include "asm/code_08016e18/asm_080174e8.s"

#include "asm/code_08016e18/asm_08017514.s"

#include "asm/code_08016e18/asm_08017568.s"

#include "asm/code_08016e18/asm_08017578.s"

#include "asm/code_08016e18/asm_080175a0.s"

#include "asm/code_08016e18/asm_080175b0.s"

#include "asm/code_08016e18/asm_080175c4.s"

#include "asm/code_08016e18/asm_080175d8.s"

#include "asm/code_08016e18/asm_080175e8.s"

#include "asm/code_08016e18/asm_08017604.s"

#include "asm/code_08016e18/asm_08017648.s"

#include "asm/code_08016e18/asm_0801765c.s"

#include "asm/code_08016e18/asm_080176cc.s"

#include "asm/code_08016e18/asm_08017728.s"

#include "asm/code_08016e18/asm_08017744.s"

#include "asm/code_08016e18/asm_08017758.s"

#include "asm/code_08016e18/asm_0801777c.s"

#include "asm/code_08016e18/asm_080177a4.s"

#include "asm/code_08016e18/asm_080177c8.s"

#include "asm/code_08016e18/asm_080177dc.s"

#include "asm/code_08016e18/asm_080177f0.s"

#include "asm/code_08016e18/asm_080178ac.s"

#include "asm/code_08016e18/asm_080178e4.s"

#include "asm/code_08016e18/asm_08017908.s"

#include "asm/code_08016e18/asm_08017918.s"

#include "asm/code_08016e18/asm_08017928.s"

#include "asm/code_08016e18/asm_080179a0.s"

#include "asm/code_08016e18/asm_080179bc.s"

#include "asm/code_08016e18/asm_080179d8.s"

void func_080179f4(s32 id) { // universal cue?
    const struct CueDefinition *cueDef;
    struct Cue *newCue, *prevCue;

    if ((gRhythmGameInfo.unk5C == 0) || ((cueDef = gRhythmGameInfo.cueDefinitions[id]) == NULL)) {
        return;
    }

    newCue = mem_heap_alloc(sizeof(struct Cue));
    if (cueDef->cueInfoSize != 0) {
        newCue->unk64 = mem_heap_alloc(cueDef->cueInfoSize);
    } else {
        newCue->unk64 = NULL;
    }
    func_0800186c(cueDef, &newCue->unk8, 0x40, 0x20, 0x200);

    newCue->unk48 &= ~1;
    newCue->unk48 &= ~2;

    do {} while (0); // fake matching / macro?
    
    newCue->unk4C = 0;

    if (gRhythmGameInfo.unk86 != 0) {
        newCue->unk4E = func_0800c3a4(gRhythmGameInfo.unk86);
        gRhythmGameInfo.unk86 = 0;
    } else {
        newCue->unk4E = func_0800c3a4(cueDef->duration);
    }

    newCue->spawnSfx  = ((gRhythmGameInfo.spawnSfx != NULL)  ? gRhythmGameInfo.spawnSfx  : cueDef->spawnSfx);
    newCue->hitSfx    = ((gRhythmGameInfo.hitSfx != NULL)    ? gRhythmGameInfo.hitSfx    : cueDef->hitSfx);
    newCue->barelySfx = ((gRhythmGameInfo.barelySfx != NULL) ? gRhythmGameInfo.barelySfx : cueDef->barelySfx);
    newCue->missSfx   = ((gRhythmGameInfo.missSfx != NULL)   ? gRhythmGameInfo.missSfx   : cueDef->missSfx);

    newCue->unk68 = gRhythmGameInfo.unk7A;

    gRhythmGameInfo.spawnSfx = NULL;
    gRhythmGameInfo.hitSfx = NULL;
    gRhythmGameInfo.barelySfx = NULL;
    gRhythmGameInfo.missSfx = NULL;

    prevCue = gRhythmGameInfo.previousCue;
    
    newCue->next = NULL;
    newCue->prev = prevCue;

    if (prevCue != NULL) {
        prevCue->next = newCue;
    }

    gRhythmGameInfo.previousCue = newCue;

    gRhythmGameInfo.unk5D = 0;

    if (cueDef->spawnFunc != NULL) {
        cueDef->spawnFunc(newCue, newCue->unk64, cueDef->spawnParam);
    }

    if (gRhythmGameInfo.unk5D != 0) {
        gRhythmGameInfo.previousCue = prevCue;
        prevCue->next = NULL;
        mem_heap_dealloc(newCue);
    } else {
        gRhythmGameInfo.currentCue = newCue;
        func_08016e54(newCue->spawnSfx);
    }
}

#include "asm/code_08016e18/asm_08017b34.s"

#include "asm/code_08016e18/asm_08017b44.s"

#include "asm/code_08016e18/asm_08017b88.s"

#include "asm/code_08016e18/asm_08017b98.s"

#include "asm/code_08016e18/asm_08017c68.s"

#include "asm/code_08016e18/asm_08017c8c.s"

#include "asm/code_08016e18/asm_08017e2c.s"

#include "asm/code_08016e18/asm_08017ec8.s"

// Return D_030046a4->unk79 (s8)
s32 func_08018054(void) {
    return gRhythmGameInfo.unk79;
}

#include "asm/code_08016e18/asm_08018068.s"

#include "asm/code_08016e18/asm_08018078.s"

#include "asm/code_08016e18/asm_08018088.s"

#include "asm/code_08016e18/asm_0801808c.s"

#include "asm/code_08016e18/asm_08018090.s"

#include "asm/code_08016e18/asm_08018094.s"

#include "asm/code_08016e18/asm_08018098.s"

#include "asm/code_08016e18/asm_0801809c.s"

#include "asm/code_08016e18/asm_080180a0.s"

#include "asm/code_08016e18/asm_080180a4.s"

#include "asm/code_08016e18/asm_080180a8.s"

#include "asm/code_08016e18/asm_080180ac.s"

#include "asm/code_08016e18/asm_080180b0.s"

#include "asm/code_08016e18/asm_080180b4.s"

#include "asm/code_08016e18/asm_080180bc.s"

#include "asm/code_08016e18/asm_080180c4.s"

#include "asm/code_08016e18/asm_080180ec.s"

#include "asm/code_08016e18/asm_08018114.s"

#include "asm/code_08016e18/asm_08018124.s"

#include "asm/code_08016e18/asm_08018138.s"

#include "asm/code_08016e18/asm_08018154.s"

#include "asm/code_08016e18/asm_080182ac.s"

#include "asm/code_08016e18/asm_080182b8.s"

#include "asm/code_08016e18/asm_08018318.s"

#include "asm/code_08016e18/asm_08018344.s"

#include "asm/code_08016e18/asm_080183c8.s"

#include "asm/code_08016e18/asm_08018524.s"

#include "asm/code_08016e18/asm_0801853c.s"

#include "asm/code_08016e18/asm_0801858c.s"

#include "asm/code_08016e18/asm_080185d0.s"

#include "asm/code_08016e18/asm_08018630.s"

#include "asm/code_08016e18/asm_08018660.s"

#include "asm/code_08016e18/asm_08018698.s"

#include "asm/code_08016e18/asm_080186d4.s"
