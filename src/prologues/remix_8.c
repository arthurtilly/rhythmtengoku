#include "prologues/remix_8.h"

#include "src/code_08001360.h"
#include "src/code_08007468.h"
#include "src/code_0800b3c8.h"
#include "src/code_0800b778.h"
#include "src/lib_0804ca80.h"

// For readability.
#define gPrologueInfo ((struct Remix8PrologueInfo *)D_030055d0)


  //  //  //  PROLOGUE: REMIX 8  //  //  //


// [func_08046d0c] GFX_INIT Func_02
void func_08046d0c(void) {
    func_0800c604(0);
    gameplay_start_screen_fade_in();
}


// [func_08046d1c] GFX_INIT Func_01
void func_08046d1c(void) {
    u32 task;

    func_0800c604(0);
    task = func_08002ee0(get_current_mem_id(), remix_8_prologue_gfx_table, 0x2000);
    run_func_after_task(task, func_08046d0c, 0);
}


// [func_08046d4c] GFX_INIT Func_00
void func_08046d4c(void) {
    u32 task;

    func_0800c604(0);
    func_08006d80();
    task = func_080087b4(get_current_mem_id(), remix_8_prologue_buffered_textures);
    run_func_after_task(task, func_08046d1c, 0);
}


// [func_08046d7c] MAIN - Init
void remix_8_prologue_engine_start(u32 ver) {
    gPrologueInfo->ver = ver;

    func_08046d4c();
    scene_show_obj_layer();
    scene_set_bg_layer_display(BG_LAYER_1, TRUE, 0, 0, 0, 29, 1);

    gPrologueInfo->textSprite = func_0804d160(D_03005380, anim_remix_8_prologue_title, 0, 112, 128, 0, 0, 0x7f, 0);
}


// [func_08046dd8] ENGINE Func_00
void func_08046dd8(void) {
}


// [func_08046ddc] MAIN - Update
void remix_8_prologue_engine_update(void) {
}


// [func_08046de0] MAIN - Close
void remix_8_prologue_engine_stop(void) {
}


// [func_08046de4] Event 0 - Set Animation Frame (Text)
void func_08046de4(u32 frame) {
    func_0804cebc(D_03005380, gPrologueInfo->textSprite, frame);
}
