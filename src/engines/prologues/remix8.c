#include "engines/prologues/remix8.h"

#include "src/code_08001360.h"
#include "src/code_08007468.h"
#include "src/code_0800b3c8.h"
#include "src/code_0800b778.h"
#include "src/lib_0804c870.h"

// For readability.
#define gPrologueInfo ((struct PrologueRemix8Info *)D_030055d0)


  //  //  //  PROLOGUE: REMIX 8  //  //  //


// [func_08046d0c] GFX_INIT Func_02
void func_08046d0c(void) {
    func_0800c604(0);
    func_08017578();
}


// [func_08046d1c] GFX_INIT Func_01
void func_08046d1c(void) {
    u32 task;

    func_0800c604(0);
    task = func_08002ee0(func_0800c3b8(), prologue_remix8_gfx_table, 0x2000);
    task_run_after(task, func_08046d0c, 0);
}


// [func_08046d4c] GFX_INIT Func_00
void func_08046d4c(void) {
    u32 task;

    func_0800c604(0);
    func_08006d80();
    task = func_080087b4(func_0800c3b8(), prologue_remix8_buffered_textures);
    task_run_after(task, func_08046d1c, 0);
}


// [func_08046d7c] MAIN - Init
void func_08046d7c(u32 ver) {
    gPrologueInfo->ver = ver;

    func_08046d4c();
    func_0800e0ec();
    func_0800e0a0(BG_LAYER_1, TRUE, 0, 0, 0, 29, 1);

    gPrologueInfo->textSprite = func_0804d160(D_03005380, D_088b332c, 0, 112, 128, 0, 0, 0x7f, 0);
}


// [func_08046dd8] ENGINE Func_00
void func_08046dd8(void) {
}


// [func_08046ddc] MAIN - Update
void func_08046ddc(void) {
}


// [func_08046de0] MAIN - Close
void func_08046de0(void) {
}


// [func_08046de4] Event 0 - Set Animation Frame (Text)
void func_08046de4(u32 frame) {
    func_0804cebc(D_03005380, gPrologueInfo->textSprite, frame);
}
