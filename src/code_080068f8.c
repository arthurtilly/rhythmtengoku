#include "code_080068f8.h"
#include "code_08003980.h"
#include "bitmap_font.h"
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

#include "asm/code_080068f8/asm_0800679c.s"

#include "asm/code_080068f8/asm_080067a4.s"

#include "asm/code_080068f8/asm_080068f8.s"

#include "asm/code_080068f8/asm_0800694c.s"

#include "asm/code_080068f8/asm_0800699c.s"

#include "asm/code_080068f8/asm_080069d4.s"

#include "asm/code_080068f8/asm_08006a0c.s"

#include "asm/code_080068f8/asm_08006a8c.s"

#include "asm/code_080068f8/asm_08006ac0.s"

#include "asm/code_080068f8/asm_08006ac8.s"

#include "asm/code_080068f8/asm_08006b1c.s"

#include "asm/code_080068f8/asm_08006b30.s"

// D_08936b84 function 1
struct unk_struct_08006bb4 *func_08006bb4(struct unk_struct_08006bb4_init *arg0) {
    u8 *temp1;
    struct unk_struct_08006bb4 *temp;

    if (arg0->unk1C_1) {
        return (void *)-1;
    }
    
    temp1 = arg0->unk18;
    temp = mem_heap_alloc(sizeof(struct unk_struct_08006bb4));
    temp->unk0 = arg0;
    temp->unk6 = temp->unkA = temp1[0] / 2;
    temp->unk8 = temp->unkC = temp1[1] / 2;
    func_0800699c(arg0);
    func_08006b30(temp);
    arg0->unk1C_1 = 2;

    return temp;
}

// D_08936b84 function 2
u32 func_08006c08(struct unk_struct_08006bb4 *arg0) {
    struct unk_struct_08006bb4_init *temp_r5 = arg0->unk0;
    u8 *temp_r6 = temp_r5->unk18;
    u32 temp1, temp2;

    if (arg0->unk6 > 0) {
        arg0->unk6--;
    }
    if (arg0->unkA < temp_r6[0]) {
        arg0->unkA++;
    }
    if (arg0->unk8 > 0) {
        arg0->unk8--;
    }
    if (arg0->unkC < temp_r6[1]) {
        arg0->unkC++;
    }
    
    func_080069d4(temp_r5);
    func_08006b30(arg0);

    temp1 = arg0->unkA - arg0->unk6;
    temp2 = arg0->unkC - arg0->unk8;
    if ((temp1 == temp_r6[0]) && (temp2 == temp_r6[1])) {
        temp_r5->unk1C_1 = 1;
        if (temp_r5->unk20 != NULL) {
            temp_r5->unk20(temp_r5, temp_r5->unk24);
        }
        return TRUE;
    }
    return FALSE;
}


// D_08936b94 function 1
#include "asm/code_080068f8/asm_08006ca4.s"

// D_08936b94 function 2
#include "asm/code_080068f8/asm_08006ce8.s"

#include "asm/code_080068f8/asm_08006d80.s"


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
    func_0804ca80(mem_heap_alloc, mem_heap_dealloc);
    func_0804ca94(mem_heap_alloc_id);
    D_03005380 = func_0804caa0(0x80, D_03004b10.oam, 100, 0);
}


// Init. OAM Buffer
void func_080073f0(void) {
    func_0804cbcc(D_03005380);
    func_080020ec(0x20, D_03004b10.oam);
}


// Update OAM Buffer
void func_08007410(void) {
    func_08006fec();
    func_0804e1c8(D_03005380);
    func_08002584();
}
