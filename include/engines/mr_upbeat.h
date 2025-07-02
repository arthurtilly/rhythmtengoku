#pragma once

#include "global.h"
#include "engines.h"

// shared?
#include "games/metronome/graphics/metronome_graphics.h"

// Engine Types:
struct MrUpbeatEngineData {
    u8 pad[0x54];
};

struct MrUpbeatCue {
    /* add fields here */
};


// Engine Data:
extern const char D_0805a674[];
extern const char D_0805a684[];


// Engine Definition Data:
extern struct Animation *mr_upbeat_trip_anim[];
extern struct Animation *mr_upbeat_game_over_anim[][4];
extern struct CompressedData *mr_upbeat_buffered_textures[];
extern struct GraphicsTable mr_upbeat_gfx_table[];


// Functions:
// extern ? func_08034b14(?);
// extern ? func_08034bf4(?);
extern void func_08034d6c(); // Engine Event 0x03 (?)
extern void func_08034db0(); // Engine Event 0x04 (?)
// extern ? func_08034dd0(?);
// extern ? func_08034e40(?);
extern void func_08034e84(); // Engine Event 0x02 (?)
// extern ? func_08034eb4(?);
extern void func_08034f18(); // Engine Event 0x00 (?)
// extern ? func_08034f64(?);
// extern ? func_08034ff4(?);
// extern ? func_08035094(?);
// extern ? func_08035168(?);
extern void func_0803516c(); // Engine Event 0x05 (?)
extern void mr_upbeat_init_gfx3(void); // Graphics Init. 3
extern void mr_upbeat_init_gfx2(void); // Graphics Init. 2
extern void mr_upbeat_init_gfx1(void); // Graphics Init. 1
extern void mr_upbeat_engine_start(u32 version); // Game Engine Start
extern void mr_upbeat_engine_event_stub(void); // Engine Event 0x06 (STUB)
extern void func_08035314(); // Engine Event 0x01 (?)
extern void mr_upbeat_engine_update(void); // Game Engine Update
extern void mr_upbeat_engine_stop(void); // Game Engine Stop
extern void mr_upbeat_cue_spawn(struct Cue *, struct MrUpbeatCue *, u32 unused); // Cue - Spawn
extern u32  mr_upbeat_cue_update(struct Cue *, struct MrUpbeatCue *, u32 runningTime, u32 duration); // Cue - Update
extern void mr_upbeat_cue_despawn(struct Cue *, struct MrUpbeatCue *); // Cue - Despawn
// extern ? func_08035358(?);
extern void mr_upbeat_cue_hit(struct Cue *, struct MrUpbeatCue *, u32 pressed, u32 released); // Cue - Hit
extern void mr_upbeat_cue_barely(struct Cue *, struct MrUpbeatCue *, u32 pressed, u32 released); // Cue - Barely
extern void mr_upbeat_cue_miss(struct Cue *, struct MrUpbeatCue *); // Cue - Miss
extern void mr_upbeat_input_event(u32 pressed, u32 released); // Input Event
extern void mr_upbeat_common_beat_animation(void); // Common Event 0 (Beat Animation, Unimplemented)
extern void mr_upbeat_common_display_text(void); // Common Event 1 (Display Text, Unimplemented)
extern void mr_upbeat_common_init_tutorial(void); // Common Event 2 (Init. Tutorial, Unimplemented)
