#include "code_080092cc.h"

// Gyro/Rumble Library Interface

asm(".include \"include/gba.inc\"");//Temporary

static struct struct_0300443c D_03001110;
static s32 D_03001134[22]; // ..?
static u32 D_03001190;
static u32 D_03001194; // ..?
static u32 D_03001198; // ..?
static u8 D_0300119c; 
static u8 D_0300119d;
static volatile u32 D_030011a0;
static u8 D_030011a4;
static s32 D_030011a8;
static u32 D_030011ac; // unknown type
static s32 D_030011b0[20]; // unknown type
static s8 D_03001200; // unknown type
static s8 D_03001201; // unknown type
static s32 D_03001204; // unknown type
static s32 D_03001208; // unknown type
static s16 D_0300120c; // unknown type
static s16 D_0300120e; // unknown type
static s32 D_03001210[2]; // unknown type

extern u32 (*fast_udivsi3)(u32 dividend, u32 divisor); // move into a header

void func_080092cc(void) {
    func_0804e640(&D_03001110);
    func_0804e690(24);
    func_0804e6c4(300);
    if (!D_03004aec) {
        D_03004aec = 60;
    }
    D_0300119c = 0;
    D_0300119d = 0;
    D_030064d4 = func_080093c0;
}

u32 func_0800931c(void) {
    u32 temp_r2 = func_0804e870(&D_03001190);

    if ((D_03001190 + 0xb) < 0x17) {
        if (D_0300119c < 6) {
            D_0300119c++;
        } else {
            D_03001190 = 0;
        }
    } else {
        D_0300119c = 0;
    }
    D_0300119d = temp_r2 == 0;
    return temp_r2;
}

s32 func_0800936c(void) {
    s32 *temp = &D_03001190;
    return FIXED_POINT_MUL((INT_TO_FIXED(D_03004aec) / 49), *temp) >> 4; // / 8
}

s32 func_08009394(void) {
    return func_0800936c();
}

s32 func_080093a0(void) {
    return 0;
}

s32 func_080093a4(void) {
    return 0;
}

u32 func_080093a8(void) {
    return D_03001190;
}

u32 func_080093b4(void) {
    return D_0300119d;
}

s32 func_080093c0(void) {
    s32 temp_r0;
    u32 temp_r3 = 0;
    u32 temp_ip = 1;
    u32 i;
    s32 sp0[20];
    s32 temp;
    
    REG_IE &= ~INTERRUPT_TIMER3;
    temp = D_030011a0;
    
    for (i = 0; i < temp; i++) {
        sp0[i] = D_030011b0[i];
    }
    D_030011a0 = 0;
    REG_IE |= INTERRUPT_TIMER3;
    if (temp) {
        temp_r3 = ABS(sp0[0]);
        for (i = 1; i < temp; i++) {
            temp_r0 = ABS(sp0[i]);
            if (temp_r0 > temp_r3) {
                temp_r3 = ABS(sp0[i]);
            }
        }
        temp_ip = 1;
    }
    return fast_udivsi3(temp_r3, temp_ip);
}

void func_08009458(void) {
    s32 temp_r4;
    volatile u32 *temp_r3;
    u32 temp_r1;

    func_0804e8f8(0);
    temp_r4 = func_0804e598();
    if ((D_030011a0 < 0x14) && (temp_r4 != -1)) {
        D_030011b0[D_030011a0++] = temp_r4;
    }
    if (D_030011a4 & 1) {
        func_0804e8f8(TRUE);
        D_030011a8 += 0xaaa;
        if (D_030011a8 >= D_030011ac) {
            D_030011a4 &= ~1;
            if (D_030011ac > 0x10000) {
                D_030011a8 = 0x10000;
            }
        }
    } else {
        func_0804e8f8(FALSE);
        D_030011a8 -= 0x375;
        if (D_030011a8 < 0) {
            D_030011a8 = 0;
        }
    }
    *((volatile u32 *)0x0400010c) = 0xc3fff0; // TODO gba_timer_regs
}

void func_08009508(void) {
    *((volatile u32 *)0x0400010c) = 0xc3fff0; // TODO gba_timer_regs
    func_0804e8f8(FALSE);
    D_030011a4 = 0;
    D_030011a8 = 0;
    D_030011ac = 0;
    D_030011a0 = 0;
}

#include "asm/code_080092cc/asm_08009548.s"

#include "asm/code_080092cc/asm_08009564.s"

#include "asm/code_080092cc/asm_080095a8.s"

#include "asm/code_080092cc/asm_080095c0.s"

#include "asm/code_080092cc/asm_080095e8.s"

#include "asm/code_080092cc/asm_08009604.s"

#include "asm/code_080092cc/asm_0800965c.s"

#include "asm/code_080092cc/asm_08009668.s"

#include "asm/code_080092cc/asm_08009674.s"

#include "asm/code_080092cc/asm_080096a4.s"

#include "asm/code_080092cc/asm_080096e0.s"

#include "asm/code_080092cc/asm_08009760.s"

#include "asm/code_080092cc/asm_080097b4.s"

#include "asm/code_080092cc/asm_080097d0.s"

#include "asm/code_080092cc/asm_08009814.s"

#include "asm/code_080092cc/asm_0800982c.s"
