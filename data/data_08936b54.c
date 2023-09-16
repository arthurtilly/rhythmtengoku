#include "data_08936b54.h"
#include "src/code_08003980.h"
#include "src/code_080068f8.h"
#include "src/code_08007468.h"

// ?
struct TaskMethods D_08936b84 = {
    (TaskStartFunc)func_08006bb4,
    (TaskUpdateFunc)func_08006c08,
    NULL,
    NULL
};

// ?
struct TaskMethods D_08936b94 = {
    (TaskStartFunc)func_08006ca4,
    (TaskUpdateFunc)func_08006ce8,
    NULL,
    NULL
};

// Sprite Motion - Indefinite Linear
struct TaskMethods sprite_motion_task_indefinite = {
    (TaskStartFunc)sprite_motion_task_indefinite_start,
    (TaskUpdateFunc)sprite_motion_task_indefinite_update,
    NULL,
    NULL
};

// Sprite Motion - Decelerate to Point
struct TaskMethods sprite_motion_task_decelerate = {
    (TaskStartFunc)sprite_motion_task_decelerate_start,
    (TaskUpdateFunc)sprite_motion_task_decelerate_update,
    NULL,
    NULL
};

// Sprite Motion - Accelerate to Point
struct TaskMethods sprite_motion_task_accelerate = {
    (TaskStartFunc)sprite_motion_task_accelerate_start,
    (TaskUpdateFunc)sprite_motion_task_accelerate_update,
    NULL,
    NULL
};

// Sprite Motion - LERP to Point
struct TaskMethods sprite_motion_task_lerp = {
    (TaskStartFunc)sprite_motion_task_lerp_start,
    (TaskUpdateFunc)sprite_motion_task_lerp_update,
    NULL,
    NULL
};

// Sprite Motion - Sinusoidal Oscillation
struct TaskMethods sprite_motion_task_sine_osc = {
    (TaskStartFunc)sprite_motion_task_sine_osc_start,
    (TaskUpdateFunc)sprite_motion_task_sine_osc_update,
    NULL,
    NULL
};

// Sprite Motion - Sinusoidal Velocity to Point
struct TaskMethods sprite_motion_task_sine_vel = {
    (TaskStartFunc)sprite_motion_task_sine_vel_start,
    (TaskUpdateFunc)sprite_motion_task_sine_vel_update,
    NULL,
    NULL
};

// Sprite Motion - Move Along Sine Wave
struct TaskMethods sprite_motion_task_sine_wave = {
    (TaskStartFunc)sprite_motion_task_sine_wave_start,
    (TaskUpdateFunc)sprite_motion_task_sine_wave_update,
    NULL,
    NULL
};

// Number Task - Interpolate Linearly
struct TaskMethods D_08936c14 = {
    (TaskStartFunc)func_08007bb8,
    (TaskUpdateFunc)func_08007c30,
    NULL,
    NULL
};

// Number Task - Swap Endlessly
struct TaskMethods D_08936c24 = {
    (TaskStartFunc)func_08007ca8,
    (TaskUpdateFunc)func_08007d20,
    NULL,
    NULL
};

// Number Task - Increment Endlessly
struct TaskMethods D_08936c34 = {
    (TaskStartFunc)func_08007d88,
    (TaskUpdateFunc)func_08007e00,
    NULL,
    NULL
};

// Number Sine Interpolator Task
struct TaskMethods D_08936c44 = {
    (TaskStartFunc)func_08007e7c,
    (TaskUpdateFunc)func_08007ef8,
    NULL,
    NULL
};

// Interpolate LCD Special Effects (Blend Controls)
struct TaskMethods D_08936c54 = {
    (TaskStartFunc)init_lcd_blend_mode_interpolator,
    (TaskUpdateFunc)update_lcd_blend_mode_interpolator,
    NULL,
    NULL
};

// Fullwidth Number Characters
char D_08936c64[] = "‚O‚P‚Q‚R‚S‚T‚U‚V‚W‚X";

// ?
struct TaskMethods D_08936c7c = {
    (TaskStartFunc)func_08008420,
    (TaskUpdateFunc)func_08008464,
    NULL,
    NULL
};

// Delayed Function Call
struct TaskMethods D_08936c8c = {
    (TaskStartFunc)init_scheduled_function_task,
    (TaskUpdateFunc)update_scheduled_function_task,
    NULL,
    NULL
};

// Buffered Texture Loader
struct TaskMethods D_08936c9c = {
    (TaskStartFunc)init_texture_loader_task,
    (TaskUpdateFunc)update_texture_loader_task,
    NULL,
    NULL
};
