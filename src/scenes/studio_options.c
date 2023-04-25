#include "global.h"
#include "studio.h"
#include "graphics/studio/studio_graphics.h"


// For readability.
#define gStudioInfo ((struct StudioSceneInfo *)D_030046a4)


/* STUDIO */


// [D_089d841c] Options
const char *studio_options_no_replay[] = {
    /* LISTEN */ "リスニング",
    /* DRUM   */ "ドラミング",
    /* SORT   */ "ならびかえ",
    /* MARK   */ "チェック"
};


// [D_089d842c] Options (Replay)
const char *studio_options_is_replay[] = {
    /* LISTEN */ "リスニング",
    /* DELETE */ "データ消去",
    /* SORT   */ "ならびかえ",
    /* MARK   */ "チェック"
};


// [D_089d843c] Option Labels
const char **studio_options_text[] = {
    /* NO_REPLAY */ studio_options_no_replay,
    /* IS_REPLAY */ studio_options_is_replay
};


// [D_089d8444] Total Options
u8 studio_total_options[] = {
    /* NO_REPLAY */ 4,
    /* IS_REPLAY */ 4
};


// Option List - Get String
const char *studio_option_list_get_string(s32 line) {
    char numString[0x10];

    if ((line < 0) || (line >= studio_total_options[gStudioInfo->optionListState])) {
        return NULL;
    }

    strint(numString, line + 1);
    memcpy(gStudioInfo->string, "", 1);
    strcat(gStudioInfo->string, studio_options_text[gStudioInfo->optionListState][line]);

    return gStudioInfo->string;
}


// Option List - On Scroll
void studio_option_list_on_scroll(s32 arg, u32 current, u32 previous) {
    play_sound_in_player(MUSIC_PLAYER_2, &s_menu_cursor1_seqData);
}


// Option List - Init.
void studio_option_list_init(s32 state, s32 selItem) {
    gStudioInfo->optionListState = state;
    gStudioInfo->optionList = create_new_listbox(
            get_current_mem_id(), 4, 64, 12, 0, 1, 3, 264, 44, 0x8800, 16,
            selItem, studio_total_options[state], anim_studio_selection_option, 0, 4, clamp_int32(selItem, 0, 3),
            studio_option_list_get_string, NULL);
    listbox_run_func_on_scroll(gStudioInfo->optionList, studio_option_list_on_scroll, 0);
}


// Option List - Check for No Checks
s32 studio_option_list_no_checked_songs(void) {
    u32 i;

    for (i = 0; i < D_030046a8->data.totalSongs; i++) {
        if (!(D_030046a8->data.studioSongs[i].unk3 & 2)) {
            return FALSE;
        }
    }

    return TRUE;
}


// Option List - Exit to Listening Scene
void studio_option_list_exit_to_listening(void) {
    const struct Scene *scene;
    s32 var, songItem;

    scene = get_scene_trans_target(&scene_studio);
    var = 0;
    func_080006f0(scene, var);

    songItem = listbox_get_sel_item(gStudioInfo->songList);
    set_next_scene(&D_089d4ba4);
    set_scene_trans_target(&D_089d4ba4, &scene_studio);
    set_scene_trans_var(&D_089d4ba4, songItem);
    func_0801d968(script_scene_studio_exit);
    gStudioInfo->scriptIsReady = FALSE;
}


// Option List - End of "No Checks" Warning
void studio_option_list_warning_no_checks_result(s32 event, s32 arg) {
    gStudioInfo->sceneState = STUDIO_STATE_NAV_OPTION_LIST;
}


// Option List - End of "Unchecked" Warning
void studio_option_list_warning_unchecked_result(s32 event, s32 arg) {
    if (event == 1) {
        studio_option_list_exit_to_listening();
    } else {
        gStudioInfo->sceneState = STUDIO_STATE_NAV_OPTION_LIST;
    }
}


// Options List - End of "Delete" Warning
void studio_option_list_warning_deletion_result(s32 result, s32 arg) {
    s32 selItem, selLine;
    s32 totalSongs;

    if (result == 1) {
        selItem = listbox_get_sel_item(gStudioInfo->songList);
        selLine = listbox_get_sel_line(gStudioInfo->songList);
        delete_listbox(gStudioInfo->songList);

        totalSongs = D_030046a8->data.totalSongs;
        if (totalSongs > 1) {
            delete_studio_song(selItem);
            if (selItem >= (totalSongs - 1)) {
                selItem--;

                if (selLine > 0) {
                    selLine--;
                }
            }
            update_replay_memory_graph_data_bars(gStudioInfo->replayMemoryGraph);
        }
        studio_song_list_init(0, selItem, selLine);
        studio_scene_clear_music();
        listbox_hide_sel_sprite(gStudioInfo->optionList);
        listbox_show_sel_sprite(gStudioInfo->songList);
        studio_scene_pan_to_menu(STUDIO_MENU_SONG_LIST);
        gStudioInfo->sceneState = STUDIO_STATE_NAV_SONG_LIST;
        gStudioInfo->musicPlayer = play_sound(&s_studio_bgm_seqData);
    } else {
        gStudioInfo->sceneState = STUDIO_STATE_NAV_OPTION_LIST;
    }
}


