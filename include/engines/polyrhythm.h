#pragma once

#include "global.h"
#include "engines.h"

#include "games/polyrhythm/graphics/polyrhythm_graphics.h"

// Engine Macros/Enums:
#define POLYRHYTHM_LINE_AMOUNT 2
#define POLYRHYTHM_BLOCK_AMOUNT 16
#define POLYRHYTHM_ROD_AMOUNT 8

enum PolyrhythmVersionsEnum {
    POLYRHYTHM_VER_0,
    POLYRHYTHM_VER_REMIX,
    POLYRHYTHM_VER_2
};

enum PolyrhythmLanesEnum {
    POLYRHYTHM_LANE_UPSIDE,
    POLYRHYTHM_LANE_DOWNSIDE
};


// Engine Types:
struct PolyrhythmEngineData {
    u8 version;
    struct PolyrhythmBlock {
        u32 type:3;
        u32 state:3;
        u32 unk0_b6:26;
        s16 sprite;
    } lanes[POLYRHYTHM_LINE_AMOUNT][POLYRHYTHM_BLOCK_AMOUNT];
    u8 unk104[POLYRHYTHM_LINE_AMOUNT];
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
    } rods[POLYRHYTHM_ROD_AMOUNT];
    s16 aButtonArrowSprite;
    s16 dPadArrowSprite;
};

struct PolyrhythmCue {
    u32 unused0:9;
    u8  lane:1;
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


// Engine Definition Data:
extern struct CompressedData *polyrhythm_buffered_textures[];
extern struct GraphicsTable *polyrhythm_gfx_tables[];
extern s16 polyrhythm_lane_start_x[2]; // Lane Start X Positions
extern s16 polyrhythm_lane_start_y[2]; // Lane Start Y Positions
extern s16 polyrhythm_block_heights[3]; // Block Heights
extern struct Animation *polyrhythm_block_appear_anim[]; // Block - Appear
extern struct Animation *polyrhythm_block_open_anim[]; // Block - Open
extern struct SongHeader *polyrhythm_block_appear_sfx[]; // Block - Appear
extern struct SongHeader *polyrhythm_block_open_sfx[]; // Block - Open


// Functions:
extern void polyrhythm_init_gfx3(void); // Graphics Init. 3
extern void polyrhythm_init_gfx2(void); // Graphics Init. 2
extern void polyrhythm_init_gfx1(void); // Graphics Init. 1
extern void polyrhythm_engine_start(u32 version); // Game Engine Start
extern void polyrhythm_engine_event_stub(void); // Engine Event 05 (STUB)
extern void polyrhythm_engine_update(void); // Game Engine Update
extern void polyrhythm_engine_stop(void); // Game Engine Stop
extern void polyrhythm_cue_spawn(struct Cue *, struct PolyrhythmCue *, u32 lane); // Cue - Spawn
extern u32  polyrhythm_cue_update(struct Cue *, struct PolyrhythmCue *, u32 runningTime, u32 duration); // Cue - Update
extern void polyrhythm_cue_despawn(struct Cue *, struct PolyrhythmCue *); // Cue - Despawn
extern void polyrhythm_cue_hit(struct Cue *, struct PolyrhythmCue *, u32 pressed, u32 released); // Cue - Hit
extern void polyrhythm_cue_barely(struct Cue *, struct PolyrhythmCue *, u32 pressed, u32 released); // Cue - Barely
extern void polyrhythm_cue_miss(struct Cue *, struct PolyrhythmCue *); // Cue - Miss
extern void polyrhythm_input_event(u32 pressed, u32 released); // Input Event
extern void polyrhythm_common_beat_animation(void); // Common Event 0 (Beat Animation, Unimplemented)
extern void polyrhythm_common_display_text(void); // Common Event 1 (Display Text, Unimplemented)
extern void polyrhythm_populate_world(void); // Populate World
extern void polyrhythm_get_pistons(u32 lane, s32 *piston1ID, s32 *piston2ID); // Get Next Two Pistons
extern void polyrhythm_display_arrow(u32 lane, s32 blockID); // Display Arrow Sprite
extern void polyrhythm_spawn_piston(); // Engine Event 00 (Spawn Pattern)
extern void polyrhythm_despawn_piston(); // Engine Event 01 (Despawn Pattern)
extern void polyrhythm_retract_pistons(); // Engine Event 02 (Retract Pistons)
extern s32 polyrhythm_push_piston(u32 lane); // Piston Push
// extern ? func_08036428(?);
extern s32 polyrhythm_get_lane_start_x(u32); // Get Lane X
extern s32 polyrhythm_get_lane_start_y(u32); // Get Lane Y
extern s32 polyrhythm_get_block_height(u32, s32); // Get Block Height
extern s32 polyrhythm_get_block_z(u32, s32); // Get Layer
// extern ? func_080364f4(?);
extern void polyrhythm_init_rods(void); // Initialise Rods
extern s32 func_080365c8(struct PolyrhythmRod *, s32); // Get Rod Next unk10
// extern ? func_080365f8(?);
extern s32 func_08036604(struct PolyrhythmRod *); // Get Rod Next Horizontal
extern s32 func_0803661c(struct PolyrhythmRod *, s32); // Get Rod Next Layer
extern void func_08036630(struct PolyrhythmRod *); // Update Rod (State 0)
extern void func_08036758(struct PolyrhythmRod *); // Update Rod (State 1)
extern void func_08036848(struct PolyrhythmRod *); // Update Rod (State 2)
extern void func_08036988(void); // STUB
extern void polyrhythm_update_rods(void); // Update Rods
extern void polyrhythm_spawn_rod(u32); // Spawn Rod
extern void polyrhythm_event_spawn_rod(u32); // Engine Event 03 (Spawn Rod)
// extern ? func_08036b48(?);
extern void polyrhythm_play_applause(void); // Conditional Applause
extern void polyrhythm_event_play_applause(void); // Engine Event 04 (Conditional Applause)
