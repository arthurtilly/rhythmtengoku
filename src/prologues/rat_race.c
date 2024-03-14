#include "prologues/rat_race.h"

#include "src/code_08001360.h"
#include "src/code_08007468.h"
#include "src/code_0800b778.h"
#include "src/lib_0804ca80.h"

// For readability.
#define gPrologueEngineData ((struct RatRacePrologueEngineData *)gCurrentEngineData)


  //  //  //  PROLOGUE: RAT RACE  //  //  //


// [func_08047164] GFX_INIT Func_02
void func_08047164(void) {
    func_0800c604(0);
    gameplay_start_screen_fade_in();
}


// [func_08047174] GFX_INIT Func_01
void func_08047174(void) {
    u32 task;

    func_0800c604(0);
    task = func_08002ee0(get_current_mem_id(), rat_race_prologue_gfx_table, 0x2000);
    run_func_after_task(task, func_08047164, 0);
}


// [func_080471a4] GFX_INIT Func_00
void func_080471a4(void) {
    u32 task;

    func_0800c604(0);
    func_08006d80();
    task = start_new_texture_loader(get_current_mem_id(), rat_race_prologue_buffered_textures);
    run_func_after_task(task, func_08047174, 0);
}


// [func_080471d4] MAIN - Init
void rat_race_prologue_engine_start(u32 ver) {
    gPrologueEngineData->ver = ver;

    func_080471a4();
    scene_show_obj_layer();
    scene_set_bg_layer_display(BG_LAYER_1, TRUE, 0, 0, 0, 29, 1);

    gPrologueEngineData->textSprite = sprite_create(gSpriteHandler, anim_rat_race_prologue_title, 0, 8, 8, 0, 0, 0x7f, 0);
    gPrologueEngineData->ratSprite = sprite_create(gSpriteHandler, anim_rat_race_prologue_rat, 0, 190, 160, 0, 0, 0, 0);
}


// [func_08047250] ENGINE Func_00
void func_08047250(void) {
}


// [func_08047254] MAIN - Update
void rat_race_prologue_engine_update(void) {
}


// [func_08047258] MAIN - Close
void rat_race_prologue_engine_stop(void) {
}


// [func_0804725c] Event 0 - Set Animation Frame (Text)
void func_0804725c(u32 frame) {
    sprite_set_anim_cel(gSpriteHandler, gPrologueEngineData->textSprite, frame);
}


// [func_08047280] Event 1 - Play Animation (Rat)
void func_08047280(void) {
    sprite_set_anim_cel(gSpriteHandler, gPrologueEngineData->ratSprite, 1);
    sprite_set_playback(gSpriteHandler, gPrologueEngineData->ratSprite, 1, 0x7f, 0);
}
