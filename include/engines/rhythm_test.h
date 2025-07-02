#pragma once

#include "global.h"
#include "engines.h"

#include "games/rhythm_test/graphics/rhythm_test_graphics.h"

// Engine Types:
struct RhythmTestEngineData {
    u8 pad[0x3e8];
};

struct RhythmTestCue {
    /* add fields here */
};


// Engine Definition Data:
extern struct DrumTechNote *rhythm_test_trick_drum_seq[];
extern struct CompressedData *rhythm_test_buffered_textures[];
extern struct GraphicsTable rhythm_test_gfx_table[];


// Functions:
extern void func_08033960(); // Engine Event 05 (?)
// extern ? func_0803397c(?);
// extern ? func_080339bc(?);
extern void func_08033b24(); // Engine Event 01 (?)
extern void func_08033b34(); // Engine Event 02 (?)
// extern ? func_08033b48(?);
extern void func_08033b9c(); // Engine Event 03 (?)
extern void rhythm_test_init_gfx3(void); // Graphics Init. 3
extern void rhythm_test_init_gfx2(void); // Graphics Init. 2
extern void rhythm_test_init_gfx1(void); // Graphics Init. 1
extern void rhythm_test_engine_start(u32 version); // Game Engine Start
extern void rhythm_test_engine_event_stub(); // Engine Event 07 (STUB)
extern void func_08033e00(); // Engine Event 00 (?)
// extern ? func_08033f08(?);
extern void func_08033f28(); // Engine Event 04 (?)
extern void func_08033f80(); // Engine Event 06 (?)
extern void rhythm_test_engine_update(void); // Game Engine Update
extern void rhythm_test_engine_stop(void); // Game Engine Stop
extern void rhythm_test_cue_spawn(struct Cue *, struct RhythmTestCue *, u32 unused); // Cue - Spawn
extern u32  rhythm_test_cue_update(struct Cue *, struct RhythmTestCue *, u32 runningTime, u32 duration); // Cue - Update
extern void rhythm_test_cue_despawn(struct Cue *, struct RhythmTestCue *); // Cue - Despawn
extern void rhythm_test_cue_hit(struct Cue *, struct RhythmTestCue *, u32 pressed, u32 released); // Cue - Hit
extern void rhythm_test_cue_barely(struct Cue *, struct RhythmTestCue *, u32 pressed, u32 released); // Cue - Barely
extern void rhythm_test_cue_miss(struct Cue *, struct RhythmTestCue *); // Cue - Miss
// extern ? func_080340a4(?);
extern void rhythm_test_input_event(u32 pressed, u32 released); // Input Event
extern void rhythm_test_common_beat_animation(void); // Common Event 0 (Beat Animation)
extern void rhythm_test_common_display_text(void); // Common Event 1 (Display Text, Unimplemented)
extern void rhythm_test_common_init_tutorial(void); // Common Event 2 (Init. Tutorial, Unimplemented)
