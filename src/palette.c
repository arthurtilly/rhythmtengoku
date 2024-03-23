#include "palette.h"
#include "task_pool.h"
#include "memory_heap.h"


/* PALETTE INTERPOLATOR */


enum PaletteInterpolatorSourceTypesEnum {
    /* 00 */ SOURCE_TYPE_PAL_PAL,
    /* 01 */ SOURCE_TYPE_PAL_PAL_2,
    /* 02 */ SOURCE_TYPE_COL_PAL,
    /* 03 */ SOURCE_TYPE_PAL_COL,
};


#define FAST_BLEND_PAL_TO_PAL_SIZE ((u32)fast_blend_pal_to_pal_end - (u32)fast_blend_pal_to_pal)
#define FAST_BLEND_COL_TO_PAL_SIZE ((u32)fast_blend_col_to_pal_end - (u32)fast_blend_col_to_pal)

extern void fast_blend_pal_to_pal(void *args);
extern void *fast_blend_pal_to_pal_end;
extern void fast_blend_col_to_pal(void *args);
extern void *fast_blend_col_to_pal_end;

static s32 fast_blend_pal_code[32]; // Palette Interpolation Function


// Stub
void func_08001a24_stub(void) {
}


// Immediately Blend Palette (Array->Color)
void fast_blend_pal_to_col(const u16 *sourceA, u32 valueB, u16 *outputDest, u32 totalColors, u24_8 progress) {
    void (*interpolatePalette)() = (void *)(fast_blend_pal_code);
    u32 args[5];

    args[0] = (u32)(valueB);
    args[1] = (u32)(sourceA);
    args[2] = (u32)(outputDest);
    args[3] = (u32)(totalColors);
    args[4] = (u32)(INT_TO_FIXED(1.0) - progress);
    dma3_set(fast_blend_col_to_pal, interpolatePalette, sizeof(fast_blend_pal_code), 0x20, 0x100);
    interpolatePalette(args);
}


// Blend Palette with Interpolator
void pal_interp_blend(struct PaletteInterpolator *task, u32 startIndex) {
    void (*interpolatePalette)() = (void *)(fast_blend_pal_code);
    s32 runningTime = task->runningTime;
    s32 duration = task->duration;
    s24_8 progress = INT_TO_FIXED(runningTime) / duration;
    u32 args[5];

    switch (task->sourceType) {
        case SOURCE_TYPE_PAL_PAL:
        case SOURCE_TYPE_PAL_PAL_2:
            args[0] = (u32)(task->sourceA + startIndex);
            args[1] = (u32)(task->sourceB + startIndex);
            args[2] = (u32)(task->outputDest + startIndex);
            args[3] = (u32)(task->totalPalettes * 16);
            args[4] = (u32)(progress);
            dma3_set(fast_blend_pal_to_pal, interpolatePalette, sizeof(fast_blend_pal_code), 0x20, 0x100);
            interpolatePalette(args);
            break;

        case SOURCE_TYPE_COL_PAL:
            args[0] = (u32)(task->sourceA);
            args[1] = (u32)(task->sourceB + startIndex);
            args[2] = (u32)(task->outputDest + startIndex);
            args[3] = (u32)(task->totalPalettes * 16);
            args[4] = (u32)(progress);
            dma3_set(fast_blend_col_to_pal, interpolatePalette, sizeof(fast_blend_pal_code), 0x20, 0x100);
            interpolatePalette(args);
            break;

        case SOURCE_TYPE_PAL_COL:
            args[0] = (u32)(task->sourceB);
            args[1] = (u32)(task->sourceA + startIndex);
            args[2] = (u32)(task->outputDest + startIndex);
            args[3] = (u32)(task->totalPalettes * 16);
            args[4] = (u32)(INT_TO_FIXED(1.0) - progress);
            dma3_set(fast_blend_col_to_pal, interpolatePalette, sizeof(fast_blend_pal_code), 0x20, 0x100);
            interpolatePalette(args);
            // break;
    }
}


// Update Palette Interpolation
void pal_interp_update(struct PaletteInterpolator *task) {
    if ((task == NULL) || !task->isActive) {
        return;
    }

    task->runningTime++;
    if (task->runningTime > task->duration) {
        task->isActive = FALSE;
        return;
    }

    pal_interp_blend(task, 0);
}


// Initialise Palette Output for Interpolation
void pal_interp_init_dest(struct PaletteInterpolator *task, u32 startIndex) {
    const u16 *src;
    u16 *dest;

    src = task->sourceA + startIndex;
    dest = task->outputDest + startIndex;

    switch (task->sourceType) {
        case SOURCE_TYPE_PAL_PAL:
        case SOURCE_TYPE_PAL_PAL_2:
        case SOURCE_TYPE_PAL_COL:
            dma3_set(src, dest, task->totalPalettes * 16 * 2, 0x10, 0x100);
            break;
        case SOURCE_TYPE_COL_PAL:
            dma3_fill((u32)src | ((u32)src << 16), dest, task->totalPalettes * 16 * 2, 0x10, 0x100);
            break;
    }
}


