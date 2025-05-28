#pragma once

#include "global.h"
#include "engines.h"

#include "games/samurai_slice/graphics/samurai_slice_graphics.h"

// Engine Macros/Enums:
enum SamuraiSliceVersionsEnum {
    SAMURAI_SLICE_VER_0,
    SAMURAI_SLICE_VER_REMIX
};


// Engine Types:
struct SamuraiSliceEngineData {
    u8 pad[0x1e4];
};

struct SamuraiSliceCue {
    /* add fields here */
};

struct SamuraiSlice_0805a5d4 {
    struct Animation *anim;
    u32 unk4;
    u32 unk8;
};


// Engine Data:
extern const char D_0805a5d0[];
extern const struct SamuraiSlice_0805a5d4 D_0805a5d4[];


// Engine Definition Data:
extern struct CompressedData *samurai_slice_buffered_textures[];
extern struct GraphicsTable samurai_slice_gfx_table[];
extern struct Animation *samurai_slicing_anim[];
extern struct Animation *samurai_beat_anim[];
extern struct Animation *D_089e4928[];
extern struct Animation *D_089e4940[];


// Functions:
extern void samurai_slice_init_gfx3(void); // Graphics Init. 3
extern void samurai_slice_init_gfx2(void); // Graphics Init. 2
extern void samurai_slice_init_gfx1(void); // Graphics Init. 1
extern void samurai_slice_engine_start(u32 version); // Game Engine Start
// extern ? func_08030e84(?);
extern void samurai_slice_engine_event_stub(void); // Engine Event 00 (STUB)
extern void func_08030f04(); // Engine Event 01 (?)
extern void func_08030f34(); // Engine Event 06 (?)
extern void samurai_slice_engine_update(void); // Game Engine Update
extern void func_0803113c(); // Engine Event 05 (?)
extern void func_0803118c(); // Engine Event 09 (?)
extern void samurai_slice_engine_stop(void); // Game Engine Stop
extern void samurai_slice_cue_spawn(struct Cue *, struct SamuraiSliceCue, u32 isSecondSlice); // Cue - Spawn
extern u32 samurai_slice_cue_update(struct Cue *, struct SamuraiSliceCue, u32 runningTime, u32 duration); // Cue - Update
extern void samurai_slice_cue_despawn(struct Cue *, struct SamuraiSliceCue); // Cue - Despawn
extern void samurai_slice_cue_hit(struct Cue *, struct SamuraiSliceCue, u32 pressed, u32 released); // Cue - Hit
extern void samurai_slice_cue_barely(struct Cue *, struct SamuraiSliceCue, u32 pressed, u32 released); // Cue - Barely
extern void samurai_slice_cue_miss(struct Cue *, struct SamuraiSliceCue); // Cue - Miss
// extern ? func_080316ec(?);
extern void func_08031770(); // Engine Event 08 (?)
extern void samurai_slice_input_event(u32 pressed, u32 released); // Input Event
// extern ? func_080317f4(?);
extern void samurai_slice_common_beat_animation(); // Common Event 0 (Beat Animation)
extern void samurai_slice_common_display_text(); // Common Event 1 (Display Text, Unimplemented)
// extern ? func_080319b4(?);
// extern ? func_08031a6c(?);
extern void func_08031bc0(); // Engine Event 02 (?)
extern void func_08031c54(); // Engine Event 04 (?)
// extern ? func_08031c68(?);
// extern ? func_08031c94(?);
// extern ? func_08032070(?);
// extern ? func_080320c8(?);
// extern ? func_080321c8(?);
// extern ? func_08032228(?);
// extern ? func_08032298(?);
// extern ? func_08032330(?);
extern void func_08032430(); // Engine Event 03 (?)
// extern ? func_08032478(?);
extern void func_080324a4(); // Engine Event 07 (?)
// extern ? func_080324b8(?);
// extern ? func_08032510(?);
// extern ? func_08032708(?);
// extern ? func_080327a4(?);
