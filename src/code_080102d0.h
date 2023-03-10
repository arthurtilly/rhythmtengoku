#pragma once

#include "global.h"
#include "sound.h"

extern struct TempoTable {
    struct SequenceData *sequenceData;
    u32 tempo;
} sound_tempo_table[155];

extern u32 get_music_base_tempo(struct SequenceData *); // [func_080102d0] Get Music Base Tempo
extern void reset_game_save_data(void); // [func_080102f4] Reset Rhythm Tengoku Game Save Data
extern void write_game_save_data(void); // [func_08010478] Bulk Copy to Rhythm Tengoku Game Save Data
