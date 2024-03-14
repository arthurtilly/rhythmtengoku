#include "prologues/snappy_trio.h"

#include "src/code_08001360.h"
#include "src/code_08007468.h"
#include "src/code_0800b778.h"
#include "src/lib_0804ca80.h"

// For readability.
#define gPrologueEngineData ((struct SnappyTrioPrologueEngineData *)gCurrentEngineData)


  //  //  //  PROLOGUE: THE SNAPPY TRIO  //  //  //


// [func_08045ee8] GFX_INIT Func_02
void func_08045ee8(void) {
    func_0800c604(0);
    gameplay_start_screen_fade_in();
}


// [func_08045ef8] GFX_INIT Func_01
void func_08045ef8(void) {
    u32 task;

    func_0800c604(0);
    task = func_08002ee0(get_current_mem_id(), snappy_trio_prologue_gfx_table, 0x2000);
    run_func_after_task(task, func_08045ee8, 0);
}


// [func_08045f28] GFX_INIT Func_00
void func_08045f28(void) {
    u32 task;

    func_0800c604(0);
    func_08006d80();
    task = start_new_texture_loader(get_current_mem_id(), snappy_trio_prologue_buffered_textures);
    run_func_after_task(task, func_08045ef8, 0);
}


// [func_08045f58] MAIN - Init
void snappy_trio_prologue_engine_start(u32 ver) {
    gPrologueEngineData->ver = ver;

    func_08045f28();
    scene_show_obj_layer();
    scene_set_bg_layer_display(BG_LAYER_1, TRUE, 0, 0, 0, 29, 1);

    gPrologueEngineData->textSprite = sprite_create(gSpriteHandler, anim_snappy_trio_prologue_title, 0, 120, 100, 0, 0, 0x7f, 0);
}


// [func_08045fb4] ENGINE Func_00
void func_08045fb4(void) {
}


// [func_08045fb8] MAIN - Update
void snappy_trio_prologue_engine_update(void) {
}


// [func_08045fbc] MAIN - Close
void snappy_trio_prologue_engine_stop(void) {
}


// [func_08045fc0] Event 0 - Set Animation Frame (Text)
void func_08045fc0(u32 frame) {
    sprite_set_anim_cel(gSpriteHandler, gPrologueEngineData->textSprite, frame);
}
