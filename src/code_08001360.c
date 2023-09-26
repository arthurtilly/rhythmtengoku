#include "code_08001360.h"
#include "memory_heap.h"

asm(".include \"include/gba.inc\"");//Temporary

// Can be better split

static u16 D_03000098;
static D_0300009c_func D_0300009c;


void func_08001360(void) {
    func_08003f28();
    D_03000098 = FALSE;
    D_0300009c = NULL;
    return;
}


void func_08001380(void) {
    func_08006e00();
    func_08003f50();
    if (D_0300009c != NULL) {
        D_0300009c();
    }
    D_03000098 = TRUE;
    return;
}


void func_080013a8(void) {
    volatile s32 temp;

    if (!(REG_DISPCNT & DISPCNT_FORCE_BLANK)) {
        while (!D_03000098) {
			temp = *((s32 *)GameROMBase + get_agb_random_var());
		}
    }

    D_03000098 = FALSE;
}


void func_080013e8(D_0300009c_func arg1) {
	D_0300009c = arg1;
}


/* INPUT LISTENER */


static u16 D_030000a0;
static u16 D_030000a2;
static u16 D_030000a4;
static u16 D_030000a6;
static u8 sRecMode;
static u8 sRecPaused;
static u8 sRecKeyTimer;
static u16 sRecKeyFilter;
static u16 *sRecMemory;


// Reset Input Buffers
void reset_main_key_buffers(u16 keys) {
    D_03004ac0 = keys;
    D_03004afc = 0;
    D_030053b8 = 0;
    D_03004b00 = 0;
    D_030000a0 = keys;
    D_030000a2 = 0;
    return;
}


// Reset Recorded Input Buffers
void reset_rec_key_buffers(u16 keys) {
    D_030046b8 = keys;
    D_03005378 = 0;
    D_0300537c = 0;
    D_030046b4 = 0;
    D_030000a4 = keys;
    D_030000a6 = 0;
    return;
}


// Init. Input Listener
void init_key_listener(void) {
    reset_main_key_buffers(~REG_KEY);
    reset_rec_key_buffers(0);
    sRecMode = 0;
    sRecKeyFilter = 0x3ff;
}


// Register Input
void update_main_key_buffers(u16 keys) {
    D_03004afc = keys & (keys ^ D_03004ac0);
    D_03004b00 = D_03004ac0 & (keys ^ D_03004ac0);
    D_03004ac0 = keys;

    // Key Repeat Delay
    if (D_03004afc != 0) {
        D_030053b8 = D_03004afc;
        D_030000a2 = 0;
    }
    if (D_03004afc == 0) {
        D_030053b8 = 0;
        if (D_030000a0 == keys) {
            D_030000a2++;
            if (D_030000a2 > 14) {
                D_030000a2 = 12;
                D_030053b8 = keys;
            }
        } else {
            D_030000a2 = 0;
        }
        D_030000a0 = D_03004ac0;
    }
}


// Register Recorded Input
void update_rec_key_buffers(u16 keys) {
    D_03005378 = keys & (keys ^ D_030046b8);
    D_030046b4 = D_030046b8 & (keys ^ D_030046b8);
    D_030046b8 = keys;

    // Key Repeat Delay
    if (D_03005378 != 0) {
        D_0300537c = D_03005378;
        D_030000a6 = 0;
    }
    if (D_03005378 == 0) {
        D_0300537c = 0;
        if (D_030000a4 == keys) {
            D_030000a6++;
            if (D_030000a6 > 14) {
                D_030000a6 = 12;
                D_0300537c = keys;
            }
        } else {
            D_030000a6 = 0;
        }
        D_030000a4 = D_030046b8;
    }
}


// Update Input Listener
void update_key_listener(void) {
    u16 keys, recordedKeys;

    keys = ~REG_KEY;
    keys &= sRecKeyFilter;

    switch (sRecMode) {
        case 0: // Default
            break;

        case 1: // Record Inputs
            if (!sRecPaused && (sRecCurrentKey < sRecMaxKeys)) {
                if ((sRecMemory[sRecCurrentKey] & 0x3ff) == keys) {
                    sRecKeyTimer++;
                    if (sRecKeyTimer >= 64) {
                        sRecKeyTimer = 0;
                        sRecCurrentKey++;
                        if (sRecCurrentKey < sRecMaxKeys) {
                            sRecMemory[sRecCurrentKey] = keys;
                        }
                    } else {
                        sRecMemory[sRecCurrentKey] += (1 << 10);
                    }
                } else {
                    sRecKeyTimer = 0;
                    sRecCurrentKey++;
                    if (sRecCurrentKey < sRecMaxKeys) {
                        sRecMemory[sRecCurrentKey] = keys;
                    }
                }
            }
            break;

        case 2: // Play Recording to Main Buffers - Ignore Real-Time Inputs
        case 3: // Play Recording to Secondary Buffers
        case 4: // Play Recording to Main Buffers - Include Real-Time Inputs
            recordedKeys = 0;
            if (sRecCurrentKey < sRecMaxKeys) {
                if (sRecPaused) {
                    recordedKeys = sRecMemory[sRecCurrentKey] & sRecKeyFilter;
                } else {
                    if (sRecKeyTimer != 0) {
                        sRecKeyTimer--;
                        recordedKeys = sRecMemory[sRecCurrentKey] & sRecKeyFilter;
                    } else {
                        sRecCurrentKey++;
                        if (sRecCurrentKey < sRecMaxKeys) {
                            recordedKeys = sRecMemory[sRecCurrentKey] & sRecKeyFilter;
                            sRecKeyTimer = (sRecMemory[sRecCurrentKey] >> 10);
                        }
                    }
                }
            }
            if (sRecMode == 2) {
                keys = recordedKeys;
            }
            if (sRecMode == 4) {
                keys |= recordedKeys;
            }
            if (sRecMode == 3) {
                update_rec_key_buffers(recordedKeys);
            }
            break;
    }

    update_main_key_buffers(keys);
}


