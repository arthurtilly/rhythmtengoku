#include "global.h"
#include "epilogue.h"
#include "graphics/epilogues/epilogues_graphics.h"

#include "levels.h"
#include "src/scenes/game_select.h"
#include "src/scenes/results.h"
#include "src/scenes/studio.h"
#include "src/memory.h"
#include "src/code_08001360.h"
#include "src/bitmap_font.h"
#include "src/code_08007468.h"
#include "src/text_printer.h"
#include "src/code_0800b778.h"
#include "src/lib_0804ca80.h"


// For readability.
#define gEpilogueInfo ((struct EpilogueSceneInfo *)D_030046a4)

extern struct BitmapFontData bitmap_font_warioware_body[];
extern struct SequenceData s_menu_se20_seqData;


/* EPILOGUE */


// Init. Static Variables
void epilogue_scene_init_static_var(void) {
}


// Graphics Init. 3
void epilogue_scene_init_gfx3(void) {
    s32 task;

    func_0800c604(0);
    D_03004b10.objPalette[4][1] = 0x7FFF;
    play_sound(gEpilogueInfo->jingle);
    task = start_new_texture_loader(get_current_mem_id(), epilogue_buffered_textures);
    run_func_after_task(task, set_pause_beatscript_scene, FALSE);
}


// Graphics Init. 2
void epilogue_scene_init_gfx2(void) {
    s32 task;

    func_0800c604(0);
    task = func_08002ee0(get_current_mem_id(), gEpilogueInfo->gfxTable, 0x3000);
    run_func_after_task(task, epilogue_scene_init_gfx3, 0);
}


// Graphics Init. 1
void epilogue_scene_init_gfx1(void) {
    schedule_function_call(get_current_mem_id(), epilogue_scene_init_gfx2, 0, 2);
    scene_show_obj_layer();
    scene_set_bg_layer_display(BG_LAYER_1, TRUE, 0, 0, 0, 29, BGCNT_PRIORITY(1));
}


// Scene Start
void epilogue_scene_start(void *sceneVar, s32 dataArg) {
    struct LevelData *levelData;
    const char *text;
    u32 rank;

    levelData = (struct LevelData *)get_current_scene_trans_var();
    gEpilogueInfo->gfxTable = NULL;
    text = NULL;

    if ((levelData != NULL) && (levelData->epilogueGfx != NULL)) {
        if (levelData == &level_data_table[LEVEL_LIVE_MENU]) {
            rank = func_08026b18();
        } else {
            switch (D_030046a8->data.recentLevelState) {
                case LEVEL_STATE_CLEARED:
                    rank = RESULTS_RANK_OK;
                    break;
                case LEVEL_STATE_HAS_MEDAL:
                    rank = RESULTS_RANK_SUPERB;
                    break;
                default:
                    rank = RESULTS_RANK_TRY_AGAIN;
                    break;
            }
        }

        gEpilogueInfo->gfxTable = levelData->epilogueGfx[rank];
        if (levelData->epilogueText != NULL) {
            text = levelData->epilogueText[rank];
        }
        gEpilogueInfo->jingle = epilogue_jingles[rank];
    }

    if (gEpilogueInfo->gfxTable == NULL) {
        func_0801d95c(epilogue_end_script);
        return;
    }

    func_08007324(FALSE);
    func_080073f0();
    gEpilogueInfo->bgFont = create_new_bmp_font_bg(get_current_mem_id(), bitmap_font_warioware_body, 0, 0x340, 6);
    dma3_fill(0, OBJ_TILESET_BASE(0x7800), 0x800, 0x20, 0x200);

    if (text != NULL) {
        struct Animation *anim;
        s16 sprite;

        anim = text_printer_get_unformatted_line_anim(get_current_mem_id(), 0, 30, 0, text, 1, 0, 0x100);
        sprite = func_0804d160(D_03005380, anim, 0, 120, 140, 0, 0, 0, 0);
        func_0804d8c4(D_03005380, sprite, 4);
    }

    gEpilogueInfo->objFont = func_0800c660(0x300, 4);
    import_all_scene_objects(D_03005380, gEpilogueInfo->objFont, epilogue_scene_objects, D_0300558c);
    epilogue_scene_init_gfx1();
    gEpilogueInfo->scriptIsReady = FALSE;
}


// Scene Update (Paused)
void epilogue_scene_paused(void *sceneVar, s32 dataArg) {
}


// Scene Update (Active)
void epilogue_scene_update(void *sceneVar, s32 dataArg) {
    if (epilogue_scene_script_is_ready()) {
        if (D_03004afc & A_BUTTON) {
            set_pause_beatscript_scene(FALSE);
            play_sound_w_pitch_volume(&s_menu_se20_seqData, INT_TO_FIXED(0.5), 0);
            gEpilogueInfo->scriptIsReady = FALSE;
        }
    }
}


// Communicate with Script
u32 epilogue_scene_script_is_ready(void) {
    if (gEpilogueInfo->scriptIsReady) {
        return TRUE;
    } else {
        return FALSE;
    }
}


// Scene Stop
void epilogue_scene_stop(void *sceneVar, s32 dataArg) {
    func_08008628();
    func_08004058();
    stop_all_soundplayers();
}
