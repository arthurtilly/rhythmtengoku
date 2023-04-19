#include "global.h"
#include "read_error.h"
#include "graphics/data_room/data_room_graphics.h"

#include "src/memory.h"
#include "src/code_08001360.h"
#include "src/code_08007468.h"
#include "src/code_0800b778.h"
#include "src/lib_0804ca80.h"


// For readability.
#define gReadErrorInfo ((struct ReadErrorSceneInfo *)D_030046a4)

extern struct Scene scene_debug_menu;


/* READ ERROR(?) */


// Graphics Init. 3
void read_error_scene_init_gfx3(void) {
    s32 task;

    func_0800c604(0);
    task = start_new_texture_loader(get_current_mem_id(), read_error_buffered_textures);
    run_func_after_task(task, set_pause_beatscript_scene, FALSE);
}


// Graphics Init. 2
void read_error_scene_init_gfx2(void) {
    s32 task;

    func_0800c604(0);
    task = func_08002ee0(get_current_mem_id(), read_error_gfx_table, 0x3000);
    run_func_after_task(task, read_error_scene_init_gfx3, 0);
}


// Graphics Init. 1
void read_error_scene_init_gfx1(void) {
    schedule_function_call(get_current_mem_id(), read_error_scene_init_gfx2, 0, 2);
}


// Scene Start
void read_error_scene_start(void *sceneVar, s32 dataArg) {
    func_08007324(FALSE);
    func_080073f0();
    read_error_scene_init_gfx1();

    gReadErrorInfo->scriptIsReady = FALSE;
    set_next_scene(&scene_debug_menu);
}


// Scene Update (Active)
void read_error_scene_update(void *sceneVar, s32 dataArg) {
    if (read_error_scene_can_receive_inputs()) {
        if (D_03004afc & SELECT_BUTTON) {
            set_pause_beatscript_scene(FALSE);
            gReadErrorInfo->scriptIsReady = FALSE;
        }
    }
}


// Communicate with Script
u32 read_error_scene_can_receive_inputs(void) {
    if (gReadErrorInfo->scriptIsReady) {
        return TRUE;
    } else {
        return FALSE;
    }
}


// Scene Stop
void read_error_scene_stop(void *sceneVar, s32 dataArg) {
    func_08008628();
    func_08004058();
}
