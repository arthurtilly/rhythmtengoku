#include "prologues/power_calligraphy.h"

#include "src/code_08001360.h"
#include "src/code_08007468.h"
#include "src/code_0800b778.h"
#include "src/lib_0804ca80.h"

// For readability.
#define gPrologueEngineData ((struct PowerCalligraphyPrologueEngineData *)gCurrentEngineData)


  //  //  //  PROLOGUE: POWER CALLIGRAPHY  //  //  //


// [func_080460f8] GFX_INIT Func_02
void func_080460f8(void) {
    func_0800c604(0);
    gameplay_start_screen_fade_in();
}


// [func_08046108] GFX_INIT Func_01
void func_08046108(void) {
    u32 task;

    func_0800c604(0);
    task = func_08002ee0(get_current_mem_id(), power_calligraphy_prologue_gfx_table, 0x2000);
    run_func_after_task(task, func_080460f8, 0);
}


// [func_08046138] GFX_INIT Func_00
void func_08046138(void) {
    u32 task;

    func_0800c604(0);
    func_08006d80();
    task = start_new_texture_loader(get_current_mem_id(), power_calligraphy_prologue_buffered_textures);
    run_func_after_task(task, func_08046108, 0);
}


// [func_08046168] MAIN - Init
void power_calligraphy_prologue_engine_start(u32 ver) {
    gPrologueEngineData->ver = ver;

    func_08046138();
    scene_show_obj_layer();
    scene_set_bg_layer_display(BG_LAYER_1, TRUE, 0, 0, 0, 29, 1);

    gPrologueEngineData->textSprite = sprite_create(gSpriteHandler, anim_power_calligraphy_prologue_title, 0, 160, 150, 0, 0, 0x7f, 0);
}


// [func_080461c4] ENGINE Func_00
void func_080461c4(void) {
}


// [func_080461c8] MAIN - Update
void power_calligraphy_prologue_engine_update(void) {
}


// [func_080461cc] MAIN - Close
void power_calligraphy_prologue_engine_stop(void) {
}


// [func_080461d0] Event 0 - Set Animation Frame (Text)
void func_080461d0(u32 frame) {
    sprite_set_anim_cel(gSpriteHandler, gPrologueEngineData->textSprite, frame);
}


// [func_080461f4] Event 1 - HAI
void func_080461f4(void) {
    sprite_create(gSpriteHandler, anim_power_calligraphy_prologue_artist, 0, 120, 88, 0x800, 1, 0x7f, 0);
    play_sound(&s_sword_hi_seqData);
}
