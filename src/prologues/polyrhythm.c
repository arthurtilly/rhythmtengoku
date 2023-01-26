#include "prologues/polyrhythm.h"

#include "src/code_08001360.h"
#include "src/code_08007468.h"
#include "src/code_0800b3c8.h"
#include "src/code_0800b778.h"
#include "src/lib_0804ca80.h"

// For readability.
#define gPrologueInfo ((struct ProloguePolyrhythmInfo *)D_030055d0)


  //  //  //  PROLOGUE: POLYRHYTHM  //  //  //


// [func_0804642c] GFX_INIT Func_02
void func_0804642c(void) {
    func_0800c604(0);
    gameplay_start_screen_fade_in();
}


// [func_0804643c] GFX_INIT Func_01
void func_0804643c(void) {
    u32 task;

    func_0800c604(0);
    task = func_08002ee0(get_current_mem_id(), prologue_polyrhythm_gfx_table, 0x2000);
    run_func_after_task(task, func_0804642c, 0);
}


// [func_0804646c] GFX_INIT Func_00
void func_0804646c(void) {
    u32 task;

    func_0800c604(0);
    func_08006d80();
    task = func_080087b4(get_current_mem_id(), prologue_polyrhythm_buffered_textures);
    run_func_after_task(task, func_0804643c, 0);
}


// [func_0804649c] MAIN - Init
void func_0804649c(u32 ver) {
    gPrologueInfo->ver = ver;

    func_0804646c();
    scene_show_obj_layer();
    scene_set_bg_layer_display(BG_LAYER_1, TRUE, 0, 0, 0, 29, 1);

    gPrologueInfo->textSprite = func_0804d160(D_03005380, anim_prologue_polyrhythm_title, 0, 112, 144, 0, 0, 0x7f, 0);
}


// [func_080464f8] ENGINE Func_00
void func_080464f8(void) {
}


// [func_080464fc] MAIN - Update
void func_080464fc(void) {
}


// [func_08046500] MAIN - Close
void func_08046500(void) {
}


// [func_08046504] Event 0 - Set Animation Frame (Text)
void func_08046504(u32 frame) {
    func_0804cebc(D_03005380, gPrologueInfo->textSprite, frame);
}
