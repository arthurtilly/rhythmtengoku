#include "global.h"
#include "studio.h"
#include "graphics/studio/studio_graphics.h"

asm(".include \"include/gba.inc\"");//Temporary


// For readability.
#define gStudioInfo ((struct StudioSceneInfo *)D_030046a4)

enum StudioStatesEnum {
    STATE_STARTUP,
    STATE_NAV_SONG_LIST,
    STATE_NAV_OPTION_LIST,
    STATE_NAV_DRUM_LIST,
    STATE_EDIT_VIA_SONG_LIST,
    STATE_EDIT_VIA_OPTION_LIST,
    STATE_WARNING_DISPLAY
};

enum StudioWarningOptionsEnum {
    WARNING_OPT_DISMISS,
    WARNING_OPT_Y,
    WARNING_OPT_N
};

enum StudioMenusEnum {
    MENU_SONG_LIST,
    MENU_OPTION_LIST,
    MENU_DRUM_LIST
};

enum StudioListEventsEnum {
    LIST_EV_NONE,
    LIST_EV_CONFIRM,
    LIST_EV_SCROLL_UP,
    LIST_EV_SCROLL_DOWN,
    LIST_EV_CANCEL,
    LIST_EV_MOVE_ITEM,
    LIST_EV_CHECK_ITEM
};

enum StudioOptionsEnum {
    OPTION_LISTEN,
    OPTION_DRUM,
    OPTION_SORT,
    OPTION_MARK,
    OPTION_DELETE = OPTION_DRUM
};


static u8 sCurrentDrumKit; // Selected Drum Kit ID
static u8 sListSongSelItem; // Song Item Index (Total)
static s8 sListSongSelLine; // Song Item Index (Screen)
static u8 sListOptionSelItem; // Option Item Index
static u8 sListDrumSelItem; // Drum Kit Item Index (Total)
static u8 sListDrumSelLine; // Drum Kit Item Index (Screen)

static u16 padding;
static u8 sStudioDrummerMode; // Studio Drummer Mode


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
        case WARNING_OPT_DISMISS:
            if (D_03004afc & (A_BUTTON | B_BUTTON)) {
                play_sound_in_player(MUSIC_PLAYER_2, gStudioInfo->warningSfx);
                event = 1;
            }
            break;

        case WARNING_OPT_Y:
            if (D_03004afc & DPAD_RIGHT) {
                play_sound_in_player(MUSIC_PLAYER_2, &s_menu_cursor1_seqData);
                gStudioInfo->warningOption = WARNING_OPT_N;
                func_0804d8f8(D_03005380, gStudioInfo->warningAdvIcon, anim_studio_warning_options_n, 0, 1, 0, 0);
            } else if (D_03004afc & A_BUTTON) {
                play_sound_in_player(MUSIC_PLAYER_2, gStudioInfo->warningSfx);
                event = 1;
            } else if (D_03004afc & B_BUTTON) {
                play_sound_in_player(MUSIC_PLAYER_2, &s_menu_cancel3_seqData);
                event = 3;
            }
            break;

        case WARNING_OPT_N:
            if (D_03004afc & DPAD_LEFT) {
                play_sound_in_player(MUSIC_PLAYER_2, &s_menu_cursor1_seqData);
                gStudioInfo->warningOption = WARNING_OPT_Y;
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
        case WARNING_OPT_DISMISS:
            func_0804d8f8(D_03005380, gStudioInfo->warningAdvIcon, anim_studio_text_adv_icon, 0, 1, 0, 0);
            break;

        case WARNING_OPT_Y:
            func_0804d8f8(D_03005380, gStudioInfo->warningAdvIcon, anim_studio_warning_options_y, 0, 1, 0, 0);
            break;

        case WARNING_OPT_N:
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
    gStudioInfo->menuState = STATE_WARNING_DISPLAY;
}


// Warning Notice - Remove
void studio_warning_remove(void) {
    text_printer_clear(gStudioInfo->warningPrinter);
    scene_hide_bg_layer(BG_LAYER_0);
    func_0804d770(D_03005380, gStudioInfo->warningAdvIcon, FALSE);
    gStudioInfo->warningIsActive = FALSE;
    gStudioInfo->warningIsRendering = FALSE;
}


// Song Save Data - Unlock Default Songs
void unlock_default_studio_songs(void) {
    save_studio_song(STUDIO_SONG_SILENCE, -1, 1, 2);
    save_studio_song(STUDIO_SONG_TITLE, -1, 1, 0);
    save_studio_song(STUDIO_SONG_OPENING, -1, 1, 0);
    save_studio_song(STUDIO_SONG_MAIN_MENU, -1, 1, 0);
    save_studio_song(STUDIO_SONG_GAME_SELECT_1, -1, 1, 0);
    save_studio_song(STUDIO_SONG_DATA_ROOM, -1, 1, 0);
}


// Song Save Data - Save
s32 save_studio_song(s32 song, s32 replay, s32 drumKit, s32 flags) {
    struct StudioSongData *data;
    s32 id;

    id = D_030046a8->data.totalSongs;

    if (id >= 55) {
        return -1;
    }

    data = &D_030046a8->data.studioSongs[id];
    data->songID = song;
    data->replayID = replay;
    data->drumKitID = drumKit;
    data->unk3 = flags;
    D_030046a8->data.totalSongs++;

    return id;
}


