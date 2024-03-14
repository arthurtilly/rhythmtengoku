#include "prologues/wizards_waltz.h"

#include "src/code_08001360.h"
#include "src/code_08007468.h"
#include "src/code_0800b778.h"
#include "src/lib_0804ca80.h"

// For readability.
#define gPrologueEngineData ((struct WizardsWaltzPrologueEngineData *)gCurrentEngineData)


  //  //  //  PROLOGUE: WIZARD'S WALTZ  //  //  //


// [func_08047d4c] GFX_INIT Func_02
void func_08047d4c(void) {
    func_0800c604(0);
    gameplay_start_screen_fade_in();
}


// [func_08047d5c] GFX_INIT Func_01
void func_08047d5c(void) {
    u32 task;

    func_0800c604(0);
    task = func_08002ee0(get_current_mem_id(), wizards_waltz_prologue_gfx_table, 0x2000);
    run_func_after_task(task, func_08047d4c, 0);
}


// [func_08047d8c] GFX_INIT Func_00
void func_08047d8c(void) {
    u32 task;

    func_0800c604(0);
    func_08006d80();
    task = start_new_texture_loader(get_current_mem_id(), wizards_waltz_prologue_buffered_textures);
    run_func_after_task(task, func_08047d5c, 0);
}


// [func_08047dbc] MAIN - Init
void wizards_waltz_prologue_engine_start(u32 ver) {
    gPrologueEngineData->ver = ver;

    func_08047d8c();
    scene_show_obj_layer();
    scene_set_bg_layer_display(BG_LAYER_1, TRUE, 0, 0, 0, 29, 1);

    gPrologueEngineData->textSprite = sprite_create(gSpriteHandler, anim_wizards_waltz_prologue_title, 0, 64, 30, 0, 1, 0, 0);
}


// [func_08047e18] ENGINE Func_00
void func_08047e18(void) {
}


// [func_08047e1c] MAIN - Update
void wizards_waltz_prologue_engine_update(void) {
}


// [func_08047e20] MAIN - Close
void wizards_waltz_prologue_engine_stop(void) {
}


// [func_08047e24] Event 0 - Play Animation (Text)
void func_08047e24(void) {
    sprite_set_playback(gSpriteHandler, gPrologueEngineData->textSprite, 1, 0x7f, 0);
}
