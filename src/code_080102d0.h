#pragma once

#include "global.h"
#include "sound.h"

extern const struct TempoTable {
    const struct SequenceData *sequenceData;
    u32 tempo;
} gSoundTempoTable[155];

extern u32  func_080102d0(const struct SequenceData *); // [func_080102d0] Get Music Base Tempo
extern void func_080102f4(void); // [func_080102f4] Reset Rhythm Tengoku Game Save Data
// extern ? func_08010478(?); // [func_08010478] ?