// Song Save Data - Swap
void swap_studio_songs(s32 id1, s32 id2) {
    struct StudioSongData *data1, *data2;
    struct StudioSongData temp;

    data1 = &D_030046a8->data.studioSongs[id1];
    data2 = &D_030046a8->data.studioSongs[id2];

    temp.songID = data1->songID;
    temp.replayID = data1->replayID;
    temp.drumKitID = data1->drumKitID;
    temp.unk3 = data1->unk3;

    data1->songID = data2->songID;
    data1->replayID = data2->replayID;
    data1->drumKitID = data2->drumKitID;
    data1->unk3 = data2->unk3;

    data2->songID = temp.songID;
    data2->replayID = temp.replayID;
    data2->drumKitID = temp.drumKitID;
    data2->unk3 = temp.unk3;
}


// Song Save Data - Move
void move_studio_song(s32 id, s32 newIndex) {
    if (id > newIndex) {
        while (id > newIndex) {
            swap_studio_songs(id, id - 1);
            id--;
        }
    } else {
        while (id < newIndex) {
            swap_studio_songs(id, id + 1);
            id++;
        }
    }
}


// Song Save Data - Delete
void delete_studio_song(s32 id) {
    s32 totalSongs, replay;
    u32 i;

    totalSongs = D_030046a8->data.totalSongs;
    replay = D_030046a8->data.studioSongs[id].replayID;

    if (replay >= 0) {
        delete_saved_replay(&D_030046a8->data.drumReplaysAlloc, replay);
    }

    for (i = id; i < (totalSongs - 1); i++) {
        D_030046a8->data.studioSongs[i].songID = D_030046a8->data.studioSongs[i+1].songID;
        D_030046a8->data.studioSongs[i].replayID = D_030046a8->data.studioSongs[i+1].replayID;
        D_030046a8->data.studioSongs[i].drumKitID = D_030046a8->data.studioSongs[i+1].drumKitID;
        D_030046a8->data.studioSongs[i].unk3 = D_030046a8->data.studioSongs[i+1].unk3;
    }

    D_030046a8->data.totalSongs--;
}


// Song List - Get String
const char *studio_song_list_get_string(s32 line) {
    struct StudioSongData *songData;
    struct StudioEntry *songEntry;
    char numString[0x10];

    if ((line < 0) || (line >= D_030046a8->data.totalSongs)) {
        return NULL;
    }

    strint(numString, line + 1);
    memcpy(gStudioInfo->string, text_studio_song_pad_14px, 5);
    songData = &D_030046a8->data.studioSongs[line];
    songEntry = &studio_song_table[songData->songID];

    if (songEntry->shortTitle != NULL) {
        strcat(gStudioInfo->string, songEntry->shortTitle);
    } else {
        strcat(gStudioInfo->string, songEntry->fullTitle);
    }

    return gStudioInfo->string;
}


// Song List - Get Sprite
s16 studio_song_list_get_sprite(s32 line) {
    struct StudioSongData *songData;

    if ((line < 0) || (line >= D_030046a8->data.totalSongs)) {
        return -1;
    }

    switch (D_030046a8->data.studioSongs[line].unk3 & 3u) {
        case 0:
            return func_0804d160(D_03005380, anim_studio_item_marker_check, 0, 64, 64, 0, 0, 0, 0);

        case 1:
            return func_0804d160(D_03005380, anim_studio_item_markers, D_030046a8->data.studioSongs[line].replayID, 118, 96, 0, 0, 0, 0);

        case 3:
            return func_0804d160(D_03005380, anim_studio_item_marker_replay, D_030046a8->data.studioSongs[line].replayID, 64, 64, 0, 0, 0, 0);

        default:
            return -1;
    }
}


// Song List - On Scroll
void studio_song_list_on_scroll(s32 arg, u32 current, u32 previous) {
    s32 isMoveState = FALSE;

    play_sound_in_player(MUSIC_PLAYER_2, &s_menu_cursor1_seqData);

    if (gStudioInfo->menuState == 4) {
        isMoveState = TRUE;
    }

    if (gStudioInfo->menuState == 5) {
        isMoveState = TRUE;
    }

    if (isMoveState) {
        if (current == gStudioInfo->selectedItem) {
            listbox_set_sel_sprite(gStudioInfo->songList, anim_studio_selection_item);
        } else if (current < gStudioInfo->selectedItem) {
            listbox_set_sel_sprite(gStudioInfo->songList, anim_studio_item_move_above);
        } else {
            listbox_set_sel_sprite(gStudioInfo->songList, anim_studio_item_move_below);
        }
    }
}


// Song List - Init.
void studio_song_list_init(s32 state, s32 selItem, s32 selLine) {
    gStudioInfo->songListState = state;
    gStudioInfo->songList = create_new_listbox(
            get_current_mem_id(), 10, 128, 32, 0, 1, 3, 118, 16, 0x8800, 16,
            selItem, D_030046a8->data.totalSongs, anim_studio_selection_item, 2, 6, selLine,
            studio_song_list_get_string, studio_song_list_get_sprite);
    listbox_run_func_on_scroll(gStudioInfo->songList, studio_song_list_on_scroll, 0);
}


