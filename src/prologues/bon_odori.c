#include "prologues/bon_odori.h"

#include "src/code_08001360.h"
#include "src/code_08007468.h"
#include "src/code_0800b778.h"
#include "src/lib_0804ca80.h"

// For readability.
#define gPrologueEngineData ((struct BonOdoriPrologueEngineData *)gCurrentEngineData)


  //  //  //  PROLOGUE: THE BON ODORI  //  //  //


// [func_08045408] GFX_INIT Func_02
void func_08045408(void) {
    func_0800c604(0);
    gameplay_start_screen_fade_in();
}


// [func_08045418] GFX_INIT Func_01
void func_08045418(void) {
    u32 task;

    func_0800c604(0);
    task = func_08002ee0(get_current_mem_id(), bon_odori_prologue_gfx_table, 0x2000);
    run_func_after_task(task, func_08045408, 0);
}


// [func_08045448] GFX_INIT Func_00
void func_08045448(void) {
    u32 task;

    func_0800c604(0);
    func_08006d80();
    task = start_new_texture_loader(get_current_mem_id(), bon_odori_prologue_buffered_textures);
    run_func_after_task(task, func_08045418, 0);
}


// [func_08045478] MAIN - Init
void bon_odori_prologue_engine_start(u32 ver) {
    gPrologueEngineData->ver = ver;

    func_08045448();
    scene_show_obj_layer();
    scene_set_bg_layer_display(BG_LAYER_1, TRUE, 0, 0, 0, 29, 1);

    gPrologueEngineData->textSprite = sprite_create(gSpriteHandler, anim_bon_odori_prologue_title, 0, 120, 140, 0, 0, 0x7f, 0);
}


// [func_080454d4] ENGINE Func_00
void func_080454d4(void) {
}


// [func_080454d8] MAIN - Update
void bon_odori_prologue_engine_update(void) {
}


// [func_080454dc] MAIN - Close
void bon_odori_prologue_engine_stop(void) {
}


// [func_080454e0] Event 0 - Play Animation (Text)
void func_080454e0(void) {
    sprite_set_playback(gSpriteHandler, gPrologueEngineData->textSprite, 1, 0x7f, 0);
}
