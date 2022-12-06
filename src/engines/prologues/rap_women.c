#include "engines/prologues/rap_women.h"

#include "src/code_08001360.h"
#include "src/code_08007468.h"
#include "src/code_0800b3c8.h"
#include "src/code_0800b778.h"
#include "src/lib_0804c870.h"

// For readability.
#define gPrologueInfo ((struct PrologueRapWomenInfo *)D_030055d0)


  //  //  //  PROLOGUE: RAP WOMEN  //  //  //


// [func_08047060] GFX_INIT Func_02
void func_08047060(void) {
    func_0800c604(0);
    func_08017578();
}


// [func_08047070] GFX_INIT Func_01
void func_08047070(void) {
    u32 task;

    func_0800c604(0);
    task = func_08002ee0(func_0800c3b8(), D_089ece84, 0x2000);
    task_run_after(task, func_08047060, 0);
}


// [func_080470a0] GFX_INIT Func_00
void func_080470a0(void) {
    u32 task;

    func_0800c604(0);
    func_08006d80();
    task = func_080087b4(func_0800c3b8(), D_089ece80);
    task_run_after(task, func_08047070, 0);
}


// [func_080470d0] MAIN - Init
void func_080470d0(u32 ver) {
    gPrologueInfo->ver = ver;

    func_080470a0();
    func_0800e0ec();
    func_0800e0a0(BG_LAYER_1, TRUE, 0, 0, 0, 29, 1);

    gPrologueInfo->textSprite = func_0804d160(D_03005380, D_088b3ac4, 0, 120, 120, 0, 0, 0x7f, 0);
}


// [func_0804712c] ENGINE Func_00
void func_0804712c(void) {
}


// [func_08047130] MAIN - Update
void func_08047130(void) {
}


// [func_08047134] MAIN - Close
void func_08047134(void) {
}


// [func_08047138] Event 0 - Play Animation (Text)
void func_08047138(void) {
    func_0804dae0(D_03005380, gPrologueInfo->textSprite, 1, 0x7f, 0);
}