// Set Recording Mode
void key_rec_set_mode(u32 mode, u16 keyFilter, u16 *recording, u32 maxInputs) {
    u16 keys = ~REG_KEY;
    u32 recordedKeys;

    sRecMode = mode;
    sRecKeyFilter = keyFilter;
    sRecPaused = FALSE;
    sRecMemory = recording;
    sRecMaxKeys = maxInputs;
    sRecCurrentKey = 0;
    sRecKeyTimer = 0;
    reset_rec_key_buffers(0);

    switch (mode) {
        case 0: // Default
            break;

        case 1: // Record Inputs
            dma3_fill(0, recording, maxInputs * 2, 0x20, 0x200);
            recording[0] = keys & keyFilter;
            break;

        case 2: // Play Recording to Main Buffers - Ignore Real-Time Inputs
            keys = (recording[0] & 0x3ff);
            sRecKeyTimer = recording[0] >> 10;
            break;

        case 3: // Play Recording to Secondary Buffers
            recordedKeys = recording[0] & 0x3ff;
            sRecKeyTimer = recording[0] >> 10;
            reset_rec_key_buffers(recordedKeys & keyFilter);
            break;

        case 4: // Play Recording to Main Buffers - Include Real-Time Inputs
            keys |= (recording[0] & 0x3ff);
            sRecKeyTimer = recording[0] >> 10;
            break;
    }

    reset_main_key_buffers(keys & keyFilter);
}


// Pause Input Recording
void key_rec_set_paused(u32 pause) {
    sRecPaused = pause;
}


// Get Next Recording Key
u32 key_rec_get_next(void) {
    if (sRecCurrentKey < sRecMaxKeys) {
        return sRecCurrentKey + 1;
    } else {
        return sRecCurrentKey;
    }
}


// Check if Recording Has Reached the End
u32 key_rec_reached_end(void) {
    return (sRecCurrentKey >= sRecMaxKeys);
}


/* DIRECT MEMORY ACCESS */


// DMA3 Set
void dma3_set(const void *source, void *destination, u32 bytesToSet, u16 unit, u32 bytesPerInterrupt) {
    const void *src = source;
    void *dest = destination;
    u32 dmaSize = unit / 16;

    while (bytesToSet != 0) {
        REG_DMA3SAD = (u32)src;
        REG_DMA3DAD = (u32)dest;

        if (bytesToSet <= bytesPerInterrupt) {
            bytesPerInterrupt = bytesToSet;
        }

        REG_DMA3CNT_L = bytesPerInterrupt >> dmaSize;
        REG_DMA3CNT_H = (
            DMACNT_DEST_INC_TYPE_INCREMENT
            | DMACNT_SRC_INC_TYPE_INCREMENT
            | ((dmaSize != 1) << 10)
            | DMACNT_START_MODE_IMMEDIATE
            | DMACNT_ENABLE
        );

        src += bytesPerInterrupt;
        dest += bytesPerInterrupt;
        bytesToSet -= bytesPerInterrupt;
    }
}


// DMA3 Fill
void dma3_fill(u32 value, void *destination, u32 bytesToFill, u16 unit, u32 bytesPerInterrupt) {
    void *dest = destination;
    u32 dmaSize = unit / 16;

    while (bytesToFill != 0) {
        REG_DMA3SAD = (u32)&value;
        REG_DMA3DAD = (u32)dest;

        if (bytesToFill <= bytesPerInterrupt) {
            bytesPerInterrupt = bytesToFill;
        }

        REG_DMA3CNT_L = bytesPerInterrupt >> dmaSize;
        REG_DMA3CNT_H = (
            DMACNT_DEST_INC_TYPE_INCREMENT
            | DMACNT_SRC_INC_TYPE_UNCHANGED
            | ((dmaSize != 1) << 10)
            | DMACNT_START_MODE_IMMEDIATE
            | DMACNT_ENABLE
        );

        dest += bytesPerInterrupt;
        bytesToFill -= bytesPerInterrupt;
    }
}


/* MATH */


static u16 sRandom; // [D_030000b4] Static Random Variable


// Set Global Random Value
void set_agb_random_var(u32 val) {
    sRandom = val;
    return;
}


// Get Global Random Value
u16 get_agb_random_var(void) {
    sRandom = sRandom * 109 + 1021;
    return sRandom;
}


// AGB Random
u16 agb_random(u16 var) {   // Random
    sRandom = sRandom * 109 + 1021;
    return (sRandom * var) >> 16;
}


// Interpolated Sine (4-bits additional precision)
s32 func_080019a4(u32 fullAngle) {
    u32 a0, a1, af;
    u8 angle;

    fullAngle &= 0xFFF;
    angle = (fullAngle >> 4);

    a0 = angle & 0xFF;
    a1 = (angle + 1) & 0xFF;
    af = fullAngle & 0xF;

    return ((D_08935fcc[a0] * (0x10 - af)) + (D_08935fcc[a1] * af)) >> 4;
}


// Interpolated Cosine (4-bits additional precision)
s32 func_080019e4(u32 fullAngle) {
    u32 a0, a1, af;
    u8 angle;

    fullAngle &= 0xFFF;
    angle = (fullAngle >> 4);

    a0 = angle & 0xFF;
    a1 = (angle + 1) & 0xFF;
    af = fullAngle & 0xF;

    return ((D_089361cc[a0] * (0x10 - af)) + (D_089361cc[a1] * af)) >> 4;
}


/* PALETTE INTERPOLATOR */


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
