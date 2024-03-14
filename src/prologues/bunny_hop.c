#include "prologues/bunny_hop.h"

#include "src/code_08001360.h"
#include "src/code_08007468.h"
#include "src/code_0800b778.h"
#include "src/lib_0804ca80.h"

// For readability.
#define gPrologueEngineData ((struct BunnyHopPrologueEngineData *)gCurrentEngineData)


  //  //  //  PROLOGUE: BUNNY HOP  //  //  //


// [func_08046e08] GFX_INIT Func_02
void func_08046e08(void) {
    func_0800c604(0);
    gameplay_start_screen_fade_in();
}


// [func_08046e18] GFX_INIT Func_01
void func_08046e18(void) {
    u32 task;

    func_0800c604(0);
    task = func_08002ee0(get_current_mem_id(), bunny_hop_prologue_gfx_table, 0x2000);
    run_func_after_task(task, func_08046e08, 0);
}


// [func_08046e48] GFX_INIT Func_00
void func_08046e48(void) {
    u32 task;

    func_0800c604(0);
    func_08006d80();
    task = start_new_texture_loader(get_current_mem_id(), bunny_hop_prologue_buffered_textures);
    run_func_after_task(task, func_08046e18, 0);
}


// [func_08046e78] MAIN - Init
void bunny_hop_prologue_engine_start(u32 ver) {
    gPrologueEngineData->ver = ver;

    func_08046e48();
    scene_show_obj_layer();
    scene_set_bg_layer_display(BG_LAYER_1, TRUE, 0, 0, 0, 29, 1);

    gPrologueEngineData->textSprite = sprite_create(gSpriteHandler, anim_bunny_hop_prologue_title, 0, 22, 162, 0, 0, 0x7f, 0);
    gPrologueEngineData->rabbitsSprite = sprite_create(gSpriteHandler, anim_bunny_hop_prologue_rabbits, 0, 114, 120, 0, 0, 0x7f, 0);
}


// [func_08046f00] ENGINE Func_00
void func_08046f00(void) {
}


// [func_08046f04] MAIN - Update
void bunny_hop_prologue_engine_update(void) {
}


// [func_08046f08] MAIN - Close
void bunny_hop_prologue_engine_stop(void) {
}


// [func_08046f0c] Event 0 - Set Animation Frame (Text)
void func_08046f0c(u32 frame) {
    sprite_set_anim_cel(gSpriteHandler, gPrologueEngineData->textSprite, frame);
}


// [func_08046f30] Event 1 - Play Animation (Rabbits)
void func_08046f30(void) {
    sprite_set_playback(gSpriteHandler, gPrologueEngineData->rabbitsSprite, 1, 0x7f, 0);
}