// Option List - Update
void studio_option_list_update(void) {
    s32 songItem, isValid;
    u32 event = STUDIO_LIST_EV_NONE;

    if (!listbox_is_busy(gStudioInfo->optionList) && studio_scene_can_receive_inputs()) {
        if (D_03004afc & A_BUTTON) {
            event = STUDIO_LIST_EV_CONFIRM;
        }
        if (D_03004afc & B_BUTTON) {
            event = STUDIO_LIST_EV_CANCEL;
        }
        if (D_030053b8 & DPAD_UP) {
            event = STUDIO_LIST_EV_SCROLL_UP;
        }
        if (D_030053b8 & DPAD_DOWN) {
            event = STUDIO_LIST_EV_SCROLL_DOWN;
        }
    }

    switch (event) {
        case STUDIO_LIST_EV_CONFIRM:
            if (listbox_get_sel_item(gStudioInfo->optionList) == STUDIO_OPTION_LISTEN) {
                if (studio_option_list_no_checked_songs()) {
                    studio_warning_create(
                            STUDIO_WARNING_OPT_DISMISS,
                            // Not even one song has
                            // a check mark on it.
                            "チェックのついている曲が、\n"
                            "ひとつもありません。",
                            studio_option_list_warning_no_checks_result, 0,
                            &s_menu_kettei2_seqData);
                    play_sound_in_player(MUSIC_PLAYER_2, &s_menu_kettei2_seqData);
                } else {
                    songItem = listbox_get_sel_item(gStudioInfo->songList);

                    if (D_030046a8->data.studioSongs[songItem].unk3 & 2) {
                        studio_warning_create(
                                STUDIO_WARNING_OPT_Y,
                                // In listening mode, only the songs
                                // with a check mark will be played.
                                "リスニングではチェックのある曲だけ再生します。　よろしいですか～？",
                                studio_option_list_warning_unchecked_result, 0,
                                &s_menu_se24_seqData);
                        play_sound_in_player(MUSIC_PLAYER_2, &s_menu_kettei2_seqData);
                    } else {
                        studio_option_list_exit_to_listening();
                        play_sound_in_player(MUSIC_PLAYER_2, &s_menu_se24_seqData);
                    }
                }
            }

            if (listbox_get_sel_item(gStudioInfo->optionList) == STUDIO_OPTION_DRUM) {
                if (gStudioInfo->optionListState == 0) {
                    play_sound_in_player(MUSIC_PLAYER_2, &s_menu_kettei2_seqData);
                    listbox_hide_sel_sprite(gStudioInfo->optionList);
                    listbox_show_sel_sprite(gStudioInfo->drumList);
                    studio_scene_pan_to_menu(STUDIO_MENU_DRUM_LIST);
                    gStudioInfo->sceneState = STUDIO_STATE_NAV_DRUM_LIST;
                } else {
                    play_sound_in_player(MUSIC_PLAYER_2, &s_menu_kettei2_seqData);
                    studio_warning_create(
                            STUDIO_WARNING_OPT_N,
                            // You'll erase this performance
                            // data! Is that really OK?
                            "この演奏データを削除するヨ！\n"
                            "ホントにOK？",
                            studio_option_list_warning_deletion_result, 0,
                            &s_menu_se13_seqData);
                }
            }

            if (listbox_get_sel_item(gStudioInfo->optionList) == STUDIO_OPTION_SORT) {
                play_sound_in_player(MUSIC_PLAYER_2, &s_menu_kettei2_seqData);
                listbox_hide_sel_sprite(gStudioInfo->optionList);
                listbox_show_sel_sprite(gStudioInfo->songList);
                gStudioInfo->selectedItem = listbox_get_sel_item(gStudioInfo->songList);
                listbox_link_sprite_x_y_to_line(gStudioInfo->songList, gStudioInfo->itemMoveHighlight, gStudioInfo->selectedItem);
                func_0804d770(D_03005380, gStudioInfo->itemMoveHighlight, TRUE);
                gStudioInfo->sceneState = STUDIO_STATE_EDIT_VIA_OPTION_LIST;
            }

            if (listbox_get_sel_item(gStudioInfo->optionList) == STUDIO_OPTION_MARK) {
                songItem = listbox_get_sel_item(gStudioInfo->songList);
                isValid = TRUE;

                if (D_030046a8->data.studioSongs[songItem].songID == STUDIO_SONG_SILENCE) {
                    if (!(D_030046a8->data.studioSongs[songItem].unk3 & 1)) {
                        isValid = FALSE;
                    }
                }

                if (isValid) {
                    D_030046a8->data.studioSongs[songItem].unk3 ^= 2;
                    func_0800b454(gStudioInfo->songList, songItem);

                    if (D_030046a8->data.studioSongs[songItem].unk3 & 2) {
                        play_sound_in_player(MUSIC_PLAYER_2, &s_menu_cancel3_seqData);
                    } else {
                        play_sound_in_player(MUSIC_PLAYER_2, &s_menu_kettei2_seqData);
                    }
                } else {
                    play_sound_in_player(MUSIC_PLAYER_2, &s_menu_error_seqData);
                }
            }
            break;

        case STUDIO_LIST_EV_CANCEL:
            play_sound_in_player(MUSIC_PLAYER_2, &s_menu_cancel3_seqData);
            studio_scene_clear_music();
            listbox_hide_sel_sprite(gStudioInfo->optionList);
            listbox_show_sel_sprite(gStudioInfo->songList);
            studio_scene_pan_to_menu(STUDIO_MENU_SONG_LIST);
            gStudioInfo->musicPlayer = play_sound(&s_studio_bgm_seqData);
            gStudioInfo->sceneState = STUDIO_STATE_NAV_SONG_LIST;
            break;

        case STUDIO_LIST_EV_SCROLL_UP:
            listbox_scroll_up(gStudioInfo->optionList);
            break;

        case STUDIO_LIST_EV_SCROLL_DOWN:
            listbox_scroll_down(gStudioInfo->optionList);
            break;
    }
}


