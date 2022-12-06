#include "engines/prologues/tap_trial.h"

#include "src/code_08001360.h"
#include "src/code_08007468.h"
#include "src/code_0800b3c8.h"
#include "src/code_0800b778.h"
#include "src/lib_0804c870.h"

// For readability.
#define gPrologueInfo ((struct PrologueTapTrialInfo *)D_030055d0)


  //  //  //  PROLOGUE: TAP TRIAL  //  //  //


// [func_08047678] GFX_INIT Func_02
void func_08047678(void) {
    func_0800c604(0);
    func_08017578();
}


// [func_08047688] GFX_INIT Func_01
void func_08047688(void) {
    u32 task;

    func_0800c604(0);
    task = func_08002ee0(func_0800c3b8(), D_089ed54c, 0x2000);
    task_run_after(task, func_08047678, 0);
}


// [func_080476b8] GFX_INIT Func_00
void func_080476b8(void) {
    u32 task;

    func_0800c604(0);
    func_08006d80();
    task = func_080087b4(func_0800c3b8(), D_089ed548);
    task_run_after(task, func_08047688, 0);
}


// [func_080476e8] MAIN - Init
void func_080476e8(u32 ver) {
    gPrologueInfo->ver = ver;

    func_080476b8();
    func_0800e0ec();
    func_0800e0a0(BG_LAYER_1, TRUE, 0, 0, 0, 29, 1);

    gPrologueInfo->textSprite = func_0804d160(D_03005380, D_088b794c, 0, 120, 80, 0, 1, 0x7f, 0x8000);
    func_0804dcb8(D_03005380, gPrologueInfo->textSprite, 0x180);
}


// [func_08047764] ENGINE Func_00
void func_08047764(void) {
}


// [func_08047768] MAIN - Update
void func_08047768(void) {
}


// [func_0804776c] MAIN - Close
void func_0804776c(void) {
}


// [func_08047770] Event 0 - Set Animation Frame (Text)
void func_08047770(u32 frame) {
    func_0804cebc(D_03005380, gPrologueInfo->textSprite, frame);
}


// [func_08047794] Event 1 - Animate Text
void func_08047794(void) {
    func_0804d770(D_03005380, gPrologueInfo->textSprite, TRUE);
}
