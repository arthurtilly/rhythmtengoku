#include "engines/prologues/ninja_bodyguard_2.h"

#include "src/code_08001360.h"
#include "src/code_08007468.h"
#include "src/code_0800b3c8.h"
#include "src/code_0800b778.h"
#include "src/lib_0804c870.h"

// For readability.
#define gPrologueInfo ((struct PrologueNinjaBodyguard2Info *)D_030055d0)


  //  //  //  PROLOGUE: NINJA BODYGUARD 2  //  //  //


// [func_080473d4] GFX_INIT Func_02
void func_080473d4(void) {
    func_0800c604(0);
    func_08017578();
}


// [func_080473e4] GFX_INIT Func_01
void func_080473e4(void) {
    u32 task;

    func_0800c604(0);
    task = func_08002ee0(func_0800c3b8(), D_089ed2c8, 0x2000);
    task_run_after(task, func_080473d4, 0);
}


// [func_08047414] GFX_INIT Func_00
void func_08047414(void) {
    u32 task;

    func_0800c604(0);
    func_08006d80();
    task = func_080087b4(func_0800c3b8(), D_089ed2c4);
    task_run_after(task, func_080473e4, 0);
}


// [func_08047444] MAIN - Init
void func_08047444(u32 ver) {
    gPrologueInfo->ver = ver;

    func_08047414();
    func_0800e0ec();
    func_0800e0a0(BG_LAYER_1, TRUE, 0, 0, 0, 29, 1);

    gPrologueInfo->textSprite = func_0804d160(D_03005380, D_088b432c, 0, 120, 130, 0, 0, 0x7f, 0);
}


// [func_080474a0] ENGINE Func_00
void func_080474a0(void) {
}


// [func_080474a4] MAIN - Update
void func_080474a4(void) {
}


// [func_080474a8] MAIN - Close
void func_080474a8(void) {
}


// [func_080474ac] Event 0 - Play Animation (Text)
void func_080474ac(u32 speed) {
    func_0804dae0(D_03005380, gPrologueInfo->textSprite, speed, 0x7f, 0);
}
