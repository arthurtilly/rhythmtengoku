#include "engines/prologues/bon_odori.h"

#include "src/code_08001360.h"
#include "src/code_08007468.h"
#include "src/code_0800b3c8.h"
#include "src/code_0800b778.h"
#include "src/lib_0804c870.h"

// For readability.
#define gPrologueInfo ((struct PrologueBonOdoriInfo *)D_030055d0)


  //  //  //  PROLOGUE: THE BON ODORI  //  //  //


// [func_08045304] GFX_INIT Func_02
void func_08045304(void) {
    func_0800c604(0);
    func_08017578();
}


// [func_08045314] GFX_INIT Func_01
void func_08045314(void) {
    u32 task;

    func_0800c604(0);
    task = func_08002ee0(func_0800c3b8(), D_089ea3e8, 0x2000);
    task_run_after(task, func_08045304, 0);
}


// [func_08045344] GFX_INIT Func_00
void func_08045344(void) {
    u32 task;

    func_0800c604(0);
    func_08006d80();
    task = func_080087b4(func_0800c3b8(), D_089ea3e4);
    task_run_after(task, func_08045314, 0);
}


// [func_08045374] MAIN - Init
void func_08045374(u32 ver) {
    gPrologueInfo->ver = ver;

    func_08045344();
    func_0800e0ec();
    func_0800e0a0(BG_LAYER_1, TRUE, 0, 0, 0, 29, 1);

    gPrologueInfo->sprite = func_0804d160(D_03005380, D_088ad530, 0, 80, 64, 0, 0, 0x7f, 0);
}


// [func_080453d0] ENGINE Func_00
void func_080453d0(void) {
}


// [func_080453d4] MAIN - Update
void func_080453d4(void) {
}


// [func_080453d8] MAIN - Close
void func_080453d8(void) {
}


// [func_080453dc] Event 0 - Play Animation (Text)
void func_080453dc(void) {
    func_0804dae0(D_03005380, gPrologueInfo->sprite, 1, 0x7f, 0);
}
