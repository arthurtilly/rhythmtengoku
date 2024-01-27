#include "global.h"
#include "code_080102d0.h"
#include "src/memory.h"
#include "scenes/game_select.h"
#include "scenes/reading.h"
#include "scenes/studio.h"

asm(".include \"include/gba.inc\"");//Temporary


// [func_080102d0] Get Music Base Tempo
u32 get_music_base_tempo(struct SongHeader *seqData) {
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

    data->gsCursorX = 2;
    data->gsCursorY = 11;
    data->recentLevelX = 2;
    data->recentLevelY = 11;
    data->recentLevelState = LEVEL_STATE_NULL;
    data->recentLevelClearedByBarista = FALSE;
    data->currentFlow = 0;
    data->unkB0 = 0;
    data->recentLevelScore = DEFAULT_LEVEL_SCORE;

    for (i = 0; i < TOTAL_LEVELS; i++) {
        data->levelStates[i] = LEVEL_STATE_HIDDEN;
        data->levelScores[i] = DEFAULT_LEVEL_SCORE;
    }

    unlock_default_studio_songs();

    for (i = 0; i < TOTAL_LEVELS; i++) {
        data->levelTotalPlays[i] = 0;
        data->levelFirstOK[i] = 0;
        data->levelFirstSuperb[i] = 0;
    }

    reset_all_replay_save_data(&data->drumReplaysAlloc);
    data->totalPerfects = 0;

    for (i = 0; i < TOTAL_PERFECT_CAMPAIGNS; i++) {
        data->campaignsCleared[i] = FALSE;
    }
    data->campaignState = CAMPAIGN_STATE_INACTIVE;

    for (i = 0; i < ARRAY_COUNT(data->readingMaterialUnlocked); i++) {
        data->readingMaterialUnlocked[i] = FALSE;
    }

    for (i = 0; i < ARRAY_COUNT(data->drumKitsUnlocked); i++) {
        data->drumKitsUnlocked[i] = FALSE;
    }

    data->totalMedals = 0;
    data->unk28F = 1;
    data->minFailsForBaristaHelp = 2;
    data->unk291 = 0;

    for (i = 0; i < ARRAY_COUNT(data->unk294); i++) {
        data->unk294[i] = 0;
    }

    D_030046a8->data.unk294[0] = 5;     // High Score - Mr. Upbeat
    D_030046a8->data.unk294[1] = 50;    // High Score - Mannequin Factory
    D_030046a8->data.unk294[2] = 100;   // High Score - Sick Beats SP
    D_030046a8->data.unk294[3] = 10;    // High Score - Quiz Show EX
    D_030046a8->data.unk294[8] = DIRECTSOUND_MODE_STEREO; // Sound Mode

    data->levelStates[LEVEL_KARATE_MAN] = LEVEL_STATE_OPEN;
    data->levelStates[LEVEL_CLAPPY_TRIO] = LEVEL_STATE_CLOSED;
    data->levelStates[LEVEL_SPACEBALL] = LEVEL_STATE_CLOSED;
    data->levelStates[LEVEL_RHYTHM_TWEEZERS] = LEVEL_STATE_CLOSED;
    data->levelStates[LEVEL_MARCHING_ORDERS] = LEVEL_STATE_CLOSED;
    data->levelStates[LEVEL_REMIX_1] = LEVEL_STATE_CLOSED;
    data->drumKitsUnlocked[STUDIO_DRUM_STANDARD] = TRUE;
    data->readingMaterialUnlocked[READING_MATERIAL_WELCOME] = TRUE;
    data->readingMaterialUnlocked[READING_MATERIAL_MANUAL] = TRUE;
}


// [func_08010478] Bulk Copy to Rhythm Tengoku Game Save Data
void write_game_save_data(void) {
    write_save_buffer_data_to_sram((void *)&D_030046a8->data, sizeof(struct TengokuSaveData) - sizeof(struct DrumReplaySaveAlloc));
}
