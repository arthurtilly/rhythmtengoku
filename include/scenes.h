#pragma once

#include "global.h"
#include "graphics.h"
#include "sound.h"
#include "engines.h"

// For readability.
#define gMainMenuInfo   D_030046a4->mainMenu
#define gGameSelectInfo D_030046a4->gameSelect
#define gGameplayInfo   D_030046a4->gameplay

// Main Menu Scene Info
struct MainMenuInfo {
    struct Font *font;
    struct Font *font2;
    u32 screenReady; // Set to FALSE during screen fade-in/out.
    u16 buttons[5];
    s16 bgX;
    s16 bgY;
    u8 unk1A;
    u8 unk1B;
};

// Game Select Scene Info
struct GameSelectInfo {
    s32 null0;
    s32 null4;
    s32 null8;
    s16 unkC;
    s16 unkE;
    u8 unk10;
    u8 unk11;
};

// Gameplay Scene Info
struct GameplayInfo {
	s32 unk0;
	s32 unk4;
	u8 unk8;
	u8 unk9;
    s16 unkA;
	s16 unkC;
	s16 unkE;
	const struct GameEngine *currentEngine; // Game Engine Pointer
	void *unk14; // ?
	struct Cue *previousCue; // Previous Cue (set to the Current Cue as soon as the latter is created)
	const struct CueDefinition *cueDefinitions[12]; // Cue Definitions (copied from Game Engine)
	EngineFunc commonFunctions[3]; // Engine "Common" Functions
	struct Cue *currentCue; // Current Cue
	u8 unk5C;
	u8 unk5D; // Has the capacity to, when set, delete cues as soon as they are created, but is always set to FALSE when a cue is made.
	s32 unk60;
    s32 unk64;
	const struct SequenceData *spawnSfx;
	const struct SequenceData *hitSfx;
	const struct SequenceData *barelySfx;
	const struct SequenceData *missSfx;
	u8 unk78;
    s8 unk79; // Input Timing Offset (how early/late the most recent input was)
	u8 unk7A; // Current Marking Criteria
	u8 unk7B;
	s32 unk7C;
	s32 unk80;
	s16 unk84;
    u16 nextCueDuration;
};

extern union struct_030046a4 {
    struct MainMenuInfo mainMenu;
    struct GameSelectInfo gameSelect;
    struct GameplayInfo gameplay;
} *D_030046a4;
