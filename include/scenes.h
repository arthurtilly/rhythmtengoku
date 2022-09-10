#pragma once

#include "global.h"
#include "sound.h"

// For readability.
#define gGameSelectInfo D_030046a4->gameSelect
#define gRhythmGameInfo D_030046a4->rhythmGame

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

// Rhythm Game Scene Info
struct RhythmGameInfo {
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

union struct_030046a4 {
    struct GameSelectInfo gameSelect;
    struct RhythmGameInfo rhythmGame;
};
extern union struct_030046a4 *D_030046a4;
