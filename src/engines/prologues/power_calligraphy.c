#include "engines/prologues/power_calligraphy.h"

#include "src/code_08001360.h"
#include "src/code_08007468.h"
#include "src/code_0800b3c8.h"
#include "src/code_0800b778.h"
#include "src/lib_0804c870.h"

// For readability.
#define gPrologueInfo ((struct ProloguePowerCalligraphyInfo *)D_030055d0)


  //  //  //  PROLOGUE: POWER CALLIGRAPHY  //  //  //


// [func_080460f8] GFX_INIT Func_02
void func_080460f8(void) {
    func_0800c604(0);
    func_08017578();
}


// [func_08046108] GFX_INIT Func_01
void func_08046108(void) {
    u32 task;

    func_0800c604(0);
    task = func_08002ee0(func_0800c3b8(), D_089eb534, 0x2000);
    task_run_after(task, func_080460f8, 0);
}


// [func_08046138] GFX_INIT Func_00
void func_08046138(void) {
    u32 task;

    func_0800c604(0);
    func_08006d80();
    task = func_080087b4(func_0800c3b8(), D_089eb530);
    task_run_after(task, func_08046108, 0);
}


// [func_08046168] MAIN - Init
void func_08046168(u32 ver) {
    gPrologueInfo->ver = ver;

    func_08046138();
    func_0800e0ec();
    func_0800e0a0(BG_LAYER_1, TRUE, 0, 0, 0, 29, 1);

    gPrologueInfo->textSprite = func_0804d160(D_03005380, D_088b0690, 0, 160, 150, 0, 0, 0x7f, 0);
}


// [func_080461c4] ENGINE Func_00
void func_080461c4(void) {
}


// [func_080461c8] MAIN - Update
void func_080461c8(void) {
}


// [func_080461cc] MAIN - Close
void func_080461cc(void) {
}


// [func_080461d0] Event 0 - Set Animation Frame (Text)
void func_080461d0(u32 frame) {
    func_0804cebc(D_03005380, gPrologueInfo->textSprite, frame);
}


// [func_080461f4] Event 1 - HAI
void func_080461f4(void) {
    func_0804d160(D_03005380, D_088b06b0, 0, 120, 88, 0x800, 1, 0x7f, 0);
    func_08002634(&s_sword_hi_seqData);
}
