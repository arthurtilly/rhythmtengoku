#include "global.h"
#include "studio.h"
#include "graphics/studio/studio_graphics.h"


// For readability.
#define gStudioInfo ((struct StudioSceneInfo *)D_030046a4)


/* STUDIO */


// Warning Notice - On-Finish Function
void studio_warning_show(void) {
    scene_show_bg_layer(BG_LAYER_0);
    func_0804d770(D_03005380, gStudioInfo->warningAdvIcon, TRUE);
    gStudioInfo->warningIsRendering = FALSE;
}


// Warning Notice - Init.
void studio_warning_init(void) {
    gStudioInfo->warningAdvIcon = func_0804d160(D_03005380, anim_studio_warning_options_y, 0, 120, 120, 0x800, 1, 0, 0x8000);
    gStudioInfo->warningPrinter = text_printer_create_new(get_current_mem_id(), 2, 160, 10);
    text_printer_set_x_y(gStudioInfo->warningPrinter, 40, 84);
    text_printer_set_layer(gStudioInfo->warningPrinter, 0x800);
    text_printer_center_by_content(gStudioInfo->warningPrinter, TRUE);
    text_printer_run_func_on_finish(gStudioInfo->warningPrinter, studio_warning_show, 0);
}


// Warning Notice - Update
void studio_warning_update(void) {
    s32 event = 0;

    if (!gStudioInfo->warningIsActive) {
        return;
    }

    if (gStudioInfo->warningIsRendering) {
        text_printer_update(gStudioInfo->warningPrinter);
        return;
    }

    switch (gStudioInfo->warningOption) {
        case STUDIO_WARNING_OPT_DISMISS:
            if (D_03004afc & (A_BUTTON | B_BUTTON)) {
                play_sound_in_player(MUSIC_PLAYER_2, gStudioInfo->warningSfx);
                event = 1;
            }
            break;

        case STUDIO_WARNING_OPT_Y:
            if (D_03004afc & DPAD_RIGHT) {
                play_sound_in_player(MUSIC_PLAYER_2, &s_menu_cursor1_seqData);
                gStudioInfo->warningOption = STUDIO_WARNING_OPT_N;
                func_0804d8f8(D_03005380, gStudioInfo->warningAdvIcon, anim_studio_warning_options_n, 0, 1, 0, 0);
            } else if (D_03004afc & A_BUTTON) {
                play_sound_in_player(MUSIC_PLAYER_2, gStudioInfo->warningSfx);
                event = 1;
            } else if (D_03004afc & B_BUTTON) {
                play_sound_in_player(MUSIC_PLAYER_2, &s_menu_cancel3_seqData);
                event = 3;
            }
            break;

        case STUDIO_WARNING_OPT_N:
            if (D_03004afc & DPAD_LEFT) {
                play_sound_in_player(MUSIC_PLAYER_2, &s_menu_cursor1_seqData);
                gStudioInfo->warningOption = STUDIO_WARNING_OPT_Y;
                func_0804d8f8(D_03005380, gStudioInfo->warningAdvIcon, anim_studio_warning_options_y, 0, 1, 0, 0);
            } else if (D_03004afc & A_BUTTON) {
                play_sound_in_player(MUSIC_PLAYER_2, &s_menu_cancel3_seqData);
                event = 2;
            } else if (D_03004afc & B_BUTTON) {
                play_sound_in_player(MUSIC_PLAYER_2, &s_menu_cancel3_seqData);
                event = 3;
            }
            break;
    }

    if (event != 0) {
        studio_warning_remove();

        if (gStudioInfo->warningEvent != NULL) {
            gStudioInfo->warningEvent(event, gStudioInfo->warningEventArg);
        }
    }
}


// Warning Notice - Create
void studio_warning_create(u32 options, const char *dialogue, void eventFunc(s32, s32), s32 eventArg, struct SequenceData *sfx) {
    switch (options) {
        case STUDIO_WARNING_OPT_DISMISS:
            func_0804d8f8(D_03005380, gStudioInfo->warningAdvIcon, anim_studio_text_adv_icon, 0, 1, 0, 0);
            break;

        case STUDIO_WARNING_OPT_Y:
            func_0804d8f8(D_03005380, gStudioInfo->warningAdvIcon, anim_studio_warning_options_y, 0, 1, 0, 0);
            break;

        case STUDIO_WARNING_OPT_N:
            func_0804d8f8(D_03005380, gStudioInfo->warningAdvIcon, anim_studio_warning_options_n, 0, 1, 0, 0);
            break;
    }

    text_printer_set_string(gStudioInfo->warningPrinter, dialogue);
    gStudioInfo->warningOption = options;
    gStudioInfo->warningEvent = eventFunc;
    gStudioInfo->warningEventArg = eventArg;
    gStudioInfo->warningSfx = sfx;
    gStudioInfo->warningIsActive = TRUE;
    gStudioInfo->warningIsRendering = TRUE;
    gStudioInfo->sceneState = STUDIO_STATE_WARNING_DISPLAY;
}


// Warning Notice - Remove
void studio_warning_remove(void) {
    text_printer_clear(gStudioInfo->warningPrinter);
    scene_hide_bg_layer(BG_LAYER_0);
    func_0804d770(D_03005380, gStudioInfo->warningAdvIcon, FALSE);
    gStudioInfo->warningIsActive = FALSE;
    gStudioInfo->warningIsRendering = FALSE;
}
