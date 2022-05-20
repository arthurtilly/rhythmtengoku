#include "code_0800b3c8.h"

// Could use better split

extern void func_0804d5d4(s32, s16, s16, s16);

asm(".include \"include/gba.inc\"");//Temporary

static s32 D_03001304; // unknown type
static s32 D_03001308; // unknown type
static s16 D_0300130c; // unknown type
static s16 D_0300130e; // unknown type

// Game Controlling Stuff

void func_0800b3c8(struct arg* arg0) {
    if (arg0 != NULL)
        func_0804d770(D_03005380, arg0->unk2A, 1);
}

void func_0800b3e8(struct arg* arg0) {
    if (arg0 != NULL)
        func_0804d770(D_03005380, arg0->unk2A, 0);
}

void func_0800b408(struct arg* arg0, s16 arg1, u32 arg2) {
    if (arg0 == NULL) return;
    func_0804db44(D_03005380, arg1, &arg0->unk22, &arg0->unk24);
    func_0804d5d4(D_03005380, arg1, arg0->unkA, arg2 * arg0->unk10 + arg0->unkC);
}


void func_0800b454(struct arg* arg0, s32 arg1) {
    s32 temp;
    u32 temp1;
    u32 temp2;
    s32 temp3;
    
    if (arg0 == NULL || arg1 < 0 || arg1 >= arg0->unk28) return;
    
    temp = arg1 - arg0->unk26 + arg0->unk2C + arg0->unk30;
    if (temp < 0) return;
    if (temp >= (s32)arg0->unk8) return;

    temp += arg0->unk16;
    temp %= (s32)arg0->unk8;
    if (temp < 0)
        temp += (s32)arg0->unk8;

    temp1 = arg0->unk4;
    temp2 = arg0->unk34(arg1);
    if (arg0->unk38 != NULL) {
        temp3 = arg0->unk38(arg1);
    } else {
        temp3 = -1;
    }
    func_0800aac0(temp1, temp, temp2, temp3);
}

#include "asm/code_0800b3c8/asm_0800b4d8.s"

#include "asm/code_0800b3c8/asm_0800b550.s"

#include "asm/code_0800b3c8/asm_0800b564.s"

#include "asm/code_0800b3c8/asm_0800b590.s"

#include "asm/code_0800b3c8/asm_0800b60c.s"

#include "asm/code_0800b3c8/asm_0800b634.s"

#include "asm/code_0800b3c8/asm_0800b698.s"

#include "asm/code_0800b3c8/asm_0800b6bc.s"

#include "asm/code_0800b3c8/asm_0800b6dc.s"

#include "asm/code_0800b3c8/asm_0800b71c.s"

void func_0800b768() {
    
}

void func_0800b76c() {
    
}


void func_0800b770() {
    
}


void func_0800b774() {

}
