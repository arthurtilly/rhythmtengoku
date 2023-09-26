#include "task_pool.h"

#define TASK_POOL_DEFAULT_ID -1
#define TASK_POOL_SIZE 48

struct Task {
    u16 alive:1;
    u16 paused:15;
    u16 memID; // get_current_mem_id()
    const struct TaskMethods *methods;
    s32 poolID;
    void *info; // static data
    TaskFinalFunc onFinish;
    s32 onFinishArg;
    u16 startDelay;
};

static struct TaskPool {
    u32 nextID;
    u32 paused;
    struct Task tasks[TASK_POOL_SIZE];
} sTaskPool;


/* TASK POOL */


// Initialise Task Pool
void task_pool_init(void) {
    u32 i;

    sTaskPool.nextID = 0;

    for (i = 0; i < TASK_POOL_SIZE; i++) {
        sTaskPool.tasks[i].alive = FALSE;
        sTaskPool.tasks[i].poolID = TASK_POOL_DEFAULT_ID;
    }
}


// Close Task
void task_stop(struct Task *task, u32 incomplete) {
    if (task->methods->stop != NULL) {
        task->methods->stop(task->info);
    }
    if (!incomplete && (task->onFinish != NULL)) {
        task->onFinish(task->onFinishArg);
    }
    if (task->info != NULL) {
        mem_heap_dealloc(task->info);
    }
    task->alive = FALSE;
    task->poolID = TASK_POOL_DEFAULT_ID;
}


// Update Tasks (Delayed)
void task_pool_update_delayed(void) {
    struct Task *task;
    u32 i, completed;

    if (sTaskPool.paused) return;

    for (i = 0, task = sTaskPool.tasks; i < TASK_POOL_SIZE; i++, task++) {
        if (task->alive && !task->paused) {
            if (task->methods->delayedUpdate != NULL) {
                if (task->startDelay != 0) {
                    task->startDelay--;
                    continue;
                }
                completed = task->methods->delayedUpdate(task->info);
                if (completed) {
                    task_stop(task, FALSE);
                }
            }
        }
    }
}


// Update Tasks (Constant)
void task_pool_update_constant(void) {
    struct Task *task;
    u32 i, completed;

    if (sTaskPool.paused) return;

    for (i = 0, task = sTaskPool.tasks; i < TASK_POOL_SIZE; i++, task++) {
        if (task->alive && !task->paused) {
            if (task->methods->constantUpdate != NULL) {
                completed = task->methods->constantUpdate(task->info);
                if (completed) {
                    task_stop(task, FALSE);
                }
            }
        }
    }
}


// Create New Task
s32 start_new_task(u16 memID, const struct TaskMethods *methods, void *inputs, TaskFinalFunc onFinish, u32 onFinishArg) {
    struct Task *task;
    void *info;
    u32 i;

    for (i = 0, task = sTaskPool.tasks; i < TASK_POOL_SIZE; i++, task++) {
        if (!task->alive) break;
    }
    if (i >= TASK_POOL_SIZE) {
        return TASK_POOL_DEFAULT_ID;
    }

    if (methods->start != NULL) {
        info = methods->start(inputs);
    } else {
        info = NULL;
    }

    task->info = info;
    if (info == TASK_FAILED_TO_START) {
        return TASK_POOL_DEFAULT_ID;
    }

    task->alive = TRUE;
    task->paused = FALSE;
    task->methods = methods;
    task->poolID = sTaskPool.nextID;
    task->memID = memID;
    task->onFinish = onFinish;
    task->onFinishArg = onFinishArg;
    task->startDelay = 0;
    sTaskPool.nextID = (sTaskPool.nextID + 1) & 0x7fffffff;
    return task->poolID;
}


// Close Task by Pool ID (consider complete)
void force_stop_task(s32 poolID) {
    struct Task *task;
    u32 i;

    if (poolID < 0) return;

    for (i = 0, task = sTaskPool.tasks; i < TASK_POOL_SIZE; i++, task++) {
        if (task->poolID == poolID) break;
    }
    if (i < TASK_POOL_SIZE) {
        if (task->alive) {
            task_stop(task, FALSE);
        }
    }
}


