#include "engines/prologues/bon_dance.h"

#include "src/code_08001360.h"
#include "src/code_08007468.h"
#include "src/code_0800b3c8.h"
#include "src/code_0800b778.h"
#include "src/lib_0804c870.h"

// For readability.
#define gPrologueInfo ((struct PrologueBonDanceInfo *)D_030055d0)


  //  //  //  PROLOGUE: BON DANCE  //  //  //


// [func_08045408] GFX_INIT Func_02
void func_08045408(void) {
    func_0800c604(0);
    func_08017578();
}


// [func_08045418] GFX_INIT Func_01
void func_08045418(void) {
    u32 task;

    func_0800c604(0);
    task = func_08002ee0(func_0800c3b8(), prologue_bon_dance_gfx_table, 0x2000);
    task_run_after(task, func_08045408, 0);
}


// [func_08045448] GFX_INIT Func_00
void func_08045448(void) {
    u32 task;

    func_0800c604(0);
    func_08006d80();
    task = func_080087b4(func_0800c3b8(), prologue_bon_dance_buffered_textures);
    task_run_after(task, func_08045418, 0);
}


// [func_08045478] MAIN - Init
void func_08045478(u32 ver) {
    gPrologueInfo->ver = ver;

    func_08045448();
    func_0800e0ec();
    func_0800e0a0(BG_LAYER_1, TRUE, 0, 0, 0, 29, 1);

    gPrologueInfo->textSprite = func_0804d160(D_03005380, D_088ad898, 0, 120, 140, 0, 0, 0x7f, 0);
}


// [func_080454d4] ENGINE Func_00
void func_080454d4(void) {
}


// [func_080454d8] MAIN - Update
void func_080454d8(void) {
}


// [func_080454dc] MAIN - Close
void func_080454dc(void) {
}


// [func_080454e0] Event 0 - Play Animation (Text)
void func_080454e0(void) {
    func_0804dae0(D_03005380, gPrologueInfo->textSprite, 1, 0x7f, 0);
}
