#pragma once

#include "global.h"
#include "engines.h"

#include "games/wizards_waltz/graphics/wizards_waltz_graphics.h"

// Engine Macros/Enums:
#define WIZARDS_WALTZ_SPARKLE_AMOUNT 10


// Engine Types:
struct WizardsWaltzEntity {
    struct AffineSprite *sprite;
    u8  state;
    s32 rotation;
    s32 x;
    s32 y;
    s32 z;
    u32 time;
    u32 null1C;
};

struct WizardsWaltzEngineData {
    u8 version;
    struct WizardsWaltzEntity wizard;
    struct WizardsWaltzEntity shadow;
    struct WizardsWaltzEntity sparkle[WIZARDS_WALTZ_SPARKLE_AMOUNT];
    struct WizardsWaltzEntity girl;
    s32 cyclePosition;  // Current point in cycle
    s32 cycleInterval;  // Duration of one cycle
    s32 globalScale;    //
    u8  currentSparkle; // Sparkle to operate on
    u8  flowerCount;
    u8  isTutorial;
};

struct WizardsWaltzCue {
    struct AffineSprite *sprite;
    u16 null4;
    s16 position;
};


// Engine Definition Data:
extern struct CompressedData *wizards_waltz_buffered_textures[];
extern struct GraphicsTable gfx_table_wizards_waltz[];


// Functions:
extern void wizards_waltz_init_gfx3(void); // Graphics Init. 3
extern void wizards_waltz_init_gfx2(void); // Graphics Init. 2
extern void wizards_waltz_init_gfx1(void); // Graphics Init. 1
extern void wizards_waltz_engine_start(u32 version); // Game Engine Start
extern void wizards_waltz_set_cycle_duration(u32 duration); // Engine Event 0x00 (Set Rotation Interval)
extern void wizards_waltz_set_sprite_pos(struct AffineSprite *, s32 x, s32 y, u32 z); // Update Sprite Position
extern void wizards_waltz_engine_update(void); // Game Engine Update
extern void wizards_waltz_tutorial_enabled(u32 enable); // Engine Event 0x01 (Enable Tutorial Mode)
extern void wizards_waltz_engine_stop(void); // Game Engine Stop
extern void wizards_waltz_cue_spawn(struct Cue *, struct WizardsWaltzCue *, u32 param); // Cue - Spawn
extern u32  wizards_waltz_cue_update(struct Cue *, struct WizardsWaltzCue *, u32 runningTime, u32 duration); // Cue - Update
extern void wizards_waltz_cue_despawn(struct Cue *, struct WizardsWaltzCue *); // Cue - Despawn
extern void wizards_waltz_cue_hit(struct Cue *, struct WizardsWaltzCue *, u32 pressed, u32 released); // Cue - Hit
extern void wizards_waltz_cue_barely(struct Cue *, struct WizardsWaltzCue *, u32 pressed, u32 released); // Cue - Barely
extern void wizards_waltz_cue_miss(struct Cue *, struct WizardsWaltzCue *); // Cue - Miss
extern void wizards_waltz_input_event(u32 pressed, u32 released); // Input Event
extern void wizards_waltz_common_beat_animation(void); // Common Event 0 (Beat Animation, Unimplemented)
extern void wizards_waltz_common_display_text(void); // Common Event 1 (Display Text, Unimplemented)
extern void wizards_waltz_common_init_tutorial(struct Scene *); // Common Event 2 (Init. Tutorial)
