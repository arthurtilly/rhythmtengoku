#include "engines/prologues/polyrhythm.h"

#include "src/code_08001360.h"
#include "src/code_08007468.h"
#include "src/code_0800b3c8.h"
#include "src/code_0800b778.h"
#include "src/lib_0804c870.h"

// For readability.
#define gPrologueInfo ((struct ProloguePolyrhythmInfo *)D_030055d0)


  //  //  //  PROLOGUE: POLYRHYTHM  //  //  //


// [func_0804642c] GFX_INIT Func_02
void func_0804642c(void) {
    func_0800c604(0);
    func_08017578();
}


// [func_0804643c] GFX_INIT Func_01
void func_0804643c(void) {
    u32 task;

    func_0800c604(0);
    task = func_08002ee0(func_0800c3b8(), D_089eb9c0, 0x2000);
    task_run_after(task, func_0804642c, 0);
}


// [func_0804646c] GFX_INIT Func_00
void func_0804646c(void) {
    u32 task;

    func_0800c604(0);
    func_08006d80();
    task = func_080087b4(func_0800c3b8(), D_089eb9bc);
    task_run_after(task, func_0804643c, 0);
}


// [func_0804649c] MAIN - Init
void func_0804649c(u32 ver) {
    gPrologueInfo->ver = ver;

    func_0804646c();
    func_0800e0ec();
    func_0800e0a0(BG_LAYER_1, TRUE, 0, 0, 0, 29, 1);

    gPrologueInfo->textSprite = func_0804d160(D_03005380, D_088b0cb4, 0, 112, 144, 0, 0, 0x7f, 0);
}


// [func_080464f8] ENGINE Func_00
void func_080464f8(void) {
}


// [func_080464fc] MAIN - Update
void func_080464fc(void) {
}


// [func_08046500] MAIN - Close
void func_08046500(void) {
}


// [func_08046504] Event 0 - Set Animation Frame (Text)
void func_08046504(u32 frame) {
    func_0804cebc(D_03005380, gPrologueInfo->textSprite, frame);
}
