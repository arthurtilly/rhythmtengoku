#pragma once

#include "global.h"
#include "engines.h"

#include "games/sick_beats/graphics/sick_beats_graphics.h"

// Engine Types:
struct SickBeatsInfo {
    /* add fields here */
};

struct SickBeatsCue {
    /* add fields here */
};

struct VirusAction {
    struct Animation *anim;
    s16 x;
    s16 y;
    s8 playbackArg1;
    s8 playbackArg2;
    u16 playbackArg3;
    u32 unkC;
    s16 rotation;
};


// Engine Macros/Enums:
enum SickBeatsVersionsEnum {
    ENGINE_VER_SICK_BEATS,
    ENGINE_VER_SICK_BEATS_ENDLESS
};


// Engine Definition Data:
extern s16 sick_beats_particle_sfx_pitch[];
extern struct Animation *sick_beats_microbe_event_anim[];
extern u16 sick_beats_microbe_event_durations[];
extern struct CompressedGraphics *sick_beats_buffered_textures[];
extern struct GraphicsTable gfx_table_sick_beats[];
extern struct VirusAction sick_beats_virus_actions[];
extern u8 D_089e92f0[];
extern struct Animation *sick_beats_doctor_anim[];


// Functions:
// extern ? func_08042864(?);
// extern ? func_08042934(?);
// extern ? func_0804299c(?);
// extern ? func_080429e8(?);
// extern ? func_08042b30(?);
extern void func_08042b58(); // Engine Event 0x06 (?)
// extern ? func_08042b88(?);
// extern ? func_08042c84(?);
// extern ? func_08042cec(?);
// extern ? func_08042d4c(?);
// extern ? func_08042d74(?);
// extern ? func_08042de8(?);
// extern ? func_08042e80(?);
extern void func_08042ea8(); // Engine Event 0x00 (?)
extern void func_08042ecc(); // Engine Event 0x01 (?)
extern void func_08042f44(); // Engine Event 0x02 (?)
extern void func_08042f58(); // Engine Event 0x03 (?)
// extern ? func_08042f6c(?);
// extern ? func_08043064(?);
// extern ? func_08043124(?);
// extern ? func_0804317c(?);
// extern ? func_080431c4(?);
// extern ? func_080432d0(?);
// extern ? func_080432d8(?);
extern void sick_beats_init_gfx3(void); // Graphics Init. 3
extern void sick_beats_init_gfx2(void); // Graphics Init. 2
extern void sick_beats_init_gfx1(void); // Graphics Init. 1
extern void sick_beats_engine_start(u32 version); // Game Engine Start
extern void sick_beats_engine_event_stub(void); // Engine Event 0x07 (STUB)
// extern ? func_08043534(?);
extern void sick_beats_engine_update(void); // Game Engine Update
// extern ? func_080435e8(?);
extern void func_08043634(); // Engine Event 0x04 (?)
extern void func_08043648(); // Engine Event 0x05 (?)
extern void sick_beats_engine_stop(void); // Game Engine Stop
// extern ? func_080436a8(?);
extern void sick_beats_cue_spawn(struct Cue *, struct SickBeatsCue *, u32 unused); // Cue - Spawn
extern u32  sick_beats_cue_update(struct Cue *, struct SickBeatsCue *, u32 runningTime, u32 duration); // Cue - Update
extern void sick_beats_cue_despawn(struct Cue *, struct SickBeatsCue *); // Cue - Despawn
// extern ? func_08043a2c(?);
// extern ? func_08043a38(?);
extern void sick_beats_cue_hit(struct Cue *, struct SickBeatsCue *, u32 pressed, u32 released); // Cue - Hit
extern void sick_beats_cue_barely(struct Cue *, struct SickBeatsCue *, u32 pressed, u32 released); // Cue - Barely
extern void sick_beats_cue_miss(struct Cue *, struct SickBeatsCue *); // Cue - Miss
extern void sick_beats_input_event(u32 pressed, u32 released); // Input Event
extern void sick_beats_common_beat_animation(void); // Common Event 0 (Beat Animation)
extern void sick_beats_common_display_text(void); // Common Event 1 (Display Text, Unimplemented)
