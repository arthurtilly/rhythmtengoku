#include "task_pool.h"

static struct TaskPool {
    u32 nextID;
    u32 unk4;
    struct Task tasks[48];
} D_03000900;


/* TASK POOL */


// Initialise Task Pool
void task_pool_init(void) {
    u32 i;

    D_03000900.nextID = 0;

    for (i = 0; i < 48; i++) {
        D_03000900.tasks[i].alive = FALSE;
        D_03000900.tasks[i].poolID = -1;
    }
}


// Close Task
void func_08005a40(struct Task *task, u32 incomplete) {
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
    task->poolID = -1;
}


// Update Tasks (Delayed)
void func_08005a84(void) {
    struct Task *task;
    u32 i, completed;

    if (D_03000900.unk4 != 0) return;

    for (i = 0, task = D_03000900.tasks; i < 48; i++, task++) {
        if (task->alive && !task->paused) {
            if (task->methods->delayedUpdate != NULL) {
                if (task->startDelay != 0) {
                    task->startDelay--;
                    continue;
                }
                completed = task->methods->delayedUpdate(task->info);
                if (completed) {
                    func_08005a40(task, FALSE);
                }
            }
        }
    }
}


 // Update Tasks (Constant)
void func_08005ad4(void) {
    struct Task *task;
    u32 i, completed;

    if (D_03000900.unk4 != 0) return;

    for (i = 0, task = D_03000900.tasks; i < 48; i++, task++) {
        if (task->alive && !task->paused) {
            if (task->methods->constantUpdate != NULL) {
                completed = task->methods->constantUpdate(task->info);
                if (completed) {
                    func_08005a40(task, FALSE);
                }
            }
        }
    }
}


// Create New Task
s32 func_08005b20(u16 memID, const struct TaskMethods *methods, void *inputs, TaskFinalFunc onFinish, u32 onFinishArg) {
    struct Task *task;
    void *info;
    u32 i;

    for (i = 0, task = D_03000900.tasks; i < 48; i++, task++) {
        if (!task->alive) break;
    }
    if (i >= 48) {
        return -1;
    }

    if (methods->start != NULL) {
        info = methods->start(inputs);
    } else {
        info = NULL;
    }

    task->info = info;
    if (info == TASK_FAILED_TO_START) {
        return -1;
    }

    task->alive = TRUE;
    task->paused = FALSE;
    task->methods = methods;
    task->poolID = D_03000900.nextID;
    task->memID = memID;
    task->onFinish = onFinish;
    task->onFinishArg = onFinishArg;
    task->startDelay = 0;
    D_03000900.nextID = (D_03000900.nextID + 1) & 0x7fffffff;
    return task->poolID;
}


// Close Task by Pool ID (consider complete)
void func_08005bc4(s32 poolID) {
    struct Task *task;
    u32 i;

    if (poolID < 0) return;

    for (i = 0, task = D_03000900.tasks; i < 48; i++, task++) {
        if (task->poolID == poolID) break;
    }
    if (i < 48) {
        if (task->alive) {
            func_08005a40(task, FALSE);
        }
    }
}


// Close Task by Pool ID (consider incomplete)
void func_08005c00(s32 poolID) {
    struct Task *task;
    u32 i;

    if (poolID < 0) return;

    for (i = 0, task = D_03000900.tasks; i < 48; i++, task++) {
        if (task->poolID == poolID) break;
    }
    if (i < 48) {
        if (task->alive) {
            func_08005a40(task, TRUE);
        }
    }
}


// Get Task Static Data
void *func_08005c3c(s32 poolID) {
    struct Task *task;
    u32 i;

    if (poolID < 0) return NULL;

    for (i = 0, task = D_03000900.tasks; i < 48; i++, task++) {
        if (task->poolID == poolID) break;
    }
    if (i < 48) {
        if (task->alive) {
            return task->info;
        }
    }
    return NULL;
}


// Close All Active Tasks
void func_08005c78(void) {
    struct Task *task;
    u32 i;

    for (i = 0, task = D_03000900.tasks; i < 48; i++, task++) {
        if (task->alive && (task->poolID >= 0)) {
            func_08005a40(task, TRUE);
        }
    }
}


// Pause Task by Pool ID
void func_08005ca8(s32 poolID, u32 pause) {
    struct Task *task;
    u32 i;

    if (poolID < 0) return;

    for (i = 0, task = D_03000900.tasks; i < 48; i++, task++) {
        if (task->poolID == poolID) {
            task->paused = pause;
            return;
        }
    }
}


// Set D_03000900.unk4
void func_08005ce0(u32 pause) {
    D_03000900.unk4 = pause;
}


u32 func_08005cec(s32 poolID) {
    struct Task *task;
    u32 i;

    if (poolID < 0) return 0;

    for (i = 0, task = D_03000900.tasks; i < 48; i++, task++) {
        if (task->alive && (task->poolID == poolID)) {
            if (task->paused) {
                return 2;
            } else {
                return 1;
            }
        }
    }

    return 0;
}


// Set Task onFinish Function by Pool ID
void func_08005d38(s32 poolID, TaskFinalFunc onFinish, s32 onFinishArg) {
    struct Task *task;
    u32 i;

    if (poolID < 0) return;

    for (i = 0, task = D_03000900.tasks; i < 48; i++, task++) {
        if (task->alive && (task->poolID == poolID)) {
            task->onFinish = onFinish;
            task->onFinishArg = onFinishArg;
            return;
        }
    }
}


// Set Task Delay Duration by Pool ID
void func_08005d74(s32 poolID, u16 startDelay) {
    struct Task *task;
    u32 i;

    if (poolID < 0) return;

    for (i = 0, task = D_03000900.tasks; i < 48; i++, task++) {
        if (task->alive && (task->poolID == poolID)) {
            task->startDelay = startDelay;
            return;
        }
    }
}


// Close All Tasks by Mem. ID (consider complete)
void func_08005db0(u16 memID) {
    struct Task *task;
    u32 i;

    for (i = 0, task = D_03000900.tasks; i < 48; i++, task++) {
        if (task->alive && (task->memID == memID)) {
            func_08005a40(task, FALSE);
        }
    }
}


// Close All Tasks by Mem. ID (consider incomplete)
void func_08005de4(u16 memID) {
    struct Task *task;
    u32 i;

    for (i = 0, task = D_03000900.tasks; i < 48; i++, task++) {
        if (task->alive && (task->memID == memID)) {
            func_08005a40(task, TRUE);
        }
    }
}


// Pause/Unpause All Tasks by Mem. ID
void func_08005e18(u16 memID, u32 pause) {
    struct Task *task;
    u32 i;

    for (i = 0, task = D_03000900.tasks; i < 48; i++, task++) {
        if (task->alive && (task->memID == memID)) {
            task->paused = pause;
        }
    }
}
