#include "global.h"
#include "debug_data_clear.h"


/* DATA CLEAR SCENE */


// Init. Static Variables
void data_clear_scene_init_memory(void) {
}


// Graphics Init. 3
void data_clear_scene_init_gfx3(void) {
    s32 task;

    func_0800c604(0);
    task = start_new_texture_loader(get_current_mem_id(), data_clear_buffered_textures);
    run_func_after_task(task, set_pause_beatscript_scene, FALSE);
}


// Graphics Init. 2
void data_clear_scene_init_gfx2(void) {
    s32 task;

    func_0800c604(0);
    task = func_08002ee0(get_current_mem_id(), data_clear_gfx_table, 0x3000);
    run_func_after_task(task, data_clear_scene_init_gfx3, 0);
}


// Graphics Init. 1
void data_clear_scene_init_gfx1(void) {
    schedule_function_call(get_current_mem_id(), data_clear_scene_init_gfx2, 0, 2);
}


// Scene Start
void data_clear_scene_start(void *sVar, s32 *dArg) {
    func_08007324(FALSE);
    func_080073f0();

    gDataClear->bgFont = create_new_bmp_font_bg(get_current_mem_id(), bitmap_font_warioware_body, 0, 0x340, 6);
    gDataClear->objFont = scene_create_obj_font_printer(0x300, 4);
    import_all_scene_objects(gSpriteHandler, gDataClear->objFont, data_clear_scene_objects, D_0300558c);

    data_clear_scene_init_gfx1();
    gDataClear->inputsEnabled = FALSE;

    clear_save_data();
    flush_save_buffer_to_sram();
    set_next_scene(&scene_title);
}


// Scene Update (Paused)
void data_clear_scene_paused(void *sVar, s32 *dArg) {
}


// Scene Update (Active)
void data_clear_scene_update(void *sVar, s32 *dArg) {
}


// Check if Scene Can Receive Inputs
u32 data_clear_scene_inputs_enabled(void) {
    if (gDataClear->inputsEnabled) {
        return TRUE;
    }

    return FALSE;
}


// Scene Stop
void data_clear_scene_stop(void *sVar, s32 *dArg) {
    func_08008628();
    func_08004058();
}
