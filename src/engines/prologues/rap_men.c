#include "engines/prologues/rap_men.h"

#include "src/code_08001360.h"
#include "src/code_08007468.h"
#include "src/code_0800b3c8.h"
#include "src/code_0800b778.h"
#include "src/lib_0804c870.h"

// For readability.
#define gPrologueInfo ((struct PrologueRapMenInfo *)D_030055d0)


  //  //  //  PROLOGUE: RAP MEN  //  //  //


// [func_08046f5c] GFX_INIT Func_02
void func_08046f5c(void) {
    func_0800c604(0);
    func_08017578();
}


// [func_08046f6c] GFX_INIT Func_01
void func_08046f6c(void) {
    u32 task;

    func_0800c604(0);
    task = func_08002ee0(func_0800c3b8(), prologue_rap_men_gfx_table, 0x2000);
    task_run_after(task, func_08046f5c, 0);
}


// [func_08046f9c] GFX_INIT Func_00
void func_08046f9c(void) {
    u32 task;

    func_0800c604(0);
    func_08006d80();
    task = func_080087b4(func_0800c3b8(), prologue_rap_men_buffered_textures);
    task_run_after(task, func_08046f6c, 0);
}


// [func_08046fcc] MAIN - Init
void func_08046fcc(u32 ver) {
    gPrologueInfo->ver = ver;

    func_08046f9c();
    func_0800e0ec();
    func_0800e0a0(BG_LAYER_1, TRUE, 0, 0, 0, 29, 1);

    gPrologueInfo->textSprite = func_0804d160(D_03005380, D_088b37d8, 0, 190, 40, 0, 0, 0x7f, 0);
}


// [func_08047028] ENGINE Func_00
void func_08047028(void) {
}


// [func_0804702c] MAIN - Update
void func_0804702c(void) {
}


// [func_08047030] MAIN - Close
void func_08047030(void) {
}


// [func_08047034] Event 0 - Play Animation (Text)
void func_08047034(void) {
    func_0804dae0(D_03005380, gPrologueInfo->textSprite, 1, 0x7f, 0);
}
