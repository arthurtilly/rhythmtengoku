#include "global.h"
#include "code_08001360.h"

asm(".include \"include/gba.inc\"");//Temporary

// Can be better split

static u16 D_03000098;
static D_0300009c_func D_0300009c;
static u16 D_030000a0;
static u16 D_030000a2;
static u16 D_030000a4;
static u16 D_030000a6;
static s8 D_030000a8;
static u8 D_030000a9;
static s16 D_030000aa; // unknown type
static u16 D_030000ac;
static s32 D_030000b0; // unknown type
static u16 D_030000b4;
static s32 D_030000b8[32]; // unknown type
static s32 D_03000138[64]; // unknown type
static s32 D_03000238[64]; // unknown type
static s32 D_03000338[2]; // unknown type
static s32 D_03000340[8]; // unknown type
static s32 D_03000360[2]; // unknown type
static s32 D_03000368[32]; // unknown type
static s32 D_030003e8[120]; // unknown type

void func_08001360(void) {
    func_08003f28();
    D_03000098 = 0;
    D_0300009c = NULL;
    return;
}

void func_08001380(void) {
    func_08006e00();
    func_08003f50();
    if (D_0300009c != NULL) {
        D_0300009c();
    }
    D_03000098 = 1;
    return;
}

void func_080013a8(void) {
    volatile u32 temp;
    if (!(REG_DISPCNT & 0x80)) {
        while (!D_03000098) {
			temp = *((u32*)GameROMBase + (u16)func_08001964());
		}
    }
    D_03000098 = 0;
}

void func_080013e8(D_0300009c_func arg1) {
	D_0300009c = arg1;
	return;
}

void func_080013f4(u16 arg1) {
    D_03004ac0 = arg1;
    D_03004afc = 0;
    D_030053b8 = 0;
    D_03004b00 = 0;
    D_030000a0 = arg1;
    D_030000a2 = 0;
    return;
}

void func_0800142c(u16 arg1) {
    D_030046b8 = arg1;
    D_03005378 = 0;
    D_0300537c = 0;
    D_030046b4 = 0;
    D_030000a4 = arg1;
    D_030000a6 = 0;
    return;
}

