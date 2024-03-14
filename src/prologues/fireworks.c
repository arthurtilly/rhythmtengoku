#include "prologues/fireworks.h"

#include "src/code_08001360.h"
#include "src/code_08007468.h"
#include "src/code_0800b778.h"
#include "src/lib_0804ca80.h"

// For readability.
#define gPrologueEngineData ((struct FireworksPrologueEngineData *)gCurrentEngineData)


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
    task = func_08002ee0(get_current_mem_id(), fireworks_prologue_gfx_table, 0x2000);
    run_func_after_task(task, func_08045cf0, 0);
}


// [func_08045d30] GFX_INIT Func_00
void func_08045d30(void) {
    u32 task;

    func_0800c604(0);
    func_08006d80();
    task = start_new_texture_loader(get_current_mem_id(), fireworks_prologue_buffered_textures);
    run_func_after_task(task, func_08045d00, 0);
}


// [func_08045d60] MAIN - Init
void fireworks_prologue_engine_start(u32 ver) {
    gPrologueEngineData->ver = ver;

    func_08045d30();
    scene_show_obj_layer();
    scene_set_bg_layer_display(BG_LAYER_1, TRUE, 0, 0, 0, 29, 1);

    gPrologueEngineData->textSprite = sprite_create(gSpriteHandler, anim_fireworks_prologue_title, 0, 120, 8, 0, 0, 0x7f, 0);
}


// [func_08045dbc] ENGINE Func_00
void func_08045dbc(void) {
}


// [func_08045dc0] MAIN - Update
void fireworks_prologue_engine_update(void) {
}


// [func_08045dc4] MAIN - Close
void fireworks_prologue_engine_stop(void) {
}


// [func_08045dc8] Event 0 - Set Animation Frame (Text)
void func_08045dc8(u32 frame) {
    sprite_set_anim_cel(gSpriteHandler, gPrologueEngineData->textSprite, frame);
}
