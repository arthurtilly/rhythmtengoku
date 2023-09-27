#include "palette.h"
#include "task_pool.h"
#include "memory_heap.h"

asm(".include \"include/gba.inc\"");//Temporary


/* PALETTE INTERPOLATOR */


#define FAST_BLEND_PAL_TO_PAL_SIZE ((u32)fast_blend_pal_to_pal_end - (u32)fast_blend_pal_to_pal)
#define FAST_BLEND_COL_TO_PAL_SIZE ((u32)fast_blend_col_to_pal_end - (u32)fast_blend_col_to_pal)

extern void fast_blend_pal_to_pal(void *args);
extern void *fast_blend_pal_to_pal_end;
extern void fast_blend_col_to_pal(void *args);
extern void *fast_blend_col_to_pal_end;

extern struct TaskMethods D_089363cc;
extern struct TaskMethods D_089363dc;
extern struct TaskMethods D_089363ec;

static s32 fast_blend_pal_code[32]; // Palette Interpolation Function


// Stub
void func_08001a24_stub(void) {
}


// Immediately Blend Palette (Color->Array)
void func_08001a28(const u16 *sourceA, u32 valueB, u16 *outputDest, u32 totalColors, u32 progress) {
    void (*interpolatePalette)() = (void *)(fast_blend_pal_code);
    u32 args[5];

    args[0] = (u32)(valueB);
    args[1] = (u32)(sourceA);
    args[2] = (u32)(outputDest);
    args[3] = (u32)(totalColors);
    args[4] = (u32)(0x100 - progress);
    dma3_set(fast_blend_col_to_pal, interpolatePalette, 0x80, 0x20, 0x100);
    interpolatePalette(args);
}


// Blend Palette with Interpolator (https://decomp.me/scratch/EvpB4)
#include "asm/code_08001360/asm_08001a64.s"


// Update Palette Interpolation
void func_08001b48(struct PaletteInterpolator *task) {
    if ((task == NULL) || !task->isActive) {
        return;
    }

    task->runningTime++;
    if (task->runningTime > task->duration) {
        task->isActive = FALSE;
        return;
    }

    func_08001a64(task, 0);
}


// Initialise Palette Output for Interpolation
void func_08001b98(struct PaletteInterpolator *task, u32 indexOffset) {
    const u16 *src;
    u16 *dest;

    src = task->sourceA + indexOffset;
    dest = task->outputDest + indexOffset;

    switch (task->sourceType) {
        case 0:
        case 1:
        case 3:
            dma3_set(src, dest, task->totalPalettes * 0x20, 0x10, 0x100);
            break;
        case 2:
            dma3_fill((u32)src | ((u32)src << 16), dest, task->totalPalettes * 16 * 2, 0x10, 0x100);
            break;
    }
}


// Initialise Palette Interpolator (Array->Array)
void func_08001bf8(struct PaletteInterpolator *task, u32 duration, u32 totalPalettes, const u16 *sourceA, const u16 *sourceB, u16 *outputBackup, u16 *outputDest) {
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
    task->sourceType = 0;
    task->isActive = TRUE;
    func_08001b98(task, 0);
}


// Initialise Palette Interpolator (Color->Array)
void func_08001c64(struct PaletteInterpolator *task, u32 duration, u32 totalPalettes, const u16 *valueA, const u16 *sourceB, u16 *outputBackup, u16 *outputDest) {
    if (task == NULL) {
        return;
    }

    task->duration = duration;
    task->runningTime = 0;
    task->totalPalettes = totalPalettes;
    task->sourceA = valueA;
    task->sourceB = sourceB;
    task->outputBackup = outputBackup;
    task->outputDest = outputDest;
    task->sourceType = 2;
    task->isActive = TRUE;
    func_08001b98(task, 0);
}


// Initialise Palette Interpolator (Array->Color)
void func_08001cd8(struct PaletteInterpolator *task, u32 duration, u32 totalPalettes, const u16 *sourceA, const u16 *valueB, u16 *outputBackup, u16 *outputDest) {
    if (task == NULL) {
        return;
    }

    task->duration = duration;
    task->runningTime = 0;
    task->totalPalettes = totalPalettes;
    task->sourceA = sourceA;
    task->sourceB = valueB;
    task->outputBackup = outputBackup;
    task->outputDest = outputDest;
    task->sourceType = 3;
    task->isActive = TRUE;
    func_08001b98(task, 0);
}


// Copy Contents of OutputDest to OutputBackup
void func_08001d44(struct PaletteInterpolator *task) {
    if (task == NULL || !task->isActive || task->outputBackup == NULL) {
        return;
    }

    dma3_set(task->outputDest, task->outputBackup, 0x200, 0x20, 0x80);
}


