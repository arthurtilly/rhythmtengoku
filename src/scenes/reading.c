#include "global.h"
#include "scenes.h"
#include "reading.h"
#include "graphics/data_room/data_room_graphics.h"


// For readability.
#define gReadingInfo ((struct ReadingSceneInfo *)D_030046a4)

enum ReadingEventsEnum {
    DO_NOTHING,
    SCROLL_TO_PREV,
    SCROLL_TO_NEXT,
    EXIT_SCENE
};

enum PageStatesEnum {
    PAGE_IDLE,
    PAGE_SCROLLING_DOWN,
    PAGE_SCROLLING_UP,
    PAGE_SCROLLED_DOWN,
    PAGE_SCROLLED_UP
};


/* READING MATERIAL */


// Graphics Init. 4
void reading_scene_init_gfx4(void) {
    s32 task;

    func_0800c604(0);
    task = start_new_texture_loader(get_current_mem_id(), reading_buffered_textures);
    run_func_after_task(task, set_pause_beatscript_scene, FALSE);
}


// Graphics Init. 3
void reading_scene_init_gfx3(void) {
    s32 task;

    func_0800c604(0);
    task = func_08002ee0(get_current_mem_id(), gReadingInfo->material->graphics, 0x3000);
    run_func_after_task(task, reading_scene_init_gfx4, 0);
}


// Graphics Init. 2
void reading_scene_init_gfx2(void) {
    s32 task;

    func_0800c604(0);
    task = func_08002ee0(get_current_mem_id(), reading_gfx_table, 0x3000);
    run_func_after_task(task, reading_scene_init_gfx3, 0);
}


// Graphics Init. 1
void reading_scene_init_gfx1(void) {
    schedule_function_call(get_current_mem_id(), reading_scene_init_gfx2, 0, 2);
    scene_show_obj_layer();
    scene_set_bg_layer_display(BG_LAYER_1, TRUE, 0, 0, 0, 29, BGCNT_PRIORITY(2));
}


// Scene Start
void reading_scene_start(void *sceneVar, s32 dataArg) {
    struct ReadingMaterial *material;
    struct TextPrinter *titlePrinter;

    material = &reading_material_table[get_current_scene_trans_var()];

    if (material == NULL) {
        material = &reading_material_error;
    }

    gReadingInfo->material = material;

    func_08007324(FALSE);
    func_080073f0();
    reading_scene_init_gfx1();

    gReadingInfo->pageState = PAGE_IDLE;
    gReadingInfo->pagePosY = 0;
    gReadingInfo->iconPrev = func_0804d160(D_03005380, anim_reading_icon_prev, 0, 0, 0, 0x4864, 0, 0, 0x8000);
    gReadingInfo->iconNext = func_0804d160(D_03005380, anim_reading_icon_next, 0, 0, 0, 0x4864, 0, 0, 0x8000);
    func_0804d160(D_03005380, anim_reading_title_bar, 0, 120, 0, 0x48C8, 0, 0, 0);
    gReadingInfo->currentPage = 0;

    titlePrinter = text_printer_create_new(get_current_mem_id(), 1, 232, 32);
    text_printer_set_x_y(titlePrinter, 4, 7);
    text_printer_set_layer(titlePrinter, 0x4800);
    text_printer_set_alignment(titlePrinter, TEXT_ALIGNMENT_CENTER);
    text_printer_set_colors(titlePrinter, 3);
    text_printer_set_string(titlePrinter, material->title);
    text_printer_update(titlePrinter);
    text_printer_update(titlePrinter);

    gReadingInfo->printer = text_printer_create_new(get_current_mem_id(), 9, 230, 30);
    text_printer_set_x_y(gReadingInfo->printer, 8, 24);
    text_printer_set_layer(gReadingInfo->printer, 0x8800);
    text_printer_set_x_y_controller(gReadingInfo->printer, NULL, &gReadingInfo->pagePosY);
    text_printer_set_string(gReadingInfo->printer, material->text);
    text_printer_export_data(gReadingInfo->printer, &gReadingInfo->pageData[0]);

    gReadingInfo->scriptIsReady = FALSE;
}


