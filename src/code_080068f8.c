#include "code_080068f8.h"

// Can be better split

asm(".include \"include/gba.inc\"");//Temporary

static s16 D_03000ea4; // unknown type
static s16 D_03000ea6; // unknown type
static s32 D_03000ea8; // unknown type
static s32 D_03000eac; // unknown type, unknown if exists

// Graphic Control functions

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

#include "asm/code_080068f8/asm_08006da8.s"

#include "asm/code_080068f8/asm_08006e00.s"

#include "asm/code_080068f8/asm_08006e30.s"

#include "asm/code_080068f8/asm_08006e88.s"

#include "asm/code_080068f8/asm_08006f84.s"

#include "asm/code_080068f8/asm_08006fec.s"

#include "asm/code_080068f8/asm_08007014.s"

#include "asm/code_080068f8/asm_0800703c.s"

#include "asm/code_080068f8/asm_080070c4.s"

#include "asm/code_080068f8/asm_0800714c.s"

#include "asm/code_080068f8/asm_0800716c.s"

#include "asm/code_080068f8/asm_0800724c.s"

#include "asm/code_080068f8/asm_08007324.s"

#include "asm/code_080068f8/asm_08007344.s"

#include "asm/code_080068f8/asm_08007370.s"

#include "asm/code_080068f8/asm_08007394.s"

#include "asm/code_080068f8/asm_080073b8.s"

#include "asm/code_080068f8/asm_080073f0.s"

#include "asm/code_080068f8/asm_08007410.s"

#include "asm/code_080068f8/asm_0800742c.s"
