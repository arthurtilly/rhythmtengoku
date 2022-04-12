#include "global.h"
#include "code_08008b00.h"

#include "code_08001360.h"

// Could use better split

asm(".include \"include/gba.inc\"");//Temporary

static u32 D_030010f4;
static u8 D_030010f8;
static u8 D_030010f9;
static s32 D_030010fc; // unknown type
static s32 D_03001100; // unknown type
static s32 D_03001104; // unknown type
static s32 D_03001108; // unknown type
static s32 D_0300110c; // unknown type

// Random utility functions

// https://decomp.me/scratch/g0MzU - super annoying -0x8000 problem, 94.41% matched most recently
#include "asm/code_08008b00/asm_08008b00.s"

void func_08008d44(u32 arg0, u32 arg1, s16 arg2, s32 arg3, s32 arg4, s16 arg5, u32 arg6, u32 arg7, u16 arg8, struct unk_struct_08008b00 *arg9, u32 arg10) {
    func_08008b00(arg0, arg1, arg2, arg3, arg4, arg5 + 0xFE00, arg6, arg7, arg8, arg9, arg10, 0);
}

void func_08008d88(u32 arg0, u32 arg1, s16 arg2, s32 arg3, s32 arg4, s16 arg5, u32 arg6, u32 arg7, u16 arg8, struct unk_struct_08008b00 *arg9, u32 arg10) {
    func_08008b00(arg0, arg1, arg2, arg3, arg4, arg5 + 0xFE00, arg6, arg7, arg8, arg9, arg10, 1);
}

void func_08008dcc(s8 arg0[], u32 length) {
    s32 i;
    for (i = 0; i < length; i++) {
        arg0[i] = i;
    }
}

void func_08008de4(s16 arg0[], u32 length) {
    s32 i;
    for (i = 0; i < length; i++) {
        arg0[i] = i;
    }
}

void func_08008dfc(s32 arg0[], u32 length) {
    s32 i;
    for (i = 0; i < length; i++) {
        arg0[i] = i;
    }
}

// Shuffles s8/u8 array
void func_08008e10(s8 arg0[], u32 length) {
    s32 i;
    func_08008dcc(arg0, length);
    
    for (i = 0; i < length; i++) {
        u32 randIndex = func_08001980(length);
        s8 temp = arg0[i];
        arg0[i] = arg0[randIndex];
        arg0[randIndex] = temp;
    }
}

// Shuffles s16/u16 array
void func_08008e40(s16 arg0[], u32 length) {
    s32 i;
    func_08008de4(arg0, length);
    
    for (i = 0; i < length; i++) {
        u32 randIndex = func_08001980(length);
        s16 temp = arg0[i];
        arg0[i] = arg0[randIndex];
        arg0[randIndex] = temp;
    }
}

// Shuffles s32/u32 array
void func_08008e74(s32 arg0[], u32 length) {
    s32 i;
    func_08008dfc(arg0, length);
    
    for (i = 0; i < length; i++) {
        u32 randIndex = func_08001980(length);
        s32 temp = arg0[i];
        arg0[i] = arg0[randIndex];
        arg0[randIndex] = temp;
    }
}

void func_08008ea4(s16 arg0[], s16 arg1[], u32 arg2) {
    s32 i;
    for (i = 0; i < arg2 * 16; i++) {
        arg1[i] = 0x7FFF - arg0[i];
    }
}

s32 func_08008ed0(s32 arg0[]) {
    u32 temp = func_0800c490();
    if (arg0 == NULL) {
        return 0;
    }
    return arg0[temp];
}

s32 func_08008eec(s32 arg0[], u32 arg1) {
    if (arg0 == NULL) {
        return 0;
    }
    return arg0[arg1];
}

s32 func_08008f04(u32 arg0, u32 arg1, u32 arg2, u32 arg3) {
    return func_08007b80((arg1 - arg0) * arg2, arg3) + arg0;
}

s32 func_08008f1c(void) {
    u32 i;
    u32 temp2 = 1000000;
    *(volatile u8 *)(CartRAMBase) = 0x70;
	
    for (i = 0; i < temp2; i++) {
        u8 temp = *(volatile u8 *)(CartRAMBase + 2);
        if (temp & 0x40) {
            D_030010f4 = i;
            return temp & 1;
        }
    }
	
    D_030010f4 = i;
    return -1;
}

u32 func_08008f68(void) {
	return D_030010f4;
}

s32 func_08008f74(void) {
    volatile u32 temp;
    *(volatile u8*)(CartRAMBase + 3) = 1;
    *(volatile u8*)(CartRAMBase) = 0xFF;
    *(volatile u8*)(CartRAMBase) = 0x90;
    
    for (temp = 0; temp < 100; temp++) {}
    
    *(volatile u8*)(CartRAMBase + 2) = 0;
    
    for (temp = 0; temp < 100; temp++) {}
    
    D_030010f8 = *(volatile u8*)(CartRAMBase + 2);
    D_030010f9 = *(volatile u8*)(CartRAMBase + 2);
    return func_08008f1c();
}

#include "asm/code_08008b00/asm_08008fe0.s"

#include "asm/code_08008b00/asm_08008ff8.s"

#include "asm/code_08008b00/asm_08009024.s"

#include "asm/code_08008b00/asm_08009048.s"

#include "asm/code_08008b00/asm_08009090.s"

#include "asm/code_08008b00/asm_080090d0.s"

#include "asm/code_08008b00/asm_080090ec.s"

#include "asm/code_08008b00/asm_08009150.s"

#include "asm/code_08008b00/asm_0800915c.s"

#include "asm/code_08008b00/asm_0800917c.s"

#include "asm/code_08008b00/asm_080091a4.s"

#include "asm/code_08008b00/asm_080091c4.s"

#include "asm/code_08008b00/asm_080091d8.s"

#include "asm/code_08008b00/asm_080091fc.s"

#include "asm/code_08008b00/asm_0800921c.s"

#include "asm/code_08008b00/asm_08009240.s"

#include "asm/code_08008b00/asm_08009268.s"

#include "asm/code_08008b00/asm_0800928c.s"