// Option List - Update (Moving Item)
void studio_option_list_update_w_selection(void) {
    s32 songItem;
    u32 event = STUDIO_LIST_EV_NONE;

    if (!listbox_is_busy(gStudioInfo->songList) && studio_scene_can_receive_inputs()) {
        if (D_03004afc & A_BUTTON) {
            event = STUDIO_LIST_EV_CONFIRM;
        }
        if (D_03004afc & B_BUTTON) {
            event = STUDIO_LIST_EV_CANCEL;
        }
        if (D_030053b8 & DPAD_UP) {
            event = STUDIO_LIST_EV_SCROLL_UP;
        }
        if (D_030053b8 & DPAD_DOWN) {
            event = STUDIO_LIST_EV_SCROLL_DOWN;
        }
    }

    switch(event) {
        case STUDIO_LIST_EV_CONFIRM:
            songItem = listbox_get_sel_item(gStudioInfo->songList);
            if (songItem != gStudioInfo->selectedItem) {
                studio_song_list_move_item(gStudioInfo->selectedItem, songItem);
                play_sound_in_player(MUSIC_PLAYER_2, &s_menu_kettei2_seqData);
                func_0804d770(D_03005380, gStudioInfo->itemMoveHighlight, FALSE);
                listbox_set_sel_sprite(gStudioInfo->songList, anim_studio_selection_item);
                listbox_show_sel_sprite(gStudioInfo->optionList);
                listbox_hide_sel_sprite(gStudioInfo->songList);
                gStudioInfo->sceneState = STUDIO_STATE_NAV_OPTION_LIST;
                break;
            }

        case STUDIO_LIST_EV_CANCEL:
            play_sound_in_player(MUSIC_PLAYER_2, &s_menu_cancel3_seqData);
            func_0804d770(D_03005380, gStudioInfo->itemMoveHighlight, FALSE);
            listbox_set_sel_sprite(gStudioInfo->songList, anim_studio_selection_item);
            listbox_show_sel_sprite(gStudioInfo->optionList);
            listbox_hide_sel_sprite(gStudioInfo->songList);
            gStudioInfo->sceneState = STUDIO_STATE_NAV_OPTION_LIST;
            break;

        case STUDIO_LIST_EV_SCROLL_UP:
            listbox_scroll_up(gStudioInfo->songList);
            break;

        case STUDIO_LIST_EV_SCROLL_DOWN:
            listbox_scroll_down(gStudioInfo->songList);
            break;
    }
}
