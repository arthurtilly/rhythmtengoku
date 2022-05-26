#include "code_0800b3c8.h"

// Could use better split

extern void func_0804d5d4(s32, s16, s16, s16);

asm(".include \"include/gba.inc\"");//Temporary

static u32 D_03001304;
static u32 D_03001308;
static u16 D_0300130c;
static u16 D_0300130e;

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

void func_0800b590() {
    u16 temp;
    
    if (D_03001304 <= -2) {
        D_03001304++;
    }
    temp = REG_KEY;
    if (temp == D_0300130e) {
        if (D_0300130c < 0xffff) {
            D_0300130c += 1;
        }
    } else {
        D_0300130c = 0;
    }
    D_0300130e = temp;

    if (D_0300130c < 0x258 && D_03001308 <= -2) {
        D_03001308 += 1;
    }
}

u32 func_0800b60c(s32 arg0) {
    u32 temp = 0x7fffffff & arg0;
    u32 temp1;
    if (arg0 < 0) {
        temp1 = D_03001308;
    } else {
        temp1 = D_03001304;
    }
    return temp1 / temp;
}

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
