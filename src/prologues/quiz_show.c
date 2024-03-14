#include "prologues/quiz_show.h"

#include "src/code_08001360.h"
#include "src/code_08007468.h"
#include "src/code_0800b778.h"
#include "src/lib_0804ca80.h"

// For readability.
#define gPrologueEngineData ((struct QuizShowPrologueEngineData *)gCurrentEngineData)


  //  //  //  PROLOGUE: QUIZ SHOW  //  //  //


// [func_08046528] GFX_INIT Func_02
void func_08046528(void) {
    func_0800c604(0);
    gameplay_start_screen_fade_in();
}


// [func_08046538] GFX_INIT Func_01
void func_08046538(void) {
    u32 task;

    func_0800c604(0);
    task = func_08002ee0(get_current_mem_id(), quiz_show_prologue_gfx_table, 0x2000);
    run_func_after_task(task, func_08046528, 0);
}


// [func_08046568] GFX_INIT Func_00
void func_08046568(void) {
    u32 task;

    func_0800c604(0);
    func_08006d80();
    task = start_new_texture_loader(get_current_mem_id(), quiz_show_prologue_buffered_textures);
    run_func_after_task(task, func_08046538, 0);
}


// [func_08046598] MAIN - Init
void quiz_show_prologue_engine_start(u32 ver) {
    gPrologueEngineData->ver = ver;

    func_08046568();
    scene_show_obj_layer();
    scene_set_bg_layer_display(BG_LAYER_1, TRUE, 0, 0, 0, 29, 1);

    gPrologueEngineData->textSprite = sprite_create(gSpriteHandler, anim_quiz_show_prologue_title, 0, 120, 90, 0, 1, 0x7f, 0);
}


// [func_080465f8] ENGINE Func_00
void func_080465f8(void) {
}


// [func_080465fc] MAIN - Update
void quiz_show_prologue_engine_update(void) {
}


// [func_08046600] MAIN - Close
void quiz_show_prologue_engine_stop(void) {
}


// [func_08046604] Event 0 - Set Animation Frame (Text)
void func_08046604(u32 frame) {
    sprite_set_anim_cel(gSpriteHandler, gPrologueEngineData->textSprite, frame);
}
