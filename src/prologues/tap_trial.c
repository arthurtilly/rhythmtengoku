#include "prologues/tap_trial.h"

#include "src/code_08001360.h"
#include "src/code_08007468.h"
#include "src/code_0800b3c8.h"
#include "src/code_0800b778.h"
#include "src/lib_0804ca80.h"

// For readability.
#define gPrologueInfo ((struct TapTrialPrologueInfo *)D_030055d0)


  //  //  //  PROLOGUE: TAP TRIAL  //  //  //


// [func_08047678] GFX_INIT Func_02
void func_08047678(void) {
    func_0800c604(0);
    gameplay_start_screen_fade_in();
}


// [func_08047688] GFX_INIT Func_01
void func_08047688(void) {
    u32 task;

    func_0800c604(0);
    task = func_08002ee0(get_current_mem_id(), tap_trial_prologue_gfx_table, 0x2000);
    run_func_after_task(task, func_08047678, 0);
}


// [func_080476b8] GFX_INIT Func_00
void func_080476b8(void) {
    u32 task;

    func_0800c604(0);
    func_08006d80();
    task = func_080087b4(get_current_mem_id(), tap_trial_prologue_buffered_textures);
    run_func_after_task(task, func_08047688, 0);
}


// [func_080476e8] MAIN - Init
void tap_trial_prologue_engine_start(u32 ver) {
    gPrologueInfo->ver = ver;

    func_080476b8();
    scene_show_obj_layer();
    scene_set_bg_layer_display(BG_LAYER_1, TRUE, 0, 0, 0, 29, 1);

    gPrologueInfo->textSprite = func_0804d160(D_03005380, anim_tap_trial_prologue_title, 0, 120, 80, 0, 1, 0x7f, 0x8000);
    func_0804dcb8(D_03005380, gPrologueInfo->textSprite, INT_TO_FIXED(1.5));
}


// [func_08047764] ENGINE Func_00
void func_08047764(void) {
}


// [func_08047768] MAIN - Update
void tap_trial_prologue_engine_update(void) {
}


// [func_0804776c] MAIN - Close
void tap_trial_prologue_engine_stop(void) {
}


// [func_08047770] Event 0 - Set Animation Frame (Text)
void func_08047770(u32 frame) {
    func_0804cebc(D_03005380, gPrologueInfo->textSprite, frame);
}


// [func_08047794] Event 1 - Animate Text
void func_08047794(void) {
    func_0804d770(D_03005380, gPrologueInfo->textSprite, TRUE);
}
