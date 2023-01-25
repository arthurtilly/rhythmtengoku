#include "prologues/remix1.h"

#include "src/code_08001360.h"
#include "src/code_08007468.h"
#include "src/code_0800b3c8.h"
#include "src/code_0800b778.h"
#include "src/lib_0804ca80.h"

// For readability.
#define gPrologueInfo ((struct PrologueRemix1Info *)D_030055d0)


  //  //  //  PROLOGUE: REMIX 1  //  //  //


// [func_08046628] GFX_INIT Func_02
void func_08046628(void) {
    func_0800c604(0);
    gameplay_start_screen_fade_in();
}


// [func_08046638] GFX_INIT Func_01
void func_08046638(void) {
    u32 task;

    func_0800c604(0);
    task = func_08002ee0(get_current_mem_id(), prologue_remix1_gfx_table, 0x2000);
    run_func_after_task(task, func_08046628, 0);
}


// [func_08046668] GFX_INIT Func_00
void func_08046668(void) {
    u32 task;

    func_0800c604(0);
    func_08006d80();
    task = func_080087b4(get_current_mem_id(), prologue_remix1_buffered_textures);
    run_func_after_task(task, func_08046638, 0);
}


// [func_08046698] MAIN - Init
void func_08046698(u32 ver) {
    gPrologueInfo->ver = ver;

    func_08046668();
    scene_show_obj_layer();
    scene_set_bg_layer_display(BG_LAYER_1, TRUE, 0, 0, 0, 29, 1);

    gPrologueInfo->textSprite = func_0804d160(D_03005380, anim_prologue_remix1_title, 0, 112, 128, 0, 0, 0, 0);
}


// [func_080466f4] ENGINE Func_00
void func_080466f4(void) {
}


// [func_080466f8] MAIN - Update
void func_080466f8(void) {
}


// [func_080466fc] MAIN - Close
void func_080466fc(void) {
}


// [func_08046700] Event 0 - Set Animation Frame (Text)
void func_08046700(u32 frame) {
    func_0804cebc(D_03005380, gPrologueInfo->textSprite, frame);
}
