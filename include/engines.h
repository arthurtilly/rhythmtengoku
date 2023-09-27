#pragma once

/*
    General "Game Engine" header file.
    Should probably contain all of the functions and/or headers that are referenced in the game engine C files,
    along with any other sort of common data.
*/

#include "global.h"
#include "lib_agb.h"
#include "cues.h"
#include "scenes.h"


#define END_OF_COMMON_EVENT_LIST ((void *)-1)

typedef void (*EngineEvent)();
typedef void (*EngineInitFunc)(u32);
typedef void (*EngineUpdateFunc)(void);
typedef void (*EngineCloseFunc)();
typedef void (*EngineInputFunc)(u32 pressed, u32 released);

struct GameEngine {
    u32 gameDataSize; // Size of Respective GameData Struct (in bytes)
    EngineInitFunc initFunc;
    EngineUpdateFunc updateFunc;
    EngineCloseFunc closeFunc;
    struct CueDefinition **cueDefinitions;
    EngineEvent *commonFunctions;
    EngineEvent *engineFunctions;
    EngineInputFunc inputFunc;
};

/* The following are for documentation purposes only:
 *
 * typedef void (CommonEvent0)(s32 param);
 * typedef void (CommonEvent1)(s32 param);
 * typedef void (CommonEvent2)(struct Scene *skipDest);
 *
 * Common Event 0: Play Beat Animation
 * Common Event 1: Display Text
 * Common Event 2: Initialise Tutorial
 */

// Game Engine Info
extern void *gCurrentEngineData;
