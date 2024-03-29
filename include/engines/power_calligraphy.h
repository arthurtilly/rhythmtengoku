#pragma once

#include "global.h"
#include "engines.h"

#include "games/power_calligraphy/graphics/power_calligraphy_graphics.h"

// Engine Macros/Enums:
enum PowerCalligraphyInputsEnum {
    POWER_CALLIGRAPHY_INPUT_ONORE1,
    POWER_CALLIGRAPHY_INPUT_CHIKARA1,
    POWER_CALLIGRAPHY_INPUT_CHIKARA2,
    POWER_CALLIGRAPHY_INPUT_SUN1,
    POWER_CALLIGRAPHY_INPUT_SUN2,
    POWER_CALLIGRAPHY_INPUT_KOKORO1,
    POWER_CALLIGRAPHY_INPUT_KOKORO2,
    POWER_CALLIGRAPHY_INPUT_KOKORO3,
    POWER_CALLIGRAPHY_INPUT_RE1,
    POWER_CALLIGRAPHY_INPUT_COMMA1,
    POWER_CALLIGRAPHY_INPUT_FACE1,
};


// Engine Types:
struct PowerCalligraphyEngineData {
    u8 pad[0x218];
};

struct PowerCalligraphyCue {
    /* add fields here */
};

struct PowerCalligraphyBrushMotion {
    s8 x;
    s8 y;
    s8 playback;
};


// Functions:
// extern ? func_080327d4(?);
// extern ? func_080328b8(?);
extern void func_08032a04(); // Engine Event 0C (?)
extern void func_08032a64(); // Engine Event 0B (?)
// extern ? func_08032bf8(?);
extern void func_08032c8c(); // Engine Event 0A (?)
// extern ? func_08032d34(?);
extern void power_calligraphy_init_gfx3(void); // Graphics Init. 3
extern void power_calligraphy_init_gfx2(void); // Graphics Init. 2
extern void power_calligraphy_init_gfx1(void); // Graphics Init. 1
extern void power_calligraphy_engine_start(u32 version); // Game Engine Start
extern void power_calligraphy_engine_event_stub(); // Engine Event 0D (STUB)
extern void func_0803312c(); // Engine Event 00 (?)
extern void func_0803316c(); // Engine Event 01 (?)
extern void func_080331c0(); // Engine Event 02 (?)
extern void func_080331dc(); // Engine Event 03 (?)
// extern ? func_08033370(?);
extern void func_080333dc(); // Engine Event 04 (?)
extern void func_080333e8(); // Engine Event 05 (?)
// extern ? func_08033468(?);
extern void func_080334d4(); // Engine Event 06 (?)
extern void func_080334ec(); // Engine Event 07 (?)
extern void func_08033558(); // Engine Event 08 (?)
extern void func_080335e8(); // Engine Event 09 (?)
extern void power_calligraphy_engine_update(void); // Game Engine Update
extern void power_calligraphy_engine_stop(void); // Game Engine Stop
// extern ? func_080336a0(?);
extern void power_calligraphy_cue_spawn(struct Cue *, struct PowerCalligraphyCue *, u32 param); // Cue - Spawn
extern u32  power_calligraphy_cue_update(struct Cue *, struct PowerCalligraphyCue *, u32 runningTime, u32 duration); // Cue - Update
extern void power_calligraphy_cue_despawn(struct Cue *, struct PowerCalligraphyCue *); // Cue - Despawn
extern void power_calligraphy_cue_hit(struct Cue *, struct PowerCalligraphyCue *, u32 pressed, u32 released); // Cue - Hit
extern void power_calligraphy_cue_barely(struct Cue *, struct PowerCalligraphyCue *, u32 pressed, u32 released); // Cue - Barely
extern void power_calligraphy_cue_miss(struct Cue *, struct PowerCalligraphyCue *); // Cue - Miss
extern void power_calligraphy_input_event(u32 pressed, u32 released); // Input Event
extern void power_calligraphy_common_beat_animation(void); // Common Event 0 (Beat Animation, Unimplemented)
extern void power_calligraphy_common_display_text(const char *); // Common Event 1 (Display Text)
extern void power_calligraphy_common_init_tutorial(struct Scene *); // Common Event 2 (Init. Tutorial)
