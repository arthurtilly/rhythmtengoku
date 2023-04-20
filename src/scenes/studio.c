#include "global.h"
#include "studio.h"
#include "graphics/studio/studio_graphics.h"

asm(".include \"include/gba.inc\"");//Temporary


// For readability.
#define gStudioInfo ((struct StudioSceneInfo *)D_030046a4)

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

#include "asm/studio/asm_0801b138.s"

#include "asm/studio/asm_0801b1d8.s"

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
            func_0800b3e8(gStudioInfo->songsList);
            func_0800b3e8(gStudioInfo->optionsList);
            func_0800b3c8(gStudioInfo->drumsList);
            func_0801c674(2);
            break;

        case 0:
        default:
            gStudioInfo->menuState = 1;
            func_0800b3c8(gStudioInfo->songsList);
            func_0800b3e8(gStudioInfo->optionsList);
            func_0800b3e8(gStudioInfo->drumsList);
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
    func_0800b074(gStudioInfo->songsList);
    func_0800b074(gStudioInfo->optionsList);
    func_0800b074(gStudioInfo->drumsList);
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
