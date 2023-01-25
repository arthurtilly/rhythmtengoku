#include "prologues/clappy_trio.h"

#include "src/code_08001360.h"
#include "src/code_08007468.h"
#include "src/code_0800b3c8.h"
#include "src/code_0800b778.h"
#include "src/lib_0804ca80.h"

// For readability.
#define gPrologueInfo ((struct PrologueClappyTrioInfo *)D_030055d0)


  //  //  //  PROLOGUE: THE CLAPPY TRIO  //  //  //


// [func_08045dec] GFX_INIT Func_02
void func_08045dec(void) {
    func_0800c604(0);
    gameplay_start_screen_fade_in();
}


// [func_08045dfc] GFX_INIT Func_01
void func_08045dfc(void) {
    u32 task;

    func_0800c604(0);
    task = func_08002ee0(get_current_mem_id(), prologue_clappy_trio_gfx_table, 0x2000);
    run_func_after_task(task, func_08045dec, 0);
}


// [func_08045e2c] GFX_INIT Func_00
void func_08045e2c(void) {
    u32 task;

    func_0800c604(0);
    func_08006d80();
    task = func_080087b4(get_current_mem_id(), prologue_clappy_trio_buffered_textures);
    run_func_after_task(task, func_08045dfc, 0);
}


// [func_08045e5c] MAIN - Init
void func_08045e5c(u32 ver) {
    gPrologueInfo->ver = ver;

    func_08045e2c();
    scene_show_obj_layer();
    scene_set_bg_layer_display(BG_LAYER_1, TRUE, 0, 0, 0, 29, 1);

    gPrologueInfo->textSprite = func_0804d160(D_03005380, anim_prologue_clappy_trio_title, 0, 120, 100, 0, 0, 0, 0);
}


// [func_08045eb8] ENGINE Func_00
void func_08045eb8(void) {
}


// [func_08045ebc] MAIN - Update
void func_08045ebc(void) {
}


// [func_08045ec0] MAIN - Close
void func_08045ec0(void) {
}


// [func_08045ec4] Event 0 - Set Animation Frame (Text)
void func_08045ec4(u32 frame) {
    func_0804cebc(D_03005380, gPrologueInfo->textSprite, frame);
}