// Song List - Update
void studio_song_list_update(void) {
    s32 songItem, optionItem;
    s32 event = LIST_EV_NONE;

    if (!listbox_is_busy(gStudioInfo->songList) && studio_scene_can_receive_inputs()) {
        if (D_03004afc & A_BUTTON) {
            event = LIST_EV_CONFIRM;
        }
        if (D_03004afc & B_BUTTON) {
            event = LIST_EV_CANCEL;
        }
        if (D_030053b8 & DPAD_UP) {
            event = LIST_EV_SCROLL_UP;
        }
        if (D_030053b8 & DPAD_DOWN) {
            event = LIST_EV_SCROLL_DOWN;
        }
        if (D_03004afc & LEFT_SHOULDER_BUTTON) {
            event = LIST_EV_MOVE_ITEM;
        }
        if (D_03004afc & RIGHT_SHOULDER_BUTTON) {
            event = LIST_EV_CHECK_ITEM;
        }
    }

    switch (event) {
        case LIST_EV_CONFIRM:
            stop_sound(&s_studio_bgm_seqData);
            play_sound_in_player(MUSIC_PLAYER_2, &s_menu_kettei2_seqData);

            songItem = listbox_get_sel_item(gStudioInfo->songList);
            studio_scene_play_music(songItem);
            optionItem = listbox_get_sel_item(gStudioInfo->optionList);
            delete_listbox(gStudioInfo->optionList);

            if (D_030046a8->data.studioSongs[songItem].replayID < 0) {
                studio_option_list_init(FALSE, optionItem);
            } else {
                if (optionItem == OPTION_DELETE) {
                    optionItem = OPTION_LISTEN;
                }
                studio_option_list_init(TRUE, optionItem);
            }

            listbox_hide_sel_sprite(gStudioInfo->songList);
            listbox_show_sel_sprite(gStudioInfo->optionList);
            studio_scene_pan_to_menu(MENU_OPTION_LIST);
            gStudioInfo->menuState = STATE_NAV_OPTION_LIST;
            break;

        case LIST_EV_CANCEL:
            play_sound_in_player(MUSIC_PLAYER_2, &s_menu_cancel3_seqData);
            listbox_hide_sel_sprite(gStudioInfo->songList);
            func_0801d968(script_scene_studio_exit);
            gStudioInfo->scriptIsReady = FALSE;
            break;

        case LIST_EV_SCROLL_UP:
            listbox_scroll_up(gStudioInfo->songList);
            break;

        case LIST_EV_SCROLL_DOWN:
            listbox_scroll_down(gStudioInfo->songList);
            break;

        case LIST_EV_MOVE_ITEM:
            play_sound_in_player(MUSIC_PLAYER_2, &s_menu_kettei2_seqData);
            gStudioInfo->selectedItem = listbox_get_sel_item(gStudioInfo->songList);
            listbox_link_sprite_x_y_to_line(gStudioInfo->songList, gStudioInfo->itemMoveHighlight, gStudioInfo->selectedItem);
            func_0804d770(D_03005380, gStudioInfo->itemMoveHighlight, TRUE);
            gStudioInfo->menuState = STATE_EDIT_VIA_SONG_LIST;
            break;

        case LIST_EV_CHECK_ITEM:
            songItem = listbox_get_sel_item(gStudioInfo->songList);
            if ((D_030046a8->data.studioSongs[songItem].songID == STUDIO_SONG_SILENCE)
              && ((D_030046a8->data.studioSongs[songItem].unk3 & 1) == 0)) {
                play_sound_in_player(MUSIC_PLAYER_2, &s_menu_error_seqData);
            } else {
                D_030046a8->data.studioSongs[songItem].unk3 ^= 2;
                func_0800b454(gStudioInfo->songList, songItem);
                if (D_030046a8->data.studioSongs[songItem].unk3 & 2) {
                    play_sound_in_player(MUSIC_PLAYER_2, &s_menu_cancel3_seqData);
                } else {
                    play_sound_in_player(MUSIC_PLAYER_2, &s_menu_kettei2_seqData);
                }
            }
            break;
    }
}


// Song List - Select Item
void studio_song_list_select_item(s32 id) {
    studio_set_current_song(id, clamp_int32(id, 0, 5));
}


// Song List - Move Item
void studio_song_list_move_item(s32 prevIndex, s32 newIndex) {
    s32 first, last;
    s32 i;

    move_studio_song(prevIndex, newIndex);

    if (prevIndex < newIndex) {
        first = prevIndex;
        last = newIndex;
    } else {
        last = prevIndex;
        first = newIndex;
    }

    for (i = first; i <= last; i++) {
        func_0800b454(gStudioInfo->songList, i);
    }
}


