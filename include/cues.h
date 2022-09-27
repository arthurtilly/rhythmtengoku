#pragma once

#include "global.h"
#include "graphics.h"
#include "sound.h"



struct SneakySpiritsCue {
    u32 null0;
    u32 null4;
    u32 null8;
    u32 nullC;
    u32 null10;
    u32 null14;
    u32 null18;
    u32 null1C;
    u32 null20;
    u16 null24;
    u8 disableTaunt;
};

struct SpaceballCue {
    u8 state;
    struct AffineSprite *sprite;
    u32 endTime;
    s16 rotation;
    s16 rotationSpeed;
    s32 x;
    s32 y;
    s32 z;
    u32 unk1C; // (90 * number of beats)
    u32 xSpeed; // Used for 'Barely' arc only
    u32 ySpeed; // Used for 'Barely' arc only
    u8 missed;
};

struct BonOdoriCue {
    u8 type;
};

struct KarateManCue {
    u16 isHit:4;   // Flag:   Object Hit
    u16 miss:1;    // Flag:   Missed
    u16 object:4;  // Value:  Object
    u16 unk2;      // Unused
    s16 objects;   // Entity: Objects
    s16 shadow;    // Entity: Object Shadow
    s8 unk8;       // Value:  unk8 (Object Scale over time?)
    s8 unk9;       // Value:  unk9 (Shadow Scale over time?)
    s32 unkC;      // Value:  Object X Position
    s32 unk10;     // Value:  Object Y Position
    s32 unk14;     // Value:  Object Y Land Position
    u32 unk18;     // Value:  Hit Object X Movement
    u32 unk1C;     // Value:  Hit Object Y Movement
    u32 unk20;     // Value:  unk20
    u32 unk24;     // Value:  Object Gravity
    u16 unk28;     // Value:  Object Distance?
    s16 unk2A;     // Value:  Object Scale
    u8 unk2C;      // Value:  Object Angle
    u8 unk2D;      // Value:  Object Rotation
    s16 unk2E;     // Value:  unk2E
};

struct RhythmTweezersCue {
    u32 unk0_b0:5;
    u32 isLongHair:4;
    u32 finished:1;
    struct AffineSprite *sprite;
    u32 null8;
    u32 nullC;
    u32 null10;
    u32 null14;
    u32 null18;
    u32 null1C;
    u32 null20;
    u32 null24;
    s16 rotation;
    u16 null2A;
    u16 pullTime; // Current pulling time.
    u16 pullTarget; // Target pulling time.
};

struct FireworksCue {
    s16 sprite;     // Sprite
    s32 x;          // X Position
    s32 y;          // Y Position
    s32 velX;       // X Velocity
    s32 velY;       // Y Velocity
    s32 targetX;    // Target X Position
    s32 targetY;    // Target Y Position
    u8  pattern;    // Pattern ID
    u8  state;      // Current State (range varies between cues)
    u8  type;       // Cue Type { 0..2 }
    u8  exploded;   // Has Exploded
};

struct RapMenCue {
    u32 anim;
};

struct WizardsWaltzCue {
    struct AffineSprite *sprite;
    u16 null4;
    s16 position;
};



union GameCueInfo {
    struct SneakySpiritsCue sneakySpirits;
    struct SpaceballCue spaceball;
    struct BonOdoriCue bonOdori;
    struct KarateManCue karateMan;
    struct RhythmTweezersCue rhythmTweezers;
    struct FireworksCue fireworks;
    struct RapMenCue rapMen;
    struct WizardsWaltzCue wizardsWaltz;
};



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

struct Cue;
typedef void (*CueSpawnEvent)(struct Cue *, union GameCueInfo *, u32); // arg2 = spawn parameter
typedef u32  (*CueUpdateEvent)(struct Cue *, union GameCueInfo *, u32, u32); // arg2 = runningTime; arg3 = duration
typedef void (*CueDespawnEvent)(struct Cue *, union GameCueInfo *);
typedef void (*CueHitEvent)(struct Cue *, union GameCueInfo *, u32, u32); // arg2 = buttons pressed; arg3 = buttons released
typedef void (*CueMissEvent)(struct Cue *, union GameCueInfo *);
typedef u32  (*CueMissCondition)(struct Cue *, union GameCueInfo *);

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
	const struct SequenceData *spawnSfx;
	const struct SequenceData *hitSfx;
	const struct SequenceData *barelySfx;
	const struct SequenceData *missSfx;
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
	const struct SequenceData *spawnSfx;
	const struct SequenceData *hitSfx;
	const struct SequenceData *barelySfx;
	const struct SequenceData *missSfx;
	union GameCueInfo *gameCueInfo;
	u8 markingCriteria;
};