// Initialise Palette Interpolator (Array->Array)
void pal_interp_init_ptp(struct PaletteInterpolator *task, u32 duration, u32 totalPalettes, const u16 *sourceA, const u16 *sourceB, u16 *outputBackup, u16 *outputDest) {
    if (task == NULL) {
        return;
    }

    task->duration = duration;
    task->runningTime = 0;
    task->totalPalettes = totalPalettes;
    task->sourceA = sourceA;
    task->sourceB = sourceB;
    task->outputBackup = outputBackup;
    task->outputDest = outputDest;
    task->sourceType = SOURCE_TYPE_PAL_PAL;
    task->isActive = TRUE;
    pal_interp_init_dest(task, 0);
}


// Initialise Palette Interpolator (Color->Array)
void pal_interp_init_ctp(struct PaletteInterpolator *task, u32 duration, u32 totalPalettes, u32 valueA, const u16 *sourceB, u16 *outputBackup, u16 *outputDest) {
    if (task == NULL) {
        return;
    }

    task->duration = duration;
    task->runningTime = 0;
    task->totalPalettes = totalPalettes;
    task->sourceA = (void *)valueA;
    task->sourceB = sourceB;
    task->outputBackup = outputBackup;
    task->outputDest = outputDest;
    task->sourceType = SOURCE_TYPE_COL_PAL;
    task->isActive = TRUE;
    pal_interp_init_dest(task, 0);
}


// Initialise Palette Interpolator (Array->Color)
void pal_interp_init_ptc(struct PaletteInterpolator *task, u32 duration, u32 totalPalettes, const u16 *sourceA, u32 valueB, u16 *outputBackup, u16 *outputDest) {
    if (task == NULL) {
        return;
    }

    task->duration = duration;
    task->runningTime = 0;
    task->totalPalettes = totalPalettes;
    task->sourceA = sourceA;
    task->sourceB = (void *)valueB;
    task->outputBackup = outputBackup;
    task->outputDest = outputDest;
    task->sourceType = SOURCE_TYPE_PAL_COL;
    task->isActive = TRUE;
    pal_interp_init_dest(task, 0);
}


// Copy Contents of OutputDest to OutputBackup
void pal_interp_write_backup(struct PaletteInterpolator *task) {
    if (task == NULL || !task->isActive || task->outputBackup == NULL) {
        return;
    }

    dma3_set(task->outputDest, task->outputBackup, 0x200, 0x20, 0x80);
}


// Update Palette Interpolator (using PaletteMask)
void pal_interp_update_masked(struct PaletteInterpolator *task) {
    s32 i;

    if (task == NULL || !task->isActive) {
        return;
    }

    task->runningTime++;
    if (task->runningTime > task->duration) {
        task->isActive = FALSE;
        return;
    }

    for (i = 0; i < 16; i++) {
        if (((task->paletteMask >> i) & 1) != 0) {
            pal_interp_blend(task, i * 16);
        }
    }
}


// Blend Palette (Array->Array)
void blend_pal_to_pal(u8 alpha, u8 totalPalettes, const u16 *sourceA, const u16 *sourceB, u16 *outputDest) {
    struct PaletteInterpolator task;

    task.duration = 32;
    task.runningTime = alpha;
    task.totalPalettes = totalPalettes;
    task.sourceA = sourceA;
    task.sourceB = sourceB;
    task.outputDest = outputDest;
    task.sourceType = SOURCE_TYPE_PAL_PAL;
    task.isActive = TRUE;

    pal_interp_blend(&task, 0);
}


// Blend Palette (Color->Array)
void blend_col_to_pal(u8 alpha, u8 totalPalettes, u32 valueA, const u16 *sourceB, u16 *outputDest) {
    struct PaletteInterpolator task;

    task.duration = 32;
    task.runningTime = alpha;
    task.totalPalettes = totalPalettes;
    task.sourceA = (void *)valueA;
    task.sourceB = sourceB;
    task.outputDest = outputDest;
    task.sourceType = SOURCE_TYPE_COL_PAL;
    task.isActive = TRUE;

    pal_interp_blend(&task, 0);
}


// Blend Palette (Array->Color)
void blend_pal_to_col(u8 alpha, u8 totalPalettes, const u16 *sourceA, u32 valueB, u16 *outputDest) {
    struct PaletteInterpolator task;

    task.duration = 32;
    task.runningTime = alpha;
    task.totalPalettes = totalPalettes;
    task.sourceA = sourceA;
    task.sourceB = (void *)valueB;
    task.outputDest = outputDest;
    task.sourceType = SOURCE_TYPE_PAL_COL;
    task.isActive = TRUE;

    pal_interp_blend(&task, 0);
}