// Song List - Update (Moving Selected Item)
void studio_song_list_update_w_selection(void) {
    s32 songItem;
    u32 event = LIST_EV_NONE;

    if (!listbox_is_busy(gStudioInfo->songList) && studio_scene_can_receive_inputs()) {
        if (D_03004afc & LEFT_SHOULDER_BUTTON) {
            event = LIST_EV_CONFIRM;
        }
        if (D_03004afc & B_BUTTON) {
            event = LIST_EV_CANCEL;
        }
        if (D_030053b8 & DPAD_UP) {
            event = LIST_EV_SCROLL_UP;
        }
        if (D_030053b8 & DPAD_DOWN) {
            event = LIST_EV_SCROLL_DOWN;
        }
    }

    switch (event) {
        case LIST_EV_CONFIRM:
            songItem = listbox_get_sel_item(gStudioInfo->songList);
            if (songItem != gStudioInfo->selectedItem) {
                studio_song_list_move_item(gStudioInfo->selectedItem, songItem);
                play_sound_in_player(MUSIC_PLAYER_2, &s_menu_kettei2_seqData);
                func_0804d770(D_03005380, gStudioInfo->itemMoveHighlight, FALSE);
                listbox_set_sel_sprite(gStudioInfo->songList, anim_studio_selection_item);
                gStudioInfo->menuState = STATE_NAV_SONG_LIST;
                break;
            }

        case LIST_EV_CANCEL:
            play_sound_in_player(MUSIC_PLAYER_2, &s_menu_cancel3_seqData);
            func_0804d770(D_03005380, gStudioInfo->itemMoveHighlight, FALSE);
            listbox_set_sel_sprite(gStudioInfo->songList, anim_studio_selection_item);
            gStudioInfo->menuState = STATE_NAV_SONG_LIST;
            break;

        case LIST_EV_SCROLL_UP:
            listbox_scroll_up(gStudioInfo->songList);
            break;

        case LIST_EV_SCROLL_DOWN:
            listbox_scroll_down(gStudioInfo->songList);
            break;
    }
}


// Drum Kit List - Get String
const char *studio_drum_list_get_string(s32 line) {
    char numString[0x10];

    if ((line < 0) || (line >= 15)) {
        return NULL;
    }

    strint(numString, line + 1);
    memcpy(gStudioInfo->string, text_studio_kit_default, 1);
    strcat(gStudioInfo->string, text_studio_kit_pad_8px);

    if (D_030046a8->data.drumKitsUnlocked[line]) {
        strcat(gStudioInfo->string, studio_drum_kit_names[line]);
    } else {
        strcat(gStudioInfo->string, text_studio_kit_not_unlocked);
    }

    return gStudioInfo->string;
}


// Drum Kit List - On Scroll
void studio_drum_list_on_scroll(s32 arg, u32 current, u32 previous) {
    play_sound_in_player(MUSIC_PLAYER_2, &s_menu_cursor1_seqData);
}


// Drum Kit List - Init.
void studio_drum_list_init(s32 state, s32 selItem, s32 selLine) {
    gStudioInfo->drumListState = state;
    gStudioInfo->drumList = create_new_listbox(
            get_current_mem_id(), 10, 128, 22, 0, 1, 3, 358, 16, 0x8800, 16,
            selItem, 15, anim_studio_selection_item, 2, 6, clamp_int32(selLine, 0, 5),
            studio_drum_list_get_string, NULL);
    listbox_run_func_on_scroll(gStudioInfo->drumList, studio_drum_list_on_scroll, 0);
}


// Drum Kit List - Exit to Listening Scene
void studio_drum_list_exit_to_drumming(void) {
    const struct Scene *scene;
    s32 songItem, drumItem;

    func_080006f0(get_scene_trans_target(&scene_studio), 1);

    songItem = listbox_get_sel_item(gStudioInfo->songList);
    drumItem = listbox_get_sel_item(gStudioInfo->drumList);
    studio_set_current_kit(drumItem);
    set_next_scene(&D_089d49d4);
    set_scene_trans_target(&D_089d49d4, &scene_studio);
    set_scene_trans_var(&D_089d49d4, songItem);
    func_0801d968(script_scene_studio_exit);
    gStudioInfo->scriptIsReady = FALSE;
}


// Drum Kit List - End of Memory Warning
void studio_drum_list_warning_memory_result(s32 event, s32 arg) {
    if (event == 1) {
        studio_drum_list_exit_to_drumming();
    } else {
        gStudioInfo->menuState = STATE_NAV_DRUM_LIST;
    }
}


// Drum Kit List - Update
void studio_drum_list_update(void) {
    struct TengokuSaveData *saveBuffer;
    u32 remaining, warningReason;
    u32 event = LIST_EV_NONE;

    if (!listbox_is_busy(gStudioInfo->drumList) && studio_scene_can_receive_inputs()) {
        if (D_03004afc & A_BUTTON) {
            event = LIST_EV_CONFIRM;
        }
        if (D_03004afc & B_BUTTON) {
            event = LIST_EV_CANCEL;
        }
        if (D_030053b8 & DPAD_UP) {
            event = LIST_EV_SCROLL_UP;
        }
        if (D_030053b8 & DPAD_DOWN) {
            event = LIST_EV_SCROLL_DOWN;
        }
    }

    switch(event) {
        case LIST_EV_CONFIRM:
            if (!D_030046a8->data.drumKitsUnlocked[listbox_get_sel_item(gStudioInfo->drumList)]) {
                play_sound_in_player(MUSIC_PLAYER_2, &s_menu_error_seqData);
            } else {
                remaining = (u32)get_remaining_replay_data_space(&D_030046a8->data.drumReplaysAlloc) >> 8;
                if (remaining != 0) {
                    if (get_available_replay_data_id(&D_030046a8->data.drumReplaysAlloc) < 0) {
                        warningReason = 2;
                    } else if (remaining < 10) {
                        warningReason = 3;
                    } else {
                        warningReason = 0;
                    }
                } else {
                    warningReason = 1;
                }
                if (warningReason != 0) {
                    studio_warning_create(WARNING_OPT_Y, studio_mem_warnings_text[warningReason], studio_drum_list_warning_memory_result, 0, &s_menu_se24_seqData);
                    play_sound_in_player(MUSIC_PLAYER_2, &s_menu_kettei2_seqData);
                } else {
                    studio_drum_list_exit_to_drumming();
                    play_sound_in_player(MUSIC_PLAYER_2, &s_menu_se24_seqData);
                }
            }
            break;

        case LIST_EV_CANCEL:
            play_sound_in_player(MUSIC_PLAYER_2, &s_menu_cancel3_seqData);
            listbox_hide_sel_sprite(gStudioInfo->drumList);
            listbox_show_sel_sprite(gStudioInfo->optionList);
            studio_scene_pan_to_menu(MENU_OPTION_LIST);
            gStudioInfo->menuState = STATE_NAV_OPTION_LIST;
            break;

        case LIST_EV_SCROLL_UP:
            listbox_scroll_up(gStudioInfo->drumList);
            break;

        case LIST_EV_SCROLL_DOWN:
            listbox_scroll_down(gStudioInfo->drumList);
            break;
    }
}


