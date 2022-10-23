#pragma once

#include "global.h"

#define TASK_FAILED_TO_START ((void *)-1)

enum TaskStatesEnum {
    TASK_STATE_INVALID,
    TASK_STATE_RUNNING,
    TASK_STATE_PAUSED
};

typedef void *(*TaskStartFunc)(void *);
typedef u32 (*TaskUpdateFunc)(void *);
typedef void (*TaskStopFunc)(void *);
typedef void (*TaskFinalFunc)();

struct TaskMethods {
    TaskStartFunc start;
    TaskUpdateFunc delayedUpdate;
    TaskUpdateFunc constantUpdate;
    TaskStopFunc stop;
};

extern void task_pool_init(void); // Initialise Task Pool
// extern void task_stop(struct Task *task, u32 incomplete); // Close Task
extern void task_pool_update_delayed(void); // Update Tasks (Delayed)
extern void task_pool_update_constant(void); // Update Tasks (Constant)
extern s32 task_start(u16 memID, const struct TaskMethods *methods, void *inputs, TaskFinalFunc onFinish, u32 onFinishArg); // Create New Task
extern void task_forced_stop(s32 poolID); // Close Task by Pool ID (consider complete)
extern void task_forced_cancel(s32 poolID); // Close Task by Pool ID (consider incomplete)
extern void *task_get_info(s32 poolID); // Get Task Static Data
extern void task_pool_cancel_all(void); // Close All Active Tasks
extern void task_pause(s32 poolID, u32 pause); // Pause Task by Pool ID
extern void task_pool_pause(u32 pause); // Pause Task Pool
extern u32 task_get_state(s32 poolID); // Get Task Running State by Pool ID
extern void task_run_after(s32 poolID, TaskFinalFunc onFinish, s32 onFinishArg); // Set Task onFinish Function by Pool ID
extern void task_delay(s32 poolID, u16 startDelay); // Set Task Delay Duration by Pool ID
extern void task_pool_forced_stop_id(u16 memID); // Close All Tasks by Mem. ID (consider complete)
extern void task_pool_forced_cancel_id(u16 memID); // Close All Tasks by Mem. ID (consider incomplete)
extern void task_pool_pause_id(u16 memID, u32 pause); // Pause/Unpause All Tasks by Mem. ID
