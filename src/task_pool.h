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

extern void task_pool_init(void);
extern void task_pool_update_delayed(void);
extern void task_pool_update_constant(void);
extern s32 start_new_task(u16 memID, const struct TaskMethods *methods, void *inputs, TaskFinalFunc onFinish, u32 onFinishArg);
extern void force_stop_task(s32 poolID); // Close (considered complete)
extern void force_cancel_task(s32 poolID); // Close (considered incomplete)
extern void *get_task_info(s32 poolID);
extern void task_pool_cancel_all(void);
extern void pause_task(s32 poolID, u32 pause);
extern void task_pool_pause(u32 pause);
extern u32 get_task_state(s32 poolID);
extern void run_func_after_task(s32 poolID, TaskFinalFunc onFinish, s32 onFinishArg);
extern void delay_task(s32 poolID, u16 startDelay);
extern void task_pool_force_stop_id(u16 memID); // Close by Mem. ID (consider complete)
extern void task_pool_force_cancel_id(u16 memID); // Close by Mem. ID (consider incomplete)
extern void task_pool_pause_id(u16 memID, u32 pause); // Pause/Unpause by Mem. ID
