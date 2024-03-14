#include "global.h"
#include "debug_asset_test.h"


/* ASSET TEST SCENE */


// Init. Static Variables
void asset_test_scene_init_memory(void) {
}


// Graphics Init. 3
void asset_test_scene_init_gfx3(void) {
    s32 task;

    func_0800c604(0);
    task = start_new_texture_loader(get_current_mem_id(), asset_test_buffered_textures);
    run_func_after_task(task, set_pause_beatscript_scene, FALSE);
}


// Graphics Init. 2
void asset_test_scene_init_gfx2(void) {
    s32 task;

    func_0800c604(0);
    task = func_08002ee0(get_current_mem_id(), asset_test_gfx_table, 0x3000);
    run_func_after_task(task, asset_test_scene_init_gfx3, 0);
}


// Graphics Init. 1
void asset_test_scene_init_gfx1(void) {
    schedule_function_call(get_current_mem_id(), asset_test_scene_init_gfx2, 0, 2);
    scene_show_obj_layer();
    scene_set_bg_layer_display(BG_LAYER_1, TRUE, 0, 0, 0, 29, BG_PRIORITY_HIGH);
}


// Scene Start
void asset_test_scene_start(void *sVar, s32 dArg) {
    func_08007324(FALSE);
    func_080073f0();

    gAssetTest->bgFont = create_new_bmp_font_bg(get_current_mem_id(), bitmap_font_warioware_body, 0, 0x340, 6);
    gAssetTest->objFont = scene_create_obj_font_printer(0x300, 4);
    import_all_scene_objects(gSpriteHandler, gAssetTest->objFont, asset_test_scene_objects, D_0300558c);

    asset_test_scene_init_gfx1();
    gAssetTest->inputsEnabled = FALSE;
}


// Scene Update (Paused)
void asset_test_scene_paused(void *sVar, s32 dArg) {
}


// Scene Update (Active)
void asset_test_scene_update(void *sVar, s32 dArg) {
    if (!asset_test_scene_inputs_enabled()) {
        return;
    }

    if (D_03004afc & A_BUTTON) {
        func_08002ee0(get_current_mem_id(), asset_test_gfx_table_dupe, 0x8000);
    }

    if (D_030053b8 & B_BUTTON) {
        DmaCopy16(0, GameROMBase, VRAMBase, 0x10000);
        DmaCopy16(0, GameROMBase, VRAMBase, 0x10000);
        DmaCopy16(0, GameROMBase, VRAMBase, 0x10000);
        DmaCopy16(0, GameROMBase, VRAMBase, 0x10000);
        DmaCopy16(0, GameROMBase, VRAMBase, 0x10000);
        DmaCopy16(0, GameROMBase, VRAMBase, 0x10000);
        DmaCopy16(0, GameROMBase, VRAMBase, 0x10000);
        DmaCopy16(0, GameROMBase, VRAMBase, 0x10000);
        DmaCopy16(0, GameROMBase, VRAMBase, 0x10000);
        DmaCopy16(0, GameROMBase, VRAMBase, 0x10000);
        DmaCopy16(0, GameROMBase, VRAMBase, 0x10000);
        DmaCopy16(0, GameROMBase, VRAMBase, 0x10000);
        DmaCopy16(0, GameROMBase, VRAMBase, 0x10000);
        DmaCopy16(0, GameROMBase, VRAMBase, 0x10000);
        DmaCopy16(0, GameROMBase, VRAMBase, 0x10000);
        DmaCopy16(0, GameROMBase, VRAMBase, 0x10000);
        DmaCopy16(0, GameROMBase, VRAMBase, 0x10000);
        DmaCopy16(0, GameROMBase, VRAMBase, 0x10000);
        DmaCopy16(0, GameROMBase, VRAMBase, 0x10000);
        DmaCopy16(0, GameROMBase, VRAMBase, 0x10000);
        DmaCopy16(0, GameROMBase, VRAMBase, 0x10000);
        DmaCopy16(0, GameROMBase, VRAMBase, 0x10000);
        DmaCopy16(0, GameROMBase, VRAMBase, 0x10000);
        DmaCopy16(0, GameROMBase, VRAMBase, 0x10000);
        DmaCopy16(0, GameROMBase, VRAMBase, 0x10000);
        DmaCopy16(0, GameROMBase, VRAMBase, 0x10000);
        DmaCopy16(0, GameROMBase, VRAMBase, 0x10000);
    }

    if (D_03004ac0 & RIGHT_SHOULDER_BUTTON) {
        switch (agb_random(3)) {
            case 0:
                func_080041d0(0x60, 0x61, 0);
                break;

            case 1:
                func_08004058();
                break;
        }
    }

    if (D_03004afc & SELECT_BUTTON) {
        set_pause_beatscript_scene(FALSE);
        gAssetTest->inputsEnabled = FALSE;
    }
}


// Check if Scene Can Receive Inputs
u32 asset_test_scene_inputs_enabled(void) {
    if (gAssetTest->inputsEnabled) {
        return TRUE;
    }

    return FALSE;
}


// Scene Stop
void asset_test_scene_stop(void *sVar, s32 dArg) {
    func_08008628();
    func_08004058();
}
