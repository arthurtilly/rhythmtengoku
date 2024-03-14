#include "code_080068f8.h"
#include "code_08003b28.h"
#include "code_08005e54.h"
#include "memory_heap.h"
#include "src/lib_0804ca80.h"

// Can be better split

asm(".include \"include/gba.inc\"");//Temporary

#define PALETTE_RAM ((volatile u16 *)(PaletteRAMBase))

static s16 D_03000ea4; // Some sort of time value
static s16 D_03000ea6; // Another time value
static u16 D_03000ea8; // Solid Colour used for Screen Fade-In/Fade-Out
static s32 D_03000eac; // unknown type, unknown if exists


// Graphic Control functions


void func_0800679c(u16 *arg0) {
    *arg0 -= 1;
}

struct unk_struct_08006bb4_init *func_080067a4(u16 arg0, u16 arg1, struct BitmapFontBG *arg2, const char *arg3, s16 arg4, s16 arg5, 
                    struct struct_080067a4_1 *arg6, struct struct_08005e54 *arg7, s16 arg8, s16 arg9, u32 arg10) {
    struct unk_struct_08006bb4_init *temp_r7;
    struct struct_080067a4_1_sub *temp_r4;

    temp_r7 = mem_heap_alloc_id(arg0, sizeof(struct unk_struct_08006bb4_init));
    temp_r7->unk10 = mem_heap_alloc_id(arg0, 10 * sizeof(u16));
    temp_r7->unk14 = func_08006328(arg0, arg6->unk0, arg6->unk1);
    temp_r7->unk8 = func_08006328(arg0, arg6->unk0 + 2, arg6->unk1 + 2);
    temp_r7->unk0 = arg2;
    temp_r7->unk4.str = arg3;
    temp_r7->unkC = arg4;
    temp_r7->unkE = arg5;
    temp_r7->unk18 = arg6;
    temp_r7->unk1C_0 = 0;
    temp_r7->unk1C_12 = 0;
    temp_r7->unk20 = NULL;
    temp_r7->unk28 = NULL;
    func_080060bc(arg6->unk4, temp_r7->unk10, arg6->unk18);
    if (arg7 != NULL) {
        func_0800620c(arg7, arg8, arg9, arg6->unk0, arg6->unk1, temp_r7->unk14, 0, 0);
    } else {
        func_08005ee4(temp_r7->unk14, temp_r7->unk10[4]);
    }
    temp_r7->unk1E = 0;
    if (arg6->unk1C != NULL) {
        for (temp_r4 = arg6->unk1C; temp_r4->unk4 != NULL; temp_r4++) {
            if (arg10) {
                run_func_after_task(func_080061d0(arg1, temp_r7->unk14, arg2, temp_r4->unk0, temp_r4->unk1, temp_r4->unk4, temp_r4->unk2, arg10), 
                                    func_0800679c, (uintptr_t)&temp_r7->unk1E);
                temp_r7->unk1E++;
            } else {
                func_080061a4(temp_r7->unk14, arg2, temp_r4->unk0, temp_r4->unk1, temp_r4->unk4, temp_r4->unk2);
            }
        }
    }
    
    return temp_r7;
}

struct unk_struct_08006bb4_init *func_080068f8(u16 arg0, struct BitmapFontBG *arg1, const char *arg2, s16 arg3, s16 arg4, 
                                struct struct_080067a4_1 *arg5, struct struct_08005e54 *arg6, s16 arg7, s16 arg8) {
    return func_080067a4(arg0, 0, arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, 0);
}

void func_0800694c(struct unk_struct_08006bb4_init *arg0) {
    struct struct_080067a4_1_sub *temp_r4;
    if (arg0->unk1C_0 == 1) {
        func_08006a8c(arg0);
    }
    if (arg0->unk18->unk1C != NULL) {
        for (temp_r4 = arg0->unk18->unk1C; temp_r4->unk4 != NULL; temp_r4++) {
            bmp_font_bg_delete_printed_data(arg0->unk0, temp_r4->unk4);
        }
    }
    func_08006364(arg0->unk8);
    func_08006364(arg0->unk14);
    mem_heap_dealloc(arg0->unk10);
    mem_heap_dealloc(arg0);
}

void func_0800699c(struct unk_struct_08006bb4_init *arg0) {
    struct struct_08005e54 *temp_r5 = arg0->unk4.as5e54;
    struct struct_080067a4_1 *temp_r4 = arg0->unk18;

    func_0800620c(temp_r5, arg0->unkC - 1, arg0->unkE - 1, temp_r4->unk0 + 2, temp_r4->unk1 + 2, arg0->unk8, 0, 0);
}

