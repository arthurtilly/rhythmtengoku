#include "engines/prologues/remix4.h"

#include "src/code_08001360.h"
#include "src/code_08007468.h"
#include "src/code_0800b3c8.h"
#include "src/code_0800b778.h"
#include "src/lib_0804c870.h"

// For readability.
#define gPrologueInfo ((struct PrologueRemix4Info *)D_030055d0)


  //  //  //  PROLOGUE: REMIX 4  //  //  //


// [func_0804691c] GFX_INIT Func_02
void func_0804691c(void) {
    func_0800c604(0);
    func_08017578();
}


// [func_0804692c] GFX_INIT Func_01
void func_0804692c(void) {
    u32 task;

    func_0800c604(0);
    task = func_08002ee0(func_0800c3b8(), D_089ec214, 0x2000);
    task_run_after(task, func_0804691c, 0);
}


// [func_0804695c] GFX_INIT Func_00
void func_0804695c(void) {
    u32 task;

    func_0800c604(0);
    func_08006d80();
    task = func_080087b4(func_0800c3b8(), D_089ec210);
    task_run_after(task, func_0804692c, 0);
}


// [func_0804698c] MAIN - Init
void func_0804698c(u32 ver) {
    gPrologueInfo->ver = ver;

    func_0804695c();
    func_0800e0ec();
    func_0800e0a0(BG_LAYER_1, TRUE, 0, 0, 0, 29, 1);

    gPrologueInfo->textSprite = func_0804d160(D_03005380, D_088b23ec, 0, 112, 128, 0, 0, 0x7f, 0);
}


// [func_080469e8] ENGINE Func_00
void func_080469e8(void) {
}


// [func_080469ec] MAIN - Update
void func_080469ec(void) {
}


// [func_080469f0] MAIN - Close
void func_080469f0(void) {
}


// [func_080469f4] Event 0 - Set Animation Frame (Text)
void func_080469f4(u32 frame) {
    func_0804cebc(D_03005380, gPrologueInfo->textSprite, frame);
}
