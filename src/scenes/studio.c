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

enum StudioSongsListEventsEnum {
    SONGS_LIST_DO_NOTHING,
    SONGS_LIST_CONFIRM,
    SONGS_LIST_SCROLL_UP,
    SONGS_LIST_SCROLL_DOWN,
    SONGS_LIST_EXIT,
    SONGS_LIST_MOVE_ITEM,
    SONGS_LIST_CHECK_ITEM
};


static u8 sCurrentDrumKit; // Selected Drum Kit ID
static u8 sListSongIndex; // Song Item Index (Total)
static s8 sListSongPosition; // Song Item Index (Screen)
static u8 sListOptionIndex; // Option Item Index
static u8 sListDrumIndex; // Drum Kit Item Index (Total)
static u8 sListDrumPosition; // Drum Kit Item Index (Screen)
static s32 D_0300154c; // unknown type


/* STUDIO */


#include "asm/studio/asm_0801a9c8.s"

#include "asm/studio/asm_0801aa04.s"

#include "asm/studio/asm_0801aaa0.s"

#include "asm/studio/asm_0801ac38.s"

#include "asm/studio/asm_0801ad44.s"

#include "asm/studio/asm_0801ad9c.s"

#include "asm/studio/asm_0801adf0.s"

#include "asm/studio/asm_0801ae34.s"

#include "asm/studio/asm_0801aea4.s"

#include "asm/studio/asm_0801aed0.s"

#include "asm/studio/asm_0801af64.s"

#include "asm/studio/asm_0801aff8.s"

#include "asm/studio/asm_0801b0b0.s"


// Init. Song List
void func_0801b138(s32 arg, s32 index, s32 position) {
    gStudioInfo->unk364 = arg;
    gStudioInfo->songsList = create_new_listbox(
            get_current_mem_id(),
            10, 128, 32,
            0, 1, 3,
            118, 16, 0x8800,
            16, index, D_030046a8->data.unkB2,
            anim_studio_selection_item, 2, 6, position,
            func_0801af64, func_0801aff8);
    listbox_run_func_on_scroll(gStudioInfo->songsList, func_0801b0b0, 0);
}


// Update (Menu State 1 - Song List)
void func_0801b1d8(void) {
    s32 songItem, optionItem;
    s32 event = SONGS_LIST_DO_NOTHING;

    if (!listbox_is_busy(gStudioInfo->songsList) && studio_scene_can_receive_inputs()) {
        if (D_03004afc & A_BUTTON) {
            event = SONGS_LIST_CONFIRM;
        }
        if (D_03004afc & B_BUTTON) {
            event = SONGS_LIST_EXIT;
        }
        if (D_030053b8 & DPAD_UP) {
            event = SONGS_LIST_SCROLL_UP;
        }
        if (D_030053b8 & DPAD_DOWN) {
            event = SONGS_LIST_SCROLL_DOWN;
        }
        if (D_03004afc & LEFT_SHOULDER_BUTTON) {
            event = SONGS_LIST_MOVE_ITEM;
        }
        if (D_03004afc & RIGHT_SHOULDER_BUTTON) {
            event = SONGS_LIST_CHECK_ITEM;
        }
    }

    switch (event) {
        case SONGS_LIST_CONFIRM:
            stop_sound(&s_studio_bgm_seqData);
            play_sound_in_player(MUSIC_PLAYER_2, &s_menu_kettei2_seqData);

            songItem = listbox_get_sel_item(gStudioInfo->songsList);
            func_0801c6fc(songItem);
            optionItem = listbox_get_sel_item(gStudioInfo->optionsList);
            delete_listbox(gStudioInfo->optionsList);

            if (D_030046a8->data.drumReplayData[songItem].saveID < 0) {
                func_0801ba74(FALSE, optionItem);
            } else {
                if (optionItem == OPTION_DELETE) {
                    optionItem = OPTION_LISTEN;
                }
                func_0801ba74(TRUE, optionItem);
            }

            listbox_hide_sel_sprite(gStudioInfo->songsList);
            listbox_show_sel_sprite(gStudioInfo->optionsList);
            func_0801c6b8(OPTIONS_LIST);
            gStudioInfo->menuState = 2;
            break;

        case SONGS_LIST_EXIT:
            play_sound_in_player(MUSIC_PLAYER_2, &s_menu_cancel3_seqData);
            listbox_hide_sel_sprite(gStudioInfo->songsList);
            func_0801d968(script_scene_studio_exit);
            gStudioInfo->unk358 = 0;
            break;

        case SONGS_LIST_SCROLL_UP:
            listbox_scroll_up(gStudioInfo->songsList);
            break;

        case SONGS_LIST_SCROLL_DOWN:
            listbox_scroll_down(gStudioInfo->songsList);
            break;

        case SONGS_LIST_MOVE_ITEM:
            play_sound_in_player(MUSIC_PLAYER_2, &s_menu_kettei2_seqData);
            gStudioInfo->selectedItem = listbox_get_sel_item(gStudioInfo->songsList);
            func_0800b408(gStudioInfo->songsList, gStudioInfo->itemMoveHighlight, gStudioInfo->selectedItem);
            func_0804d770(D_03005380, gStudioInfo->itemMoveHighlight, TRUE);
            gStudioInfo->menuState = 4;
            break;

        case SONGS_LIST_CHECK_ITEM:
            songItem = listbox_get_sel_item(gStudioInfo->songsList);
            if ((D_030046a8->data.drumReplayData[songItem].songID == STUDIO_SONG_SILENCE)
              && ((D_030046a8->data.drumReplayData[songItem].unk3 & 1) == 0)) {
                play_sound_in_player(MUSIC_PLAYER_2, &s_menu_error_seqData);
            } else {
                D_030046a8->data.drumReplayData[songItem].unk3 ^= 2;
                func_0800b454(gStudioInfo->songsList, songItem);
                if (D_030046a8->data.drumReplayData[songItem].unk3 & 2) {
                    play_sound_in_player(MUSIC_PLAYER_2, &s_menu_cancel3_seqData);
                } else {
                    play_sound_in_player(MUSIC_PLAYER_2, &s_menu_kettei2_seqData);
                }
            }
            break;
    }
}


