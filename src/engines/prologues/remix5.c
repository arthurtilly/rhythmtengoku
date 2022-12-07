#include "engines/prologues/remix5.h"

#include "src/code_08001360.h"
#include "src/code_08007468.h"
#include "src/code_0800b3c8.h"
#include "src/code_0800b778.h"
#include "src/lib_0804c870.h"

// For readability.
#define gPrologueInfo ((struct PrologueRemix5Info *)D_030055d0)


  //  //  //  PROLOGUE: REMIX 5  //  //  //


// [func_08046a18] GFX_INIT Func_02
void func_08046a18(void) {
    func_0800c604(0);
    func_08017578();
}


// [func_08046a28] GFX_INIT Func_01
void func_08046a28(void) {
    u32 task;

    func_0800c604(0);
    task = func_08002ee0(func_0800c3b8(), prologue_remix5_gfx_table, 0x2000);
    task_run_after(task, func_08046a18, 0);
}


// [func_08046a58] GFX_INIT Func_00
void func_08046a58(void) {
    u32 task;

    func_0800c604(0);
    func_08006d80();
    task = func_080087b4(func_0800c3b8(), prologue_remix5_buffered_textures);
    task_run_after(task, func_08046a28, 0);
}


// [func_08046a88] MAIN - Init
void func_08046a88(u32 ver) {
    gPrologueInfo->ver = ver;

    func_08046a58();
    func_0800e0ec();
    func_0800e0a0(BG_LAYER_1, TRUE, 0, 0, 0, 29, 1);

    gPrologueInfo->textSprite = func_0804d160(D_03005380, D_088b27f4, 0, 112, 128, 0, 0, 0x7f, 0);
}


// [func_08046ae4] ENGINE Func_00
void func_08046ae4(void) {
}


// [func_08046ae8] MAIN - Update
void func_08046ae8(void) {
}


// [func_08046aec] MAIN - Close
void func_08046aec(void) {
}


// [func_08046af0] Event 0 - Set Animation Frame (Text)
void func_08046af0(u32 frame) {
    func_0804cebc(D_03005380, gPrologueInfo->textSprite, frame);
}
