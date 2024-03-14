#include "prologues/remix_4.h"

#include "src/code_08001360.h"
#include "src/code_08007468.h"
#include "src/code_0800b778.h"
#include "src/lib_0804ca80.h"

// For readability.
#define gPrologueEngineData ((struct Remix4PrologueEngineData *)gCurrentEngineData)


  //  //  //  PROLOGUE: REMIX 4  //  //  //


// [func_0804691c] GFX_INIT Func_02
void func_0804691c(void) {
    func_0800c604(0);
    gameplay_start_screen_fade_in();
}


// [func_0804692c] GFX_INIT Func_01
void func_0804692c(void) {
    u32 task;

    func_0800c604(0);
    task = func_08002ee0(get_current_mem_id(), remix_4_prologue_gfx_table, 0x2000);
    run_func_after_task(task, func_0804691c, 0);
}


// [func_0804695c] GFX_INIT Func_00
void func_0804695c(void) {
    u32 task;

    func_0800c604(0);
    func_08006d80();
    task = start_new_texture_loader(get_current_mem_id(), remix_4_prologue_buffered_textures);
    run_func_after_task(task, func_0804692c, 0);
}


// [func_0804698c] MAIN - Init
void remix_4_prologue_engine_start(u32 ver) {
    gPrologueEngineData->ver = ver;

    func_0804695c();
    scene_show_obj_layer();
    scene_set_bg_layer_display(BG_LAYER_1, TRUE, 0, 0, 0, 29, 1);

    gPrologueEngineData->textSprite = sprite_create(gSpriteHandler, anim_remix_4_prologue_title, 0, 112, 128, 0, 0, 0x7f, 0);
}


// [func_080469e8] ENGINE Func_00
void func_080469e8(void) {
}


// [func_080469ec] MAIN - Update
void remix_4_prologue_engine_update(void) {
}


// [func_080469f0] MAIN - Close
void remix_4_prologue_engine_stop(void) {
}


// [func_080469f4] Event 0 - Set Animation Frame (Text)
void func_080469f4(u32 frame) {
    sprite_set_anim_cel(gSpriteHandler, gPrologueEngineData->textSprite, frame);
}
