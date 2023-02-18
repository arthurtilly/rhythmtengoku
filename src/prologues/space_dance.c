#include "prologues/space_dance.h"

#include "src/code_08001360.h"
#include "src/code_08007468.h"
#include "src/code_0800b3c8.h"
#include "src/code_0800b778.h"
#include "src/lib_0804ca80.h"

// For readability.
#define gPrologueInfo ((struct SpaceDancePrologueInfo *)D_030055d0)


  //  //  //  PROLOGUE: SPACE DANCE  //  //  //


// [func_080474dc] GFX_INIT Func_02
void func_080474dc(void) {
    func_0800c604(0);
    gameplay_start_screen_fade_in();
}


// [func_080474ec] GFX_INIT Func_01
void func_080474ec(void) {
    u32 task;

    func_0800c604(0);
    task = func_08002ee0(get_current_mem_id(), space_dance_prologue_gfx_table, 0x2000);
    run_func_after_task(task, func_080474dc, 0);
}


// [func_0804751c] GFX_INIT Func_00
void func_0804751c(void) {
    u32 task;

    func_0800c604(0);
    func_08006d80();
    task = func_080087b4(get_current_mem_id(), space_dance_prologue_buffered_textures);
    run_func_after_task(task, func_080474ec, 0);
}


// [func_0804754c] MAIN - Init
void space_dance_prologue_engine_start(u32 ver) {
    gPrologueInfo->ver = ver;

    func_0804751c();
    scene_show_obj_layer();
    scene_set_bg_layer_display(BG_LAYER_1, TRUE, 0, 0, 0, 29, 1);

    gPrologueInfo->textSprite = func_0804d160(D_03005380, anim_space_dance_prologue_title, 0, 80, 32, 0, 1, 0x7f, 0x8000);
    func_0804dcb8(D_03005380, gPrologueInfo->textSprite, 0x280);
    gPrologueInfo->facesSprite = func_0804d160(D_03005380, anim_space_dance_prologue_faces, 1, 120, 120, 0, 0, 0x7f, 0x8000);
    gPrologueInfo->starSprite = func_0804d160(D_03005380, anim_space_dance_prologue_star, 0, 64, 64, 0, 1, 0x7f, 0x8002);
}


// [func_08047624] ENGINE Func_00
void func_08047624(void) {
}


// [func_08047628] MAIN - Update
void space_dance_prologue_engine_update(void) {
}


// [func_0804762c] MAIN - Close
void space_dance_prologue_engine_stop(void) {
}


// [func_08047630] Event 0 - Animate Sprite { 0 = Text; 1 = Faces; 2 = Star }
void func_08047630(u32 event) {
    u16 sprite;
    switch (event) {
        case 0: // Sprite 0 - Text
            sprite = gPrologueInfo->textSprite;
            break;
        case 1: // Sprite 1 - Faces
            sprite = gPrologueInfo->facesSprite;
            break;
        case 2: // Sprite 2 - Star
            sprite = gPrologueInfo->starSprite;
            break;
    }
    func_0804d770(D_03005380, sprite, TRUE);
}
