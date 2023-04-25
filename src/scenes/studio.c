#include "global.h"
#include "studio.h"
#include "graphics/studio/studio_graphics.h"

asm(".include \"include/gba.inc\"");//Temporary


// For readability.
#define gStudioInfo ((struct StudioSceneInfo *)D_030046a4)

enum StudioOptionsEnum {
    OPTION_LISTEN,
    OPTION_DRUM,
    OPTION_SORT,
    OPTION_MARK,
    OPTION_DELETE = OPTION_DRUM
};

enum StudioListsEnum {
    SONGS_LIST,
    OPTIONS_LIST,
    DRUMS_LIST
};

enum StudioMenuEventsEnum {
    LIST_EV_NONE,
    LIST_EV_CONFIRM,
    LIST_EV_SCROLL_UP,
    LIST_EV_SCROLL_DOWN,
    LIST_EV_CANCEL,
    LIST_EV_MOVE_ITEM,
    LIST_EV_CHECK_ITEM
};

enum StudioWarningOptionsEnum {
    WARNING_OPT_DISMISS,
    WARNING_OPT_Y,
    WARNING_OPT_N
};


static u8 sCurrentDrumKit; // Selected Drum Kit ID
static u8 sListSongSelItem; // Song Item Index (Total)
static s8 sListSongSelLine; // Song Item Index (Screen)
static u8 sListOptionSelItem; // Option Item Index
static u8 sListDrumSelItem; // Drum Kit Item Index (Total)
static u8 sListDrumSelLine; // Drum Kit Item Index (Screen)
static s32 D_0300154c; // Studio Drumming Mode?

extern struct Scene D_089d4ba4; // Studio Drumming - Listening
extern struct Scene D_089d49d4; // Studio Drumming - Drumming


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
    gStudioInfo->menuState = 6;
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
            listbox_set_sel_sprite(gStudioInfo->songsList, anim_studio_selection_item);
        } else if (current < gStudioInfo->selectedItem) {
            listbox_set_sel_sprite(gStudioInfo->songsList, anim_studio_item_move_above);
        } else {
            listbox_set_sel_sprite(gStudioInfo->songsList, anim_studio_item_move_below);
        }
    }
}


// Song List - Init.
void studio_song_list_init(s32 arg, s32 index, s32 position) {
    gStudioInfo->unk364 = arg;
    gStudioInfo->songsList = create_new_listbox(
            get_current_mem_id(),
            10, 128, 32,
            0, 1, 3,
            118, 16, 0x8800,
            16, index, D_030046a8->data.totalSongs,
            anim_studio_selection_item, 2, 6, position,
            studio_song_list_get_string, studio_song_list_get_sprite);
    listbox_run_func_on_scroll(gStudioInfo->songsList, studio_song_list_on_scroll, 0);
}