void func_080069d4(struct unk_struct_08006bb4_init *arg0) {
    struct struct_08005e54 *temp_r2 = arg0->unk4.as5e54;
    struct struct_080067a4_1 *temp_r1 = arg0->unk18;

    func_0800620c(arg0->unk8, 0, 0, temp_r1->unk0 + 2, temp_r1->unk1 + 2, temp_r2, arg0->unkC - 1, arg0->unkE - 1);
}

void func_08006a0c(struct unk_struct_08006bb4_init *arg0) {
    struct struct_080067a4_1 *temp_r5;
    u32 temp_r7 = arg0->unk1C_0;
    
    if (temp_r7 != 0) {
        return;
    }
    temp_r5 = arg0->unk18;
    func_0800699c(arg0);
    func_08005fe4(arg0->unk4.as5e54, arg0->unk10, arg0->unkC - 1, arg0->unkE - 1, temp_r5->unk0 + 2, temp_r5->unk1 + 2, temp_r7);
    func_0800620c(arg0->unk14, 0, 0, temp_r5->unk0, temp_r5->unk1, arg0->unk4.as5e54, arg0->unkC, arg0->unkE);
    if (arg0->unk20 != NULL) {
        arg0->unk20(arg0, arg0->unk24);
    }
    arg0->unk1C_0 = 1;
}

void func_08006a8c(struct unk_struct_08006bb4_init *arg0) {
    if (arg0->unk1C_0 != 1) {
        return;
    }
    func_080069d4(arg0);
    if (arg0->unk28 != NULL) {
        arg0->unk28(arg0, arg0->unk2C);
    }
    arg0->unk1C_0 = 0;
}

u32 func_08006ac0(struct unk_struct_08006bb4_init *arg0) {
    return arg0->unk1C_0;
}

void func_08006ac8(struct unk_struct_08006bb4_init *arg0, s16 arg1, s16 arg2) {
    if ((arg0->unkC == arg1) && (arg0->unkE == arg2)) {
        return;
    }
    
    switch (arg0->unk1C_0) {
        case 1:
            func_08006a8c(arg0);
            arg0->unkC = arg1;
            arg0->unkE = arg2;
            func_08006a0c(arg0);
            break;
        case 0:
            arg0->unkC = arg1;
            arg0->unkE = arg2;
            break;
    }
}

void func_08006b1c(struct unk_struct_08006bb4_init *arg0, void (*arg1)(struct unk_struct_08006bb4_init *, u32), u32 arg2, 
                                                    void (*arg3)(struct unk_struct_08006bb4_init *, u32), u32 arg4) {
    arg0->unk20 = arg1;
    arg0->unk24 = arg2;
    arg0->unk28 = arg3;
    arg0->unk2C = arg4;                                            
}

void func_08006b30(struct unk_struct_08006bb4 *arg0) {
    struct unk_struct_08006bb4_init *temp_r6 = arg0->unk0;

    struct struct_08005e54 *temp_r7 = temp_r6->unk4.as5e54;
    s32 temp_sl = temp_r6->unkC + arg0->unk6;
    s32 temp_r8 = temp_r6->unkE + arg0->unk8;
    s32 temp_r9 = arg0->unkA - arg0->unk6;
    s32 temp_r5 = arg0->unkC - arg0->unk8;
    
    func_08005fe4(temp_r7, temp_r6->unk10, temp_sl - 1, temp_r8 - 1, temp_r9 + 2, temp_r5 + 2, 0);
    func_0800620c(temp_r6->unk14, arg0->unk6, arg0->unk8, temp_r9, temp_r5, temp_r7, temp_sl, temp_r8);
}


// D_08936b84 function 1
struct unk_struct_08006bb4 *func_08006bb4(struct unk_struct_08006bb4_init *inputs) {
    struct unk_struct_08006bb4 *task;
    struct struct_080067a4_1 *temp1;

    if (inputs->unk1C_0 != 0) {
        return TASK_FAILED_TO_START;
    }

    temp1 = inputs->unk18;
    task = mem_heap_alloc(sizeof(struct unk_struct_08006bb4));
    task->unk0 = inputs;
    task->unk6 = task->unkA = temp1->unk0 / 2;
    task->unk8 = task->unkC = temp1->unk1 / 2;
    func_0800699c(inputs);
    func_08006b30(task);
    inputs->unk1C_0 = 2;

    return task;
}


// D_08936b84 function 2
u32 func_08006c08(struct unk_struct_08006bb4 *task) {
    struct unk_struct_08006bb4_init *inputs = task->unk0;
    struct struct_080067a4_1 *temp_r6 = inputs->unk18;
    u32 temp1, temp2;

    if (task->unk6 > 0) {
        task->unk6--;
    }

    if (task->unkA < temp_r6->unk0) {
        task->unkA++;
    }

    if (task->unk8 > 0) {
        task->unk8--;
    }

    if (task->unkC < temp_r6->unk1) {
        task->unkC++;
    }

    func_080069d4(inputs);
    func_08006b30(task);

    temp1 = task->unkA - task->unk6;
    temp2 = task->unkC - task->unk8;

    if ((temp1 == temp_r6->unk0) && (temp2 == temp_r6->unk1)) {
        inputs->unk1C_0 = 1;

        if (inputs->unk20 != NULL) {
            inputs->unk20(inputs, inputs->unk24);
        }

        return TRUE;
    }

    return FALSE;
}


