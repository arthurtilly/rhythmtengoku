#pragma once

#include "global.h"
#include "engines.h"

#include "games/tap_trial/graphics/tap_trial_graphics.h"

// Engine Macros/Enums:
enum TapTrialVersionsEnum {
    ENGINE_VER_TAP_TRIAL,
    ENGINE_VER_TAP_REMIX_8,
    ENGINE_VER_TAP_REMIX_7,
    ENGINE_VER_TAP_TRIAL_2,
    ENGINE_VER_TAP_REMIX_5
};

enum TapTrialAnimationsEnum {
    TAP_TRIAL_ANIM_GIRL_1CUE,
    TAP_TRIAL_ANIM_GIRL_2CUE,
    TAP_TRIAL_ANIM_GIRL_1STEP,
    TAP_TRIAL_ANIM_GIRL_2STEP,
    TAP_TRIAL_ANIM_GIRL_3STEP_L,
    TAP_TRIAL_ANIM_GIRL_3STEP_R,
    TAP_TRIAL_ANIM_GIRL_3CUE,
    TAP_TRIAL_ANIM_GIRL_CROUCH,
    TAP_TRIAL_ANIM_GIRL_JUMP,
    TAP_TRIAL_ANIM_GIRL_POSE_STEP,
    TAP_TRIAL_ANIM_GIRL_FALL,
    TAP_TRIAL_ANIM_GIRL_CROUCH_STEP,
    TAP_TRIAL_ANIM_GIRL_BEAT,
    TAP_TRIAL_ANIM_GIRL_MISS_CROUCH,
    TAP_TRIAL_ANIM_GIRL_MISS_POSE,
    TAP_TRIAL_ANIM_MONKEY_1CUE,
    TAP_TRIAL_ANIM_MONKEY_2CUE,
    TAP_TRIAL_ANIM_MONKEY_1STEP,
    TAP_TRIAL_ANIM_MONKEY_2STEP,
    TAP_TRIAL_ANIM_MONKEY_3STEP_L,
    TAP_TRIAL_ANIM_MONKEY_3STEP_R,
    TAP_TRIAL_ANIM_MONKEY_3CUE,
    TAP_TRIAL_ANIM_MONKEY_CROUCH,
    TAP_TRIAL_ANIM_MONKEY_JUMP,
    TAP_TRIAL_ANIM_MONKEY_POSE_STEP,
    TAP_TRIAL_ANIM_MONKEY_FALL,
    TAP_TRIAL_ANIM_MONKEY_CROUCH_STEP,
    TAP_TRIAL_ANIM_MONKEY_BEAT,
    TAP_TRIAL_ANIM_SHADOW,
    TAP_TRIAL_ANIM_GIRAFFE_BEDAZZLED,
    TAP_TRIAL_ANIM_GIRAFFE_NEUTRAL,
    TAP_TRIAL_ANIM_GIRAFFE_DISAPPOINTED
};


// Engine Types:
struct TapTrialEngineData {
    u8 pad[0x398];
};

struct TapTrialCue {
    s32 unused;
};

struct TapTrialAction {
    s8 animID;
    s8 playbackArg1;
    s8 playbackArg2;
    s8 unk3;
    s8 playbackArg3;
    u16 playbackArg4;
    u8 duration;
    struct SongHeader *sfx;
    u16 sfxVolume;
    s16 sfxPitch;
};


// Engine Data:
extern const char D_0805a8bc[];


// Engine Definition Data:
extern struct Animation **tap_trial_anim_table[];
extern struct TapTrialAction *tap_trial_girl_action_table[];
extern struct TapTrialAction *tap_trial_monkey_action_table[];
extern struct CompressedData *tap_trial_buffered_textures[];
extern struct GraphicsTable *tap_trial_gfx_tables[];
extern const char *D_089e8054[];
extern s8 D_089e8068[];


// Functions:
extern struct Animation *tap_trial_get_anim(u32 anim); // Get Animation
extern void tap_trial_play_girl_action(u32 action); // Play Girl Action
extern void tap_trial_play_monkey_action(u32 action); // Engine Event 0x00 (Play Monkey Action)
extern void tap_trial_init_gfx3(void); // Graphics Init. 3
extern void tap_trial_init_gfx2(void); // Graphics Init. 2
extern void tap_trial_init_gfx1(void); // Graphics Init. 1
// extern ? func_0803dd84(?);
extern void tap_trial_engine_start(u32 version); // Game Engine Start
extern void tap_trial_engine_event_stub(void); // Engine Event 0x0F (STUB)
// extern ? func_0803e08c(?);
extern void func_0803e0bc(); // Engine Event 0x01 (?)
extern void func_0803e0f8(); // Engine Event 0x02 (?)
extern void func_0803e10c(); // Engine Event 0x03 (?)
extern void func_0803e160(); // Engine Event 0x05 (?)
extern void func_0803e1a4(); // Engine Event 0x06 (?)
extern void func_0803e208(); // Engine Event 0x07 (?)
extern void func_0803e258(); // Engine Event 0x04 (?)
extern void func_0803e2e0(); // Engine Event 0x09 (?)
extern void func_0803e2f4(); // Engine Event 0x0A (?)
extern void func_0803e310(); // Engine Event 0x0B (?)
extern void func_0803e324(); // Engine Event 0x0C (?)
extern void func_0803e338(); // Engine Event 0x0D (?)
extern void func_0803e354(); // Engine Event 0x0E (?)
// extern ? func_0803e368(?);
// extern ? func_0803e420(?);
extern void func_0803e448(); // Engine Event 0x08 (?)
// extern ? func_0803e44c(?);
// extern ? func_0803e48c(?);
// extern ? func_0803e4a4(?);
// extern ? func_0803e4bc(?);
extern void tap_trial_engine_update(void); // Game Engine Update
extern void tap_trial_engine_stop(void); // Game Engine Stop
extern void tap_trial_cue_spawn(struct Cue *, struct TapTrialCue *, u32 param); // Cue - Spawn
extern u32  tap_trial_cue_update(struct Cue *, struct TapTrialCue *, u32 runningTime, u32 duration); // Cue - Update
extern void tap_trial_cue_despawn(struct Cue *, struct TapTrialCue *); // Cue - Despawn
extern void tap_trial_cue_hit(struct Cue *, struct TapTrialCue *, u32 pressed, u32 released); // Cue - Hit
extern void tap_trial_cue_barely(struct Cue *, struct TapTrialCue *, u32 pressed, u32 released); // Cue - Barely
extern void tap_trial_cue_miss(struct Cue *, struct TapTrialCue *); // Cue - Miss
// extern ? func_0803e644(?);
extern void tap_trial_input_event(u32 pressed, u32 released); // Input Event
extern void tap_trial_common_beat_animation(void); // Common Event 0 (Beat Animation)
extern void tap_trial_common_display_text(const char *); // Common Event 1 (Display Text)
