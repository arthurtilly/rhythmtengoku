#include "global.h"
#include "code_080102d0.h"
#include "src/memory.h"
#include "scenes/game_select.h"

asm(".include \"include/gba.inc\"");//Temporary


// [func_080102d0] Get Music Base Tempo
u32 get_music_base_tempo(struct SequenceData *seqData) {
    struct TempoTable *seqTempo = sound_tempo_table;

    while (seqTempo->sequenceData != NULL) {
        if (seqTempo->sequenceData == seqData) {
            return seqTempo->tempo;
        }
        seqTempo++;
    }

    return 140;
}


// [func_080102f4] Reset Rhythm Tengoku Game Save Data
void reset_game_save_data(void) {
    struct TengokuSaveData *data = &D_030046a8->data;
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
        data->rhythmGameCompletion[i] = LEVEL_STATE_HIDDEN;
        data->rhythmGameScores[i] = -1;
    }
    func_0801ad9c(); // studio-related
    for (i = 0; i < 55; i++) {
        data->unk190[i] = 0; // number of attempts?
        data->unk1C7[i] = 0;
        data->unk1FE[i] = 0;
    }
    reset_all_replay_save_data(&data->drumReplaysAlloc);
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
    D_030046a8->data.unk294[0] = 5;     // High Score - Mr. Upbeat
    D_030046a8->data.unk294[1] = 50;    // High Score - Mannequin Factory
    D_030046a8->data.unk294[2] = 100;   // High Score - Sick Beats SP
    D_030046a8->data.unk294[3] = 10;    // High Score - Quiz Show EX
    D_030046a8->data.unk294[8] = DIRECTSOUND_MODE_STEREO; // Sound Mode

    data->rhythmGameCompletion[LEVEL_KARATE_MAN] = LEVEL_STATE_AVAILABLE;
    data->rhythmGameCompletion[LEVEL_CLAPPY_TRIO] = LEVEL_STATE_CLOSED;
    data->rhythmGameCompletion[LEVEL_SPACEBALL] = LEVEL_STATE_CLOSED;
    data->rhythmGameCompletion[LEVEL_RHYTHM_TWEEZERS] = LEVEL_STATE_CLOSED;
    data->rhythmGameCompletion[LEVEL_MARCHING_ORDERS] = LEVEL_STATE_CLOSED;
    data->rhythmGameCompletion[LEVEL_REMIX_1] = LEVEL_STATE_CLOSED;
    data->drumKitUnlocked[0] = TRUE;
    data->readingMaterialUnlocked[0] = TRUE;
    data->readingMaterialUnlocked[1] = TRUE;
}


// [func_08010478] Bulk Copy to Rhythm Tengoku Game Save Data
void write_game_save_data(void) {
    write_save_buffer_data_to_sram((void *)&D_030046a8->data, sizeof(struct TengokuSaveData) - sizeof(struct DrumReplaySaveAlloc));
}