// D_08936b94 function 1
struct unk_struct_08006bb4 *func_08006ca4(struct unk_struct_08006bb4_init *inputs) {
    struct unk_struct_08006bb4 *task;
    struct struct_080067a4_1 *temp1;

    if (inputs->unk1C_0 != 1) {
        return TASK_FAILED_TO_START;
    }

    temp1 = inputs->unk18;
    task = mem_heap_alloc(sizeof(struct unk_struct_08006bb4));
    task->unk0 = inputs;
    task->unk6 = task->unk8 = 0;
    task->unkA = temp1->unk0;
    task->unkC = temp1->unk1;
    inputs->unk1C_0 = 3;

    return task;
}


// D_08936b94 function 2
u32 func_08006ce8(struct unk_struct_08006bb4 *task) {
    struct unk_struct_08006bb4_init *inputs = task->unk0;
    struct struct_080067a4_1 *temp_r6 = inputs->unk18;
    s32 temp1, temp2, temp3;
    s32 temp4, temp5;

    func_080069d4(inputs);
    temp1 = task->unkA;
    temp2 = task->unk6;
    temp3 = task->unkC - task->unk8;

    if ((temp1 == temp2) && (temp3 == 0)) {
        inputs->unk1C_0 = 0;

        if (inputs->unk28 != NULL) {
            inputs->unk28(inputs, inputs->unk2C);
        }

        return TRUE;
    }

    temp4 = temp_r6->unk0 / 2;
    temp5 = temp_r6->unk1 / 2;
    if (task->unk6 < temp4) {
        task->unk6++;
    }

    if (task->unkA > temp4) {
        task->unkA--;
    }

    if (task->unk8 < temp5) {
        task->unk8++;
    }

    if (task->unkC > temp5) {
        task->unkC--;
    }
    func_08006b30(task);
    return FALSE;
}


// Disable Graphics Buffer?
void func_08006d80(void) {
    REG_DISPCNT = 0;
    PALETTE_RAM[0] = 0;
    D_03004b10.updateDisplay = FALSE;
}


// Reset Graphics Buffer
void func_08006da8(void) {
    D_03004b10.updateDisplay = FALSE;
    D_03004b10.DISPCNT = 0;
    D_03004b10.unk854_1 = FALSE;
    D_03004b10.unk854_3 = FALSE;
    D_03004b10.unk854_4 = FALSE;
    D_03004b10.modifyPalette = NULL;
    dma3_fill(0, D_03004b10.BG_CNT, 80, 0x20, 0x100);
}


// Flush Affine BG
void func_08006e00(void) {
    if (D_03004b10.updateDisplay) {
        CpuFastSet(&D_03004b10.affineBG, &REG_BG2PA, 8);
    }
}


// Set Affine BG
void func_08006e30(s32 layer, u16 dx, u16 dmx, u16 dy, u16 dmy, u32 xRef, u32 yRef) {
    s32 affineBgLayer = layer - 2;

    if ((affineBgLayer == 0) || (affineBgLayer == 1)) {
        struct AffineBG bgData;

        bgData.dx = dx;
        bgData.dmx = dmx;
        bgData.dy = dy;
        bgData.dmy = dmy;
        bgData.xRef = xRef;
        bgData.yRef = yRef;

        DmaCopy32(3, &bgData, ((affineBgLayer != 0) ? &D_03004b10.affineBG[1] : &D_03004b10.affineBG[0]), 16);
    }
}


// Flush Graphics Buffer
void func_08006e88(void) {
    volatile u32 dummy1, dummy2;
    u16 *srcPalette;
    s32 offset;

    if (!D_03004b10.updateDisplay) return;

    DmaCopy32(3, D_03004b10.BG_CNT, &REG_BG0CNT, 24);
    DmaCopy32(3, &D_03004b10.WIN0H, &REG_WIN0H, 24);

    dma3_set(D_03004b10.oam, OAMBase, 0x400, 0x20, 0x100);
    offset = func_08004270();
    srcPalette = (D_03004b10.unk854_1 || D_03004b10.unk854_4) ? D_030046c0[0] : D_03004b10.bgPalette[0];

    if (offset < 0) {
        dma3_set(srcPalette, PALETTE_RAM, 0x400, 0x20, 0x100);
    } else {
        if (offset > 0) {
            dma3_set(srcPalette, PALETTE_RAM, offset * 2, 0x10, 0x100);
        }
        if (offset < 0x1ff) {
            volatile void *dest, *src;
            u32 dumb = 1;

            src = srcPalette + offset + 1;
            dest = PALETTE_RAM + (offset + 1) * dumb; // likely a macro thing
            dma3_set(src, dest, (0x1ff - offset) * 2, 0x10, 0x100);
        }
    }
    REG_DISPCNT = D_03004b10.DISPCNT;
}


