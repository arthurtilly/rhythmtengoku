#include "global.h"
#include "debug_flash_mem.h"


/* FLASH MEMORY TEST SCENE */


// Init. Static Variables
void flash_test_scene_init_memory(void) {
}


// Graphics Init. 3
void flash_test_scene_init_gfx3(void) {
    s32 task;

    func_0800c604(0);
    task = start_new_texture_loader(get_current_mem_id(), flash_mem_test_buffered_textures);
    run_func_after_task(task, set_pause_beatscript_scene, FALSE);
}


// Graphics Init. 2
void flash_test_scene_init_gfx2(void) {
    s32 task;

    func_0800c604(0);
    task = func_08002ee0(get_current_mem_id(), flash_mem_test_gfx_table, 0x3000);
    run_func_after_task(task, flash_test_scene_init_gfx3, 0);
}


// Graphics Init. 1
void flash_test_scene_init_gfx1(void) {
    schedule_function_call(get_current_mem_id(), flash_test_scene_init_gfx2, 0, 2);
}


// Scene Start
void flash_test_scene_start(void *sVar, s32 dArg) {
    u8 var0, var1;

    func_08007324(FALSE);
    func_080073f0();

    gFlashMemoryTest->bgFont = create_new_bmp_font_bg(get_current_mem_id(), bitmap_font_warioware_body, 0, 0x340, 6);
    gFlashMemoryTest->objFont = scene_create_obj_font_printer(0x300, 4);
    import_all_scene_objects(gSpriteHandler, gFlashMemoryTest->objFont, flash_mem_test_scene_objects, D_0300558c);

    flash_test_scene_init_gfx1();
    gFlashMemoryTest->inputsEnabled = FALSE;

    func_08008fe0(&var0, &var1);
    func_0801e928(0);
    set_next_scene(&scene_debug_menu);
}


// Scene Update (Paused)
void flash_test_scene_paused(void *sVar, s32 dArg) {
}


// Scene Update
void flash_test_scene_update(void *sVar, s32 dArg) {
    u8 data[UNK_SIZE_210];
    s32 var;
    u32 i, j;

    for (i = 0; i < UNK_SIZE_210; i++) {
        data[i] = i;
    }

    if (flash_test_scene_inputs_enabled()) {
        var = 0;

        if (D_030053b8 & DPAD_RIGHT) {
            var = 1;
        }

        if (D_030053b8 & DPAD_LEFT) {
            var = -1;
        }

        if (D_03004ac0 & RIGHT_SHOULDER_BUTTON) {
            var *= 32;
        }

        if (D_03004ac0 & LEFT_SHOULDER_BUTTON) {
            var *= 10;
        }

        if (var != 0) {
            func_0801e928(gFlashMemoryTest->unkC + var);
        }

        if (D_03004afc & A_BUTTON) {
            func_080090ec(gFlashMemoryTest->unkC, data, UNK_SIZE_210);

            for (i = 0; i < 33; i++) {
                for (j = 0; j < 16; j++) {
                }
            }
        }

        if (D_03004afc & B_BUTTON) {
            for (i = 0; i < UNK_SIZE_210; i++) {
                data[i] = agb_random(0x100);
            }
        }

        if (D_03004afc & SELECT_BUTTON) {
            set_pause_beatscript_scene(FALSE);
            gFlashMemoryTest->inputsEnabled = FALSE;
        }
    }
}


// Check if Scene Can Receive Inputs
u32 flash_test_scene_inputs_enabled(void) {
    if (gFlashMemoryTest->inputsEnabled) {
        return TRUE;
    }

    return FALSE;
}


// Set unkC
void func_0801e928(u32 arg) {
    gFlashMemoryTest->unkC = __umodsi3(arg, 0x8000);
}


// Scene Stop
void flash_test_scene_stop(void *sVar, s32 dArg) {
    func_08008628();
    func_08004058();
}
