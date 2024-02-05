#include "global.h"
#include "sound.h"
#include "midi.h"


/* AUDIO LIBRARY - RANDOM */


// STATIC VARIABLES
static u16 sRandomState; // State
static s32 D_03001574; // Unused


// Pseudo-Randomly Generate Number
//      Returns a value between '0' (inclusive) and 'range' (exclusive).
u32 midi_random(u16 range) {
    sRandomState = (sRandomState * 109) + 1021;
    return (u32)(range * sRandomState) >> 16;
}
