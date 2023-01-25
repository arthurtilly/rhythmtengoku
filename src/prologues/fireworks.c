#include "prologues/fireworks.h"

#include "src/code_08001360.h"
#include "src/code_08007468.h"
#include "src/code_0800b3c8.h"
#include "src/code_0800b778.h"
#include "src/lib_0804ca80.h"

// For readability.
#define gPrologueInfo ((struct PrologueFireworksInfo *)D_030055d0)


  //  //  //  PROLOGUE: FIREWORKS  //  //  //


// [func_08045cf0] GFX_INIT Func_02
void func_08045cf0(void) {
    func_0800c604(0);
    gameplay_start_screen_fade_in();
}


// [func_08045d00] GFX_INIT Func_01
void func_08045d00(void) {
    u32 task;

    func_0800c604(0);
    task = func_08002ee0(get_current_mem_id(), prologue_fireworks_gfx_table, 0x2000);
    run_func_after_task(task, func_08045cf0, 0);
}


// [func_08045d30] GFX_INIT Func_00
void func_08045d30(void) {
    u32 task;

    func_0800c604(0);
    func_08006d80();
    task = func_080087b4(get_current_mem_id(), prologue_fireworks_buffered_textures);
    run_func_after_task(task, func_08045d00, 0);
}


// [func_08045d60] MAIN - Init
void func_08045d60(u32 ver) {
    gPrologueInfo->ver = ver;

    func_08045d30();
    scene_show_obj_layer();
    scene_set_bg_layer_display(BG_LAYER_1, TRUE, 0, 0, 0, 29, 1);

    gPrologueInfo->textSprite = func_0804d160(D_03005380, anim_prologue_fireworks_title, 0, 120, 8, 0, 0, 0x7f, 0);
}


// [func_08045dbc] ENGINE Func_00
void func_08045dbc(void) {
}


// [func_08045dc0] MAIN - Update
void func_08045dc0(void) {
}


// [func_08045dc4] MAIN - Close
void func_08045dc4(void) {
}


// [func_08045dc8] Event 0 - Set Animation Frame (Text)
void func_08045dc8(u32 frame) {
    func_0804cebc(D_03005380, gPrologueInfo->textSprite, frame);
}
