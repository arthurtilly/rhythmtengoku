#include "prologues/sneaky_spirits.h"

#include "src/code_08001360.h"
#include "src/code_08007468.h"
#include "src/code_0800b3c8.h"
#include "src/code_0800b778.h"
#include "src/lib_0804ca80.h"

// For readability.
#define gPrologueInfo ((struct PrologueSneakySpiritsInfo *)D_030055d0)


  //  //  //  PROLOGUE: SNEAKY SPIRITS  //  //  //


// [func_0804510c] GFX_INIT Func_02
void func_0804510c(void) {
    func_0800c604(0);
    gameplay_start_screen_fade_in();
}


// [func_0804511c] GFX_INIT Func_01
void func_0804511c(void) {
    u32 task;

    func_0800c604(0);
    task = func_08002ee0(get_current_mem_id(), prologue_sneaky_spirits_gfx_table, 0x2000);
    run_func_after_task(task, func_0804510c, 0);
}


// [func_0804514c] GFX_INIT Func_00
void func_0804514c(void) {
    u32 task;

    func_0800c604(0);
    func_08006d80();
    task = func_080087b4(get_current_mem_id(), prologue_sneaky_spirits_buffered_textures);
    run_func_after_task(task, func_0804511c, 0);
}


// [func_0804517c] MAIN - Init
void func_0804517c(u32 ver) {
    gPrologueInfo->ver = ver;

    func_0804514c();
    scene_show_obj_layer();
    scene_set_bg_layer_display(BG_LAYER_1, TRUE, 0, 0, 0, 29, 1);

    gPrologueInfo->textSprite = func_0804d160(D_03005380, anim_prologue_sneaky_spirits_title, 0, 165, 90, 0, 0, 0x7f, 0);
}


// [func_080451d8] ENGINE Func_00
void func_080451d8(void) {
}


// [func_080451dc] MAIN - Update
void func_080451dc(void) {
}


// [func_080451e0] MAIN - Close
void func_080451e0(void) {
}


// [func_080451e4] Event 0 - Set Animation Frame (Text)
void func_080451e4(u32 frame) {
    func_0804cebc(D_03005380, gPrologueInfo->textSprite, frame);
}
