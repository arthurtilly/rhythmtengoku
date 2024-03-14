#include "prologues/rap_women.h"

#include "src/code_08001360.h"
#include "src/code_08007468.h"
#include "src/code_0800b778.h"
#include "src/lib_0804ca80.h"

// For readability.
#define gPrologueEngineData ((struct RapWomenPrologueEngineData *)gCurrentEngineData)


  //  //  //  PROLOGUE: RAP WOMEN  //  //  //


// [func_08047060] GFX_INIT Func_02
void func_08047060(void) {
    func_0800c604(0);
    gameplay_start_screen_fade_in();
}


// [func_08047070] GFX_INIT Func_01
void func_08047070(void) {
    u32 task;

    func_0800c604(0);
    task = func_08002ee0(get_current_mem_id(), rap_women_prologue_gfx_table, 0x2000);
    run_func_after_task(task, func_08047060, 0);
}


// [func_080470a0] GFX_INIT Func_00
void func_080470a0(void) {
    u32 task;

    func_0800c604(0);
    func_08006d80();
    task = start_new_texture_loader(get_current_mem_id(), rap_women_prologue_buffered_textures);
    run_func_after_task(task, func_08047070, 0);
}


// [func_080470d0] MAIN - Init
void rap_women_prologue_engine_start(u32 ver) {
    gPrologueEngineData->ver = ver;

    func_080470a0();
    scene_show_obj_layer();
    scene_set_bg_layer_display(BG_LAYER_1, TRUE, 0, 0, 0, 29, 1);

    gPrologueEngineData->textSprite = sprite_create(gSpriteHandler, anim_rap_women_prologue_title, 0, 120, 120, 0, 0, 0x7f, 0);
}


// [func_0804712c] ENGINE Func_00
void func_0804712c(void) {
}


// [func_08047130] MAIN - Update
void rap_women_prologue_engine_update(void) {
}


// [func_08047134] MAIN - Close
void rap_women_prologue_engine_stop(void) {
}


// [func_08047138] Event 0 - Play Animation (Text)
void func_08047138(void) {
    sprite_set_playback(gSpriteHandler, gPrologueEngineData->textSprite, 1, 0x7f, 0);
}