// Close Task by Pool ID (consider incomplete)
void force_cancel_task(s32 poolID) {
    struct Task *task;
    u32 i;

    if (poolID < 0) return;

    for (i = 0, task = sTaskPool.tasks; i < TASK_POOL_SIZE; i++, task++) {
        if (task->poolID == poolID) break;
    }
    if (i < TASK_POOL_SIZE) {
        if (task->alive) {
            task_stop(task, TRUE);
        }
    }
}


// Get Task Static Data
void *get_task_info(s32 poolID) {
    struct Task *task;
    u32 i;

    if (poolID < 0) return NULL;

    for (i = 0, task = sTaskPool.tasks; i < TASK_POOL_SIZE; i++, task++) {
        if (task->poolID == poolID) break;
    }
    if (i < TASK_POOL_SIZE) {
        if (task->alive) {
            return task->info;
        }
    }
    return NULL;
}


// Close All Active Tasks
void task_pool_cancel_all(void) {
    struct Task *task;
    u32 i;

    for (i = 0, task = sTaskPool.tasks; i < TASK_POOL_SIZE; i++, task++) {
        if (task->alive && (task->poolID >= 0)) {
            task_stop(task, TRUE);
        }
    }
}


// Pause Task by Pool ID
void pause_task(s32 poolID, u32 pause) {
    struct Task *task;
    u32 i;

    if (poolID < 0) return;

    for (i = 0, task = sTaskPool.tasks; i < TASK_POOL_SIZE; i++, task++) {
        if (task->poolID == poolID) {
            task->paused = pause;
            return;
        }
    }
}


// Pause Task Pool
void task_pool_pause(u32 pause) {
    sTaskPool.paused = pause;
}


// Get Task Paused State by Pool ID
u32 get_task_state(s32 poolID) {
    struct Task *task;
    u32 i;

    if (poolID < 0) return TASK_STATE_INVALID;

    for (i = 0, task = sTaskPool.tasks; i < TASK_POOL_SIZE; i++, task++) {
        if (task->alive && (task->poolID == poolID)) {
            if (task->paused) {
                return TASK_STATE_PAUSED;
            } else {
                return TASK_STATE_RUNNING;
            }
        }
    }

    return TASK_STATE_INVALID;
}


// Set Task onFinish Function by Pool ID
void run_func_after_task(s32 poolID, TaskFinalFunc onFinish, s32 onFinishArg) {
    struct Task *task;
    u32 i;

    if (poolID < 0) return;

    for (i = 0, task = sTaskPool.tasks; i < TASK_POOL_SIZE; i++, task++) {
        if (task->alive && (task->poolID == poolID)) {
            task->onFinish = onFinish;
            task->onFinishArg = onFinishArg;
            return;
        }
    }
}


// Set Task Delay Duration by Pool ID
void delay_task(s32 poolID, u16 startDelay) {
    struct Task *task;
    u32 i;

    if (poolID < 0) return;

    for (i = 0, task = sTaskPool.tasks; i < TASK_POOL_SIZE; i++, task++) {
        if (task->alive && (task->poolID == poolID)) {
            task->startDelay = startDelay;
            return;
        }
    }
}


// Close All Tasks by Mem. ID (consider complete)
void task_pool_force_stop_id(u16 memID) {
    struct Task *task;
    u32 i;

    for (i = 0, task = sTaskPool.tasks; i < TASK_POOL_SIZE; i++, task++) {
        if (task->alive && (task->memID == memID)) {
            task_stop(task, FALSE);
        }
    }
}


// Close All Tasks by Mem. ID (consider incomplete)
void task_pool_force_cancel_id(u16 memID) {
    struct Task *task;
    u32 i;

    for (i = 0, task = sTaskPool.tasks; i < TASK_POOL_SIZE; i++, task++) {
        if (task->alive && (task->memID == memID)) {
            task_stop(task, TRUE);
        }
    }
}


// Pause/Unpause All Tasks by Mem. ID
void task_pool_pause_id(u16 memID, u32 pause) {
    struct Task *task;
    u32 i;

    for (i = 0, task = sTaskPool.tasks; i < TASK_POOL_SIZE; i++, task++) {
        if (task->alive && (task->memID == memID)) {
            task->paused = pause;
        }
    }
}