void func_08001464(u16 arg1) {
    func_080013f4(~REG_KEY);
    func_0800142c(0);
    D_030000a8 = 0;
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

u8 func_0800184c(void) {
    return D_030053b4 >= D_03005374;
}

#include "asm/code_08001360/asm_0800186c.s"

#include "asm/code_08001360/asm_080018e0.s"

void func_08001958(u32 arg1) {
    D_030000b4 = arg1;
    return;
}

u16 func_08001964(void) {
    D_030000b4 = D_030000b4 * 0x6d + 0x3fd;
    return D_030000b4;
}

u16 func_08001980(u16 arg1) {   // Random
    D_030000b4 = D_030000b4 * 0x6d + 0x3fd;
    return (D_030000b4 * arg1) >> 0x10;
}

#include "asm/code_08001360/asm_080019a4.s"

#include "asm/code_08001360/asm_080019e4.s"

void func_08001a24_stub(void) {

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
    temp = mem_heap_alloc(0x18);
    func_08001bf8(temp, arg1->unk0, arg1->unk1, arg1->unk4, arg1->unk8, 0, arg1->unkC);
    return temp;
}

u32 func_08001f64(struct struct_08001f94 *arg1) {
    u32 temp;
    temp = mem_heap_alloc(0x18);
    func_08001c64(temp, arg1->unk0, arg1->unk1, arg1->unk4, arg1->unk8, 0, arg1->unkC);
    return temp;
}

u32 func_08001f94(struct struct_08001f94 *arg1) {
    u32 temp;
    temp = mem_heap_alloc(0x18);
    func_08001cd8(temp, arg1->unk0, arg1->unk1, arg1->unk4, arg1->unk8, 0, arg1->unkC);
    return temp;
}

u8 func_08001fc4(u8 *arg1) {
    func_08001b48();
    return ((*arg1 << 31) == 0);
}

#include "asm/code_08001360/asm_08001fe0.s"

#include "asm/code_08001360/asm_08002018.s"

#include "asm/code_08001360/asm_08002050.s"

#include "asm/code_08001360/asm_08002088.s"

#include "asm/code_08001360/asm_080020ec.s"

#include "asm/code_08001360/asm_08002150.s"

#include "asm/code_08001360/asm_08002194.s"

#include "asm/code_08001360/asm_080021b8.s"

#include "asm/code_08001360/asm_0800222c.s"

#include "asm/code_08001360/asm_08002260.s"

#include "asm/code_08001360/asm_08002280.s"

#include "asm/code_08001360/asm_080022bc.s"

#include "asm/code_08001360/asm_080022d8.s"

#include "asm/code_08001360/asm_080022f4.s"

#include "asm/code_08001360/asm_08002310.s"

#include "asm/code_08001360/asm_0800232c.s"

#include "asm/code_08001360/asm_080024dc.s"

#include "asm/code_08001360/asm_08002500.s"

#include "asm/code_08001360/asm_08002520.s"

#include "asm/code_08001360/asm_0800253c.s"

#include "asm/code_08001360/asm_08002584.s"

#include "asm/code_08001360/asm_080025bc.s"

#include "asm/code_08001360/asm_080025d8.s"

#include "asm/code_08001360/asm_080025fc.s"

#include "asm/code_08001360/asm_08002630.s"

#include "asm/code_08001360/asm_08002634.s"

#include "asm/code_08001360/asm_0800267c.s"

#include "asm/code_08001360/asm_08002698.s"

#include "asm/code_08001360/asm_080026c4.s"

#include "asm/code_08001360/asm_080026fc.s"

#include "asm/code_08001360/asm_0800274c.s"

#include "asm/code_08001360/asm_08002794.s"

#include "asm/code_08001360/asm_080027dc.s"

#include "asm/code_08001360/asm_08002828.s"

#include "asm/code_08001360/asm_08002838.s"

#include "asm/code_08001360/asm_08002868.s"

#include "asm/code_08001360/asm_08002880.s"

#include "asm/code_08001360/asm_08002894.s"

#include "asm/code_08001360/asm_080028a8.s"

#include "asm/code_08001360/asm_080028c4.s"

#include "asm/code_08001360/asm_080028d8.s"

#include "asm/code_08001360/asm_080028ec.s"

#include "asm/code_08001360/asm_08002920.s"

#include "asm/code_08001360/asm_08002934.s"

#include "asm/code_08001360/asm_0800294c.s"

#include "asm/code_08001360/asm_08002968.s"

#include "asm/code_08001360/asm_08002978.s"

#include "asm/code_08001360/asm_0800298c.s"

#include "asm/code_08001360/asm_080029b0.s"

#include "asm/code_08001360/asm_080029c4.s"

#include "asm/code_08001360/asm_080029d8.s"

#include "asm/code_08001360/asm_08002a18.s"

#include "asm/code_08001360/asm_08002a54.s"

#include "asm/code_08001360/asm_08002a6c.s"

#include "asm/code_08001360/asm_08002b10.s"

#include "asm/code_08001360/asm_08002db0.s"

#include "asm/code_08001360/asm_08002db8.s"

#include "asm/code_08001360/asm_08002dc4.s"

#include "asm/code_08001360/asm_08002dec.s"

#include "asm/code_08001360/asm_08002e18.s"

#include "asm/code_08001360/asm_08002e2c.s"

#include "asm/code_08001360/asm_08002e44.s"

#include "asm/code_08001360/asm_08002e5c.s"

#include "asm/code_08001360/asm_08002e78.s"

#include "asm/code_08001360/asm_08002eb0.s"

#include "asm/code_08001360/asm_08002ecc.s"

#include "asm/code_08001360/asm_08002ee0.s"

#include "asm/code_08001360/asm_08002f04.s"

#include "asm/code_08001360/asm_08002f40.s"

#include "asm/code_08001360/asm_08002f48.s"

#include "asm/code_08001360/asm_08002f54.s"

#include "asm/code_08001360/asm_08002f5c.s"

#include "asm/code_08001360/asm_08002f68.s"

#include "asm/code_08001360/asm_08002f9c.s"

#include "asm/code_08001360/asm_08003004.s"

#include "asm/code_08001360/asm_08003070.s"

#include "asm/code_08001360/asm_0800318c.s"

#include "asm/code_08001360/asm_08003278.s"

#include "asm/code_08001360/asm_08003384.s"

#include "asm/code_08001360/asm_08003398.s"

#include "asm/code_08001360/asm_080033a0.s"

#include "asm/code_08001360/asm_0800351c.s"

#include "asm/code_08001360/asm_08003598.s"

#include "asm/code_08001360/asm_080035a0.s"

#include "asm/code_08001360/asm_080036c4.s"

#include "asm/code_08001360/asm_08003720.s"

#include "asm/code_08001360/asm_0800387c.s"

#include "asm/code_08001360/asm_080038b0.s"

#include "asm/code_08001360/asm_08003974.s"
