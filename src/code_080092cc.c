#include "code_080092cc.h"

// Gyro/Rumble Library Interface

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
static u32 D_030011ac;
static s32 D_030011b0[20];
static u8 D_03001200;
static u8 D_03001201;
static s32 D_03001204;
static u32 D_03001208;
static volatile u16 D_0300120c;
static volatile u16 D_0300120e;
static volatile u32 *D_03001210;
static s32 D_03001214; // ..?

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
    return FIXED_POINT_MUL((INT_TO_FIXED(D_03004aec) / 49), *temp) >> 4; // / 16
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
    REG_TM3 = ((TIMER_ENABLE | TIMER_IRQ | TIMER_FREQUENCY_1024_PULSES) << 16) | 0xfff0;
}

void func_08009508(void) {
    REG_TM3 = ((TIMER_ENABLE | TIMER_IRQ | TIMER_FREQUENCY_1024_PULSES) << 16) | 0xfff0;
    func_0804e8f8(FALSE);
    D_030011a4 = 0;
    D_030011a8 = 0;
    D_030011ac = 0;
    D_030011a0 = 0;
}

void func_08009548(void) {
    REG_TM3 = 0;
    func_0804e8f8(FALSE);
    func_0804e914(FALSE);
}

void func_08009564(u32 arg0) {
    s24_8 temp_r4;

    if (arg0 > 0x18) {
        arg0 = 0x18;
    }
    temp_r4 = INT_TO_FIXED(arg0) * 16;
    if (((D_030011a4 & 1) == 0) || (D_030011ac <= temp_r4)) {
        D_030011ac = temp_r4;
    }
    if (D_030011a8 < D_030011ac) {
        D_030011a4 |= 1;
    }
}

void func_080095a8(void) {
    func_0804e8f8(FALSE);
    D_030011a4 = 0;
}

void func_080095c0(void) {
    if (D_030011a4 & 1) {
        func_0804e8f8(TRUE);
    } else {
        func_0804e8f8(FALSE);
    }
}

// Split here?

void func_080095e8(u32 arg0) {
    D_03005370 = 0;
    D_03004af4 = 0;
    D_030046b0 = arg0;
}

void func_08009604(void) {
    s32 temp_r2;
    s32 temp_r3;
    s32 temp_r5;
    
    D_03004af4 = 0;
    temp_r5 = D_03005370;
    temp_r3 = func_080093a8();
    temp_r2 = temp_r3 >> 4; // / 16
    D_03005370 = temp_r2;
    if ((temp_r2 >= (D_030046b0 * 8)) && (temp_r2 > temp_r5)) {
        if ((temp_r2 - temp_r5) > ((temp_r2 * 5) >> 3)) { // / 8
            s32 temp = temp_r3 >> 7; // / 128
            temp *= temp;
            temp = FIXED_TO_INT(temp);
            if (!temp) {
                temp = 1;
            }
            D_03004af4 = temp;
        }
    }
}

u32 func_0800965c(void) {
    return D_03004af4;
}

void func_08009668(u32 arg0) {
    D_030046b0 = arg0;
}

void func_08009674(void) {
    D_0300120c = 2 | 1;
    REG_GPIO_DATA = D_0300120c;
    D_0300120e = 2 | 1;
    D_0300120e |= 8;
    REG_GPIO_DIR = D_0300120e;
}

void func_080096a4(u32 arg0) {
    if (!D_03001200) {
        arg0 = FALSE;
    }
    D_0300120c &= ~8;
    D_0300120c |= arg0 << 3;
    REG_GPIO_DATA = D_0300120c;
}

// partial copy of func_08009458 
void func_080096e0(void) {
    if (D_03001201 & 1) {
        func_080096a4(TRUE);
        D_03001204 += 0xaaa;
        if (D_03001204 >= D_03001208) {
            D_03001201 &= ~1;
            if (D_03001208 > 0x10000) {
                D_03001204 = 0x10000;
            }
        }
    } else {
        func_080096a4(FALSE);
        D_03001204 -= 0x375;
        if (D_03001204 < 0) {
            D_03001204 = 0;
        }
    }
    *D_03001210 = ((TIMER_ENABLE | TIMER_IRQ | TIMER_FREQUENCY_1024_PULSES) << 16) | 0xfff0;
}

void func_08009760(u32 arg0) {
    D_03001210 = &(&(REG_TM0))[arg0];
    func_08009674();
    *D_03001210 = ((TIMER_ENABLE | TIMER_IRQ | TIMER_FREQUENCY_1024_PULSES) << 16) | 0xfff0;
    func_080096a4(FALSE);
    D_03001201 = 0;
    D_03001204 = 0;
    D_03001208 = 0;
    D_03001200 = 1;
}

void func_080097b4(void) {
    *D_03001210 = 0;
    func_08009814();
    func_0800982c(FALSE);
}

// copy of func_08009564
void func_080097d0(u32 arg0) {
    s24_8 temp_r4;

    if (arg0 > 0x18) {
        arg0 = 0x18;
    }
    temp_r4 = INT_TO_FIXED(arg0) * 16;
    if (((D_03001201 & 1) == 0) || (D_03001208 <= temp_r4)) {
        D_03001208 = temp_r4;
    }
    if (D_03001204 < D_03001208) {
        D_03001201 |= 1;
    }
}

void func_08009814(void) {
    func_080096a4(FALSE);
    D_03001201 = 0;
}

void func_0800982c(u32 arg0) {
    func_080096a4(FALSE);
    D_03001200 = arg0;
}
