#include "prologues/samurai_slice.h"

#include "src/code_08001360.h"
#include "src/code_08007468.h"
#include "src/code_0800b778.h"
#include "src/lib_0804ca80.h"

// For readability.
#define gPrologueEngineData ((struct SamuraiSlicePrologueEngineData *)gCurrentEngineData)


  //  //  //  PROLOGUE: SAMURAI SLICE  //  //  //


// [func_08045fe4] GFX_INIT Func_02
void func_08045fe4(void) {
    func_0800c604(0);
    gameplay_start_screen_fade_in();
}


// [func_08045ff4] GFX_INIT Func_01
void func_08045ff4(void) {
    u32 task;

    func_0800c604(0);
    task = func_08002ee0(get_current_mem_id(), samurai_slice_prologue_gfx_table, 0x2000);
    run_func_after_task(task, func_08045fe4, 0);
}


// [func_08046024] GFX_INIT Func_00
void func_08046024(void) {
    u32 task;

    func_0800c604(0);
    func_08006d80();
    task = start_new_texture_loader(get_current_mem_id(), samurai_slice_prologue_buffered_textures);
    run_func_after_task(task, func_08045ff4, 0);
}


// [func_08046054] MAIN - Init
void samurai_slice_prologue_engine_start(u32 ver) {
    gPrologueEngineData->ver = ver;

    func_08046024();
    scene_show_obj_layer();
    scene_set_bg_layer_display(BG_LAYER_1, TRUE, 0, 0, 0, 29, 1);
    scene_set_bg_layer_display(BG_LAYER_2, FALSE, 0, 0, 0, 30, 1);

    gPrologueEngineData->textSprite = sprite_create(gSpriteHandler, anim_samurai_slice_prologue_title, 0, 135, 20, 0, 0, 0x7f, 0);
}


// [func_080460c8] ENGINE Func_00
void func_080460c8(void) {
}


// [func_080460cc] MAIN - Update
void samurai_slice_prologue_engine_update(void) {
}


// [func_080460d0] MAIN - Close
void samurai_slice_prologue_engine_stop(void) {
}


// [func_080460d4] Event 0 - Set Animation Frame (Text)
void func_080460d4(u32 frame) {
    sprite_set_anim_cel(gSpriteHandler, gPrologueEngineData->textSprite, frame);
}
