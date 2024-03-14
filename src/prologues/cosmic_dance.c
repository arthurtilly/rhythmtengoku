#include "prologues/cosmic_dance.h"

#include "src/code_08001360.h"
#include "src/code_08007468.h"
#include "src/code_0800b778.h"
#include "src/lib_0804ca80.h"

// For readability.
#define gPrologueEngineData ((struct CosmicDancePrologueEngineData *)gCurrentEngineData)


  //  //  //  PROLOGUE: COSMIC DANCE  //  //  //


// [func_08045664] GFX_INIT Func_02
void func_08045664(void) {
    func_0800c604(0);
    gameplay_start_screen_fade_in();
}


// [func_08045674] GFX_INIT Func_01
void func_08045674(void) {
    u32 task;

    func_0800c604(0);
    task = func_08002ee0(get_current_mem_id(), cosmic_dance_prologue_gfx_table, 0x2000);
    run_func_after_task(task, func_08045664, 0);
}


// [func_080456a4] GFX_INIT Func_00
void func_080456a4(void) {
    u32 task;

    func_0800c604(0);
    func_08006d80();
    task = start_new_texture_loader(get_current_mem_id(), cosmic_dance_prologue_buffered_textures);
    run_func_after_task(task, func_08045674, 0);
}


// [func_080456d4] MAIN - Init
void cosmic_dance_prologue_engine_start(u32 ver) {
    gPrologueEngineData->ver = ver;

    func_080456a4();
    scene_show_obj_layer();
    scene_set_bg_layer_display(BG_LAYER_1, TRUE, 0, 0, 0, 29, 1);

    gPrologueEngineData->textSprite = sprite_create(gSpriteHandler, anim_cosmic_dance_prologue_title, 0, 120, 80, 0, 0, 0x7f, 0);
}


// [func_08045730] ENGINE Func_00
void func_08045730(void) {
}


// [func_08045734] MAIN - Update
void cosmic_dance_prologue_engine_update(void) {
}


// [func_08045738] MAIN - Close
void cosmic_dance_prologue_engine_stop(void) {
}


// [func_0804573c] Event 0 - Show Dancers
void func_0804573c(void) {
    s16 dancer;
    s16 x;
    u32 i;

    for (i = 0; i < 4; i++) {
        dancer = sprite_create(gSpriteHandler, anim_cosmic_dance_prologue_dancer, 0, 300, 120, 0x4800 - i, 0, 0, 0);
        x = 72 + (i * 32);
        scene_move_sprite_sine_vel(dancer, 0, x, 120, ticks_to_frames(0x12));
    }
}
