#include "global.h"
#include "lib_0804c870.h"
#include "code_0800b3c8.h"

// Could use better split

extern void func_0804d5d4(s32, s16, s16, s16);

asm(".include \"include/gba.inc\"");//Temporary

static u32 D_03001304;
static u32 D_03001308;
static u16 D_0300130c;
static u16 D_0300130e;

// Game Controlling Stuff

void func_0800b3c8(struct struct_0800b3c8* arg0) {
    if (arg0 != NULL)
        func_0804d770(D_03005380, arg0->unk2A, 1);
}

void func_0800b3e8(struct struct_0800b3c8* arg0) {
    if (arg0 != NULL)
        func_0804d770(D_03005380, arg0->unk2A, 0);
}

void func_0800b408(struct struct_0800b3c8* arg0, s16 arg1, u32 arg2) {
    if (arg0 == NULL) return;
    func_0804db44(D_03005380, arg1, &arg0->unk22, &arg0->unk24);
    func_0804d5d4(D_03005380, arg1, arg0->unkA, arg2 * arg0->unk10 + arg0->unkC);
}


void func_0800b454(struct struct_0800b3c8* arg0, s32 arg1) {
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

void func_0800b4d8(struct struct_0800b3c8* arg0, u32* arg1) {
    if (arg0 != NULL) {
        if (arg0->unk2A >= 0)
            func_0804d504(D_03005380, arg0->unk2A);
        arg0->unk2A = -1;
        if (arg1 != NULL) {
            arg0->unk2A = func_0804d160(D_03005380, arg1, 0, arg0->unkA, func_0800ae1c(arg0), arg0->unkE, 1, 0, 0);
            func_0804db44(D_03005380, arg0->unk2A, &arg0->unk1C, &arg0->unk1E);
        }
    }
}


s16 func_0800b550(struct struct_0800b3c8* arg0) {
    if (arg0 == NULL) {
        return -1;
    }
    return arg0->unk2A;
}

void func_0800b564() {
    D_03001304 = 0;
    D_03001308 = 0;
    D_0300130e = REG_KEY;
    D_0300130c = 0;
}

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

u8 func_0800b634(s16* arg0, s16* arg1, s16* arg2, s16* arg3) {
    if (arg0[0] + arg1[0] < arg2[0] + arg3[0] + arg3[2] &&
    arg2[0] + arg3[0] < arg0[0] + arg1[0] + arg1[2] &&
    arg0[1] + arg1[1] < arg2[1] + arg3[1] + arg3[3] &&
    arg2[1] + arg3[1] < arg0[1] + arg1[1] + arg1[3])
        return TRUE;
    else
        return FALSE;
}

void func_0800b698() {
    if (D_030053c0.unk1C0 != NULL) {
        D_030053c0.unk1C0(D_030053c0.unk1C4);
    }
}

void func_0800b6bc(void (*arg0)(u32), u32 arg1) {
    D_030053c0.unk1C0 = arg0;
    D_030053c0.unk1C4 = arg1;
}

void func_0800b6dc(struct struct_0800b71c* arg0, u32 arg1, u32 arg2, struct struct_0800b71c_sub* arg3) {
    u32 temp;
    arg0->unk0 = 0;
    arg0->unk1_0 = arg1;
    arg0->unk1_1 = arg2;
    arg0->unk4 = arg3;
    arg3->unk0 = 0xFF;
    arg3->unk1 = 0;
    arg3->unk4 = 0;
}


void func_0800b71c(struct struct_0800b71c *arg0, u32 arg1, u32 arg2, u32 arg3) {
    struct struct_0800b71c_sub *sub = arg0->unk4;
    
    while(sub->unk0 != 0xff) { 
        sub++;
    }
    sub->unk0 = arg1;
    sub->unk1 = arg2;
    sub->unk4 = arg3;
    sub++;
    sub->unk0 = 0xff;
    sub->unk1 = 0;
    sub->unk4 = 0;
    arg0->unk0++;
}


void func_0800b768() {
    
}

void func_0800b76c() {
    
}


void func_0800b770() {
    
}


void func_0800b774() {

}
