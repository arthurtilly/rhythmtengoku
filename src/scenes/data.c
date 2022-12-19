#include "global.h"
#include "src/scenes/data.h"

asm(".include \"include/gba.inc\"");//Temporary

/* DATA CHECK */

#include "asm/data/asm_08011530.s"

#include "asm/data/asm_08011534.s"

#include "asm/data/asm_08011580.s"

#include "asm/data/asm_080115b0.s"

#include "asm/data/asm_080115d0.s"

#include "asm/data/asm_08011690.s"

#include "asm/data/asm_08011694.s"

#include "asm/data/asm_08011728.s"

#include "asm/data/asm_08011744.s"

#include "asm/data/asm_08011820.s"

#include "asm/data/asm_08011a08.s"

// Data Util Functions

void func_08011a18(struct struct_08011a18 *arg0) {
    u32 i;

    arg0->unk0 = 0;
    
    for (i = 0; i < 10; i++) {
        arg0->unk1[i] = 0;
        arg0->unkC[i] = 0;
    }

    dma3_fill(0, &arg0->unk20, 0x3800, 0x20, 0x200);
}

#include "asm/data/asm_08011a58.s"

#include "asm/data/asm_08011a90.s"

#include "asm/data/asm_08011ad4.s"

#include "asm/data/asm_08011b50.s"

s32 func_08011bec(u8 *param_1) {
    return (56 - *param_1) * 256;
}

s32 func_08011bf8(struct struct_08011a18 *arg0) {
    u32 i;

    for (i = 0; i < 10; i++) {
        if (arg0->unkC[i] == 0) {
            return i;
        }
    }

    return -1;
}

#include "asm/data/asm_08011c1c.s"

#include "asm/data/asm_08011d8c.s"

#include "asm/data/asm_08011e74.s"
