#include "prologues/ninja_reincarnate.h"

#include "src/code_08001360.h"
#include "src/code_08007468.h"
#include "src/code_0800b778.h"
#include "src/lib_0804ca80.h"

// For readability.
#define gPrologueEngineData ((struct NinjaReincarnatePrologueEngineData *)gCurrentEngineData)


  //  //  //  PROLOGUE: NINJA REINCARNATE  //  //  //


// [func_080473d4] GFX_INIT Func_02
void func_080473d4(void) {
    func_0800c604(0);
    gameplay_start_screen_fade_in();
}


// [func_080473e4] GFX_INIT Func_01
void func_080473e4(void) {
    u32 task;

    func_0800c604(0);
    task = func_08002ee0(get_current_mem_id(), ninja_reincarnate_prologue_gfx_table, 0x2000);
    run_func_after_task(task, func_080473d4, 0);
}


// [func_08047414] GFX_INIT Func_00
void func_08047414(void) {
    u32 task;

    func_0800c604(0);
    func_08006d80();
    task = start_new_texture_loader(get_current_mem_id(), ninja_reincarnate_prologue_buffered_textures);
    run_func_after_task(task, func_080473e4, 0);
}


// [func_08047444] MAIN - Init
void ninja_reincarnate_prologue_engine_start(u32 ver) {
    gPrologueEngineData->ver = ver;

    func_08047414();
    scene_show_obj_layer();
    scene_set_bg_layer_display(BG_LAYER_1, TRUE, 0, 0, 0, 29, 1);

    gPrologueEngineData->textSprite = sprite_create(gSpriteHandler, anim_ninja_reincarnate_prologue_title, 0, 120, 130, 0, 0, 0x7f, 0);
}


// [func_080474a0] ENGINE Func_00
void func_080474a0(void) {
}


// [func_080474a4] MAIN - Update
void ninja_reincarnate_prologue_engine_update(void) {
}


// [func_080474a8] MAIN - Close
void ninja_reincarnate_prologue_engine_stop(void) {
}


// [func_080474ac] Event 0 - Play Animation (Text)
void func_080474ac(u32 speed) {
    sprite_set_playback(gSpriteHandler, gPrologueEngineData->textSprite, speed, 0x7f, 0);
}
