#include "prologues/tram_and_pauline.h"

#include "src/code_08001360.h"
#include "src/code_08007468.h"
#include "src/code_0800b778.h"
#include "src/lib_0804ca80.h"

// For readability.
#define gPrologueEngineData ((struct TramPaulinePrologueEngineData *)gCurrentEngineData)


  //  //  //  PROLOGUE: TRAM & PAULINE  //  //  //


// [func_08047ad0] GFX_INIT Func_02
void func_08047ad0(void) {
    func_0800c604(0);
    gameplay_start_screen_fade_in();
}


// [func_08047ae0] GFX_INIT Func_01
void func_08047ae0(void) {
    u32 task;

    func_0800c604(0);
    task = func_08002ee0(get_current_mem_id(), tram_pauline_prologue_gfx_table, 0x2000);
    run_func_after_task(task, func_08047ad0, 0);
}


// [func_08047b10] GFX_INIT Func_00
void func_08047b10(void) {
    u32 task;

    func_0800c604(0);
    func_08006d80();
    task = start_new_texture_loader(get_current_mem_id(), tram_pauline_prologue_buffered_textures);
    run_func_after_task(task, func_08047ae0, 0);
}


// [func_08047b40] MAIN - Init
void tram_pauline_prologue_engine_start(u32 ver) {
    gPrologueEngineData->ver = ver;

    func_08047b10();
    scene_show_obj_layer();
    scene_set_bg_layer_display(BG_LAYER_1, TRUE, 0, 0, 0, 29, 1);

    gPrologueEngineData->textSprite = sprite_create(gSpriteHandler, anim_tram_pauline_prologue_title, 0, 120, 150, 0, 0, 0x7f, 0);
    sprite_create(gSpriteHandler, anim_tram_pauline_prologue_characters, 0, 120, 150, 0x800, 0, 0x7f, 0);
}


// [func_08047bd0] ENGINE Func_00
void func_08047bd0(void) {
}


// [func_08047bd4] MAIN - Update
void tram_pauline_prologue_engine_update(void) {
}


// [func_08047bd8] MAIN - Close
void tram_pauline_prologue_engine_stop(void) {
}


// [func_08047bdc] Event 0 - Show Text
void func_08047bdc(void) {
    sprite_set_playback(gSpriteHandler, gPrologueEngineData->textSprite, 1, 0x7f, 0);
}
