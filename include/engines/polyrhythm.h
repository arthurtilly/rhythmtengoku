#pragma once

#include "global.h"
#include "engines.h"


// Engine Types:
struct PolyrhythmInfo {
    u8 version;
    struct PolyrhythmBlock {
        u32 type:3;
        u32 state:3;
        u32 unk0_b6:26;
        s16 sprite;
    } lanes[2][16];
    u8 unk104[2];
    struct PolyrhythmRod {
        u32 active:1;
        u32 unk0_b1:3;
        u32 unk0_b4:3;
        u32 lane:1;
        u32 stopped:1;
        u32 unk1_b1:7;
        u16 unk2;
        s16 sprite;
        s32 x;
        s32 y;
        s32 yOffset;
        s32 horizontal;
        u32 unk18;
        u32 unk1C;
        u32 unk20;
        u32 unk24;
        s32 unk28;
        s32 unk2C;
        s32 runningTime;
        s32 maxDuration;
        u16 timeUntilExplosion;
    } rods[8];
    s16 aButtonArrowSprite;
    s16 dPadArrowSprite;
};

struct PolyrhythmCue {
    u32 unused0:9;
    u8 lane:1;
    u32 unused4;
    u32 unused8;
    u32 unusedC;
    u32 unused10;
    u32 unused14;
    u32 unused18;
    u32 unused1C;
    u32 unused20;
    u32 unused24;
};


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
extern const struct CompressedGraphics *const D_089e5968[];
extern const struct GraphicsTable *const D_089e59fc[];
extern const s16 D_089e5c00[2];
extern const s16 D_089e5c04[2];
extern const s16 D_089e5c08[3];
extern const struct Animation *const D_089e5c10[]; // Piston - Appear
extern const struct Animation *const D_089e5c1c[]; // Piston - Push
extern const struct SequenceData *const D_089e5c28[]; // Piston - Appear
extern const struct SequenceData *const D_089e5c34[]; // Piston - Push

// Functions:
extern void func_08035d1c(void); // Graphics Init. 3
extern void func_08035d2c(void); // Graphics Init. 2
extern void func_08035d6c(void); // Graphics Init. 1
extern void func_08035d98(u32 ver); // Game Engine Init.
extern void func_08035e84(void); // Engine Event 0x05 (STUB)
extern void func_08035e88(void); // Game Engine Update
extern void func_08035e94(void); // Game Engine Close (STUB)
extern void func_08035e98(struct Cue *cue, struct PolyrhythmCue *info, u32 lane); // Cue Spawn
extern u32 func_08035eac(struct Cue *cue, struct PolyrhythmCue *info, u32 runningTime, u32 duration); // Cue Update
extern void func_08035ecc(struct Cue *cue, struct PolyrhythmCue *info); // Cue Despawn
extern void func_08035ed0(struct Cue *cue, struct PolyrhythmCue *info, u32 pressed, u32 released); // Cue On-Hit
extern void func_08035f08(struct Cue *cue, struct PolyrhythmCue *info, u32 pressed, u32 released); // Cue On-Barely
extern void func_08035f40(struct Cue *cue, struct PolyrhythmCue *info); // Cue On-Miss
extern void func_08035f4c(u32 pressed, u32 released); // Input Event
extern void func_08035f74(void); // Common Event 0 (Beat Animation)
extern void func_08035f78(void); // Common Event 1 (Display Text)
extern void func_08035f7c(void); // Populate World
extern void func_080360a8(u32 lane, s32 *piston1ID, s32 *piston2ID); // Get Next Two Pistons
extern void func_080360f8(u32 lane, s32 blockID); // Display Arrow Sprite
// extern ? func_080361c0(?); // Engine Event 0x00 (Spawn Pattern)
// extern ? func_08036250(?); // Engine Event 0x01 (Despawn Pattern)
// extern ? func_080362e4(?); // Engine Event 0x02 (Retract Pistons)
extern s32 func_0803638c(u32 lane); // Piston Push
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
