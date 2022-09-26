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
	u8 enablePlayInputs; // A, B, +, L, R
	u8 unk9;
    u16 buttonPressFilter;
	u16 buttonReleaseFilter;
	s16 unkE;
	const struct GameEngine *gameEngine; // Game Engine Pointer
	union GameEngineInfo *gameEngineInfo; // Same value as D_030055d0
	struct Cue *cues; // Linked List (most recent element)
	const struct CueDefinition *cueDefinitions[12]; // Cue Definitions (copied from Game Engine)
	EngineFunc commonFunctions[3]; // Engine "Common" Functions
	struct Cue *currentCue; // Current Cue
	u8 unk5C;
    u8 unk5D; // Has the capacity to, when set, delete cues as soon as they are created, but is always set to FALSE when a cue is made.
    u8 allowCueInputOverlap; // If multiple cues for the same input overlap, register the input for all cues (otherwise only consider the most relevant cue).
    s32 engineFuncParam; // Parameter used when calling Engine-specific Functions
    u8  unk64;
	const struct SequenceData *nextCueSpawnSfx;
	const struct SequenceData *nextCueHitSfx;
	const struct SequenceData *nextCueBarelySfx;
	const struct SequenceData *nextCueMissSfx;
	u8 unk78;
    s8 unk79; // Most Recent Input Timing Offset (how early/late the most recent input was)
	u8 currentMarkingCriteria; // Current Marking Criteria
	u8 unk7B;
	u8 unk7C;
	struct Scene *skipDestination; // Skip Tutorial destination scene
	u16 fadeInTicks; // Remaining ticks for screen fade-in?
    u16 nextCueDuration;
    u16 unk88;
    u16 unk8A;
    s16 pauseSprite;
    s16 pauseOptionsSprite;
    u32 unk90[4];
    u32 unkA0[8];
    u32 unkC0[8];
    u32 unkE0[8];
    u32 unk100[64];
    u32 unk200[64];
    u32 unk300[64];
    u32 unk400[32];
    u32 unk480[4];
    u32 unk490;
    s16 skipTutorialSprite;
    s16 aButtonSprite;
    void *unk498; // text manager or font or something
    u8  unk49C; // Text-related
    u8  unk49D; // Text-related
    u16 unk49E;
    u16 unk4A0;
    s16 perfectSprite;
    u8  goingForPerfect;
    u8  assessPerfectInputs;
    u8  unk4A6;
    u8  unk4A7;
    u8  unk4A8;
    s8  earlinessRangeMax; // Input Timing Window Duration - Early, Max.
    s8  latenessRangeMin; // Input Timing Window Duration - Late, Min.
    s8  earlinessRangeMin; // Input Timing Window Duration - Early, Min.
    s8  latenessRangeMax; // Input Timing Window Duration - Late, Max.
    u16 unk4AE;
    u16 skipTutorialButton; // Button filter for skipping tutorials.
    u32 unk4B4;
    u32 unk4B8;
    u32 unk4BC;
    u32 unk4C0[16];
    u32 unk500[32];
    u32 unk580[8];
    u32 unk5A0[4];
    u32 unk5B0;
    u8  unk5B4;
    u8  unk5B5;
    u8  unk5B6;
    u8  unk5B7;
    u8  unk5B8;
};

extern union struct_030046a4 {
    struct MainMenuInfo mainMenu;
    struct GameSelectInfo gameSelect;
    struct GameplayInfo gameplay;
} *D_030046a4;
