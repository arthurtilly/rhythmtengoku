#include "script.h"
#include "code_08003980.h"
#include "lib_0804c870.h"

asm(".include \"include/gba.inc\"");//Temporary

static u8 D_0300155c;
static u8 D_0300155d; // unused
static u8 D_0300155e; // unused
static u8 D_0300155f; // unused

// SCRIPT

void func_0801d860(u32 arg0) {
	D_0300155c = arg0;
}

// Global BeatScript initialization
void func_0801d86c(u32 arg0) {
    u32 temp[4];

    D_030055e0.unk0 = 0;
    D_030055e0.unk1_1 = 0;
    D_030055e0.unk1_2 = 0;
    D_030055e0.unk4 = 0;
    if (D_0300155c) {
        func_08006d80();
    }
    func_08006da8();
    func_08007014(0);
    func_08006fec();
    func_080073f0();
    func_08003f28();
    func_080013e8(func_0801d9cc);
    temp[0] = arg0;
    temp[1] = 0;
    func_0800b778(0);
    func_0800b834(&temp);
}

// Global BeatScript loop
u32 func_0801d8d8(void) {
    func_08006e88();
    func_08003fb4();
    if (D_030055e0.unk1_2) {
        func_0800b974();
    }
    func_08005ad4();
    func_08005a84();
    switch(D_030055e0.unk0) {
        case 0:
            if (func_0801d9d0()) {
                break;
            }
            func_0800b9fc();
            if (!func_0800bc14()) {
                break;
            }
            func_0801d98c();
            return 1;
        case 1:
            func_0801da48();
            if (D_030055e0.unk0) {
                break;
            }
            func_0800b9fc();
            if (!func_0800bc14()) {
                break;
            }
            func_0801d98c();
            return 1;
        case 2:
            if (!func_0801dabc()) {
                break;
            }
            return 1;
    }
    func_08007410();
    func_08006f84();
    func_080042a4();
    return 0;
}

void func_0801d95c(u32 arg0) {
	D_030053c0.unk30 = arg0;
}

void func_0801d968(u32 arg0) {
	D_030053c0.unk30 = arg0;
	D_030053c0.unk34 = 0;
}

void func_0801d978(void) {
	D_030053c0.unk28_2 = 0;
}

void func_0801d98c(void) {
    u32 i;

    func_080013e8(0);
    func_08003f28();

    for (i = 0; i < 2;) {
        i++;
        func_0804e0c4(D_03005380, i);
        func_0800222c(i);
        func_08005de4(i);
        mem_heap_dealloc_with_id(i);
    }
}

void func_0801d9cc(void) {
}

// Pausing stuff

#include "asm/script/asm_0801d9d0.s"

#include "asm/script/asm_0801da48.s"

#include "asm/script/asm_0801dabc.s"

#include "asm/script/asm_0801daf8.s"

#include "asm/script/asm_0801db04.s"

// ??? (debug related?)

#include "asm/script/asm_0801db1c.s"

#include "asm/script/asm_0801db74.s"

#include "asm/script/asm_0801dbe8.s"

#include "asm/script/asm_0801dcb0.s"

#include "asm/script/asm_0801dd58.s"

#include "asm/script/asm_0801de38.s"

#include "asm/script/asm_0801de6c.s"

#include "asm/script/asm_0801debc.s"

#include "asm/script/asm_0801dec0.s"

#include "asm/script/asm_0801dec4.s"

#include "asm/script/asm_0801decc.s"

#include "asm/script/asm_0801ded4.s"

// Soft reset

#include "asm/script/asm_0801dedc.s"

#include "asm/script/asm_0801def4.s"

#include "asm/script/asm_0801df1c.s"
