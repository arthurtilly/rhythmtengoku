#include "engines/prologues/tram_and_pauline.h"

#include "src/code_08001360.h"
#include "src/code_08007468.h"
#include "src/code_0800b3c8.h"
#include "src/code_0800b778.h"
#include "src/lib_0804ca80.h"

// For readability.
#define gPrologueInfo ((struct PrologueTramPaulineInfo *)D_030055d0)


  //  //  //  PROLOGUE: TRAM & PAULINE  //  //  //


// [func_08047ad0] GFX_INIT Func_02
void func_08047ad0(void) {
    func_0800c604(0);
    gameplay_start_screen_fade_in();
}


// [func_08047ae0] GFX_INIT Func_01
void func_08047ae0(void) {
    u32 task;

    func_0800c604(0);
    task = func_08002ee0(get_current_mem_id(), prologue_tram_pauline_gfx_table, 0x2000);
    task_run_after(task, func_08047ad0, 0);
}


// [func_08047b10] GFX_INIT Func_00
void func_08047b10(void) {
    u32 task;

    func_0800c604(0);
    func_08006d80();
    task = func_080087b4(get_current_mem_id(), prologue_tram_pauline_buffered_textures);
    task_run_after(task, func_08047ae0, 0);
}


// [func_08047b40] MAIN - Init
void func_08047b40(u32 ver) {
    gPrologueInfo->ver = ver;

    func_08047b10();
    scene_show_obj_layer();
    scene_set_bg_layer_display(BG_LAYER_1, TRUE, 0, 0, 0, 29, 1);

    gPrologueInfo->textSprite = func_0804d160(D_03005380, anim_prologue_tram_and_pauline_title, 0, 120, 150, 0, 0, 0x7f, 0);
    func_0804d160(D_03005380, anim_prologue_tram_and_pauline_characters, 0, 120, 150, 0x800, 0, 0x7f, 0);
}


// [func_08047bd0] ENGINE Func_00
void func_08047bd0(void) {
}


// [func_08047bd4] MAIN - Update
void func_08047bd4(void) {
}


// [func_08047bd8] MAIN - Close
void func_08047bd8(void) {
}


// [func_08047bdc] Event 0 - Show Text
void func_08047bdc(void) {
    func_0804dae0(D_03005380, gPrologueInfo->textSprite, 1, 0x7f, 0);
}