// Update Palette
void func_08006f84(void) {
    if (D_03004b10.unk854_1 || D_03004b10.unk854_4) {
        dma3_set(D_03004b10.bgPalette, D_030046c0, 0x400, 0x20, 0x100);
    }
    if (D_03004b10.unk854_4 && (D_03004b10.modifyPalette != NULL)) {
        D_03004b10.modifyPalette(D_030046c0);
    }
    func_0800724c();
}


// Clear OAM Buffer
void func_08006fec(void) {
    dma3_fill(0x22222222, D_03004b10.oam, 0x400, 0x20, 0x100);
}


// Fill Palette with Solid Colour
void func_08007014(u16 colour) {
    dma3_fill(colour | (colour << 16), D_03004b10.bgPalette, 0x400, 0x20, 0x100);
}


// Return Screen from Solid Colour
void func_0800703c(u16 time, u16 colour) {
    if (D_03004b10.unk854_1) {
        D_03000ea6 = (D_03000ea6 * time) / D_03000ea4;
    } else {
        D_03000ea6 = time;
    }
    D_03000ea4 = time;
    D_03000ea8 = colour;
    D_03004b10.unk854_2 = FALSE;
    D_03004b10.unk854_3 = FALSE;
    D_03004b10.unk854_1 = TRUE;
}


// Fade Screen to Solid Colour
void func_080070c4(u16 time, u16 colour) {
    if (D_03004b10.unk854_1) {
        D_03000ea6 = (D_03000ea6 * time) / D_03000ea4;
    } else {
        D_03000ea6 = 0;
    }
    D_03000ea4 = time;
    D_03000ea8 = colour;
    D_03004b10.unk854_2 = TRUE;
    D_03004b10.unk854_3 = FALSE;
    D_03004b10.unk854_1 = TRUE;
}


// ?
void func_0800714c() {
    D_03004b10.unk854_1 = FALSE;
    D_03004b10.unk854_3 = FALSE;
}


#include "asm/code_080068f8/asm_0800716c.s"


// Update Palette Transition
void func_0800724c(void) {
    if (!D_03004b10.unk854_1) return;

    if (D_03004b10.unk854_2) {
        if (++D_03000ea6 >= D_03000ea4) {
            D_03000ea6 = D_03000ea4;
            D_03004b10.unk854_3 = TRUE;
            D_03004b10.DISPCNT = 0;
            dma3_fill(D_03000ea8, D_03004b10.bgPalette, 0x400, 0x10, 0x100);
            dma3_fill(D_03000ea8, D_030046c0, 0x400, 0x10, 0x100);
            return;
        }
    } else {
        if (--D_03000ea6 <= 0) {
            D_03000ea6 = 0;
            D_03004b10.unk854_3 = TRUE;
            D_03004b10.unk854_1 = FALSE;
        }
    }
    func_0800716c(D_03000ea8, 0, D_03000ea4, D_03000ea6);
}


// Enable Display Updates
void func_08007324(u32 update) {
    D_03004b10.updateDisplay = update;
}


// Set Palette Modifier Function
void func_08007344(void *paletteFunc) {
    D_03004b10.unk854_4 = TRUE;
    D_03004b10.modifyPalette = paletteFunc;
}


// ?
void func_08007370(void) {
    D_03004b10.unk854_4 = FALSE;
    D_03004b10.modifyPalette = NULL;
}


// Set Palette
void func_08007394(const void *palette, u32 indexOfs, u32 total) {
    dma3_set(palette, D_03004b10.bgPalette[indexOfs], total * 0x20, 0x20, 0x100);
}


// Init. Sprite Library for Internal Library Graphics Buffer
void func_080073b8(void) {
    sprite_lib_set_mem_alloc(mem_heap_alloc, mem_heap_dealloc);
    sprite_lib_set_mem_alloc_id(mem_heap_alloc_id);
    gSpriteHandler = sprite_handler_create(0x80, D_03004b10.oam, 100, 0);
}


// Init. OAM Buffer
void func_080073f0(void) {
    sprite_handler_reset(gSpriteHandler);
    func_080020ec(0x20, D_03004b10.oam);
}


// Update OAM Buffer
void func_08007410(void) {
    func_08006fec();
    func_0804e1c8(gSpriteHandler);
    func_08002584();
}
