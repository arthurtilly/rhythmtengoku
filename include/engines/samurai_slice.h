#pragma once

#include "global.h"
#include "engines.h"

// Engine Types:
struct SamuraiSliceInfo {
    /* add fields here */
};

struct SamuraiSliceCue {
    /* add fields here */
};


// Engine Macros/Enums:
enum SamuraiSliceVersionsEnum {
    SAMURAI_SLICE_VER_0,
    SAMURAI_SLICE_VER_REMIX
};


// OAM Animations:
extern const struct Animation anim_samurai_beat_1[];
extern const struct Animation anim_samurai_beat_2[];
extern const struct Animation anim_samurai_beat_3[];
extern const struct Animation anim_samurai_slice_1[];
extern const struct Animation anim_samurai_slice_2[];
extern const struct Animation anim_samurai_slice_3[];
extern const struct Animation anim_small_demon_hop[];
extern const struct Animation anim_med_demon_hop[];
extern const struct Animation anim_winged_demon_fly[];
extern const struct Animation anim_propeller_demon_hover[];
extern const struct Animation anim_large_demon_walk[];


// Palettes:


// Sound Effects:
extern const struct SequenceData s_kuma_sakana_seqData;
extern const struct SequenceData s_f_iai_cut_seqData;
extern const struct SequenceData s_iai_miss_seqData;
extern const struct SequenceData s_f_iai_cut2_seqData;


// Engine Data:


// Engine Definition Data:
extern const struct CompressedGraphics *const samurai_slice_buffered_textures[];
extern const struct GraphicsTable samurai_slice_gfx_table[];
extern const struct Animation *const samurai_slicing_anim[];
extern const struct Animation *const samurai_beat_anim[];


// Functions:
// extern ? func_08030c48(?);
// extern ? func_08030c58(?);
// extern ? func_08030c88(?);
extern void samurai_slice_engine_start(u32 version); // Game Engine Start
// extern ? func_08030e84(?);
extern void func_08030f00(void); // Engine Event 00 (STUB)
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
