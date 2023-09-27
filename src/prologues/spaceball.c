#include "prologues/spaceball.h"

#include "src/code_08001360.h"
#include "src/code_08007468.h"
#include "src/code_0800b778.h"
#include "src/lib_0804ca80.h"

// For readability.
#define gPrologueEngineData ((struct SpaceballPrologueEngineData *)gCurrentEngineData)


  //  //  //  PROLOGUE: SPACEBALL  //  //  //


// [func_08045208] GFX_INIT Func_02
void func_08045208(void) {
    func_0800c604(0);
    gameplay_start_screen_fade_in();
}


// [func_08045218] GFX_INIT Func_01
void func_08045218(void) {
    u32 task;

    func_0800c604(0);
    task = func_08002ee0(get_current_mem_id(), spaceball_prologue_gfx_table, 0x2000);
    run_func_after_task(task, func_08045208, 0);
}


// [func_08045248] GFX_INIT Func_00
void func_08045248(void) {
    u32 task;

    func_0800c604(0);
    func_08006d80();
    task = start_new_texture_loader(get_current_mem_id(), spaceball_prologue_buffered_textures);
    run_func_after_task(task, func_08045218, 0);
}


// [func_08045278] MAIN - Init
void spaceball_prologue_engine_start(u32 ver) {
    gPrologueEngineData->ver = ver;

    func_08045248();
    scene_show_obj_layer();
    scene_set_bg_layer_display(BG_LAYER_1, TRUE, 0, 0, 0, 29, 1);

    gPrologueEngineData->textSprite = func_0804d160(D_03005380, anim_spaceball_prologue_title, 0, 120, 80, 0, 0, 0, 0);
}


// [func_080452d4] ENGINE Func_00
void func_080452d4(void) {
}


// [func_080452d8] MAIN - Update
void spaceball_prologue_engine_update(void) {
}


// [func_080452dc] MAIN - Close
void spaceball_prologue_engine_stop(void) {
}


// [func_080452e0] Event 0 - Set Animation Frame (Text)
void func_080452e0(u32 frame) {
    func_0804cebc(D_03005380, gPrologueEngineData->textSprite, frame);
}
