#include "engines/prologues/wizards_waltz.h"

#include "src/code_08001360.h"
#include "src/code_08007468.h"
#include "src/code_0800b3c8.h"
#include "src/code_0800b778.h"
#include "src/lib_0804c870.h"

// For readability.
#define gPrologueInfo ((struct PrologueWizardsWaltzInfo *)D_030055d0)


  //  //  //  PROLOGUE: WIZARD'S WALTZ  //  //  //


// [func_08047d4c] GFX_INIT Func_02
void func_08047d4c(void) {
    func_0800c604(0);
    func_08017578();
}


// [func_08047d5c] GFX_INIT Func_01
void func_08047d5c(void) {
    u32 task;

    func_0800c604(0);
    task = func_08002ee0(func_0800c3b8(), prologue_wizards_waltz_gfx_table, 0x2000);
    task_run_after(task, func_08047d4c, 0);
}


// [func_08047d8c] GFX_INIT Func_00
void func_08047d8c(void) {
    u32 task;

    func_0800c604(0);
    func_08006d80();
    task = func_080087b4(func_0800c3b8(), prologue_wizards_waltz_buffered_textures);
    task_run_after(task, func_08047d5c, 0);
}


// [func_08047dbc] MAIN - Init
void func_08047dbc(u32 ver) {
    gPrologueInfo->ver = ver;

    func_08047d8c();
    func_0800e0ec();
    func_0800e0a0(BG_LAYER_1, TRUE, 0, 0, 0, 29, 1);

    gPrologueInfo->textSprite = func_0804d160(D_03005380, D_088b8e50, 0, 64, 30, 0, 1, 0, 0);
}


// [func_08047e18] ENGINE Func_00
void func_08047e18(void) {
}


// [func_08047e1c] MAIN - Update
void func_08047e1c(void) {
}


// [func_08047e20] MAIN - Close
void func_08047e20(void) {
}


// [func_08047e24] Event 0 - Play Animation (Text)
void func_08047e24(void) {
    func_0804dae0(D_03005380, gPrologueInfo->textSprite, 1, 0x7f, 0);
}
