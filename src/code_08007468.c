#include "global.h"
#include "code_08007468.h"

// Can be better split

asm(".include \"include/gba.inc\"");//Temporary

static s32 D_03000eb0[136]; // unknown type
static s32 D_030010d0[9]; // unknown type

#include "asm/code_08007468/asm_08007468.s"

#include "asm/code_08007468/asm_08007498.s"

#include "asm/code_08007468/asm_080074c4.s"

#include "asm/code_08007468/asm_080074ec.s"

#include "asm/code_08007468/asm_08007544.s"

#include "asm/code_08007468/asm_0800757c.s"

#include "asm/code_08007468/asm_080075e4.s"

#include "asm/code_08007468/asm_0800765c.s"

#include "asm/code_08007468/asm_080076ec.s"

#include "asm/code_08007468/asm_08007788.s"

#include "asm/code_08007468/asm_080077e8.s"

#include "asm/code_08007468/asm_08007854.s"

#include "asm/code_08007468/asm_080078ec.s"

#include "asm/code_08007468/asm_0800793c.s"

#include "asm/code_08007468/asm_080079bc.s"

#include "asm/code_08007468/asm_08007a14.s"

#include "asm/code_08007468/asm_08007aa0.s"

#include "asm/code_08007468/asm_08007b04.s"

#include "asm/code_08007468/asm_08007b2c.s"

#include "asm/code_08007468/asm_08007b4c.s"

#include "asm/code_08007468/asm_08007b80.s"

#include "asm/code_08007468/asm_08007bb8.s"

#include "asm/code_08007468/asm_08007c30.s"

#include "asm/code_08007468/asm_08007ca8.s"

#include "asm/code_08007468/asm_08007d20.s"

#include "asm/code_08007468/asm_08007d88.s"

#include "asm/code_08007468/asm_08007e00.s"

#include "asm/code_08007468/asm_08007e68.s"

#include "asm/code_08007468/asm_08007e7c.s"

#include "asm/code_08007468/asm_08007ef8.s"

#include "asm/code_08007468/asm_08007f58.s"

#include "asm/code_08007468/asm_08007fdc.s"

#include "asm/code_08007468/asm_08008054.s"

#include "asm/code_08007468/asm_08008090.s"

#include "asm/code_08007468/asm_08008184.s"

u8 *func_080081a8(u8 *arg1, u8 *arg2) {
    u8 *temp = arg1;
    while (*arg1 != 0) {
        arg1++;
    }
    while (*arg2 != 0) {
        *arg1 = *arg2;
        arg2++;
        arg1++;
    }
    *arg1 = 0;
    return temp;
}

#include "asm/code_08007468/asm_080081d4.s"

#include "asm/code_08007468/asm_0800820c.s"

#include "asm/code_08007468/asm_08008248.s"

#include "asm/code_08007468/asm_08008294.s"

#include "asm/code_08007468/asm_080082cc.s"

#include "asm/code_08007468/asm_08008328.s"

#include "asm/code_08007468/asm_08008370.s"

#include "asm/code_08007468/asm_08008420.s"

#include "asm/code_08007468/asm_08008464.s"

#include "asm/code_08007468/asm_0800852c.s"

#include "asm/code_08007468/asm_08008548.s"

#include "asm/code_08007468/asm_0800856c.s"

#include "asm/code_08007468/asm_08008594.s"

#include "asm/code_08007468/asm_080085e4.s"

#include "asm/code_08007468/asm_08008608.s"

#include "asm/code_08007468/asm_0800861c.s"

#include "asm/code_08007468/asm_08008628.s"

#include "asm/code_08007468/asm_08008658.s"

#include "asm/code_08007468/asm_0800869c.s"

#include "asm/code_08007468/asm_080086c4.s"

#include "asm/code_08007468/asm_08008720.s"

#include "asm/code_08007468/asm_0800873c.s"

#include "asm/code_08007468/asm_08008758.s"

#include "asm/code_08007468/asm_080087b4.s"

#include "asm/code_08007468/asm_080087d4.s"

#include "asm/code_08007468/asm_080087e8.s"

#include "asm/code_08007468/asm_08008910.s"

#include "asm/code_08007468/asm_08008938.s"

#include "asm/code_08007468/asm_08008968.s"

#include "asm/code_08007468/asm_08008990.s"

#include "asm/code_08007468/asm_080089c0.s"

#include "asm/code_08007468/asm_08008a70.s"

#include "asm/code_08007468/asm_08008ab8.s"

// https://decomp.me/scratch/g0MzU - super annoying -0x8000 problem, 94.41% matched most recently
#include "asm/code_08007468/asm_08008b00.s"

void func_08008d44(u32 arg0, u32 arg1, s16 arg2, s32 arg3, s32 arg4, s16 arg5, u32 arg6, u32 arg7, u16 arg8, struct unk_struct_08008b00 *arg9, u32 arg10) {
    func_08008b00(arg0, arg1, arg2, arg3, arg4, arg5 + 0xFE00, arg6, arg7, arg8, arg9, arg10, 0);
}

void func_08008d88(u32 arg0, u32 arg1, s16 arg2, s32 arg3, s32 arg4, s16 arg5, u32 arg6, u32 arg7, u16 arg8, struct unk_struct_08008b00 *arg9, u32 arg10) {
    func_08008b00(arg0, arg1, arg2, arg3, arg4, arg5 + 0xFE00, arg6, arg7, arg8, arg9, arg10, 1);
}
