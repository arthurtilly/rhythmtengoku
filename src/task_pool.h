#pragma once

#include "global.h"

#define TASK_FAILED_TO_START ((void *)-1)

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

struct Task {
    u16 alive:1;
    u16 paused:15;
    u16 memID; // func_0800c3b8()
    const struct TaskMethods *methods;
    s32 poolID;
    void *info; // static data
    TaskFinalFunc onFinish;
    s32 onFinishArg;
    u16 startDelay;
};

extern void task_pool_init(void); // Initialise Task Pool
extern void func_08005a40(struct Task *task, u32 incomplete); // Close Task
extern void func_08005a84(void); // Update Tasks (Delayed)
extern void func_08005ad4(void); // Update Tasks (Constant)
extern s32 func_08005b20(u16 memID, const struct TaskMethods *methods, void *inputs, TaskFinalFunc onFinish, u32 onFinishArg); // Create New Task
extern void func_08005bc4(s32 poolID); // Close Task by Pool ID (consider complete)
extern void func_08005c00(s32 poolID); // Close Task by Pool ID (consider incomplete)
extern void *func_08005c3c(s32 poolID); // Get Task Static Data
extern void func_08005c78(void); // Close All Active Tasks
extern void func_08005ca8(s32 poolID, u32 pause); // Pause Task by Pool ID
extern void func_08005ce0(u32 pause); // Set D_03000900.unk4
extern u32 func_08005cec(s32 poolID); // Get Paused State by Pool ID
extern void func_08005d38(s32 poolID, TaskFinalFunc onFinish, s32 onFinishArg); // Set Task onFinish Function by Pool ID
extern void func_08005d74(s32 poolID, u16 startDelay); // Set Task Delay Duration by Pool ID
extern void func_08005db0(u16 memID); // Close All Tasks by Mem. ID (consider complete)
extern void func_08005de4(u16 memID); // Close All Tasks by Mem. ID (consider incomplete)
extern void func_08005e18(u16 memID, u32 pause); // Pause/Unpause All Tasks by Mem. ID
