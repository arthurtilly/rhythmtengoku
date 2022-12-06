#include "engines/prologues/sick_beats.h"

#include "src/code_08001360.h"
#include "src/code_08007468.h"
#include "src/code_0800b3c8.h"
#include "src/code_0800b778.h"
#include "src/lib_0804c870.h"

// For readability.
#define gPrologueInfo ((struct PrologueSickBeatsInfo *)D_030055d0)


  //  //  //  PROLOGUE: SICK BEATS  //  //  //


// [func_08047c08] GFX_INIT Func_02
void func_08047c08(void) {
    func_0800c604(0);
    func_08017578();
}


// [func_08047c18] GFX_INIT Func_01
void func_08047c18(void) {
    u32 task;

    func_0800c604(0);
    task = func_08002ee0(func_0800c3b8(), D_089edcf8, 0x2000);
    task_run_after(task, func_08047c08, 0);
}


// [func_08047c48] GFX_INIT Func_00
void func_08047c48(void) {
    u32 task;

    func_0800c604(0);
    func_08006d80();
    task = func_080087b4(func_0800c3b8(), D_089edcf4);
    task_run_after(task, func_08047c18, 0);
}


// [func_08047c78] MAIN - Init
void func_08047c78(u32 ver) {
    gPrologueInfo->ver = ver;

    func_08047c48();
    func_0800e0ec();
    func_0800e0a0(BG_LAYER_1, TRUE, 0, 0, 0, 29, 1);

    gPrologueInfo->textSprite = func_0804d160(D_03005380, D_088b8cfc, 0, 96, 17, 0, 0, 0x7f, 0);
    gPrologueInfo->virusSprite = func_0804d160(D_03005380, D_088b8cbc, 0, 160, 48, 0, 0, 0x7f, 0);
}


// [func_08047d00] ENGINE Func_00
void func_08047d00(void) {
}


// [func_08047d04] MAIN - Update
void func_08047d04(void) {
}


// [func_08047d08] MAIN - Close
void func_08047d08(void) {
}


// [func_08047d0c] Event 0 - Play Animation (Text), Play Animation (Virus)
void func_08047d0c(void) {
    func_0804dae0(D_03005380, gPrologueInfo->textSprite, 1, 0x7f, 0);
    func_0804dae0(D_03005380, gPrologueInfo->virusSprite, 1, 0x7f, 0);
}
