#include "prologues/toss_boys.h"

#include "src/code_08001360.h"
#include "src/code_08007468.h"
#include "src/code_0800b3c8.h"
#include "src/code_0800b778.h"
#include "src/lib_0804ca80.h"

// For readability.
#define gPrologueInfo ((struct TossBoysPrologueInfo *)D_030055d0)


  //  //  //  PROLOGUE: TOSS BOYS  //  //  //


// [func_080478d8] GFX_INIT Func_02
void func_080478d8(void) {
    func_0800c604(0);
    gameplay_start_screen_fade_in();
}


// [func_080478e8] GFX_INIT Func_01
void func_080478e8(void) {
    u32 task;

    func_0800c604(0);
    task = func_08002ee0(get_current_mem_id(), toss_boys_prologue_gfx_table, 0x2000);
    run_func_after_task(task, func_080478d8, 0);
}


// [func_08047918] GFX_INIT Func_00
void func_08047918(void) {
    u32 task;

    func_0800c604(0);
    func_08006d80();
    task = start_new_texture_loader(get_current_mem_id(), toss_boys_prologue_buffered_textures);
    run_func_after_task(task, func_080478e8, 0);
}


// [func_08047948] MAIN - Init
void toss_boys_prologue_engine_start(u32 ver) {
    gPrologueInfo->ver = ver;

    func_08047918();
    scene_show_obj_layer();
    scene_set_bg_layer_display(BG_LAYER_1, TRUE, 0, 0, 0, 29, 1);

    gPrologueInfo->textSprite = func_0804d160(D_03005380, anim_toss_boys_prologue_title, 0, 120, 120, 0, 0, 0, 0);
}


// [func_080479a4] ENGINE Func_00
void func_080479a4(void) {
}


// [func_080479a8] MAIN - Update
void toss_boys_prologue_engine_update(void) {
}


// [func_080479ac] MAIN - Close
void toss_boys_prologue_engine_stop(void) {
}


// [func_080479b0] Event 0 - Set Animation Frame (Text)
void func_080479b0(u32 frame) {
    func_0804cebc(D_03005380, gPrologueInfo->textSprite, frame);
}
