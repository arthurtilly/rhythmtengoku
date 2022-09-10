#pragma once

#include "graphics.h" // until we move D_030055d0 out of here

#include "cues.h"

// In-Memory Cue Data
struct Cue {
	struct Cue *next;
	struct Cue *prev;
	s32 unk8; // ???
	u8 pad0C[0x3C];
	s8 unk48_b0:1;
	s8 unk48_b1:1;
	u16 unk4A;
	u16 runningTime; // Cue ticks
	u16 duration;
	u32 null50;
	const struct SequenceData *spawnSfx;
	const struct SequenceData *hitSfx;
	const struct SequenceData *barelySfx;
	const struct SequenceData *missSfx;
	struct GameCueInfo *gameCueInfo;
	u8 unk68;
};

typedef void (*CueSpawnEvent)(struct Cue *, struct GameCueInfo *, u32);
typedef void (*CueUpdateEvent)(struct Cue *, struct GameCueInfo *, u32, u32); // arg2 = runningTime, arg3 = ?
typedef void (*CueDespawnEvent)(struct Cue *, struct GameCueInfo *);
typedef void (*CueInputEvent)(struct Cue *, struct GameCueInfo *);

// Read-Only Cue Definition
struct CueDefinition {
    s32 unk0; // ?
    u16 duration; // Duration (in Beats)
    u16 leniency; // Leniency
    u16 endDelay; // End Delay
    u16 unkA; // ?
    u32 cueInfoSize; // Required Memory (in bytes)
    CueSpawnEvent spawnFunc; // Spawn Function
    s32 spawnParam; // Spawn Parameter
    CueUpdateEvent updateFunc; // Update Function
    CueDespawnEvent despawnFunc; // Close Function
    CueInputEvent hitFunc; // Hit Function
    CueInputEvent barelyFunc; // Barely Function
    CueInputEvent missFunc; // Miss Function
	const struct SequenceData *spawnSfx;
	const struct SequenceData *hitSfx;
	const struct SequenceData *barelySfx;
	const struct SequenceData *missSfx;
};

typedef s32 (*EngineFunc)(s32);
typedef void (*RhythmGameInitFunc)(u32);
typedef void (*RhythmGameUpdateFunc)(void);
typedef void (*RhythmGameCloseFunc)(void);

struct GameEngine {
    u32 gameInfoSize; // Size of Respective GameInfo Struct (in bytes)
    RhythmGameInitFunc initFunc;
    RhythmGameUpdateFunc updateFunc;
    RhythmGameCloseFunc closeFunc;
    const struct CueDefinition **cueDefinitions;
    EngineFunc *commonFunctions;
    EngineFunc *engineFunctions;
};


#include "scenes.h"
#include "engines.h"


// Null = "Data Not Used YET"
struct struct_030053c0 {
    u32 null0;
    u32 unk4;      // [D_030053c4] ??
    u32 null8;
    u16 unkC;      // [D_030053cc] ??
    u16 nullE;
    u32 null10;
    u32 unk14;     // [D_030053d4] ??
    u32 null18;
    u32 null1C;
    u32 null20[2];
    u32 unk28_1:1;
    u32 unk28_2:4;
    u32 unk2C;
    u32 unk30;
    u32 unk34;
    u32 null38[2];
    u32 null40[4];
    u32 null50[4];
    u32 null60[4];
    u32 null70[4];
    u32 null80[4];
    u32 null90[4];
    u32 nullA0[4];
    u32 nullB0[4];
    u32 nullC0[4];
    u32 nullD0[4];
    u32 nullE0[4];
    u32 nullF0[4];
    u32 null100[4];
    u32 null110[4];
    u32 null120[4];
    u32 null130[4];
    u32 null140[4];
    u32 null150[4];
    u32 null160[4];
    u32 null170[4];
    u32 null180[4];
    u16 unk190;    // [D_03005550] BeatScript: Music Volume
    u16 unk192;    // [D_03005552] BeatScript: Music Channel Selection Volume
    u16 unk194;    // [D_03005554] BeatScript: Music Channel Selection
    u16 unk196;    // [D_03005556] BeatScript: Music Pitch
    u32 pad198[0xA];
    void (*unk1C0)(u32);
    u32 unk1C4;
};

typedef void (*struct_030055e0_func)(void);
typedef u32 (*struct_030055e0_func_1)(void);

struct struct_030055e0_sub {
    u16 unk0;
    struct_030055e0_func unk4;
    struct_030055e0_func_1 unk8;
    u32 unkC;
};

struct struct_030055e0 {
    u8 unk0;
    u8 unk1_1:1;
    u8 unk1_2:1;
    struct struct_030055e0_sub *unk4;
};


extern struct struct_030053c0 D_030053c0;
extern struct struct_030055e0 D_030055e0;
extern s16 gSineTable[];
extern s16 D_08935fcc[];
extern s16 D_089361cc[];
