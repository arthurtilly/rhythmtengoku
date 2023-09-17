#pragma once

#include "global.h"
#include "src/task_pool.h"

extern struct TaskMethods D_08936b84;
extern struct TaskMethods D_08936b94;
extern struct TaskMethods sprite_motion_task_indefinite;
extern struct TaskMethods sprite_motion_task_decelerate;
extern struct TaskMethods sprite_motion_task_accelerate;
extern struct TaskMethods sprite_motion_task_lerp;
extern struct TaskMethods sprite_motion_task_sine_osc;
extern struct TaskMethods sprite_motion_task_sine_vel;
extern struct TaskMethods sprite_motion_task_sine_wave;
extern struct TaskMethods integer_interp_task;
extern struct TaskMethods integer_alternator_task;
extern struct TaskMethods integer_incrementer_task;
extern struct TaskMethods integer_sine_interp_task;
extern struct TaskMethods lcd_blend_mode_interp_task;
extern char D_08936c64[];
extern struct TaskMethods D_08936c7c;
extern struct TaskMethods D_08936c8c;
extern struct TaskMethods D_08936c9c;

// ?
struct unk_struct_08006bb4_init {
    u32 pad0;
    u32 pad4;
    u32 pad8;
    u32 padC;
    u32 pad10;
    u32 pad14;
    u8 *unk18;
    u32 unk1C_1:12;
    void (*unk20)(struct unk_struct_08006bb4_init *, u32); // dunno type of second parameter
    u32 unk24; // unknown type
};
struct unk_struct_08006bb4 {
    struct unk_struct_08006bb4_init *unk0;
    u16 pad4;
    s16 unk6;
    s16 unk8;
    s16 unkA;
    s16 unkC;
};

// ?
struct unk_struct_08006ca4_init;
struct unk_struct_08006ca4;

// Sprite Motion - Indefinite Linear
struct SpriteMover_Indefinite_Inputs {
    s16 sprite;
    s16 startX;
    s16 startY;
    s8_8 velX;
    s8_8 velY;
};
struct SpriteMover_Indefinite {
    s16 sprite;
    s8_8 velX;
    s8_8 velY;
    s24_8 posX;
    s24_8 posY;
};

// Sprite Motion - Decelerate to Point
struct SpriteMover_Decelerate_Inputs {
    s16 sprite;
    s16 startX;
    s16 startY;
    s16 destX;
    s16 destY;
    s8_8 multiplier;
};
struct SpriteMover_Decelerate {
    s16 sprite;
    s16 destX;
    s16 destY;
    s8_8 multiplier;
    s24_8 dx;
    s24_8 dy;
};

// Sprite Motion - Accelerate to Point
struct SpriteMover_Accelerate_Inputs {
    s16 sprite;
    s16 startX;
    s16 startY;
    s16 destX;
    s16 destY;
    s8_8 velocity;
    s8_8 acceleration;
};
struct SpriteMover_Accelerate {
    s16 sprite;
    s16 startX;
    s16 startY;
    s16 dx;
    s16 dy;
    s24_8 distanceTravelled;
    s24_8 totalDistance;
    s24_8 velocity;
    s24_8 acceleration;
};

// Sprite Motion - LERP to Point
struct SpriteMover_TimedLinear_Inputs {
    s16 sprite;
    s16 startX;
    s16 startY;
    s16 destX;
    s16 destY;
    u16 totalFrames;
};
struct SpriteMover_TimedLinear {
    s16 sprite;
    s16 startX;
    s16 startY;
    s16 dx;
    s16 dy;
    u16 totalFrames;
    u16 framesPassed;
};

// Sprite Motion - Sinusoidal Oscillation
struct SpriteMover_SineOsc_Inputs {
    s16 sprite;
    u8 angle;
    s16 baseX;
    s16 baseY;
    s16 baseOffset;
    s16 amplitude;
    s16 waveStart;
    s16 waveEnd;
    u16 totalFrames;
};
struct SpriteMover_SineOsc {
    s16 sprite;
    u16 baseXPos;
    u16 baseYPos;
    s16 baseOffset;
    s16 amplitude;
    s16 waveStart;
    s16 waveEnd;
    u16 framesPassed;
    u16 totalFrames;
    u8 angle;
};

// Sprite Motion - Sinusoidal Velocity to Point
struct SpriteMover_SineVel_Inputs {
    s16 sprite;
    s16 startX;
    s16 startY;
    s16 destX;
    s16 destY;
    u16 unkA;
    u16 unkC;
    u16 totalFrames;
};
struct SpriteMover_SineVel {
    s16 sprite;
    u16 startXPos;
    u16 startYPos;
    s16 dx;
    s16 dy;
    s16 unkA;
    s16 unkC;
    u16 framesPassed;
    u16 totalFrames;
};

// Sprite Motion - Move Along Sine Wave
struct SpriteMover_SineWave_Inputs {
    s16 sprite;
    s16 startX;
    s16 startY;
    s16 destX;
    s16 destY;
    s16 amplitude;
    s16 totalFrames;
};
struct SpriteMover_SineWave {
    s16 sprite;
    s16 startX;
    s16 startY;
    s16 dx;
    s16 dy;
    s16 amplitude;
    u16 framesPassed;
    u16 totalFrames;
};

// Number Tasks
struct NumberInterpolator {
    u32 type:2;
    u32 duration:15;
    u32 runningTime:15;
    void *source;
    s32 initial;
    s32 target;
};

// Number Sine Interpolator Task
struct NumberSineInterpolator {
    u32 type:2;
    u32 angle:30;
    s24_8 speed;
    s32 value;
    void *source;
};

// LCD Special Effect (Blend) Controls Interpolator
struct BlendControlsInterpolator {
    u16 blendControls;
    u16 duration;
    u16 runningTime;
    u16 flip;
};

struct unk_struct_08008420_init;
struct unk_struct_08008420;

struct ScheduledFunctionTask;

struct TextureLoaderInputs;
struct TextureLoader;
