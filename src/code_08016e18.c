#include "code_08016e18.h"
#include "code_08003980.h"

// Main gameplay stuff

asm(".include \"include/gba.inc\"");//Temporary

static s32 D_03001328; // unknown type, could be 2 words

#include "asm/code_08016e18/asm_08016e18.s"

#include "asm/code_08016e18/asm_08016e54.s"

#include "asm/code_08016e18/asm_08016e64.s"

#include "asm/code_08016e18/asm_08016e74.s"

#include "asm/code_08016e18/asm_08016e84.s"

#include "asm/code_08016e18/asm_08016e94.s"

#include "asm/code_08016e18/asm_08016ea4.s"

#include "asm/code_08016e18/asm_08016ec4.s"

#include "asm/code_08016e18/asm_08016ffc.s"

#include "asm/code_08016e18/asm_08017000.s"

#include "asm/code_08016e18/asm_0801714c.s"

#include "asm/code_08016e18/asm_08017168.s"

#include "asm/code_08016e18/asm_08017188.s"

#include "asm/code_08016e18/asm_0801732c.s"

// D_030046a4->unkA = arg0; D_030046a4->unkC = arg1
void func_08017338(s16 arg0, s16 arg1) {
    D_030046a4->unkA = arg0;
    D_030046a4->unkC = arg1;
}

s32 func_08017348(s32 arg1, s32 arg2) { // bobbing?
    s32 returnVal = 0;
    struct_030046a4_func *temp = (struct_030046a4_func *)&D_030046a4->unk4C;
    
    if (temp == NULL) { // literally never possible
        return returnVal;
    }

    if (temp[arg2] != NULL) {
        returnVal = temp[arg2](arg1);
    }
    
    return returnVal;
}

void func_08017380(s32 arg1) { // gfx command 1
    D_030046a4->unk60 = arg1;
}

s32 func_0801738c(struct struct_030046a4_sub *arg1, s32 arg2) { // gfx command 2
    s32 returnVal = 0;

    if (D_030046a4->unk10.asPoint != arg1) {
        return returnVal;
    }

    if ((D_030046a4->unk10.asPoint->unk18 != NULL) && (D_030046a4->unk10.asPoint->unk18[arg2] != NULL)) {
        returnVal = D_030046a4->unk10.asPoint->unk18[arg2](D_030046a4->unk60);
    }

    return returnVal;
}

#include "asm/code_08016e18/asm_080173c4.s"

#include "asm/code_08016e18/asm_080173d0.s"

#include "asm/code_08016e18/asm_080173dc.s"

#include "asm/code_08016e18/asm_080173e8.s"

#include "asm/code_08016e18/asm_080173f4.s"

#include "asm/code_08016e18/asm_08017400.s"

#include "asm/code_08016e18/asm_0801740c.s"

#include "asm/code_08016e18/asm_08017448.s"

#include "asm/code_08016e18/asm_08017458.s"

#include "asm/code_08016e18/asm_08017468.s"

#include "asm/code_08016e18/asm_0801747c.s"

#include "asm/code_08016e18/asm_080174e8.s"

#include "asm/code_08016e18/asm_08017514.s"

#include "asm/code_08016e18/asm_08017568.s"

#include "asm/code_08016e18/asm_08017578.s"

#include "asm/code_08016e18/asm_080175a0.s"

#include "asm/code_08016e18/asm_080175b0.s"

#include "asm/code_08016e18/asm_080175c4.s"

#include "asm/code_08016e18/asm_080175d8.s"

#include "asm/code_08016e18/asm_080175e8.s"

#include "asm/code_08016e18/asm_08017604.s"

#include "asm/code_08016e18/asm_08017648.s"

#include "asm/code_08016e18/asm_0801765c.s"

#include "asm/code_08016e18/asm_080176cc.s"

#include "asm/code_08016e18/asm_08017728.s"

#include "asm/code_08016e18/asm_08017744.s"

#include "asm/code_08016e18/asm_08017758.s"

#include "asm/code_08016e18/asm_0801777c.s"

#include "asm/code_08016e18/asm_080177a4.s"

#include "asm/code_08016e18/asm_080177c8.s"

#include "asm/code_08016e18/asm_080177dc.s"

#include "asm/code_08016e18/asm_080177f0.s"

#include "asm/code_08016e18/asm_080178ac.s"

#include "asm/code_08016e18/asm_080178e4.s"

#include "asm/code_08016e18/asm_08017908.s"

#include "asm/code_08016e18/asm_08017918.s"

#include "asm/code_08016e18/asm_08017928.s"

#include "asm/code_08016e18/asm_080179a0.s"

#include "asm/code_08016e18/asm_080179bc.s"

#include "asm/code_08016e18/asm_080179d8.s"

