#include "global.h"
#include "code_08001360.h"

asm(".include \"include/gba.inc\"");//Temporary

extern u16 D_030000b4;
extern u16 D_03000098;

typedef u32 (*D_0300009c_func)(void);

extern D_0300009c_func D_0300009c;

extern u16 D_03004ac0;
extern s16 D_03004afc;
extern s16 D_030053b8;
extern s16 D_03004b00;
extern u16 D_030000a0;
extern u16 D_030000a2;
extern s8 D_030000a8;
extern u16 D_030000ac;

extern u16 D_030046b8;
extern u16 D_03005378;
extern u16 D_0300537c;
extern u16 D_030046b4;
extern u16 D_030000a4;
extern u16 D_030000a6;
extern u8 D_030000a9;

extern u32 D_030053b4;
extern u32 D_03005374;


void func_08001360(void) {
    func_08003f28();
    D_03000098 = NULL;
    D_0300009c = NULL;
    return;
}

void func_08001380() {
    func_08006e00();
    func_08003f50();
    if (D_0300009c != 0) {
        D_0300009c();
    }
    D_03000098 = 1;
    return;
}


void func_080013a8(void) {
    volatile u32 temp;
    if (!(REG_DISPCNT & 0x80)) {
        while (!D_03000098) temp = *((u32*)GameROMBase + (u16)func_08001964());
    }
    D_03000098 = 0;
}

void func_080013e8(u32 arg1) {
	D_0300009c = arg1;
	return;
}

void func_080013f4(u16 arg1) {
    D_03004ac0 = arg1;
    D_03004afc = NULL;
    D_030053b8 = NULL;
    D_03004b00 = NULL;
    D_030000a0 = arg1;
    D_030000a2 = NULL;
    return;
}

void func_0800142c(u16 arg1) {
    D_030046b8 = arg1;
    D_03005378 = NULL;
    D_0300537c = NULL;
    D_030046b4 = NULL;
    D_030000a4 = arg1;
    D_030000a6 = NULL;
    return;
}

void func_08001464(u16 arg1) {
    func_080013f4(~REG_KEY);
    func_0800142c(NULL);
    D_030000a8 = NULL;
    D_030000ac = 0x3ff;
}

#include "asm/code_08001360/asm_0800149c.s"

#include "asm/code_08001360/asm_0800152c.s"

#include "asm/code_08001360/asm_080015bc.s"

#include "asm/code_08001360/asm_08001724.s"

void func_0800181c(u8 arg1) {
    D_030000a9 = arg1;
    return;
}

u32 func_08001828(void) {
    if (D_030053b4 < D_03005374) {
        return D_030053b4 + 1;
    }
    return D_030053b4;
}

u8 func_0800184c() {
    return D_030053b4 >= D_03005374;
}

#include "asm/code_08001360/asm_0800186c.s"

#include "asm/code_08001360/asm_080018e0.s"

void func_08001958(u32 arg1) {
    D_030000b4 = arg1;
    return;
}

u32 func_08001964(void) {
    D_030000b4 = D_030000b4 * 0x6d + 0x3fd;
    return D_030000b4;
}

u32 func_08001980(u16 arg1) {   // Random
    D_030000b4 = D_030000b4 * 0x6d + 0x3fd;
    return (D_030000b4 * arg1 >> 0x10) & 0xffff;
}

#include "asm/code_08001360/asm_080019a4.s"

#include "asm/code_08001360/asm_080019e4.s"

void func_08001a24() {
    return;
}

#include "asm/code_08001360/asm_08001a28.s"

#include "asm/code_08001360/asm_08001a64.s"

#include "asm/code_08001360/asm_08001b48.s"

#include "asm/code_08001360/asm_08001b98.s"

#include "asm/code_08001360/asm_08001bf8.s"

#include "asm/code_08001360/asm_08001c64.s"

#include "asm/code_08001360/asm_08001cd8.s"

#include "asm/code_08001360/asm_08001d44.s" // Unused

#include "asm/code_08001360/asm_08001d74.s"

#include "asm/code_08001360/asm_08001ddc.s"

#include "asm/code_08001360/asm_08001e4c.s"

#include "asm/code_08001360/asm_08001ec4.s"

u32 func_08001f34(struct struct_08001f94 *arg1) {
    u32 temp;
    temp = func_08006580(0x18);
    func_08001bf8(temp, arg1->unk0, arg1->unk1, arg1->unk4, arg1->unk8, 0, arg1->unkC);
    return temp;
}

u32 func_08001f64(struct struct_08001f94 *arg1) {
    u32 temp;
    temp = func_08006580(0x18);
    func_08001c64(temp, arg1->unk0, arg1->unk1, arg1->unk4, arg1->unk8, 0, arg1->unkC);
    return temp;
}

u32 func_08001f94(struct struct_08001f94 *arg1) {
    u32 temp;
    temp = func_08006580(0x18);
    func_08001cd8(temp, arg1->unk0, arg1->unk1, arg1->unk4, arg1->unk8, 0, arg1->unkC);
    return temp;
}

u8 func_08001fc4(u8 *arg1) {
    func_08001b48();
    return ((*arg1 << 31) == 0);
}
