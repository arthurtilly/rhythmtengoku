#pragma once

#include "global.h"
#include "scenes.h"

// Scene Types:
struct StudioSceneInfo {
    /* add fields here */
};

struct StudioEntry {
    const char *fullTitle;
    const char *shortTitle;
    const struct Beatscript *script;
};


// Scene Macros/Enums:
enum StudioSongsEnum {
    STUDIO_SONG_SILENCE
};


// OAM Animations:


// Sound Effects:


// Scene Definition Data:
extern const struct StudioEntry D_089d81b4[]; // Studio Song Data
extern const char *const D_089d83d0[]; // Drum Kit Names


// Functions:
// extern ? func_0801a9c8(?); // [func_0801a9c8] ?
// extern ? func_0801aa04(?);
// extern ? func_0801aaa0(?);
// extern ? func_0801ac38(?);
// extern ? func_0801ad44(?);
// extern ? func_0801ad9c(?); // ? (called when resetting global save data)
// extern ? func_0801adf0(?);
// extern ? func_0801ae34(?);
// extern ? func_0801aea4(?);
// extern ? func_0801aed0(?);
// extern ? func_0801af64(?);
// extern ? func_0801aff8(?);
// extern ? func_0801b0b0(?);
// extern ? func_0801b138(?);
// extern ? func_0801b1d8(?);
// extern ? func_0801b498(?);
// extern ? func_0801b4b4(?);
// extern ? func_0801b4f4(?);
// extern ? func_0801b668(?);
// extern ? func_0801b6fc(?);
// extern ? func_0801b710(?);
// extern ? func_0801b7b8(?);
// extern ? func_0801b834(?);
// extern ? func_0801b858(?);
// extern ? func_0801b9ec(?);
// extern ? func_0801ba60(?);
// extern ? func_0801ba74(?);
// extern ? func_0801bb24(?);
// extern ? func_0801bb60(?);
// extern ? func_0801bbd4(?);
// extern ? func_0801bbe8(?);
// extern ? func_0801bc0c(?);
// extern ? func_0801bce0(?);
// extern ? func_0801c028(?);
// extern ? func_0801c1b8(?); // [func_0801c1b8] Initialise Static Variables
// extern ? func_0801c1ec(?); // [func_0801c1ec] Graphics Init. 3
// extern ? func_0801c234(?); // [func_0801c234] Graphics Init. 2
// extern ? func_0801c260(?); // [func_0801c260] Graphics Init. 1
// extern ? func_0801c290(?); // [func_0801c290] Graphics Init. 0
// extern ? func_0801c2ec(?); // [func_0801c2ec] Scene Init.
// extern ? func_0801c504(?); // Get Selected Drum Kit
// extern ? func_0801c510(?);
// extern ? func_0801c51c(?);
// extern ? func_0801c530(?);
// extern ? func_0801c5a0(?); // [func_0801c5a0] Scene STUB
// extern ? func_0801c5a4(?);
// extern ? func_0801c674(?);
// extern ? func_0801c6b8(?);
// extern ? func_0801c6fc(?);
// extern ? func_0801c7c0(?);
// extern ? func_0801c7e8(?);
// extern ? func_0801c7ec(?); // [func_0801c7ec] Scene Main
// extern ? func_0801c8b8(?);
// extern ? func_0801c918(?); // [func_0801c918] Scene Close
// extern ? func_0801c930(?); // [func_0801c930] ? (Script Function)
// extern ? func_0801c944(?); // [func_0801c944] ? (Script Function)
// extern ? func_0801c960(?);
// extern ? func_0801c96c(?);
// extern ? func_0801c99c(?); // Play Count-In Click
// extern ? func_0801c9b8(?);
// extern ? func_0801c9c4(?);
// extern ? func_0801c9ec(?);
// extern ? func_0801ca08(?);
// extern ? func_0801ca20(?);