// Update Palette Interpolator (using PaletteMask)
void func_08001d74(struct PaletteInterpolator *task) {
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
            func_08001a64(task, i * 16);
        }
    }
}


// Blend Palette (Array->Array)
void func_08001ddc(u8 alpha, u8 totalPalettes, const u16 *sourceA, const u16 *sourceB, u16 *outputDest) {
    struct PaletteInterpolator task;

    task.duration = 32;
    task.runningTime = alpha;
    task.totalPalettes = totalPalettes;
    task.sourceA = sourceA;
    task.sourceB = sourceB;
    task.outputDest = outputDest;
    task.sourceType = 0;
    task.isActive = TRUE;

    func_08001a64(&task, 0);
}


// Blend Palette (Color->Array)
void func_08001e4c(u8 alpha, u8 totalPalettes, u32 valueA, const u16 *sourceB, u16 *outputDest) {
    struct PaletteInterpolator task;

    task.duration = 32;
    task.runningTime = alpha;
    task.totalPalettes = totalPalettes;
    task.sourceA = (void *)valueA;
    task.sourceB = sourceB;
    task.outputDest = outputDest;
    task.sourceType = 2;
    task.isActive = TRUE;

    func_08001a64(&task, 0);
}


// Blend Palette (Array->Color)
void func_08001ec4(u8 alpha, u8 totalPalettes, const u16 *sourceA, u32 valueB, u16 *outputDest) {
    struct PaletteInterpolator task;

    task.duration = 32;
    task.runningTime = alpha;
    task.totalPalettes = totalPalettes;
    task.sourceA = sourceA;
    task.sourceB = (void *)valueB;
    task.outputDest = outputDest;
    task.sourceType = 3;
    task.isActive = TRUE;

    func_08001a64(&task, 0);
}


// Start Palette Interpolator (Array->Array)
struct PaletteInterpolator *func_08001f34(struct PaletteInterpolatorInputs *inputs) {
    struct PaletteInterpolator *task;

    task = mem_heap_alloc(sizeof(struct PaletteInterpolator));
    func_08001bf8(task, inputs->duration, inputs->totalPalettes, inputs->sourceA, inputs->sourceB, NULL, inputs->outputDest);

    return task;
}


// Start Palette Interpolator (Color->Array)
struct PaletteInterpolator *func_08001f64(struct PaletteInterpolatorInputs *inputs) {
    struct PaletteInterpolator *task;

    task = mem_heap_alloc(sizeof(struct PaletteInterpolator));
    func_08001c64(task, inputs->duration, inputs->totalPalettes, inputs->sourceA, inputs->sourceB, NULL, inputs->outputDest);

    return task;
}


// Start Palette Interpolator (Array->Color)
struct PaletteInterpolator *func_08001f94(struct PaletteInterpolatorInputs *inputs) {
    struct PaletteInterpolator *task;

    task = mem_heap_alloc(sizeof(struct PaletteInterpolator));
    func_08001cd8(task, inputs->duration, inputs->totalPalettes, inputs->sourceA, inputs->sourceB, NULL, inputs->outputDest);

    return task;
}


// Update Palette Interpolator
u32 func_08001fc4(struct PaletteInterpolator *task) {
    func_08001b48(task);

    return !task->isActive;
}


// Interpolate Palettes (Array->Array)
s32 func_08001fe0(u16 memID, u8 duration, u8 totalPalettes, const u16 *sourceA, const u16 *sourceB, u16 *outputDest) {
    struct PaletteInterpolatorInputs info;

    info.duration = duration;
    info.totalPalettes = totalPalettes;
    info.sourceA = sourceA;
    info.sourceB = sourceB;
    info.outputDest = outputDest;

    return start_new_task(memID, &D_089363cc, &info, NULL, 0);
}


// Interpolate Palettes (Color->Array)
s32 func_08002018(u16 memID, u8 duration, u8 totalPalettes, u32 valueA, const u16 *sourceB, u16 *outputDest) {
    struct PaletteInterpolatorInputs info;

    info.duration = duration;
    info.totalPalettes = totalPalettes;
    info.sourceA = (void *)valueA;
    info.sourceB = sourceB;
    info.outputDest = outputDest;

    return start_new_task(memID, &D_089363dc, &info, NULL, 0);
}


// Interpolate Palettes (Array->Color)
s32 func_08002050(u16 memID, u8 duration, u8 totalPalettes, const u16 *sourceA, u32 valueB, u16 *outputDest) {
    struct PaletteInterpolatorInputs info;

    info.duration = duration;
    info.totalPalettes = totalPalettes;
    info.sourceA = sourceA;
    info.sourceB = (void *)valueB;
    info.outputDest = outputDest;

    return start_new_task(memID, &D_089363ec, &info, NULL, 0);
}


// Get Blend of Two Colors
u16 func_08002088(u16 col1, u16 col2, u16 blendAlpha) {
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
