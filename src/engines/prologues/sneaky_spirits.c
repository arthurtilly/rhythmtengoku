#include "engines/prologues/sneaky_spirits.h"

#include "src/code_08001360.h"
#include "src/code_08007468.h"
#include "src/code_0800b3c8.h"
#include "src/code_0800b778.h"
#include "src/lib_0804c870.h"

// For readability.
#define gPrologueInfo ((struct PrologueSneakySpiritsInfo *)D_030055d0)


  //  //  //  PROLOGUE: SNEAKY SPIRITS  //  //  //


// [func_0804510c] GFX_INIT Func_02
void func_0804510c(void) {
    func_0800c604(0);
    func_08017578();
}


// [func_0804511c] GFX_INIT Func_01
void func_0804511c(void) {
    u32 task;

    func_0800c604(0);
    task = func_08002ee0(func_0800c3b8(), D_089ea08c, 0x2000);
    task_run_after(task, func_0804510c, 0);
}


// [func_0804514c] GFX_INIT Func_00
void func_0804514c(void) {
    u32 task;

    func_0800c604(0);
    func_08006d80();
    task = func_080087b4(func_0800c3b8(), D_089ea088);
    task_run_after(task, func_0804511c, 0);
}


// [func_0804517c] MAIN - Init
void func_0804517c(u32 ver) {
    gPrologueInfo->ver = ver;

    func_0804514c();
    func_0800e0ec();
    func_0800e0a0(BG_LAYER_1, TRUE, 0, 0, 0, 29, 1);

    gPrologueInfo->textSprite = func_0804d160(D_03005380, D_088ad2bc, 0, 165, 90, 0, 0, 0x7f, 0);
}


// [func_080451d8] ENGINE Func_00
void func_080451d8(void) {
}


// [func_080451dc] MAIN - Update
void func_080451dc(void) {
}


// [func_080451e0] MAIN - Close
void func_080451e0(void) {
}


// [func_080451e4] Event 0 - Set Animation Frame (Text)
void func_080451e4(u32 frame) {
    func_0804cebc(D_03005380, gPrologueInfo->textSprite, frame);
}
