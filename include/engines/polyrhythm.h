#pragma once

#include "global.h"
#include "engines.h"

// Engine Macros/Enums:

// OAM Animations:
extern const struct Animation D_088f60f4[]; // [D_088f60f4] Layout/Spacing Demonstration (Upside)
extern const struct Animation D_088f6104[]; // [D_088f6104] Layout/Spacing Demonstration (Downside)
extern const struct Animation D_088f6114[]; // [D_088f6114] Rolling Rod
extern const struct Animation D_088f615c[]; // [D_088f615c] Large Up Arrow (Unused)
extern const struct Animation D_088f616c[]; // [D_088f616c] Upside Piston
extern const struct Animation D_088f61ac[]; // [D_088f61ac] Downside Piston
extern const struct Animation D_088f61ec[]; // [D_088f61ec] Starting Blocks Structure
extern const struct Animation D_088f61fc[]; // [D_088f61fc] Spawn Block
extern const struct Animation D_088f622c[]; // [D_088f622c] Spawn Upside Piston
extern const struct Animation D_088f625c[]; // [D_088f625c] Spawn Downside Piston
extern const struct Animation D_088f628c[]; // [D_088f628c] Push Upside Piston
extern const struct Animation D_088f62a4[]; // [D_088f62a4] Push Downside Piston
extern const struct Animation D_088f62bc[]; // [D_088f62bc] Rod Explosion
extern const struct Animation D_088f62e4[]; // [D_088f62e4] Button Signs
extern const struct Animation D_088f62fc[]; // [D_088f62fc] Up Arrow (A Button)
extern const struct Animation D_088f631c[]; // [D_088f631c] Up Arrow (D-Pad)

// Palettes:

// Sound Effects:
extern const struct SequenceData s_f_poly_blast_seqData;
extern const struct SequenceData s_poly_shototu_seqData;

// Engine Data:

// Engine Definition Data:
extern s16 D_089e5c00[2];
extern s16 D_089e5c04[2];
extern s16 D_089e5c08[3];

// Functions:
// extern ? func_08035d1c(?); // Graphics Init. 2
// extern ? func_08035d2c(?); // Graphics Init. 1
// extern ? func_08035d6c(?); // Graphics Init. 0
extern void func_08035d98(u32); // Game Init.
extern void func_08035e84(void); // Engine Event 0x05 (STUB)
extern void func_08035e88(void); // Game Update
extern void func_08035e94(void); // Game Close (STUB)
// extern ? func_08035e98(?); // Cue Spawn
// extern ? func_08035eac(?); // Cue Update
// extern ? func_08035ecc(?); // Cue Despawn
// extern ? func_08035ed0(?); // Cue On-Hit
// extern ? func_08035f08(?); // Cue On-Barely
// extern ? func_08035f40(?); // Cue On-Miss
// extern ? func_08035f4c(?); // Input Event
// extern ? func_08035f74(?); // Common Event 0 (Beat Animation)
// extern ? func_08035f78(?); // Common Event 1 (Display Text)
extern void func_08035f7c(void); // Populate World
// extern ? func_080360a8(?);
// extern ? func_080360f8(?);
// extern ? func_080361c0(?); // Engine Event 0x00 (Spawn Pattern)
// extern ? func_08036250(?); // Engine Event 0x01 (Despawn Pattern)
// extern ? func_080362e4(?); // Engine Event 0x02 (Retract Pistons)
// extern ? func_0803638c(?);
// extern ? func_08036428(?);
extern s32 func_0803646c(u32); // Get Lane X
extern s32 func_0803647c(u32); // Get Lane Y
extern s32 func_0803648c(u32, s32); // Get Lane something
extern s32 func_080364d4(u32, s32); // Get Layer
// extern ? func_080364f4(?);
extern void func_0803656c(void); // Initialise Rods
extern s32 func_080365c8(struct PolyrhythmRod *, s32); // Get Rod Next unk10
// extern ? func_080365f8(?);
extern s32 func_08036604(struct PolyrhythmRod *); // Get Rod Next unk14
extern s32 func_0803661c(struct PolyrhythmRod *, s32); // Get Rod Next Layer
extern void func_08036630(struct PolyrhythmRod *); // Update Rod (State 0)
extern void func_08036758(struct PolyrhythmRod *); // Update Rod (State 1)
extern void func_08036848(struct PolyrhythmRod *); // Update Rod (State 2)
extern void func_08036988(void); // STUB
extern void func_0803698c(void); // Update Rods
extern void func_08036aa4(u32); // Spawn Rod
extern void func_08036b3c(u32); // Engine Event 0x03 (Spawn Rod)
// extern ? func_08036b48(?);
// extern ? func_08036b94(?);
// extern ? func_08036be0(?); // Engine Event 0x04 (Conditional Applause)
