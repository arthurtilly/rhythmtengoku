#include "code_080102d0.h"

asm(".include \"include/gba.inc\"");//Temporary

extern struct SequenceTempo {
    const struct SequenceData *sequenceData;
    u32 tempo;
} D_089ccccc[155];


// [func_080102d0] Get Music Tempo from D_089ccccc
u32 func_080102d0(const struct SequenceData *seqData) {
    struct SequenceTempo *seqTempo = D_089ccccc;

    while (seqTempo->sequenceData != NULL) {
        if (seqTempo->sequenceData == seqData) {
            return seqTempo->tempo;
        }
        seqTempo++;
    }

    return 140;
}


// [func_080102f4] Reset Rhythm Tengoku Game Save Data
void func_080102f4(void) {
    struct TengokuSaveData *data = &D_030046a8->data; // r4
    u32 i;

    data->gameSelectCursorX = 2;
    data->gameSelectCursorY = 11;
    data->gameSelectPosX = 2;
    data->gameSelectPosY = 11;
    data->recentGameCompletionLevel = -1;
    data->gameSelectUnk5 = 0;
    data->currentFlow = 0;
    data->unkB0 = 0;
    data->recentGameScore = -1;

    for (i = 0; i < 55; i++) {
        data->rhythmGameCompletion[i] = RHYTHM_GAME_STATE_HIDDEN;
        data->rhythmGameScores[i] = -1;
    }
    func_0801ad9c(); // studio-related
    for (i = 0; i < 55; i++) {
        data->unk190[i] = 0; // number of attempts?
        data->unk1C7[i] = 0;
        data->unk1FE[i] = 0;
    }
    func_08011a18(data->drummingRecordings);
    data->unk235 = 0;
    for (i = 0; i < 48; i++) {
        data->unk236[i] = 0; // perfects?
    }
    data->unk266 = 0;
    for (i = 0; i < 20; i++) {
        data->readingMaterialUnlocked[i] = 0;
    }
    for (i = 0; i < 15; i++) {
        data->drumKitUnlocked[i] = 0;
    }
    data->totalMedals = 0;
    data->unk28F = 1;
    data->unk290 = 2;
    data->unk291 = 0;

    for (i = 0; i < 16; i++) {
        data->unk294[i] = 0;
    }
    D_030046a8->data.unk294[0] = 5; // High Score - Mr. Upbeat
    D_030046a8->data.unk294[1] = 50; // High Score - Mannequin Factory
    D_030046a8->data.unk294[2] = 100; // High Score - Sick Beats SP
    D_030046a8->data.unk294[3] = 10; // High Score - Quiz Show EX
    D_030046a8->data.unk294[8] = DIRECTSOUND_MODE_STEREO; // Sound Mode

    data->rhythmGameCompletion[SCENE_ENTRY_KARATE_MAN] = RHYTHM_GAME_STATE_AVAILABLE;
    data->rhythmGameCompletion[SCENE_ENTRY_CLAPPY_TRIO] = RHYTHM_GAME_STATE_CLOSED;
    data->rhythmGameCompletion[SCENE_ENTRY_SPACEBALL] = RHYTHM_GAME_STATE_CLOSED;
    data->rhythmGameCompletion[SCENE_ENTRY_RHYTHM_TWEEZERS] = RHYTHM_GAME_STATE_CLOSED;
    data->rhythmGameCompletion[SCENE_ENTRY_MARCHING_ORDERS] = RHYTHM_GAME_STATE_CLOSED;
    data->rhythmGameCompletion[SCENE_ENTRY_REMIX_1] = RHYTHM_GAME_STATE_CLOSED;
    data->drumKitUnlocked[0] = TRUE;
    data->readingMaterialUnlocked[0] = TRUE;
    data->readingMaterialUnlocked[1] = TRUE;
}


#include "asm/code_0800b778/asm_08010478.s"
