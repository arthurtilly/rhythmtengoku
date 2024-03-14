#include "prologues/clappy_trio.h"

#include "src/code_08001360.h"
#include "src/code_08007468.h"
#include "src/code_0800b778.h"
#include "src/lib_0804ca80.h"

// For readability.
#define gPrologueEngineData ((struct ClappyTrioPrologueEngineData *)gCurrentEngineData)


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
    task = func_08002ee0(get_current_mem_id(), clappy_trio_prologue_gfx_table, 0x2000);
    run_func_after_task(task, func_08045dec, 0);
}


// [func_08045e2c] GFX_INIT Func_00
void func_08045e2c(void) {
    u32 task;

    func_0800c604(0);
    func_08006d80();
    task = start_new_texture_loader(get_current_mem_id(), clappy_trio_prologue_buffered_textures);
    run_func_after_task(task, func_08045dfc, 0);
}


// [func_08045e5c] MAIN - Init
void clappy_trio_prologue_engine_start(u32 ver) {
    gPrologueEngineData->ver = ver;

    func_08045e2c();
    scene_show_obj_layer();
    scene_set_bg_layer_display(BG_LAYER_1, TRUE, 0, 0, 0, 29, 1);

    gPrologueEngineData->textSprite = sprite_create(gSpriteHandler, anim_clappy_trio_prologue_title, 0, 120, 100, 0, 0, 0, 0);
}


// [func_08045eb8] ENGINE Func_00
void func_08045eb8(void) {
}


// [func_08045ebc] MAIN - Update
void clappy_trio_prologue_engine_update(void) {
}


// [func_08045ec0] MAIN - Close
void clappy_trio_prologue_engine_stop(void) {
}


// [func_08045ec4] Event 0 - Set Animation Frame (Text)
void func_08045ec4(u32 frame) {
    sprite_set_anim_cel(gSpriteHandler, gPrologueEngineData->textSprite, frame);
}
