#include "prologues/showtime.h"

#include "src/code_08001360.h"
#include "src/code_08007468.h"
#include "src/code_0800b3c8.h"
#include "src/code_0800b778.h"
#include "src/lib_0804ca80.h"

// For readability.
#define gPrologueInfo ((struct ShowtimePrologueInfo *)D_030055d0)


  //  //  //  PROLOGUE: SHOWTIME  //  //  //


// [func_08045944] GFX_INIT Func_02
void func_08045944(void) {
    func_0800c604(0);
    gameplay_start_screen_fade_in();
}


// [func_08045954] GFX_INIT Func_01
void func_08045954(void) {
    u32 task;

    func_0800c604(0);
    task = func_08002ee0(get_current_mem_id(), showtime_prologue_gfx_table, 0x2000);
    run_func_after_task(task, func_08045944, 0);
}


// [func_08045984] GFX_INIT Func_00
void func_08045984(void) {
    u32 task;

    func_0800c604(0);
    func_08006d80();
    task = func_080087b4(get_current_mem_id(), showtime_prologue_buffered_textures);
    run_func_after_task(task, func_08045954, 0);
}


// [func_080459b4] MAIN - Init
void showtime_prologue_engine_start(u32 ver) {
    gPrologueInfo->ver = ver;

    func_08045984();
    scene_show_obj_layer();
    scene_set_bg_layer_display(BG_LAYER_1, TRUE, 0, 0, 0, 29, 1);

    gPrologueInfo->textSprite = func_0804d160(D_03005380, anim_showtime_prologue_title, 0, 64, 64, 0, 0, 0x7f, 0);
    gPrologueInfo->penguinSprite = func_0804d160(D_03005380, anim_showtime_prologue_penguin, 0, 136, 64, 0, 0, 0x7f, 0);
}


// [func_08045a44] ENGINE Func_00
void func_08045a44(void) {
}


// [func_08045a48] MAIN - Update
void showtime_prologue_engine_update(void) {
}


// [func_08045a4c] MAIN - Close
void showtime_prologue_engine_stop(void) {
}


// [func_08045a50] Event 0 - Play Animation (Text), Play Animation (Penguin)
void func_08045a50(void) {
    func_0804dae0(D_03005380, gPrologueInfo->textSprite, 1, 0x7f, 0);
    func_0804dae0(D_03005380, gPrologueInfo->penguinSprite, 1, 0x7f, 0);
}
