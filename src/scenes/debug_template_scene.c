#include "global.h"
#include "debug_template_scene.h"


/* TEMPLATE SCENE */


// Init. Static Variables
void template_scene_init_memory(void) {
}


// Graphics Init. 3
void template_scene_init_gfx3(void) {
    s32 task;

    func_0800c604(0);
    task = start_new_texture_loader(get_current_mem_id(), template_scene_buffered_textures);
    run_func_after_task(task, set_pause_beatscript_scene, FALSE);
}


// Graphics Init. 2
void template_scene_init_gfx2(void) {
    s32 task;

    func_0800c604(0);
    task = func_08002ee0(get_current_mem_id(), template_scene_gfx_table, 0x3000);
    run_func_after_task(task, template_scene_init_gfx3, 0);
}


// Graphics Init. 1
void template_scene_init_gfx1(void) {
    schedule_function_call(get_current_mem_id(), template_scene_init_gfx2, 0, 2);
}


// Scene Start
void template_scene_start(void *sVar, s32 dArg) {
    func_08007324(FALSE);
    func_080073f0();

    gTemplate->bgFont = create_new_bmp_font_bg(get_current_mem_id(), bitmap_font_warioware_body, 0, 0x340, 6);
    gTemplate->objFont = scene_create_obj_font_printer(0x300, 4);
    import_all_scene_objects(gSpriteHandler, gTemplate->objFont, template_scene_objects, D_0300558c);
    template_scene_init_gfx1();
    gTemplate->inputsEnabled = FALSE;
}


// Scene Update (Paused)
void template_scene_paused(void *sVar, s32 dArg) {
}


// Scene Update (Active)
void template_scene_update(void *sVar, s32 dArg) {
    if (template_scene_inputs_enabled()) {
        if (D_03004afc & SELECT_BUTTON) {
            set_pause_beatscript_scene(FALSE);
            gTemplate->inputsEnabled = FALSE;
        }
    }
}


// Check if Scene Can Receive Inputs
u32 template_scene_inputs_enabled(void) {
    if (gTemplate->inputsEnabled) {
        return TRUE;
    } else {
        return FALSE;
    }
}


// Scene Stop
void template_scene_stop(void *sVar, s32 dArg) {
    func_08008628();
    func_08004058();
}