// Option List - Get String
const char *studio_option_list_get_string(s32 line) {
    char numString[0x10];

    if ((line < 0) || (line >= studio_total_options[gStudioInfo->optionListState])) {
        return NULL;
    }

    strint(numString, line + 1);
    memcpy(gStudioInfo->string, text_studio_option_default, 1);
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
    gStudioInfo->menuState = STATE_NAV_OPTION_LIST;
}


// Option List - End of "Unchecked" Warning
void studio_option_list_warning_unchecked_result(s32 event, s32 arg) {
    if (event == 1) {
        studio_option_list_exit_to_listening();
    } else {
        gStudioInfo->menuState = STATE_NAV_OPTION_LIST;
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
        studio_scene_pan_to_menu(MENU_SONG_LIST);
        gStudioInfo->menuState = STATE_NAV_SONG_LIST;
        gStudioInfo->musicPlayer = play_sound(&s_studio_bgm_seqData);
    } else {
        gStudioInfo->menuState = STATE_NAV_OPTION_LIST;
    }
}


// Option List - Update
void studio_option_list_update(void) {
    s32 songItem, isValid;
    u32 event = LIST_EV_NONE;

    if (!listbox_is_busy(gStudioInfo->optionList) && studio_scene_can_receive_inputs()) {
        if (D_03004afc & A_BUTTON) {
            event = LIST_EV_CONFIRM;
        }
        if (D_03004afc & B_BUTTON) {
            event = LIST_EV_CANCEL;
        }
        if (D_030053b8 & DPAD_UP) {
            event = LIST_EV_SCROLL_UP;
        }
        if (D_030053b8 & DPAD_DOWN) {
            event = LIST_EV_SCROLL_DOWN;
        }
    }

    switch (event) {
        case LIST_EV_CONFIRM:
            if (listbox_get_sel_item(gStudioInfo->optionList) == OPTION_LISTEN) {
                if (studio_option_list_no_checked_songs()) {
                    studio_warning_create(WARNING_OPT_DISMISS, text_studio_warning_no_checks1, studio_option_list_warning_no_checks_result, 0, &s_menu_kettei2_seqData);
                    play_sound_in_player(MUSIC_PLAYER_2, &s_menu_kettei2_seqData);
                } else {
                    songItem = listbox_get_sel_item(gStudioInfo->songList);

                    if (D_030046a8->data.studioSongs[songItem].unk3 & 2) {
                        studio_warning_create(WARNING_OPT_Y, text_studio_warning_no_checks2, studio_option_list_warning_unchecked_result, 0, &s_menu_se24_seqData);
                        play_sound_in_player(MUSIC_PLAYER_2, &s_menu_kettei2_seqData);
                    } else {
                        studio_option_list_exit_to_listening();
                        play_sound_in_player(MUSIC_PLAYER_2, &s_menu_se24_seqData);
                    }
                }
            }

            if (listbox_get_sel_item(gStudioInfo->optionList) == OPTION_DRUM) {
                if (gStudioInfo->optionListState == 0) {
                    play_sound_in_player(MUSIC_PLAYER_2, &s_menu_kettei2_seqData);
                    listbox_hide_sel_sprite(gStudioInfo->optionList);
                    listbox_show_sel_sprite(gStudioInfo->drumList);
                    studio_scene_pan_to_menu(MENU_DRUM_LIST);
                    gStudioInfo->menuState = STATE_NAV_DRUM_LIST;
                } else {
                    play_sound_in_player(MUSIC_PLAYER_2, &s_menu_kettei2_seqData);
                    studio_warning_create(WARNING_OPT_N, text_studio_warning_delete, studio_option_list_warning_deletion_result, 0, &s_menu_se13_seqData);
                }
            }

            if (listbox_get_sel_item(gStudioInfo->optionList) == OPTION_SORT) {
                play_sound_in_player(MUSIC_PLAYER_2, &s_menu_kettei2_seqData);
                listbox_hide_sel_sprite(gStudioInfo->optionList);
                listbox_show_sel_sprite(gStudioInfo->songList);
                gStudioInfo->selectedItem = listbox_get_sel_item(gStudioInfo->songList);
                listbox_link_sprite_x_y_to_line(gStudioInfo->songList, gStudioInfo->itemMoveHighlight, gStudioInfo->selectedItem);
                func_0804d770(D_03005380, gStudioInfo->itemMoveHighlight, TRUE);
                gStudioInfo->menuState = STATE_EDIT_VIA_OPTION_LIST;
            }

            if (listbox_get_sel_item(gStudioInfo->optionList) == OPTION_MARK) {
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

        case LIST_EV_CANCEL:
            play_sound_in_player(MUSIC_PLAYER_2, &s_menu_cancel3_seqData);
            studio_scene_clear_music();
            listbox_hide_sel_sprite(gStudioInfo->optionList);
            listbox_show_sel_sprite(gStudioInfo->songList);
            studio_scene_pan_to_menu(MENU_SONG_LIST);
            gStudioInfo->musicPlayer = play_sound(&s_studio_bgm_seqData);
            gStudioInfo->menuState = STATE_NAV_SONG_LIST;
            break;

        case LIST_EV_SCROLL_UP:
            listbox_scroll_up(gStudioInfo->optionList);
            break;

        case LIST_EV_SCROLL_DOWN:
            listbox_scroll_down(gStudioInfo->optionList);
            break;
    }
}


// Option List - Update (Moving Item)
void studio_option_list_update_w_selection(void) {
    s32 songItem;
    u32 event = LIST_EV_NONE;

    if (!listbox_is_busy(gStudioInfo->songList) && studio_scene_can_receive_inputs()) {
        if (D_03004afc & A_BUTTON) {
            event = LIST_EV_CONFIRM;
        }
        if (D_03004afc & B_BUTTON) {
            event = LIST_EV_CANCEL;
        }
        if (D_030053b8 & DPAD_UP) {
            event = LIST_EV_SCROLL_UP;
        }
        if (D_030053b8 & DPAD_DOWN) {
            event = LIST_EV_SCROLL_DOWN;
        }
    }

    switch(event) {
        case LIST_EV_CONFIRM:
            songItem = listbox_get_sel_item(gStudioInfo->songList);
            if (songItem != gStudioInfo->selectedItem) {
                studio_song_list_move_item(gStudioInfo->selectedItem, songItem);
                play_sound_in_player(MUSIC_PLAYER_2, &s_menu_kettei2_seqData);
                func_0804d770(D_03005380, gStudioInfo->itemMoveHighlight, FALSE);
                listbox_set_sel_sprite(gStudioInfo->songList, anim_studio_selection_item);
                listbox_show_sel_sprite(gStudioInfo->optionList);
                listbox_hide_sel_sprite(gStudioInfo->songList);
                gStudioInfo->menuState = STATE_NAV_OPTION_LIST;
                break;
            }

        case LIST_EV_CANCEL:
            play_sound_in_player(MUSIC_PLAYER_2, &s_menu_cancel3_seqData);
            func_0804d770(D_03005380, gStudioInfo->itemMoveHighlight, FALSE);
            listbox_set_sel_sprite(gStudioInfo->songList, anim_studio_selection_item);
            listbox_show_sel_sprite(gStudioInfo->optionList);
            listbox_hide_sel_sprite(gStudioInfo->songList);
            gStudioInfo->menuState = STATE_NAV_OPTION_LIST;
            break;

        case LIST_EV_SCROLL_UP:
            listbox_scroll_up(gStudioInfo->songList);
            break;

        case LIST_EV_SCROLL_DOWN:
            listbox_scroll_down(gStudioInfo->songList);
            break;
    }
}


// Init. Static Variables
void studio_scene_init_static_var(void) {
    sCurrentDrumKit = 0;
    sListSongSelItem = 0;
    sListSongSelLine = 0;
    sListOptionSelItem = 0;
    sListDrumSelItem = 0;
    sListDrumSelLine = 0;
}


// Graphics Init. 4
void studio_scene_init_gfx4(void) {
    gStudioInfo->replayMemoryGraph = create_new_replay_memory_graph(get_current_mem_id(), &D_030046a8->data.drumReplaysAlloc, 128, 5);
    update_replay_memory_graph_data_bars(gStudioInfo->replayMemoryGraph);
    show_replay_memory_graph(gStudioInfo->replayMemoryGraph, TRUE);
    set_pause_beatscript_scene(FALSE);
}


// Graphics Init. 3
void studio_scene_init_gfx3(void) {
    s32 task;

    func_0800c604(0);
    task = start_new_texture_loader(get_current_mem_id(), studio_buffered_textures);
    run_func_after_task(task, studio_scene_init_gfx4, 0);
}


// Graphics Init. 2
void studio_scene_init_gfx2(void) {
    s32 task;

    func_0800c604(0);
    task = func_08002ee0(get_current_mem_id(), studio_gfx_table, 0x3000);
    run_func_after_task(task, studio_scene_init_gfx3, 0);
}


// Graphics Init. 1
void studio_scene_init_gfx1(void) {
    schedule_function_call(get_current_mem_id(), studio_scene_init_gfx2, 0, 2);
    scene_show_obj_layer();
    scene_set_bg_layer_display(BG_LAYER_0, FALSE, 0, 0, 0, 28, 0x4000 | BGCNT_PRIORITY(0));
    scene_set_bg_layer_display(BG_LAYER_1, TRUE, 0, 0, 0, 29, 0x4000 | BGCNT_PRIORITY(1));
}


// Scene Start
void studio_scene_start(void *sceneVar, s32 dataArg) {
    s32 entryPoint;
    s16 graph;

    entryPoint = get_current_scene_trans_var();
    func_08007324(FALSE);
    func_080073f0();
    studio_scene_init_gfx1();
    init_drumtech(&gStudioInfo->drumTech);
    studio_song_list_init(0, sListSongSelItem, sListSongSelLine);
    studio_option_list_init(0, sListOptionSelItem);
    studio_drum_list_init(0, sListDrumSelItem, sListDrumSelLine);

    switch (entryPoint) {
        case 1:
            gStudioInfo->menuState = STATE_NAV_DRUM_LIST;
            listbox_hide_sel_sprite(gStudioInfo->songList);
            listbox_hide_sel_sprite(gStudioInfo->optionList);
            listbox_show_sel_sprite(gStudioInfo->drumList);
            studio_scene_set_current_menu(MENU_DRUM_LIST);
            break;

        case 0:
        default:
            gStudioInfo->menuState = STATE_NAV_SONG_LIST;
            listbox_show_sel_sprite(gStudioInfo->songList);
            listbox_hide_sel_sprite(gStudioInfo->optionList);
            listbox_hide_sel_sprite(gStudioInfo->drumList);
            studio_scene_set_current_menu(MENU_SONG_LIST);
            break;
    }

    gStudioInfo->unk380 = 0;
    gStudioInfo->unk384 = 0;
    gStudioInfo->unk388 = 0;
    gStudioInfo->itemMoveHighlight = func_0804d160(D_03005380, anim_studio_item_move_highlight, 0, 64, 64, 0x8864, 0, 0, 0x8000);
    gStudioInfo->replayDrumKit = STUDIO_DRUM_STANDARD;
    studio_warning_init();
    gStudioInfo->musicPlayer = play_sound(&s_studio_bgm_seqData);
    graph = func_0804d160(D_03005380, anim_studio_graphs_l, 0, 77, 66, 0x4800, 1, 0, 0);
    func_0804db44(D_03005380, graph, &D_03004b10.BG_OFS[BG_LAYER_1].x, &D_03004b10.BG_OFS[BG_LAYER_1].y);
    graph = func_0804d160(D_03005380, anim_studio_graph_r, 0, 320, 130, 0x4800, 1, 0, 0);
    func_0804db44(D_03005380, graph, &D_03004b10.BG_OFS[BG_LAYER_1].x, &D_03004b10.BG_OFS[BG_LAYER_1].y);
    gStudioInfo->scriptIsReady = FALSE;
    gStudioInfo->replaySeq = mem_heap_alloc_id(get_current_mem_id(), 0x3800);
}


// Get Currently Selected Drum Kit (Index)
s32 studio_get_current_kit(void) {
    return sCurrentDrumKit;
}


// Set Currently Selected Drum Kit (Index)
void studio_set_current_kit(s32 id) {
    sCurrentDrumKit = id;
}


// Set Currently Selected Song (Index)
void studio_set_current_song(s32 id, s32 line) {
    sListSongSelItem = id;
    sListSongSelLine = line;
}


// Save List Positions
void studio_remember_list_positions(void) {
    s32 songItem, songLine;

    songItem = listbox_get_sel_item(gStudioInfo->songList);
    songLine = listbox_get_sel_line(gStudioInfo->songList);
    studio_set_current_song(songItem, songLine);

    sListOptionSelItem = listbox_get_sel_item(gStudioInfo->optionList);
    sListDrumSelItem = listbox_get_sel_item(gStudioInfo->drumList);
    sListDrumSelLine = listbox_get_sel_line(gStudioInfo->drumList);
}


// Scene Update (Paused)
void studio_scene_paused(void *sceneVar, s32 dataArg) {
}


// Update Menu Scrolling
void studio_scene_update_panning(void) {
    u32 busy = FALSE;
    s16 x;

    if (listbox_is_busy(gStudioInfo->songList)) {
        busy = TRUE;
    }

    if (listbox_is_busy(gStudioInfo->optionList)) {
        busy = TRUE;
    }

    if (listbox_is_busy(gStudioInfo->drumList)) {
        busy = TRUE;
    }

    if (!busy) {
        gStudioInfo->panProgress = FIXED_POINT_MUL(gStudioInfo->panProgress, 200);
    }

    x = math_lerp(gStudioInfo->panStartX, gStudioInfo->panTargetX, INT_TO_FIXED(1.0) - gStudioInfo->panProgress, INT_TO_FIXED(1.0));
    D_03004b10.BG_OFS[BG_LAYER_1].x = x;

    listbox_offset_x_y(gStudioInfo->songList, x, 0);
    listbox_offset_x_y(gStudioInfo->drumList, x, 0);
    listbox_offset_x_y(gStudioInfo->optionList, x, 0);
}


// Set Current Menu
void studio_scene_set_current_menu(u32 menu) {
    gStudioInfo->panTargetX = studio_menu_x_ofs[menu];
    gStudioInfo->panStartX = studio_menu_x_ofs[menu];
    gStudioInfo->panProgress = 0;
    gStudioInfo->currentMenu = menu;
}


// Pan Screen to Menu
void studio_scene_pan_to_menu(u32 menu) {
    gStudioInfo->panStartX = gStudioInfo->panTargetX;
    gStudioInfo->panTargetX = studio_menu_x_ofs[menu];
    gStudioInfo->panProgress = 0x100;
    gStudioInfo->currentMenu = menu;
}


// Start Music Playback
void studio_scene_play_music(s32 item) {
    struct StudioSongData *data;
    u32 length;

    data = &D_030046a8->data.studioSongs[item];

    if (data->unk3 & 1) {
        dma3_fill(0, gStudioInfo->replaySeq, 0x3800, 0x20, 0x200);
        set_studio_drummer_mode(STUDIO_DRUMMER_MODE_PLAYBACK);
        length = get_saved_replay_data(&D_030046a8->data.drumReplaysAlloc, data->replayID, gStudioInfo->replaySeq);
        key_rec_set_mode(3, 0x3FF, gStudioInfo->replaySeq, length / sizeof(u16));
        gStudioInfo->replayDrumKit = data->drumKitID;
    } else {
        set_studio_drummer_mode(STUDIO_DRUMMER_MODE_LISTEN);
    }

    gStudioInfo->drumScript = studio_song_table[data->songID].script;
    func_0801d978();
    func_0801d968(script_scene_studio_start_song);
}


// Reset Music Playback
void studio_scene_clear_music(void) {
    scene_stop_music();
    func_0801d978();
    func_0801d968(script_scene_studio_idle);
    key_rec_set_mode(0, 0x3FF, 0, 0);
}


// Update Nothing
void studio_scene_update_stub(void) {
}


// Scene Update
void studio_scene_update(void *sceneVar, s32 dataArg) {
    switch (gStudioInfo->menuState) {
        case STATE_NAV_SONG_LIST:
            studio_song_list_update();
            break;

        case STATE_EDIT_VIA_SONG_LIST:
            studio_song_list_update_w_selection();
            break;

        case STATE_NAV_OPTION_LIST:
            studio_option_list_update();
            break;

        case STATE_EDIT_VIA_OPTION_LIST:
            studio_option_list_update_w_selection();
            break;

        case STATE_NAV_DRUM_LIST:
            studio_drum_list_update();
            break;

        case STATE_WARNING_DISPLAY:
            studio_warning_update();
            break;
    }

    studio_scene_update_panning();
    studio_scene_update_stub();
    update_listbox(gStudioInfo->songList);
    update_listbox(gStudioInfo->optionList);
    update_listbox(gStudioInfo->drumList);
    func_08029cac(gStudioInfo->replayDrumKit, D_030046b8, D_03005378, D_030046b4);
    update_drumtech();
}


// Communicate with Script
u32 studio_scene_can_receive_inputs(void) {
    u32 busy;

    if (!gStudioInfo->scriptIsReady) {
        return FALSE;
    }

    busy = FALSE;

    if (listbox_is_busy(gStudioInfo->songList)) {
        busy = TRUE;
    }

    if (listbox_is_busy(gStudioInfo->optionList)) {
        busy = TRUE;
    }

    if (listbox_is_busy(gStudioInfo->drumList)) {
        busy = TRUE;
    }

    if (busy) {
        return FALSE;
    }

    return TRUE;
}


// Scene Stop
void studio_scene_stop(void *sceneVar, s32 dataArg) {
    func_08008628();
    func_08004058();
    studio_remember_list_positions();
    scene_flush_save_buffer();
}


// Get Studio Drummer Script (Script Function)
const struct Beatscript *get_studio_mus_script(void) {
    return gStudioInfo->drumScript;
}


// Fade Music Out (Script Function)
void fade_out_studio_mus(void) {
    fade_out_soundplayer(gStudioInfo->musicPlayer, 16);
}


// Set Studio Drummer Mode
void set_studio_drummer_mode(u32 mode) {
    sStudioDrummerMode = mode;
}


// Mute Selected Tracks (Script Function)
void mute_studio_mus_tracks(u32 tracks) {
    u32 targets = tracks;
    u32 volume = 0;

    if (sStudioDrummerMode == STUDIO_DRUMMER_MODE_LISTEN) {
        targets = 0;
    }

    D_030053c0.musicTrkTargets = targets;
    D_030053c0.musicTrkVolume = volume;
}


// Play Drumming Count-In SFX (Script Function)
void play_studio_mus_count_in(void) {
    if (sStudioDrummerMode == STUDIO_DRUMMER_MODE_RECORD) {
        play_sound(&s_intro_stick_seqData);
    }
}


// Get Studio Drummer Mode
u32 get_studio_drummer_mode(void) {
    return sStudioDrummerMode;
}


// Remix 7 Music - Remix 2 (Script Function)
void start_studio_mus_remix2(void) {
    struct SoundPlayer *player;

    player = play_sound_in_player(MUSIC_PLAYER_1, &L2_pat00_seqData);
    fade_in_soundplayer(player, beats_to_ticks(0x60));
}


// Remix 7 Music - Remix 1 (Script Function)
void start_studio_mus_remix7_end(void) {
    struct SoundPlayer *player;

    player = play_sound_in_player(MUSIC_PLAYER_1, &Lesson1_seqData);
    set_soundplayer_speed(player, 0x117);
}


// Remix 7 Music - Remix 1 (Script Function)
void slow_studio_mus_remix7_end(void) {
    struct SoundPlayer *player;

    player = get_soundplayer_by_sound(&Lesson1_seqData);
    set_soundplayer_speed(player, 0x100);
}


// Remix 7 Music - Remix 1 (Script Function)
void stop_studio_mus_remix7_end(void) {
    struct SoundPlayer *player;

    player = get_soundplayer_by_sound(&Lesson1_seqData);
    stop_soundplayer(player);
}