#include "asm/studio/asm_0801b498.s"

#include "asm/studio/asm_0801b4b4.s"

#include "asm/studio/asm_0801b4f4.s"

#include "asm/studio/asm_0801b668.s"

#include "asm/studio/asm_0801b6fc.s"

#include "asm/studio/asm_0801b710.s"

#include "asm/studio/asm_0801b7b8.s"

#include "asm/studio/asm_0801b834.s"

#include "asm/studio/asm_0801b858.s"

#include "asm/studio/asm_0801b9ec.s"

#include "asm/studio/asm_0801ba60.s"

#include "asm/studio/asm_0801ba74.s"

#include "asm/studio/asm_0801bb24.s"

#include "asm/studio/asm_0801bb60.s"

#include "asm/studio/asm_0801bbd4.s"

#include "asm/studio/asm_0801bbe8.s"

#include "asm/studio/asm_0801bc0c.s"

#include "asm/studio/asm_0801bce0.s"

#include "asm/studio/asm_0801c028.s"


// Init. Static Variables
void studio_scene_init_static_var(void) {
    sCurrentDrumKit = 0;
    sListSongIndex = 0;
    sListSongPosition = 0;
    sListOptionIndex = 0;
    sListDrumIndex = 0;
    sListDrumPosition = 0;
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
    func_0801b138(0, sListSongIndex, sListSongPosition);
    func_0801ba74(0, sListOptionIndex);
    func_0801b710(0, sListDrumIndex, sListDrumPosition);

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
    func_0801aa04();
    gStudioInfo->musicPlayer = play_sound(&s_studio_bgm_seqData);
    graph = func_0804d160(D_03005380, anim_studio_graphs_l, 0, 77, 66, 0x4800, 1, 0, 0);
    func_0804db44(D_03005380, graph, &D_03004b10.BG_OFS[BG_LAYER_1].x, &D_03004b10.BG_OFS[BG_LAYER_1].y);
    graph = func_0804d160(D_03005380, anim_studio_graph_r, 0, 320, 130, 0x4800, 1, 0, 0);
    func_0804db44(D_03005380, graph, &D_03004b10.BG_OFS[BG_LAYER_1].x, &D_03004b10.BG_OFS[BG_LAYER_1].y);
    gStudioInfo->unk358 = 0;
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


#include "asm/studio/asm_0801c51c.s"

#include "asm/studio/asm_0801c530.s"


// Scene Update (Paused)
void studio_scene_paused(void *sceneVar, s32 dataArg) {
}


#include "asm/studio/asm_0801c5a4.s"

#include "asm/studio/asm_0801c674.s"

#include "asm/studio/asm_0801c6b8.s"

#include "asm/studio/asm_0801c6fc.s"

#include "asm/studio/asm_0801c7c0.s"

#include "asm/studio/asm_0801c7e8.s"


// Scene Update
void studio_scene_update(void *sceneVar, s32 dataArg) {
    switch (gStudioInfo->menuState) {
        case 1:
            func_0801b1d8();
            break;
        case 4:
            func_0801b4f4();
            break;
        case 2:
            func_0801bce0();
            break;
        case 5:
            func_0801c028();
            break;
        case 3:
            func_0801b858();
            break;
        case 6:
            func_0801aaa0();
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
    func_0800c484();
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
