#pragma once

#include "global.h"
#include "graphics.h"
#include "sound.h"


enum CueHitResult {
    CUE_RESULT_HIT,     // Cue was hit
    CUE_RESULT_BARELY,  // Cue was barely'd
    CUE_RESULT_MISS,    // Cue was missed
    CUE_RESULT_NONE     // An input was made, but there was no relevant cue
};

enum CueHitTiming {
    CUE_TIMING_MISS,
    CUE_TIMING_BARELY,
    CUE_TIMING_HIT
};

#define PRESS_BUTTON(mask) ((0 << 15) | (mask))
#define RELEASE_BUTTON(mask) ((1 << 15) | (mask))
#define END_OF_CUE_INDEX (void *) -1

struct Cue;
typedef void (*CueSpawnEvent)( /* struct Cue *cue, union GameCueInfo *info, u32 arg */ );
typedef u32  (*CueUpdateEvent)( /* struct Cue *cue, union GameCueInfo *info, u32 runningTime, u32 duration */ );
typedef void (*CueDespawnEvent)( /* struct Cue *cue, union GameCueInfo *info */ );
typedef void (*CueHitEvent)( /* struct Cue *cue, union GameCueInfo *info, u32 pressed, u32 released */ );
typedef void (*CueMissEvent)( /* struct Cue *cue, union GameCueInfo *info */ );
typedef u32  (*CueMissCondition)( /* struct Cue *cue, union GameCueInfo *info */ );

// Read-Only Cue Definition
struct CueDefinition {
    u8  unk0;            // ?
    u16 buttonFilter;    // Button Combination (if sign bit is set, refers to button release)
    u16 duration;        // Duration (in Beats)
    s8  hitWindowEarly;  // Early Leniency for Hit-Barely
    s8  hitWindowLate;   // Late Leniency for Hit-Barely
    s8  missWindowEarly; // Early Leniency for Barely-Miss
    s8  missWindowLate;  // Late Leniency for Barely-Miss
    u16 tempoDependent:1;        // Denote input timing values as beat values instead of immediate ticks.
    u16 deleteWithoutUpdate:1;   // Cue is deleted without updating first.
    u32 cueInfoSize;             // Required Memory (in bytes)
    CueSpawnEvent spawnFunc;     // Spawn Function
    s32 spawnParam;              // Spawn Parameter
    CueUpdateEvent updateFunc;   // Update Function
    CueDespawnEvent despawnFunc; // Close Function
    CueHitEvent hitFunc;         // Hit Function
    CueHitEvent barelyFunc;      // Barely Function
    CueMissEvent missFunc;       // Miss Function
	struct SongHeader *spawnSfx;
	struct SongHeader *hitSfx;
	struct SongHeader *barelySfx;
	struct SongHeader *missSfx;
	CueMissCondition missCondition;
};

// In-Memory Cue Data
struct Cue {
	struct Cue *next;
	struct Cue *prev;
	struct CueDefinition data; // entire cue definition struct pasted into memory
	s8 unk48_b0:1;
	s8 hasExpired:1;
	u16 unk4A;
	u16 runningTime; // Cue ticks
	u16 duration;
	u32 null50;
	struct SongHeader *spawnSfx;
	struct SongHeader *hitSfx;
	struct SongHeader *barelySfx;
	struct SongHeader *missSfx;
	void *gameCueInfo;
	u8 markingCriteria;
};
