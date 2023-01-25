#include "prologues/remix7.h"

#include "src/code_08001360.h"
#include "src/code_08007468.h"
#include "src/code_0800b3c8.h"
#include "src/code_0800b778.h"
#include "src/lib_0804ca80.h"

// For readability.
#define gPrologueInfo ((struct PrologueRemix7Info *)D_030055d0)


  //  //  //  PROLOGUE: REMIX 7  //  //  //


// [func_08046c10] GFX_INIT Func_02
void func_08046c10(void) {
    func_0800c604(0);
    gameplay_start_screen_fade_in();
}


// [func_08046c20] GFX_INIT Func_01
void func_08046c20(void) {
    u32 task;

    func_0800c604(0);
    task = func_08002ee0(get_current_mem_id(), prologue_remix7_gfx_table, 0x2000);
    run_func_after_task(task, func_08046c10, 0);
}


// [func_08046c50] GFX_INIT Func_00
void func_08046c50(void) {
    u32 task;

    func_0800c604(0);
    func_08006d80();
    task = func_080087b4(get_current_mem_id(), prologue_remix7_buffered_textures);
    run_func_after_task(task, func_08046c20, 0);
}


// [func_08046c80] MAIN - Init
void func_08046c80(u32 ver) {
    gPrologueInfo->ver = ver;

    func_08046c50();
    scene_show_obj_layer();
    scene_set_bg_layer_display(BG_LAYER_1, TRUE, 0, 0, 0, 29, 1);

    gPrologueInfo->textSprite = func_0804d160(D_03005380, anim_prologue_remix7_title, 0, 112, 128, 0, 0, 0x7f, 0);
}


// [func_08046cdc] ENGINE Func_00
void func_08046cdc(void) {
}


// [func_08046ce0] MAIN - Update
void func_08046ce0(void) {
}


// [func_08046ce4] MAIN - Close
void func_08046ce4(void) {
}


// [func_08046ce8] Event 0 - Set Animation Frame (Text)
void func_08046ce8(u32 frame) {
    func_0804cebc(D_03005380, gPrologueInfo->textSprite, frame);
}
