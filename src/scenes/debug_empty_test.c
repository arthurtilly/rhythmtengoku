#include "global.h"
#include "debug_empty_test.h"

#include "src/memory.h"
#include "src/code_08001360.h"
#include "src/bitmap_font.h"
#include "src/code_08007468.h"
#include "src/code_0800b778.h"
#include "src/lib_0804ca80.h"


// For readability.
#define gTemplateInfo ((struct TemplateSceneInfo *)D_030046a4)

extern struct BitmapFontData bitmap_font_warioware_body[];


/* TEMPLATE SCENE */


// Init. Static Variables
void template_scene_init_static_var(void) {
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
void template_scene_start(void *sceneVar, s32 dataArg) {
    func_08007324(FALSE);
    func_080073f0();

    gTemplateInfo->bgFont = create_new_bmp_font_bg(get_current_mem_id(), bitmap_font_warioware_body, 0, 0x340, 6);
    gTemplateInfo->objFont = func_0800c660(0x300, 4);
    import_all_scene_objects(D_03005380, gTemplateInfo->objFont, template_scene_objects, D_0300558c);
    template_scene_init_gfx1();
    gTemplateInfo->scriptIsReady = FALSE;
}


// Scene Update (Paused)
void template_scene_paused(void *sceneVar, s32 dataArg) {
}


// Scene Update (Active)
void template_scene_update(void *sceneVar, s32 dataArg) {
    if (template_scene_script_is_ready()) {
        if (D_03004afc & SELECT_BUTTON) {
            set_pause_beatscript_scene(FALSE);
            gTemplateInfo->scriptIsReady = FALSE;
        }
    }
}


// Communicate with Script
u32 template_scene_script_is_ready(void) {
    if (gTemplateInfo->scriptIsReady) {
        return TRUE;
    } else {
        return FALSE;
    }
}


// Scene Stop
void template_scene_stop(void *sceneVar, s32 dataArg) {
    func_08008628();
    func_08004058();
}
