#include "global.h"
#include "results.h"
#include "graphics/results/results_graphics.h"

#include "levels.h"
#include "cues.h"
#include "src/scenes/game_select.h"


// For readability.
#define gResults ((struct ResultsSceneData *)gCurrentSceneData)


static s32 D_0300132c; // unknown type, unknown if exists
static u16 *sGradeThresholds;
static const char **sGradeComments;


/* RESULTS (SCORE-TYPE) */


// Init. Static Variables
void score_results_scene_init_static_var() {
    sGradeThresholds = NULL;
    sGradeComments = 0;
}


// Graphics Init. 4
void score_results_scene_init_gfx4(void) {
    D_03004b10.objPalette[15][1] = 0;
    set_pause_beatscript_scene(FALSE);
}


// Graphics Init. 3
void score_results_scene_init_gfx3(void) {
    u32 data;

    func_0800c604(0);
    data = start_new_texture_loader(get_current_mem_id(), score_results_buffered_textures);
    run_func_after_task(data, score_results_scene_init_gfx4, 0);
}


// Graphics Init. 2
void score_results_scene_init_gfx2(void) {
    s32 task;

    func_0800c604(0);
    task = func_08002ee0(get_current_mem_id(), score_results_gfx_table, 0x3000);
    run_func_after_task(task, score_results_scene_init_gfx3, 0);
}


// Graphics Init. 1
void score_results_scene_init_gfx1(void) {
    schedule_function_call(get_current_mem_id(), score_results_scene_init_gfx2, 0, 2);
    scene_show_obj_layer();
}


// Scene Start
void score_results_scene_start(void *sVar, s32 dArg) {
    const char **gradeComments;
    u16 *gradeThresholds;
    struct Animation *textAnim;
    s16 textSprite;
    u32 score, digit, grade;

    func_08007324(FALSE);
    func_080073f0();
    gResults->bgFont = create_new_bmp_font_bg(get_current_mem_id(), bitmap_font_warioware_body, 0, 0x340, 6);
    dma3_fill(0, OBJ_TILESET_BASE(0x4000), 0x4000, 0x20, 0x200);
    gResults->objFont = func_0800c660(0x300, 4);
    score_results_scene_init_gfx1();

    score = results_calculate_final_score();
    func_0804d160(D_03005380, anim_score_results_dec_num, score % 10, 196, 114, 0, 0, 0, 0);

    digit = score / 10;
    func_0804d160(D_03005380, anim_score_results_num, digit % 10, 152, 80, 0, 0, 0, 0);

    digit /= 10;
    if (digit != 0) {
        func_0804d160(D_03005380, anim_score_results_num, digit % 10, 96, 80, 0, 0, 0, 0);
    }

    digit /= 10;
    if (digit != 0) {
        func_0804d160(D_03005380, anim_score_results_num, digit % 10, 40, 80, 0, 0, 0, 0);
    }

    func_0804d160(D_03005380, anim_score_results_points_label, 0, 200, 136, 0, 0, 0, 0);

    if (sGradeThresholds != NULL) {
        gradeThresholds = sGradeThresholds;
    } else {
        gradeThresholds = score_results_thresholds;
    }

    if (sGradeComments != NULL) {
        gradeComments = sGradeComments;
    } else {
        gradeComments = score_results_comments_text;
    }

    for (grade = 0; grade < 4 && score < gradeThresholds[grade]; grade++);

    gResults->finalGrade = grade;

    textAnim = text_printer_get_unformatted_line_anim(get_current_mem_id(), 0, 16, TEXT_PRINTER_FONT_SMALL, gradeComments[grade], TEXT_ANCHOR_BOTTOM_CENTER, 0, 0x100);
    textSprite = func_0804d160(D_03005380, textAnim, 0, 120, 152, 0, 0, 0, 0);
    func_0804d8c4(D_03005380, textSprite, 15);

    gResults->awaitingInput = FALSE;
}


// Import Score Thresholds (Script Event)
void score_results_set_grade_thresholds(u16 *thresholds) {
    sGradeThresholds = thresholds;
}


// Import Text? (Script Event)
void score_results_set_grade_comments(const char **comments) {
    sGradeComments = comments;
}


// Scene Update (Paused)
void score_results_scene_paused(void *sVar, s32 dArg) {
}


// Scene Update (Active)
void score_results_scene_update(void *sVar, s32 dArg) {
    if (results_scene_inputs_enabled()) {
        if (D_03004afc & A_BUTTON) {
            set_pause_beatscript_scene(FALSE);
            gResults->awaitingInput = FALSE;
            play_sound_w_pitch_volume(&s_menu_se20_seqData, INT_TO_FIXED(0.5), INT_TO_FIXED(0.0));
        }
    }
}


// Scene Stop
void score_results_scene_stop(void *sVar, s32 dArg) {
    func_08008628();
    func_08004058();
}


// Reveal Score (Script Event)
void score_results_reveal(void) {
    play_sound(score_results_reveal_sfx[gResults->finalGrade]);
}
