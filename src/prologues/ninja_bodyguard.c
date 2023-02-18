#include "prologues/ninja_bodyguard.h"

#include "src/code_08001360.h"
#include "src/code_08007468.h"
#include "src/code_0800b3c8.h"
#include "src/code_0800b778.h"
#include "src/lib_0804ca80.h"

// For readability.
#define gPrologueInfo ((struct NinjaBodyguardPrologueInfo *)D_030055d0)


  //  //  //  PROLOGUE: NINJA BODYGUARD  //  //  //


// [func_080472bc] GFX_INIT Func_02
void func_080472bc(void) {
    func_0800c604(0);
    gameplay_start_screen_fade_in();
}


// [func_080472cc] GFX_INIT Func_01
void func_080472cc(void) {
    u32 task;

    func_0800c604(0);
    task = func_08002ee0(get_current_mem_id(), ninja_bodyguard_prologue_gfx_table, 0x2000);
    run_func_after_task(task, func_080472bc, 0);
}


// [func_080472fc] GFX_INIT Func_00
void func_080472fc(void) {
    u32 task;

    func_0800c604(0);
    func_08006d80();
    task = func_080087b4(get_current_mem_id(), ninja_bodyguard_prologue_buffered_textures);
    run_func_after_task(task, func_080472cc, 0);
}


// [func_0804732c] MAIN - Init
void ninja_bodyguard_prologue_engine_start(u32 ver) {
    gPrologueInfo->ver = ver;

    func_080472fc();
    scene_show_obj_layer();
    scene_set_bg_layer_display(BG_LAYER_1, TRUE, 0, 0, 0, 29, 1);

    gPrologueInfo->textSprite = func_0804d160(D_03005380, anim_ninja_bodyguard_prologue_title, 0, 120, 130, 0, 0, 0x7f, 0);
    func_0804dcb8(D_03005380, gPrologueInfo->textSprite, INT_TO_FIXED(1.5));
}


// [func_08047398] ENGINE Func_00
void func_08047398(void) {
}


// [func_0804739c] MAIN - Update
void ninja_bodyguard_prologue_engine_update(void) {
}


// [func_080473a0] MAIN - Close
void ninja_bodyguard_prologue_engine_stop(void) {
}


// [func_080473a4] Event 0 - Play Animation (Text)
void func_080473a4(u32 speed) {
    func_0804dae0(D_03005380, gPrologueInfo->textSprite, speed, 0x7f, 0);
}
