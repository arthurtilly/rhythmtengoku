#include "global.h"
#include "studio.h"
#include "graphics/studio/studio_graphics.h"


/* STUDIO SCENE */


static u8 sCurrentDrumKit; // Selected Drum Kit ID
static u8 sListSongSelItem; // Song Item Index (Total)
static s8 sListSongSelLine; // Song Item Index (Screen)
static u8 sListOptionSelItem; // Option Item Index
static u8 sListDrumSelItem; // Drum Kit Item Index (Total)
static u8 sListDrumSelLine; // Drum Kit Item Index (Screen)


// Init. Static Variables
void studio_scene_init_memory(void) {
    sCurrentDrumKit = 0;
    sListSongSelItem = 0;
    sListSongSelLine = 0;
    sListOptionSelItem = 0;
    sListDrumSelItem = 0;
    sListDrumSelLine = 0;
}


// Graphics Init. 4
void studio_scene_init_gfx4(void) {
    gStudio->replayMemoryGraph = create_new_replay_memory_graph(get_current_mem_id(), &D_030046a8->data.drumReplaysAlloc, 128, 5);
    update_replay_memory_graph_data_bars(gStudio->replayMemoryGraph);
    show_replay_memory_graph(gStudio->replayMemoryGraph, TRUE);
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
void studio_scene_start(void *sVar, s32 dArg) {
    s32 entryPoint;
    s16 graph;

    entryPoint = get_current_scene_trans_var();
    func_08007324(FALSE);
    func_080073f0();
    studio_scene_init_gfx1();
    init_drumtech(&gStudio->drumTech);
    studio_song_list_init(0, sListSongSelItem, sListSongSelLine);
    studio_option_list_init(0, sListOptionSelItem);
    studio_drum_list_init(0, sListDrumSelItem, sListDrumSelLine);

    switch (entryPoint) {
        case 1:
            gStudio->sceneState = STUDIO_STATE_NAV_DRUM_LIST;
            listbox_hide_sel_sprite(gStudio->songList);
            listbox_hide_sel_sprite(gStudio->optionList);
            listbox_show_sel_sprite(gStudio->drumList);
            studio_scene_set_current_menu(STUDIO_MENU_DRUM_LIST);
            break;

        case 0:
        default:
            gStudio->sceneState = STUDIO_STATE_NAV_SONG_LIST;
            listbox_show_sel_sprite(gStudio->songList);
            listbox_hide_sel_sprite(gStudio->optionList);
            listbox_hide_sel_sprite(gStudio->drumList);
            studio_scene_set_current_menu(STUDIO_MENU_SONG_LIST);
            break;
    }

    gStudio->unused380 = 0;
    gStudio->unused384 = 0;
    gStudio->unused388 = 0;
    gStudio->itemMoveHighlight = sprite_create(gSpriteHandler, anim_studio_item_move_highlight, 0, 64, 64, 0x8864, 0, 0, 0x8000);
    gStudio->replayDrumKit = STUDIO_DRUM_STANDARD;
    studio_warning_init();
    gStudio->musicPlayer = play_sound(&s_studio_bgm_seqData);
    graph = sprite_create(gSpriteHandler, anim_studio_graphs_l, 0, 77, 66, 0x4800, 1, 0, 0);
    sprite_set_origin_x_y(gSpriteHandler, graph, &D_03004b10.BG_OFS[BG_LAYER_1].x, &D_03004b10.BG_OFS[BG_LAYER_1].y);
    graph = sprite_create(gSpriteHandler, anim_studio_graph_r, 0, 320, 130, 0x4800, 1, 0, 0);
    sprite_set_origin_x_y(gSpriteHandler, graph, &D_03004b10.BG_OFS[BG_LAYER_1].x, &D_03004b10.BG_OFS[BG_LAYER_1].y);
    gStudio->inputsEnabled = FALSE;
    gStudio->replaySeq = mem_heap_alloc_id(get_current_mem_id(), 0x3800);
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

    songItem = listbox_get_sel_item(gStudio->songList);
    songLine = listbox_get_sel_line(gStudio->songList);
    studio_set_current_song(songItem, songLine);

    sListOptionSelItem = listbox_get_sel_item(gStudio->optionList);
    sListDrumSelItem = listbox_get_sel_item(gStudio->drumList);
    sListDrumSelLine = listbox_get_sel_line(gStudio->drumList);
}


// Scene Update (Paused)
void studio_scene_paused(void *sVar, s32 dArg) {
}


// Update Menu Scrolling
void studio_scene_update_panning(void) {
    u32 busy = FALSE;
    s16 x;

    if (listbox_is_busy(gStudio->songList)) {
        busy = TRUE;
    }

    if (listbox_is_busy(gStudio->optionList)) {
        busy = TRUE;
    }

    if (listbox_is_busy(gStudio->drumList)) {
        busy = TRUE;
    }

    if (!busy) {
        gStudio->panProgress = FIXED_POINT_MUL(gStudio->panProgress, 200);
    }

    x = math_lerp(gStudio->panStartX, gStudio->panTargetX, INT_TO_FIXED(1.0) - gStudio->panProgress, INT_TO_FIXED(1.0));
    D_03004b10.BG_OFS[BG_LAYER_1].x = x;

    listbox_offset_x_y(gStudio->songList, x, 0);
    listbox_offset_x_y(gStudio->drumList, x, 0);
    listbox_offset_x_y(gStudio->optionList, x, 0);
}


// Set Current Menu
void studio_scene_set_current_menu(u32 menu) {
    gStudio->panTargetX = studio_menu_x_ofs[menu];
    gStudio->panStartX = studio_menu_x_ofs[menu];
    gStudio->panProgress = 0;
    gStudio->currentMenu = menu;
}


// Pan Screen to Menu
void studio_scene_pan_to_menu(u32 menu) {
    gStudio->panStartX = gStudio->panTargetX;
    gStudio->panTargetX = studio_menu_x_ofs[menu];
    gStudio->panProgress = 0x100;
    gStudio->currentMenu = menu;
}


// Start Music Playback
void studio_scene_play_music(s32 item) {
    struct StudioSongData *data;
    u32 length;

    data = &D_030046a8->data.studioSongs[item];

    if (data->unk3 & 1) {
        dma3_fill(0, gStudio->replaySeq, 0x3800, 0x20, 0x200);
        set_studio_drummer_mode(STUDIO_DRUMMER_MODE_PLAYBACK);
        length = get_saved_replay_data(&D_030046a8->data.drumReplaysAlloc, data->replayID, gStudio->replaySeq);
        key_rec_set_mode(3, 0x3FF, gStudio->replaySeq, length / sizeof(u16));
        gStudio->replayDrumKit = data->drumKitID;
    } else {
        set_studio_drummer_mode(STUDIO_DRUMMER_MODE_LISTEN);
    }

    gStudio->drumScript = studio_song_table[data->songID].script;
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
void studio_scene_update(void *sVar, s32 dArg) {
    switch (gStudio->sceneState) {
        case STUDIO_STATE_NAV_SONG_LIST:
            studio_song_list_update();
            break;

        case STUDIO_STATE_EDIT_VIA_SONG_LIST:
            studio_song_list_update_w_selection();
            break;

        case STUDIO_STATE_NAV_OPTION_LIST:
            studio_option_list_update();
            break;

        case STUDIO_STATE_EDIT_VIA_OPTION_LIST:
            studio_option_list_update_w_selection();
            break;

        case STUDIO_STATE_NAV_DRUM_LIST:
            studio_drum_list_update();
            break;

        case STUDIO_STATE_WARNING_DISPLAY:
            studio_warning_update();
            break;
    }

    studio_scene_update_panning();
    studio_scene_update_stub();
    update_listbox(gStudio->songList);
    update_listbox(gStudio->optionList);
    update_listbox(gStudio->drumList);
    func_08029cac(gStudio->replayDrumKit, D_030046b8, D_03005378, D_030046b4);
    update_drumtech();
}


// Check if Scene Can Receive Inputs
u32 studio_scene_inputs_enabled(void) {
    u32 busy;

    if (!gStudio->inputsEnabled) {
        return FALSE;
    }

    busy = FALSE;

    if (listbox_is_busy(gStudio->songList)) {
        busy = TRUE;
    }

    if (listbox_is_busy(gStudio->optionList)) {
        busy = TRUE;
    }

    if (listbox_is_busy(gStudio->drumList)) {
        busy = TRUE;
    }

    if (busy) {
        return FALSE;
    }

    return TRUE;
}


// Scene Stop
void studio_scene_stop(void *sVar, s32 dArg) {
    func_08008628();
    func_08004058();
    studio_remember_list_positions();
    scene_flush_save_buffer();
}
