#include "prologues/remix_6.h"

#include "src/code_08001360.h"
#include "src/code_08007468.h"
#include "src/code_0800b778.h"
#include "src/lib_0804ca80.h"

// For readability.
#define gPrologueEngineData ((struct Remix6PrologueEngineData *)gCurrentEngineData)


  //  //  //  PROLOGUE: REMIX 6  //  //  //


// [func_08046b14] GFX_INIT Func_02
void func_08046b14(void) {
    func_0800c604(0);
    gameplay_start_screen_fade_in();
}


// [func_08046b24] GFX_INIT Func_01
void func_08046b24(void) {
    u32 data;

    func_0800c604(0);
    data = func_08002ee0(get_current_mem_id(), remix_6_prologue_gfx_table, 0x2000);
    run_func_after_task(data, func_08046b14, 0);
}


// [func_08046b54] GFX_INIT Func_00
void func_08046b54(void) {
    u32 data;

    func_0800c604(0);
    func_08006d80();
    data = start_new_texture_loader(get_current_mem_id(), remix_6_prologue_buffered_textures);
    run_func_after_task(data, func_08046b24, 0);
}


// [func_08046b84] MAIN - Init
void remix_6_prologue_engine_start(u32 ver) {
    gPrologueEngineData->ver = ver;

    func_08046b54();
    scene_show_obj_layer();
    scene_set_bg_layer_display(BG_LAYER_1, TRUE, 0, 0, 0, 29, 1);

    gPrologueEngineData->textSprite = sprite_create(gSpriteHandler, anim_remix_6_prologue_title, 0, 112, 128, 0, 0, 0x7f, 0);
}


// [func_08046be0] ENGINE Func_00
void func_08046be0(void) {
}


// [func_08046be4] MAIN - Update
void remix_6_prologue_engine_update(void) {
}


// [func_08046be8] MAIN - Close
void remix_6_prologue_engine_stop(void) {
}


// [func_08046bec] Event 0 - Set Animation Frame (Text)
void func_08046bec(u32 frame) {
    sprite_set_anim_cel(gSpriteHandler, gPrologueEngineData->textSprite, frame);
}
