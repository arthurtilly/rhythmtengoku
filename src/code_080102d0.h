#pragma once

#include "global.h"
#include "sound.h"

extern struct TempoTable {
    struct SequenceData *sequenceData;
    u32 tempo;
} sound_tempo_table[155];

extern u32  get_music_base_tempo(struct SequenceData *); // [get_music_base_tempo] Get Music Base Tempo
extern void func_080102f4(void); // [func_080102f4] Reset Rhythm Tengoku Game Save Data
// extern ? func_08010478(?); // [func_08010478] ?
