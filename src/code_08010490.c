#include "global.h"
#include "code_08010490.h"

// Can be better split

asm(".include \"include/gba.inc\"");//Temporary

// Arrival

#include "asm/code_08010490/asm_08010490.s"

#include "asm/code_08010490/asm_08010494.s"

#include "asm/code_08010490/asm_080104c0.s"

#include "asm/code_08010490/asm_080104f0.s"

#include "asm/code_08010490/asm_0801052c.s"

#include "asm/code_08010490/asm_08010688.s"

#include "asm/code_08010490/asm_0801068c.s"

#include "asm/code_08010490/asm_0801075c.s"

#include "asm/code_08010490/asm_08010778.s"

#include "asm/code_08010490/asm_08010788.s"

// Random Functions

#include "asm/code_08010490/asm_080107a8.s"

#include "asm/code_08010490/asm_080107c8.s"

#include "asm/code_08010490/asm_080107dc.s"

#include "asm/code_08010490/asm_0801082c.s"

// Cafe

#include "asm/code_08010490/asm_08010854.s"

#include "asm/code_08010490/asm_080108a0.s"

#include "asm/code_08010490/asm_080108c8.s"

#include "asm/code_08010490/asm_080108e8.s"

#include "asm/code_08010490/asm_08010904.s"

#include "asm/code_08010490/asm_08010938.s"

#include "asm/code_08010490/asm_080109cc.s"

#include "asm/code_08010490/asm_08010a04.s"

#include "asm/code_08010490/asm_08010a28.s"

#include "asm/code_08010490/asm_08010a3c.s"

#include "asm/code_08010490/asm_08010ae0.s"

#include "asm/code_08010490/asm_08010bc0.s"

#include "asm/code_08010490/asm_08010be4.s"

#include "asm/code_08010490/asm_080112dc.s"

#include "asm/code_08010490/asm_080112e8.s"

#include "asm/code_08010490/asm_080112f4.s"

#include "asm/code_08010490/asm_08011300.s"

#include "asm/code_08010490/asm_080113a8.s"

#include "asm/code_08010490/asm_080113b4.s"

#include "asm/code_08010490/asm_080113d0.s"

#include "asm/code_08010490/asm_080113dc.s"

#include "asm/code_08010490/asm_08011408.s"

#include "asm/code_08010490/asm_08011438.s"

#include "asm/code_08010490/asm_08011488.s"

#include "asm/code_08010490/asm_080114d0.s"

#include "asm/code_08010490/asm_080114d4.s"

#include "asm/code_08010490/asm_080114f4.s"

#include "asm/code_08010490/asm_08011510.s"

#include "asm/code_08010490/asm_08011520.s"

#include "asm/code_08010490/asm_08011530.s"

// Data Check

#include "asm/code_08010490/asm_08011534.s"

#include "asm/code_08010490/asm_08011580.s"

#include "asm/code_08010490/asm_080115b0.s"

#include "asm/code_08010490/asm_080115d0.s"

#include "asm/code_08010490/asm_08011690.s"

#include "asm/code_08010490/asm_08011694.s"

#include "asm/code_08010490/asm_08011728.s"

#include "asm/code_08010490/asm_08011744.s"

#include "asm/code_08010490/asm_08011820.s"

#include "asm/code_08010490/asm_08011a08.s"

// Util functions

void func_08011a18(struct_08011a18 *arg0) {
    u32 i;

    arg0->unk0 = 0;
    
    for (i = 0; i < 10; i++) {
        arg0->unk1[i] = 0;
        arg0->unkC[i] = 0;
    }

    func_080018e0(0, &arg0->unk20, 0x3800, 0x20, 0x200);
}

#include "asm/code_08010490/asm_08011a58.s"

#include "asm/code_08010490/asm_08011a90.s"

#include "asm/code_08010490/asm_08011ad4.s"

#include "asm/code_08010490/asm_08011b50.s"

int func_08011bec(u8 *param_1) {
    return (56 - *param_1) * 256;
}

int func_08011bf8(struct_08011a18 *arg0) {
    u32 i;

    for (i = 0; i < 10; i++) {
        if (arg0->unkC[i] == 0) {
            return i;
        }
    }

    return -1;
}

#include "asm/code_08010490/asm_08011c1c.s"

#include "asm/code_08010490/asm_08011d8c.s"

#include "asm/code_08010490/asm_08011e74.s"
