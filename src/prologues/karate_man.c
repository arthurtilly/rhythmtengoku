#include "prologues/karate_man.h"

#include "src/code_08001360.h"
#include "src/code_08007468.h"
#include "src/code_0800b3c8.h"
#include "src/code_0800b778.h"
#include "src/lib_0804ca80.h"

// For readability.
#define gPrologueInfo ((struct KarateManPrologueInfo *)D_030055d0)


  //  //  //  PROLOGUE: KARATE MAN  //  //  //


// [func_0804550c] GFX_INIT Func_02
void func_0804550c(void) {
    func_0800c604(0);
    gameplay_start_screen_fade_in();
}


// [func_0804551c] GFX_INIT Func_01
void func_0804551c(void) {
    u32 task;

    func_0800c604(0);
    task = func_08002ee0(get_current_mem_id(), karate_man_prologue_gfx_table, 0x2000);
    run_func_after_task(task, func_0804550c, 0);
}


// [func_0804554c] GFX_INIT Func_00
void func_0804554c(void) {
    u32 task;

    func_0800c604(0);
    func_08006d80();
    task = func_080087b4(get_current_mem_id(), karate_man_prologue_buffered_textures);
    run_func_after_task(task, func_0804551c, 0);
}


// [func_0804557c] MAIN - Init
void karate_man_prologue_engine_start(u32 ver) {
    gPrologueInfo->ver = ver;

    func_0804554c();
    scene_show_obj_layer();
    scene_set_bg_layer_display(BG_LAYER_1, TRUE, 0, 0, 0, 29, 1);

    gPrologueInfo->textSprite = func_0804d160(D_03005380, anim_karate_man_prologue_title, 0, 110, 80, 0, 0, 0, 0);
    gPrologueInfo->kickSprite = func_0804d160(D_03005380, anim_karate_man_prologue_kick, 0, 96, 110, 0, 0, 0, 0);
}


// [func_080455f8] ENGINE Func_00
void func_080455f8(void) {
}


// [func_080455fc] MAIN - Update
void karate_man_prologue_engine_update(void) {
}


// [func_08045600] MAIN - Close
void karate_man_prologue_engine_stop(void) {
}


// [func_08045604] Event 0 - Set Animation Frame (Text)
void func_08045604(u32 frame) {
    func_0804cebc(D_03005380, gPrologueInfo->textSprite, frame);
}


// [func_08045628] Event 1 - Play Animation (Kick)
void func_08045628(void) {
    func_0804cebc(D_03005380, gPrologueInfo->kickSprite, 1);
    func_0804dae0(D_03005380, gPrologueInfo->kickSprite, 1, 0x7f, 0);
}