// Start Palette Interpolator (Array->Array)
struct PaletteInterpolator *pal_interp_task_start_ptp(struct PaletteInterpolatorInputs *inputs) {
    struct PaletteInterpolator *task;

    task = mem_heap_alloc(sizeof(struct PaletteInterpolator));
    pal_interp_init_ptp(task, inputs->duration, inputs->totalPalettes, inputs->sourceA, inputs->sourceB, NULL, inputs->outputDest);

    return task;
}


// Start Palette Interpolator (Color->Array)
struct PaletteInterpolator *pal_interp_task_start_ctp(struct PaletteInterpolatorInputs *inputs) {
    struct PaletteInterpolator *task;

    task = mem_heap_alloc(sizeof(struct PaletteInterpolator));
    pal_interp_init_ctp(task, inputs->duration, inputs->totalPalettes, (u32)inputs->sourceA, inputs->sourceB, NULL, inputs->outputDest);

    return task;
}


// Start Palette Interpolator (Array->Color)
struct PaletteInterpolator *pal_interp_task_start_ptc(struct PaletteInterpolatorInputs *inputs) {
    struct PaletteInterpolator *task;

    task = mem_heap_alloc(sizeof(struct PaletteInterpolator));
    pal_interp_init_ptc(task, inputs->duration, inputs->totalPalettes, inputs->sourceA, (u32)inputs->sourceB, NULL, inputs->outputDest);

    return task;
}


// Update Palette Interpolator
u32 pal_interp_task_update(struct PaletteInterpolator *task) {
    pal_interp_update(task);
    return !task->isActive;
}


// Interpolate Palettes (Array->Array)
static struct TaskMethods pal_interp_task_ptp = {
    (TaskStartFunc)pal_interp_task_start_ptp,
    (TaskUpdateFunc)pal_interp_task_update,
    NULL,
    NULL
};

s32 palette_fade_to(u16 memID, u8 duration, u8 totalPalettes, const u16 *sourceA, const u16 *sourceB, u16 *outputDest) {
    struct PaletteInterpolatorInputs info;

    info.duration = duration;
    info.totalPalettes = totalPalettes;
    info.sourceA = sourceA;
    info.sourceB = sourceB;
    info.outputDest = outputDest;

    return start_new_task(memID, &pal_interp_task_ptp, &info, NULL, 0);
}


// Interpolate Palettes (Color->Array)
static struct TaskMethods pal_interp_task_ctp = {
    (TaskStartFunc)pal_interp_task_start_ctp,
    (TaskUpdateFunc)pal_interp_task_update,
    NULL,
    NULL
};

s32 palette_fade_in(u16 memID, u8 duration, u8 totalPalettes, u32 valueA, const u16 *sourceB, u16 *outputDest) {
    struct PaletteInterpolatorInputs info;

    info.duration = duration;
    info.totalPalettes = totalPalettes;
    info.sourceA = (void *)valueA;
    info.sourceB = sourceB;
    info.outputDest = outputDest;

    return start_new_task(memID, &pal_interp_task_ctp, &info, NULL, 0);
}


// Interpolate Palettes (Array->Color)
static struct TaskMethods pal_interp_task_ptc = {
    (TaskStartFunc)pal_interp_task_start_ptc,
    (TaskUpdateFunc)pal_interp_task_update,
    NULL,
    NULL
};

s32 palette_fade_out(u16 memID, u8 duration, u8 totalPalettes, const u16 *sourceA, u32 valueB, u16 *outputDest) {
    struct PaletteInterpolatorInputs info;

    info.duration = duration;
    info.totalPalettes = totalPalettes;
    info.sourceA = sourceA;
    info.sourceB = (void *)valueB;
    info.outputDest = outputDest;

    return start_new_task(memID, &pal_interp_task_ptc, &info, NULL, 0);
}


// Get Blend of Two Colors
u16 get_blended_color(u16 col1, u16 col2, u16 blendAlpha) {
    s32 r1, g1, b1;
    s32 r2, g2, b2;

    r1 = col1 & 0x1F;
    g1 = (col1 >> 5) & 0x1F;
    b1 = (col1 >> 10) & 0x1F;

    r2 = col2 & 0x1F;
    g2 = (col2 >> 5) & 0x1F;
    b2 = (col2 >> 10) & 0x1F;

    r1 += FIXED_POINT_MUL(r2 - r1, blendAlpha);
    g1 += FIXED_POINT_MUL(g2 - g1, blendAlpha);
    b1 += FIXED_POINT_MUL(b2 - b1, blendAlpha);

    return (r1) | (g1 << 5) | (b1 << 10);
}
