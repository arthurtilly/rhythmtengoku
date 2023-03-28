#include "global.h"
#include "main_menu.h"
#include "graphics/main_menu/main_menu_graphics.h"

#include "src/main.h"
#include "src/code_08001360.h"
#include "src/bitmap_font.h"
#include "src/memory_heap.h"
#include "src/code_080068f8.h"
#include "src/code_08007468.h"
#include "src/code_0800b3c8.h"
#include "src/code_0800b778.h"
#include "gameplay.h"
#include "src/lib_0804ca80.h"

// For readability.
#define gMainMenuInfo ((struct MainMenuSceneInfo *)D_030046a4)

enum MainMenuButtonsEnum {
    /* 00 */ GAME_SELECT,
    /* 01 */ RHYTHM_TEST,
    /* 02 */ RHYTHM_DATA_ROOM,
    /* 03 */ STUDIO,
    /* 04 */ OPTIONS_MENU
};

extern s8 sMainMenuButton;

extern const struct BitmapFontData bitmap_font_warioware_body;
extern struct Scene scene_debug_menu;
extern struct Scene scene_game_select;
extern struct Scene scene_results_ver_score;
extern struct Scene scene_main_menu;
extern struct Scene scene_rhythm_test;
extern struct Scene scene_data_room;
extern struct Scene scene_studio;
extern struct Scene scene_options_menu;


/* MAIN MENU */


// Init. Static Variables
void main_menu_init_static_var(void) {
    sMainMenuButton = GAME_SELECT;
}


// Graphics Init. 3
void main_menu_scene_init_gfx3(void) {
    s32 task;

    func_0800c604(0);
    task = start_new_texture_loader(get_current_mem_id(), main_menu_buffered_textures);
    run_func_after_task(task, set_pause_beatscript_scene, FALSE);
}


// Graphics Init. 2
void main_menu_scene_init_gfx2(void) {
    s32 task;

    func_0800c604(0);
    task = func_08002ee0(get_current_mem_id(), main_menu_gfx_table, 0x3000);
    run_func_after_task(task, main_menu_scene_init_gfx3, 0);
}


// Graphics Init. 1
void main_menu_scene_init_gfx1(void) {
    schedule_function_call(get_current_mem_id(), main_menu_scene_init_gfx2, 0, 2);
    scene_show_obj_layer();
    scene_set_bg_layer_display(BG_LAYER_1, TRUE, 0, 0, 0, 29, BGCNT_PRIORITY(1));
}


// Scene Start
void main_menu_scene_start(void *sceneVar, s32 dataArg) {
    const struct Scene *tempScene;
    u32 i;

    tempScene = func_0800061c();
    func_08007324(FALSE);
    func_080073f0();
    gMainMenuInfo->bmpFontBG = create_new_bmp_font_bg(get_current_mem_id(), &bitmap_font_warioware_body, 0, 0x340, 6);
    gMainMenuInfo->bmpFontOBJ = func_0800c660(0x300, 4);
    import_all_scene_objects(D_03005380, gMainMenuInfo->bmpFontOBJ, main_menu_scene_objects, D_0300558c);
    main_menu_scene_init_gfx1();
    func_0804d160(D_03005380, anim_main_menu_blank1, 0, 120, 64, 0x6E, 1, 0, 0);

    for (i = 0; i < 5; i++) {
        if (i == sMainMenuButton) {
            gMainMenuInfo->buttons[i] = func_0804d160(D_03005380, main_menu_button_on_anim[i], 0, 120, 64, 0x64, 1, 0, 0);
        } else {
            gMainMenuInfo->buttons[i] = func_0804d160(D_03005380, main_menu_button_off_anim[i], 0, 120, 64, 0x64, 1, 0, 0);
        }
    }

    gMainMenuInfo->scriptIsReady = FALSE;
    gMainMenuInfo->bgY = 0;
    gMainMenuInfo->bgX = 0;
    gMainMenuInfo->unk1A = (tempScene != NULL);
    gMainMenuInfo->loadingOptionsMenu = FALSE;
    func_08000584(&scene_debug_menu);
    flush_save_buffer_to_sram();
}


// Scene Update (Paused)
void main_menu_scene_paused(void *sceneVar, s32 dataArg) {
}


// Scene Update (Active)
void main_menu_scene_update(void *sceneVar, s32 dataArg) {
    s32 prevButton;

    gMainMenuInfo->bgX += 1;
    gMainMenuInfo->bgY -= 1;
    scene_set_bg_layer_pos(BG_LAYER_1, gMainMenuInfo->bgX >> 2, gMainMenuInfo->bgY >> 2);

    if (main_menu_scene_script_ready()) {
        prevButton = sMainMenuButton;
        if (D_030053b8 & DPAD_UP) {
            sMainMenuButton -= 1;
        }
        if (D_030053b8 & DPAD_DOWN) {
            sMainMenuButton += 1;
        }
        sMainMenuButton = clamp_int32(sMainMenuButton, GAME_SELECT, OPTIONS_MENU);

        if (prevButton != sMainMenuButton) {
            play_sound(&s_menu_cursor2_seqData);
            func_0804d8f8(D_03005380, gMainMenuInfo->buttons[prevButton], main_menu_button_off_anim[prevButton], 0, 1, 0, 0);
            func_0804d8f8(D_03005380, gMainMenuInfo->buttons[sMainMenuButton], main_menu_button_on_anim[sMainMenuButton], 0, 1, 0, 0);
        }

        else if (D_03004afc & (START_BUTTON | A_BUTTON)) {
            switch (prevButton) {
                case GAME_SELECT:
                    func_08000584(&scene_game_select);
                    break;
                case RHYTHM_TEST:
                    func_080006b0(&scene_results_ver_score, &scene_main_menu);
                    func_08000584(&scene_rhythm_test);
                    gameplay_pause_menu_set_quit_destination(&scene_main_menu);
                    break;
                case RHYTHM_DATA_ROOM:
                    func_08000584(&scene_data_room);
                    func_080006b0(&scene_data_room, &scene_main_menu);
                    break;
                case STUDIO:
                    func_08000584(&scene_studio);
                    func_080006b0(&scene_studio, &scene_main_menu);
                    func_080006d0(&scene_studio, NULL);
                    break;
                case OPTIONS_MENU:
                    func_08000584(&scene_options_menu);
                    func_080006b0(&scene_options_menu, &scene_main_menu);
                    gMainMenuInfo->loadingOptionsMenu = TRUE;
                    break;
            }
            set_pause_beatscript_scene(FALSE);
            gMainMenuInfo->scriptIsReady = FALSE;
            play_sound(&s_menu_kettei1_seqData);
        }
    }
}


// Communicate with Script
u32 main_menu_scene_script_ready(void) {
    if (gMainMenuInfo->scriptIsReady) {
        return TRUE;
    } else {
        return FALSE;
    }
}


// Scene Stop
void main_menu_scene_stop(void *sceneVar, s32 dataArg) {
    func_08008628();
    func_08004058();
}