void func_080179f4(s32 arg1) { // universal cue?
    struct struct_030046a4_sub2 *temp;
    struct struct_080179f4 *temp2, *temp4;

    if ((D_030046a4->unk5C == 0) || ((temp = D_030046a4->unk1C[arg1]) == NULL)) {
        return;
    }

    temp2 = mem_heap_alloc(sizeof(struct struct_080179f4));
    if (temp->unkC != 0) {
        temp2->unk64 = mem_heap_alloc(temp->unkC);
    } else {
        temp2->unk64 = NULL;
    }
    func_0800186c(temp,&temp2->unk8,0x40,0x20,0x200);

    temp2->unk48 &= ~1;
    temp2->unk48 &= ~2;

    do {} while (0); // fake matching / macro?
    
    temp2->unk4C = 0;

    if (D_030046a4->unk86 != 0) {
        temp2->unk4E = func_0800c3a4(D_030046a4->unk86);
        D_030046a4->unk86 = 0;
    } else {
        temp2->unk4E = func_0800c3a4(temp->unk4);
    }

    temp2->unk54.unk0 = ((D_030046a4->unk68.unk0 != NULL) ? D_030046a4->unk68.unk0 : temp->unk2C.unk0);
    temp2->unk54.unk4 = ((D_030046a4->unk68.unk4 != NULL) ? D_030046a4->unk68.unk4 : temp->unk2C.unk4);
    temp2->unk54.unk8 = ((D_030046a4->unk68.unk8 != NULL) ? D_030046a4->unk68.unk8 : temp->unk2C.unk8);
    temp2->unk54.unkC = ((D_030046a4->unk68.unkC != NULL) ? D_030046a4->unk68.unkC : temp->unk2C.unkC);

    temp2->unk68 = D_030046a4->unk7A;

    D_030046a4->unk68.unk0 = NULL;
    D_030046a4->unk68.unk4 = NULL;
    D_030046a4->unk68.unk8 = NULL;
    D_030046a4->unk68.unkC = NULL;

    temp4 = D_030046a4->unk18;
    
    temp2->unk0 = NULL;
    temp2->unk4 = temp4;

    if (temp4 != NULL) {
        temp4->unk0 = temp2;
    }

    D_030046a4->unk18 = temp2;

    D_030046a4->unk5D = 0;

    if (temp->unk10 != NULL) {
        temp->unk10(temp2,temp2->unk64,temp->unk14);
    }

    if (D_030046a4->unk5D != 0) {
        D_030046a4->unk18 = temp4;
        temp4->unk0 = NULL;
        mem_heap_dealloc(temp2);
    } else {
        D_030046a4->unk58 = temp2;
        func_08016e54(temp2->unk54.unk0);
    }
}

#include "asm/code_08016e18/asm_08017b34.s"

#include "asm/code_08016e18/asm_08017b44.s"

#include "asm/code_08016e18/asm_08017b88.s"

#include "asm/code_08016e18/asm_08017b98.s"

#include "asm/code_08016e18/asm_08017c68.s"

#include "asm/code_08016e18/asm_08017c8c.s"

#include "asm/code_08016e18/asm_08017e2c.s"

#include "asm/code_08016e18/asm_08017ec8.s"

// Return D_030046a4->unk79 (s8)
s32 func_08018054(void) {
    return D_030046a4->unk79;
}

#include "asm/code_08016e18/asm_08018068.s"

#include "asm/code_08016e18/asm_08018078.s"

#include "asm/code_08016e18/asm_08018088.s"

#include "asm/code_08016e18/asm_0801808c.s"

#include "asm/code_08016e18/asm_08018090.s"

#include "asm/code_08016e18/asm_08018094.s"

#include "asm/code_08016e18/asm_08018098.s"

#include "asm/code_08016e18/asm_0801809c.s"

#include "asm/code_08016e18/asm_080180a0.s"

#include "asm/code_08016e18/asm_080180a4.s"

#include "asm/code_08016e18/asm_080180a8.s"

#include "asm/code_08016e18/asm_080180ac.s"

#include "asm/code_08016e18/asm_080180b0.s"

#include "asm/code_08016e18/asm_080180b4.s"

#include "asm/code_08016e18/asm_080180bc.s"

#include "asm/code_08016e18/asm_080180c4.s"

#include "asm/code_08016e18/asm_080180ec.s"

#include "asm/code_08016e18/asm_08018114.s"

#include "asm/code_08016e18/asm_08018124.s"

#include "asm/code_08016e18/asm_08018138.s"

#include "asm/code_08016e18/asm_08018154.s"

#include "asm/code_08016e18/asm_080182ac.s"

#include "asm/code_08016e18/asm_080182b8.s"

#include "asm/code_08016e18/asm_08018318.s"

#include "asm/code_08016e18/asm_08018344.s"

#include "asm/code_08016e18/asm_080183c8.s"

#include "asm/code_08016e18/asm_08018524.s"

#include "asm/code_08016e18/asm_0801853c.s"

#include "asm/code_08016e18/asm_0801858c.s"

#include "asm/code_08016e18/asm_080185d0.s"

#include "asm/code_08016e18/asm_08018630.s"

#include "asm/code_08016e18/asm_08018660.s"

#include "asm/code_08016e18/asm_08018698.s"

#include "asm/code_08016e18/asm_080186d4.s"