// Song List - Update
void studio_song_list_update(void) {
    s32 songItem, optionItem;
    s32 event = LIST_EV_NONE;

    if (!listbox_is_busy(gStudioInfo->songsList) && studio_scene_can_receive_inputs()) {
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

            songItem = listbox_get_sel_item(gStudioInfo->songsList);
            func_0801c6fc(songItem);
            optionItem = listbox_get_sel_item(gStudioInfo->optionsList);
            delete_listbox(gStudioInfo->optionsList);

            if (D_030046a8->data.studioSongs[songItem].replayID < 0) {
                studio_option_list_init(FALSE, optionItem);
            } else {
                if (optionItem == OPTION_DELETE) {
                    optionItem = OPTION_LISTEN;
                }
                studio_option_list_init(TRUE, optionItem);
            }

            listbox_hide_sel_sprite(gStudioInfo->songsList);
            listbox_show_sel_sprite(gStudioInfo->optionsList);
            func_0801c6b8(OPTIONS_LIST);
            gStudioInfo->menuState = 2;
            break;

        case LIST_EV_CANCEL:
            play_sound_in_player(MUSIC_PLAYER_2, &s_menu_cancel3_seqData);
            listbox_hide_sel_sprite(gStudioInfo->songsList);
            func_0801d968(script_scene_studio_exit);
            gStudioInfo->scriptIsReady = FALSE;
            break;

        case LIST_EV_SCROLL_UP:
            listbox_scroll_up(gStudioInfo->songsList);
            break;

        case LIST_EV_SCROLL_DOWN:
            listbox_scroll_down(gStudioInfo->songsList);
            break;

        case LIST_EV_MOVE_ITEM:
            play_sound_in_player(MUSIC_PLAYER_2, &s_menu_kettei2_seqData);
            gStudioInfo->selectedItem = listbox_get_sel_item(gStudioInfo->songsList);
            listbox_link_sprite_x_y_to_line(gStudioInfo->songsList, gStudioInfo->itemMoveHighlight, gStudioInfo->selectedItem);
            func_0804d770(D_03005380, gStudioInfo->itemMoveHighlight, TRUE);
            gStudioInfo->menuState = 4;
            break;

        case LIST_EV_CHECK_ITEM:
            songItem = listbox_get_sel_item(gStudioInfo->songsList);
            if ((D_030046a8->data.studioSongs[songItem].songID == STUDIO_SONG_SILENCE)
              && ((D_030046a8->data.studioSongs[songItem].unk3 & 1) == 0)) {
                play_sound_in_player(MUSIC_PLAYER_2, &s_menu_error_seqData);
            } else {
                D_030046a8->data.studioSongs[songItem].unk3 ^= 2;
                func_0800b454(gStudioInfo->songsList, songItem);
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
        func_0800b454(gStudioInfo->songsList, i);
    }
}


// Song List - Update (Moving Selected Item)
void studio_song_list_update_w_selection(void) {
    s32 songItem;
    u32 event = LIST_EV_NONE;

    if (!listbox_is_busy(gStudioInfo->songsList) && studio_scene_can_receive_inputs()) {
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
            songItem = listbox_get_sel_item(gStudioInfo->songsList);
            if (songItem != gStudioInfo->selectedItem) {
                studio_song_list_move_item(gStudioInfo->selectedItem, songItem);
                play_sound_in_player(MUSIC_PLAYER_2, &s_menu_kettei2_seqData);
                func_0804d770(D_03005380, gStudioInfo->itemMoveHighlight, FALSE);
                listbox_set_sel_sprite(gStudioInfo->songsList, anim_studio_selection_item);
                gStudioInfo->menuState = 1;
                break;
            }

        case LIST_EV_CANCEL:
            play_sound_in_player(MUSIC_PLAYER_2, &s_menu_cancel3_seqData);
            func_0804d770(D_03005380, gStudioInfo->itemMoveHighlight, FALSE);
            listbox_set_sel_sprite(gStudioInfo->songsList, anim_studio_selection_item);
            gStudioInfo->menuState = 1;
            break;

        case LIST_EV_SCROLL_UP:
            listbox_scroll_up(gStudioInfo->songsList);
            break;

        case LIST_EV_SCROLL_DOWN:
            listbox_scroll_down(gStudioInfo->songsList);
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


// Drum Kit List - On-Scroll
void studio_drum_list_on_scroll(s32 arg, u32 current, u32 previous) {
    play_sound_in_player(MUSIC_PLAYER_2, &s_menu_cursor1_seqData);
}


// Drum Kit List - Init.
void studio_drum_list_init(s32 arg, s32 index, s32 position) {
    gStudioInfo->unk36C = arg;
    gStudioInfo->drumsList = create_new_listbox(
            get_current_mem_id(),
            10, 128, 22,
            0, 1, 3,
            358, 16, 0x8800,
            16, index, 15,
            anim_studio_selection_item, 2, 6, clamp_int32(position, 0, 5),
            studio_drum_list_get_string, NULL);
    listbox_run_func_on_scroll(gStudioInfo->drumsList, studio_drum_list_on_scroll, 0);
}


// Drum Kit List - Exit to Listening Scene
void studio_drum_list_exit_to_drumming(void) {
    const struct Scene *scene;
    s32 songItem, drumItem;

    func_080006f0(get_scene_trans_target(&scene_studio), 1);

    songItem = listbox_get_sel_item(gStudioInfo->songsList);
    drumItem = listbox_get_sel_item(gStudioInfo->drumsList);
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
        gStudioInfo->menuState = 3;
    }
}


// Drum Kit List - Update
void studio_drum_list_update(void) {
    struct TengokuSaveData *saveBuffer;
    u32 remaining, warningReason;
    u32 event = LIST_EV_NONE;

    if (!listbox_is_busy(gStudioInfo->drumsList) && studio_scene_can_receive_inputs()) {
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
            if (!D_030046a8->data.drumKitsUnlocked[listbox_get_sel_item(gStudioInfo->drumsList)]) {
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
            listbox_hide_sel_sprite(gStudioInfo->drumsList);
            listbox_show_sel_sprite(gStudioInfo->optionsList);
            func_0801c6b8(OPTIONS_LIST);
            gStudioInfo->menuState = 2;
            break;

        case LIST_EV_SCROLL_UP:
            listbox_scroll_up(gStudioInfo->drumsList);
            break;

        case LIST_EV_SCROLL_DOWN:
            listbox_scroll_down(gStudioInfo->drumsList);
            break;
    }
}


// Option List - Get String
const char *studio_option_list_get_string(s32 line) {
    char numString[0x10];

    if ((line < 0) || (line >= D_089d8444[gStudioInfo->unk374])) {
        return NULL;
    }

    strint(numString, line + 1);
    memcpy(gStudioInfo->string, text_studio_option_default, 1);
    strcat(gStudioInfo->string, studio_options_text[gStudioInfo->unk374][line]);

    return gStudioInfo->string;
}


// Option List - On-Scroll
void studio_option_list_on_scroll(s32 arg, u32 current, u32 previous) {
    play_sound_in_player(MUSIC_PLAYER_2, &s_menu_cursor1_seqData);
}


// Option List - Init.
void studio_option_list_init(s32 arg, s32 index) {
    gStudioInfo->unk374 = arg;
    gStudioInfo->optionsList = create_new_listbox(
            get_current_mem_id(),
            4, 64, 12,
            0, 1, 3,
            264, 44, 0x8800,
            16, index, D_089d8444[arg],
            anim_studio_selection_option, 0, 4, clamp_int32(index, 0, 3),
            studio_option_list_get_string, NULL);
    listbox_run_func_on_scroll(gStudioInfo->optionsList, studio_option_list_on_scroll, 0);
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

    songItem = listbox_get_sel_item(gStudioInfo->songsList);
    set_next_scene(&D_089d4ba4);
    set_scene_trans_target(&D_089d4ba4, &scene_studio);
    set_scene_trans_var(&D_089d4ba4, songItem);
    func_0801d968(script_scene_studio_exit);
    gStudioInfo->scriptIsReady = FALSE;
}


// Option List - End of "No Checks" Warning
void studio_option_list_warning_no_checks_result(s32 event, s32 arg) {
    gStudioInfo->menuState = 2;
}


// Option List - End of "Unchecked" Warning
void studio_option_list_warning_unchecked_result(s32 event, s32 arg) {
    if (event == 1) {
        studio_option_list_exit_to_listening();
    } else {
        gStudioInfo->menuState = 2;
    }
}


// Options List - End of "Delete" Warning
void studio_option_list_warning_deletion_result(s32 result, s32 arg) {
    s32 selItem, selLine;
    s32 totalSongs;

    if (result == 1) {
        selItem = listbox_get_sel_item(gStudioInfo->songsList);
        selLine = listbox_get_sel_line(gStudioInfo->songsList);
        delete_listbox(gStudioInfo->songsList);

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
        func_0801c7c0();
        listbox_hide_sel_sprite(gStudioInfo->optionsList);
        listbox_show_sel_sprite(gStudioInfo->songsList);
        func_0801c6b8(SONGS_LIST);
        gStudioInfo->menuState = 1;
        gStudioInfo->musicPlayer = play_sound(&s_studio_bgm_seqData);
    } else {
        gStudioInfo->menuState = 2;
    }
}


// Option List - Update
void studio_option_list_update(void) {
    s32 songItem, isValid;
    u32 event = LIST_EV_NONE;

    if (!listbox_is_busy(gStudioInfo->optionsList) && studio_scene_can_receive_inputs()) {
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
            if (listbox_get_sel_item(gStudioInfo->optionsList) == OPTION_LISTEN) {
                if (studio_option_list_no_checked_songs()) {
                    studio_warning_create(WARNING_OPT_DISMISS, text_studio_warning_no_checks1, studio_option_list_warning_no_checks_result, 0, &s_menu_kettei2_seqData);
                    play_sound_in_player(MUSIC_PLAYER_2, &s_menu_kettei2_seqData);
                } else {
                    songItem = listbox_get_sel_item(gStudioInfo->songsList);

                    if (D_030046a8->data.studioSongs[songItem].unk3 & 2) {
                        studio_warning_create(WARNING_OPT_Y, text_studio_warning_no_checks2, studio_option_list_warning_unchecked_result, 0, &s_menu_se24_seqData);
                        play_sound_in_player(MUSIC_PLAYER_2, &s_menu_kettei2_seqData);
                    } else {
                        studio_option_list_exit_to_listening();
                        play_sound_in_player(MUSIC_PLAYER_2, &s_menu_se24_seqData);
                    }
                }
            }

            if (listbox_get_sel_item(gStudioInfo->optionsList) == OPTION_DRUM) {
                if (gStudioInfo->unk374 == 0) {
                    play_sound_in_player(MUSIC_PLAYER_2, &s_menu_kettei2_seqData);
                    listbox_hide_sel_sprite(gStudioInfo->optionsList);
                    listbox_show_sel_sprite(gStudioInfo->drumsList);
                    func_0801c6b8(DRUMS_LIST);
                    gStudioInfo->menuState = 3;
                } else {
                    play_sound_in_player(MUSIC_PLAYER_2, &s_menu_kettei2_seqData);
                    studio_warning_create(WARNING_OPT_N, text_studio_warning_delete, studio_option_list_warning_deletion_result, 0, &s_menu_se13_seqData);
                }
            }

            if (listbox_get_sel_item(gStudioInfo->optionsList) == OPTION_SORT) {
                play_sound_in_player(MUSIC_PLAYER_2, &s_menu_kettei2_seqData);
                listbox_hide_sel_sprite(gStudioInfo->optionsList);
                listbox_show_sel_sprite(gStudioInfo->songsList);
                gStudioInfo->selectedItem = listbox_get_sel_item(gStudioInfo->songsList);
                listbox_link_sprite_x_y_to_line(gStudioInfo->songsList, gStudioInfo->itemMoveHighlight, gStudioInfo->selectedItem);
                func_0804d770(D_03005380, gStudioInfo->itemMoveHighlight, TRUE);
                gStudioInfo->menuState = 5;
            }

            if (listbox_get_sel_item(gStudioInfo->optionsList) == OPTION_MARK) {
                songItem = listbox_get_sel_item(gStudioInfo->songsList);
                isValid = TRUE;

                if (D_030046a8->data.studioSongs[songItem].songID == STUDIO_SONG_SILENCE) {
                    if (!(D_030046a8->data.studioSongs[songItem].unk3 & 1)) {
                        isValid = FALSE;
                    }
                }

                if (isValid) {
                    D_030046a8->data.studioSongs[songItem].unk3 ^= 2;
                    func_0800b454(gStudioInfo->songsList, songItem);

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
            func_0801c7c0();
            listbox_hide_sel_sprite(gStudioInfo->optionsList);
            listbox_show_sel_sprite(gStudioInfo->songsList);
            func_0801c6b8(SONGS_LIST);
            gStudioInfo->musicPlayer = play_sound(&s_studio_bgm_seqData);
            gStudioInfo->menuState = 1;
            break;

        case LIST_EV_SCROLL_UP:
            listbox_scroll_up(gStudioInfo->optionsList);
            break;

        case LIST_EV_SCROLL_DOWN:
            listbox_scroll_down(gStudioInfo->optionsList);
            break;
    }
}


// Option List - Update (Moving Item)
void studio_option_list_update_w_selection(void) {
    s32 songItem;
    u32 event = LIST_EV_NONE;

    if (!listbox_is_busy(gStudioInfo->songsList) && studio_scene_can_receive_inputs()) {
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
            songItem = listbox_get_sel_item(gStudioInfo->songsList);
            if (songItem != gStudioInfo->selectedItem) {
                studio_song_list_move_item(gStudioInfo->selectedItem, songItem);
                play_sound_in_player(MUSIC_PLAYER_2, &s_menu_kettei2_seqData);
                func_0804d770(D_03005380, gStudioInfo->itemMoveHighlight, FALSE);
                listbox_set_sel_sprite(gStudioInfo->songsList, anim_studio_selection_item);
                listbox_show_sel_sprite(gStudioInfo->optionsList);
                listbox_hide_sel_sprite(gStudioInfo->songsList);
                gStudioInfo->menuState = 2;
                break;
            }

        case LIST_EV_CANCEL:
            play_sound_in_player(MUSIC_PLAYER_2, &s_menu_cancel3_seqData);
            func_0804d770(D_03005380, gStudioInfo->itemMoveHighlight, FALSE);
            listbox_set_sel_sprite(gStudioInfo->songsList, anim_studio_selection_item);
            listbox_show_sel_sprite(gStudioInfo->optionsList);
            listbox_hide_sel_sprite(gStudioInfo->songsList);
            gStudioInfo->menuState = 2;
            break;

        case LIST_EV_SCROLL_UP:
            listbox_scroll_up(gStudioInfo->songsList);
            break;

        case LIST_EV_SCROLL_DOWN:
            listbox_scroll_down(gStudioInfo->songsList);
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
            gStudioInfo->menuState = 3;
            listbox_hide_sel_sprite(gStudioInfo->songsList);
            listbox_hide_sel_sprite(gStudioInfo->optionsList);
            listbox_show_sel_sprite(gStudioInfo->drumsList);
            func_0801c674(2);
            break;

        case 0:
        default:
            gStudioInfo->menuState = 1;
            listbox_show_sel_sprite(gStudioInfo->songsList);
            listbox_hide_sel_sprite(gStudioInfo->optionsList);
            listbox_hide_sel_sprite(gStudioInfo->drumsList);
            func_0801c674(0);
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


#include "asm/studio/asm_0801c530.s"


// Scene Update (Paused)
void studio_scene_paused(void *sceneVar, s32 dataArg) {
}


#include "asm/studio/asm_0801c5a4.s"

#include "asm/studio/asm_0801c674.s"

#include "asm/studio/asm_0801c6b8.s"

#include "asm/studio/asm_0801c6fc.s"

#include "asm/studio/asm_0801c7c0.s"


// Update Nothing
void func_0801c7e8(void) {
}


// Scene Update
void studio_scene_update(void *sceneVar, s32 dataArg) {
    switch (gStudioInfo->menuState) {
        case 1:
            studio_song_list_update();
            break;
        case 4:
            studio_song_list_update_w_selection();
            break;
        case 2:
            studio_option_list_update();
            break;
        case 5:
            studio_option_list_update_w_selection();
            break;
        case 3:
            studio_drum_list_update();
            break;
        case 6:
            studio_warning_update();
            break;
    }

    func_0801c5a4();
    func_0801c7e8();
    update_listbox(gStudioInfo->songsList);
    update_listbox(gStudioInfo->optionsList);
    update_listbox(gStudioInfo->drumsList);
    func_08029cac(gStudioInfo->replayDrumKit, D_030046b8, D_03005378, D_030046b4);
    update_drumtech();
}


#include "asm/studio/asm_0801c8b8.s"


// Scene Stop
void studio_scene_stop(void *sceneVar, s32 dataArg) {
    func_08008628();
    func_08004058();
    func_0801c530();
    scene_flush_save_buffer();
}


#include "asm/studio/asm_0801c930.s"

#include "asm/studio/asm_0801c944.s"

#include "asm/studio/asm_0801c960.s"

#include "asm/studio/asm_0801c96c.s"

#include "asm/studio/asm_0801c99c.s"

#include "asm/studio/asm_0801c9b8.s"

#include "asm/studio/asm_0801c9c4.s"

#include "asm/studio/asm_0801c9ec.s"

#include "asm/studio/asm_0801ca08.s"

#include "asm/studio/asm_0801ca20.s"
