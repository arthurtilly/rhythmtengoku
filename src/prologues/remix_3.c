#include "prologues/remix_3.h"

#include "src/code_08001360.h"
#include "src/code_08007468.h"
#include "src/code_0800b778.h"
#include "src/lib_0804ca80.h"

// For readability.
#define gPrologueEngineData ((struct Remix3PrologueEngineData *)gCurrentEngineData)


  //  //  //  PROLOGUE: REMIX 3  //  //  //


// [func_08046820] GFX_INIT Func_02
void func_08046820(void) {
    func_0800c604(0);
    gameplay_start_screen_fade_in();
}


// [func_08046830] GFX_INIT Func_01
void func_08046830(void) {
    u32 task;

    func_0800c604(0);
    task = func_08002ee0(get_current_mem_id(), remix_3_prologue_gfx_table, 0x2000);
    run_func_after_task(task, func_08046820, 0);
}


// [func_08046860] GFX_INIT Func_00
void func_08046860(void) {
    u32 task;

    func_0800c604(0);
    func_08006d80();
    task = start_new_texture_loader(get_current_mem_id(), remix_3_prologue_buffered_textures);
    run_func_after_task(task, func_08046830, 0);
}


// [func_08046890] MAIN - Init
void remix_3_prologue_engine_start(u32 ver) {
    gPrologueEngineData->ver = ver;

    func_08046860();
    scene_show_obj_layer();
    scene_set_bg_layer_display(BG_LAYER_1, TRUE, 0, 0, 0, 29, 1);

    gPrologueEngineData->textSprite = sprite_create(gSpriteHandler, anim_remix_3_prologue_title, 0, 112, 128, 0, 0, 0x7f, 0);
}


// [func_080468ec] ENGINE Func_00
void func_080468ec(void) {
}


// [func_080468f0] MAIN - Update
void remix_3_prologue_engine_update(void) {
}


// [func_080468f4] MAIN - Close
void remix_3_prologue_engine_stop(void) {
}


// [func_080468f8] Event 0 - Set Animation Frame (Text)
void func_080468f8(u32 frame) {
    sprite_set_anim_cel(gSpriteHandler, gPrologueEngineData->textSprite, frame);
}
