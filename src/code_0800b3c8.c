#include "global.h"
#include "lib_0804ca80.h"
#include "code_0800b3c8.h"

// Could use better split

asm(".include \"include/gba.inc\"");//Temporary

static u32 D_03001304;
static u32 D_03001308;
static u16 D_0300130c;
static u16 D_0300130e;


// Game Controlling Stuff


// ?
s32 func_0800ae1c(struct struct_0800b3c8 *arg0) {
    return arg0->unkC + ((arg0->unk30 + arg0->unk2C) * arg0->unk10);
}


#include "asm/code_080092cc/asm_0800ae3c.s"

#include "asm/code_080092cc/asm_0800ae88.s"

#include "asm/code_080092cc/asm_0800aeb4.s"

#include "asm/code_080092cc/asm_0800b074.s"

#include "asm/code_080092cc/asm_0800b0d4.s"

#include "asm/code_080092cc/asm_0800b108.s"

#include "asm/code_080092cc/asm_0800b118.s"

#include "asm/code_080092cc/asm_0800b12c.s"

#include "asm/code_080092cc/asm_0800b140.s"

#include "asm/code_080092cc/asm_0800b21c.s"

#include "asm/code_080092cc/asm_0800b30c.s"

#include "asm/code_080092cc/asm_0800b31c.s"

#include "asm/code_080092cc/asm_0800b32c.s"

#include "asm/code_080092cc/asm_0800b368.s"

#include "asm/code_080092cc/asm_0800b384.s"


void func_0800b3c8(struct struct_0800b3c8 *arg0) {
    if (arg0 == NULL) return;

    func_0804d770(D_03005380, arg0->unk2A, TRUE);
}


void func_0800b3e8(struct struct_0800b3c8 *arg0) {
    if (arg0 == NULL) return;

    func_0804d770(D_03005380, arg0->unk2A, FALSE);
}


void func_0800b408(struct struct_0800b3c8 *arg0, s16 sprite, u32 arg2) {
    if (arg0 == NULL) return;

    func_0804db44(D_03005380, sprite, &arg0->x2, &arg0->y2);
    func_0804d5d4(D_03005380, sprite, arg0->unkA, arg2 * arg0->unk10 + arg0->unkC);
}


void func_0800b454(struct struct_0800b3c8 *arg0, s32 arg1) {
    void *printer;
    s32 line;
    char *string;
    s32 backSprite;
    s32 totalLines;

    if (arg0 == NULL) return;

    if (arg1 >= 0 && arg1 < arg0->unk28) {
        line = arg1 - arg0->unk26 + arg0->unk2C + arg0->unk30;
        if (line < 0) return;

        totalLines = arg0->totalLines;
        if (line >= totalLines) return;

        line += arg0->unk16;
        line %= totalLines;
        if (line < 0) {
            line += totalLines;
        }

        printer = arg0->printer;
        string = arg0->unk34(arg1);
        if (arg0->unk38 != NULL) {
            backSprite = arg0->unk38(arg1);
        } else {
            backSprite = -1;
        }
        func_0800aac0(printer, line, string, backSprite);
    }
}


void func_0800b4d8(struct struct_0800b3c8 *arg0, struct Animation *anim) {
    if (arg0 == NULL) return;

    if (arg0->unk2A >= 0) {
        func_0804d504(D_03005380, arg0->unk2A);
    }
    arg0->unk2A = -1;
    if (anim != NULL) {
        arg0->unk2A = func_0804d160(D_03005380, anim, 0, arg0->unkA, func_0800ae1c(arg0), arg0->unkE, 1, 0, 0);
        func_0804db44(D_03005380, arg0->unk2A, &arg0->x1, &arg0->y1);
    }
}


s16 func_0800b550(struct struct_0800b3c8 *arg0) {
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
    arg3->unk0 = -1;
    arg3->unk1 = 0;
    arg3->unk4 = 0;
}


void func_0800b71c(struct struct_0800b71c *arg0, u32 arg1, u32 arg2, u32 arg3) {
    struct struct_0800b71c_sub *sub = arg0->unk4;
    
    while(sub->unk0 != (u8)-1) {
        sub++;
    }
    sub->unk0 = arg1;
    sub->unk1 = arg2;
    sub->unk4 = arg3;
    sub++;
    sub->unk0 = -1;
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