// Update UI
void reading_scene_update_page(void) {
    if (!text_printer_is_busy(gReadingInfo->printer)) {
        func_0804d770(D_03005380, gReadingInfo->iconPrev, gReadingInfo->currentPage != 0);
        func_0804d770(D_03005380, gReadingInfo->iconNext, text_printer_get_text(gReadingInfo->printer) != NULL);
    }

    if (gReadingInfo->pageState == PAGE_IDLE) {
        return;
    }

    if (!text_printer_is_busy(gReadingInfo->printer)) {
        s32 y = gReadingInfo->relativeY;

        if (y < 0) {
            y = -y;
        }

        y = FIXED_POINT_MUL(y, 200);

        if (y < 16) {
            y = 0;
        }

        if (gReadingInfo->relativeY < 0) {
            y = -y;
        }

        gReadingInfo->relativeY = y;
    }

    gReadingInfo->pagePosY = gReadingInfo->targetY + gReadingInfo->relativeY;

    if (gReadingInfo->relativeY == 0) {
        switch (gReadingInfo->pageState) {
            default:
                gReadingInfo->pageState = PAGE_IDLE;
                break;

            case PAGE_SCROLLING_DOWN:
                gReadingInfo->targetY = 0;
                gReadingInfo->relativeY = -SCREEN_HEIGHT;
                gReadingInfo->pageState = PAGE_SCROLLED_DOWN;
                gReadingInfo->currentPage++;
                text_printer_resume(gReadingInfo->printer);
                text_printer_export_data(gReadingInfo->printer, &gReadingInfo->pageData[gReadingInfo->currentPage]);
                break;

            case PAGE_SCROLLING_UP:
                gReadingInfo->targetY = 0;
                gReadingInfo->relativeY = SCREEN_HEIGHT;
                gReadingInfo->pageState = PAGE_SCROLLED_UP;
                gReadingInfo->currentPage--;
                text_printer_import_data(gReadingInfo->printer, &gReadingInfo->pageData[gReadingInfo->currentPage]);
                break;
        }
    }
}


// Scene Update (Active)
void reading_scene_update(void *sceneVar, s32 dataArg) {
    s32 event = DO_NOTHING;

    if (reading_scene_can_receive_inputs()) {
        if (D_03004ac0 & DPAD_UP) {
            if (gReadingInfo->currentPage > 0) {
                event = SCROLL_TO_PREV;
            }
        }
        if (D_03004ac0 & DPAD_DOWN) {
            if ((text_printer_get_text(gReadingInfo->printer) != NULL) && (gReadingInfo->currentPage < 31)) {
                event = SCROLL_TO_NEXT;
            }
        }
        if (D_03004afc & A_BUTTON) {
            if ((text_printer_get_text(gReadingInfo->printer) != NULL) && (gReadingInfo->currentPage < 31)) {
                event = SCROLL_TO_NEXT;
            }
        }
        if (D_03004afc & B_BUTTON) {
            event = EXIT_SCENE;
        }
    }

    switch (event) {
        case SCROLL_TO_PREV:
            gReadingInfo->pageState = PAGE_SCROLLING_UP;
            gReadingInfo->targetY = -SCREEN_HEIGHT;
            gReadingInfo->relativeY = SCREEN_HEIGHT;
            play_sound(&s_f_env_paper_rev_seqData);
            break;

        case SCROLL_TO_NEXT:
            gReadingInfo->pageState = PAGE_SCROLLING_DOWN;
            gReadingInfo->targetY = SCREEN_HEIGHT;
            gReadingInfo->relativeY = -SCREEN_HEIGHT;
            play_sound(&s_f_env_paper_seqData);
            break;

        case EXIT_SCENE:
            set_pause_beatscript_scene(FALSE);
            gReadingInfo->scriptIsReady = FALSE;
            play_sound_in_player(SFX_PLAYER_3, &s_menu_cancel2_seqData);
            break;
    }

    reading_scene_update_page();
    text_printer_update(gReadingInfo->printer);
    text_printer_update(gReadingInfo->printer);
}


// Communicate with Script
u32 reading_scene_can_receive_inputs(void) {
    if (gReadingInfo->scriptIsReady) {
        u32 busy = text_printer_is_busy(gReadingInfo->printer);

        if (gReadingInfo->pageState == PAGE_SCROLLING_DOWN) {
            busy = TRUE;
        }

        if (gReadingInfo->pageState == PAGE_SCROLLING_UP) {
            busy = TRUE;
        }

        if (!busy) {
            return TRUE;
        }
    }

    return FALSE;
}


// Scene Stop
void reading_scene_stop(void *sceneVar, s32 dataArg) {
    func_08008628();
    func_08004058();
}


// Play BGM
void reading_scene_play_bgm(void) {
    scene_set_music(gReadingInfo->material->sounds[0]);
}
