#include "engines/prologues/rat_race.h"

#include "src/code_08001360.h"
#include "src/code_08007468.h"
#include "src/code_0800b3c8.h"
#include "src/code_0800b778.h"
#include "src/lib_0804c870.h"

// For readability.
#define gPrologueInfo ((struct PrologueRatRaceInfo *)D_030055d0)


  //  //  //  PROLOGUE: RAT RACE  //  //  //


// [func_08047164] GFX_INIT Func_02
void func_08047164(void) {
    func_0800c604(0);
    func_08017578();
}


// [func_08047174] GFX_INIT Func_01
void func_08047174(void) {
    u32 task;

    func_0800c604(0);
    task = func_08002ee0(func_0800c3b8(), D_089ecfc0, 0x2000);
    task_run_after(task, func_08047164, 0);
}


// [func_080471a4] GFX_INIT Func_00
void func_080471a4(void) {
    u32 task;

    func_0800c604(0);
    func_08006d80();
    task = func_080087b4(func_0800c3b8(), D_089ecfbc);
    task_run_after(task, func_08047174, 0);
}


// [func_080471d4] MAIN - Init
void func_080471d4(u32 ver) {
    gPrologueInfo->ver = ver;

    func_080471a4();
    func_0800e0ec();
    func_0800e0a0(BG_LAYER_1, TRUE, 0, 0, 0, 29, 1);

    gPrologueInfo->textSprite = func_0804d160(D_03005380, D_088b3d54, 0, 8, 8, 0, 0, 0x7f, 0);
    gPrologueInfo->ratSprite = func_0804d160(D_03005380, D_088b3d1c, 0, 190, 160, 0, 0, 0, 0);
}


// [func_08047250] ENGINE Func_00
void func_08047250(void) {
}


// [func_08047254] MAIN - Update
void func_08047254(void) {
}


// [func_08047258] MAIN - Close
void func_08047258(void) {
}


// [func_0804725c] Event 0 - Set Animation Frame (Text)
void func_0804725c(u32 frame) {
    func_0804cebc(D_03005380, gPrologueInfo->textSprite, frame);
}


// [func_08047280] Event 1 - Play Animation (Rat)
void func_08047280(void) {
    func_0804cebc(D_03005380, gPrologueInfo->ratSprite, 1);
    func_0804dae0(D_03005380, gPrologueInfo->ratSprite, 1, 0x7f, 0);
}
