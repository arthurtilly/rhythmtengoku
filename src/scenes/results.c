#include "global.h"
#include "results.h"
#include "graphics/results/results_graphics.h"

#include "levels.h"
#include "cues.h"
#include "src/main.h"
#include "src/memory.h"
#include "src/code_08001360.h"
#include "src/bitmap_font.h"
#include "src/memory_heap.h"
#include "src/code_08007468.h"
#include "src/text_printer.h"
#include "src/code_0800b778.h"
#include "src/code_080102d0.h"
#include "game_select.h"
#include "src/lib_0804ca80.h"

asm(".include \"include/gba.inc\"");//Temporary

// For readability.
#define gResults ((struct ResultsSceneData *)gCurrentSceneData)

#define COMMENT_TILESET_BASE OBJ_TILESET_BASE(0x4000)
#define COMMENT_PALETTE 4
#define EXTRA_COMMENT_PALETTE 2
#define RANK_COMMENT_LINE_SPACING 16
#define RANK_EXTRA_COMMENT_MARGIN 8
#define RANK_HEADER_PALETTE 4
#define RANK_HEADER_Y 24
#define RANK_HEADER_ICON_X 45
#define RANK_HEADER_BOX_X 24
#define RANK_RESULT_ICON_X 180
#define RANK_RESULT_ICON_Y 140
#define RANK_RESULT_ICON_BUT_X 88
#define RANK_RESULT_ICON_BUT_Y 140
#define MAX_POINTS_PER_INPUT 10
#define POINTS_LOST_PER_MISS -20
#define COMMENT_BASE_LINE 8
#define COMMENT_TILE_Y(line) ((COMMENT_BASE_LINE * 2) + ((line) * 2))

extern struct Scene scene_game_select;
extern struct Scene D_089d6d74; // Staff Credit
extern struct Scene scene_results_ver_rank;
extern struct Scene scene_results_ver_score;
extern struct Scene scene_epilogue;

extern const struct BitmapFontData bitmap_font_warioware_body;

static s32 D_0300132c; // unknown type, unknown if exists
static s32 D_03001330; // unknown type
static s32 D_03001334; // unknown type
static u8 D_03001338[0x204]; // this is wrong though? this is the global score handler, which is 0x208 bytes, which is also equal to (0x1540 - 0x1338)
static u8 D_03001540; // ?


/* RESULTS */


#include "asm/results/asm_080188b4.s"

#include "asm/results/asm_080188b8.s"

#include "asm/results/asm_080188e4.s"

#include "asm/results/asm_08018914.s"

#include "asm/results/asm_08018934.s"

#include "asm/results/asm_080189b0.s"

#include "asm/results/asm_080189b4.s"

#include "asm/results/asm_080189f4.s"

#include "asm/results/asm_08018a10.s"


// RANK Initialise Static Variables
void rank_results_scene_init_static_var(void) {
}


// RANK Graphics Init. 3
void rank_results_scene_init_gfx3(void) {
    u32 data;

    func_0800c604(0);
    data = start_new_texture_loader(get_current_mem_id(), rank_results_buffered_textures);
    run_func_after_task(data, set_pause_beatscript_scene, FALSE);
}


// RANK Graphics Init. 2
void rank_results_scene_init_gfx2(void) {
    u32 data;

    func_0800c604(0);
    data = func_08002ee0(get_current_mem_id(), rank_results_gfx_table, 0x3000);
    run_func_after_task(data, rank_results_scene_init_gfx3, 0);
}


// RANK Graphics Init. 1
void rank_results_scene_init_gfx1(void) {
    schedule_function_call(get_current_mem_id(), rank_results_scene_init_gfx2, 0, 2);
    scene_show_obj_layer();
}


// RANK Scene Start
void rank_results_scene_start(void *sceneParam, s32 startParam) {
    func_08007324(FALSE);
    func_080073f0();
    gResults->bgFont = create_new_bmp_font_bg(get_current_mem_id(), &bitmap_font_warioware_body, 0, 0x340, 6);
    gResults->objFont = func_0800c660(0x300, 4);
    dma3_fill(0, COMMENT_TILESET_BASE, 0x4000, 0x20, 0x200);
    gResults->currentLine = 0;

    gResults->placeholderIcon = func_0804d160(D_03005380, anim_rank_results_header_placeholder, 0, RANK_HEADER_ICON_X, RANK_HEADER_Y, 0x800, 0, 0, 0x8000);
    gResults->resultIcon = func_0804d160(D_03005380, anim_rank_results_icon, 0, RANK_RESULT_ICON_X, RANK_RESULT_ICON_Y, 0x800, 0, 0, 0x8000);
    rank_results_scene_init_gfx1();
    D_03005b3c = LFO_MODE_DISABLED;
    gResults->awaitingInput = FALSE;
    gResults->medalObtained = FALSE;
    gResults->stillJustOK = FALSE;
}


// RANK Scene Update (Paused)
void rank_results_scene_paused(void *sceneParam, s32 pausedParam) {
}


// RANK Scene Update (Active)
void rank_results_scene_update(void *sceneParam, s32 updateParam) {
    if (!results_scene_inputs_enabled()) {
        return;
    }

    if (D_03004afc & A_BUTTON) {
        set_pause_beatscript_scene(FALSE);
        gResults->awaitingInput = FALSE;
        play_sound_w_pitch_volume(&s_menu_se20_seqData, INT_TO_FIXED(0.5), 0);
    }
}


// RANK Scene Stop
void rank_results_scene_stop(void *sceneParam, s32 stopParam) {
    func_08008628();
    func_08004058();
}


// RANK Display Header Text (Script Event)
void rank_results_display_header(void) {
    struct Animation *anim;
    s32 sprite, width;

    if (D_089d7980->headerText == NULL) {
        func_0804d770(D_03005380, gResults->placeholderIcon, TRUE);
        return;
    }

    anim = results_get_comment_anim(D_089d7980->headerText, TEXT_ANCHOR_BOTTOM_LEFT, 0);
    sprite = func_0804d160(D_03005380, anim, 0, RANK_HEADER_BOX_X, RANK_HEADER_Y, 0x800, 0, 0, 0);
    func_0804d8c4(D_03005380, sprite, RANK_HEADER_PALETTE);
    width = func_0804ddb0(D_03005380, sprite, 24);
    func_0804d160(D_03005380, anim_rank_results_header_box, 0, SCREEN_CENTER_X, RANK_HEADER_Y, 0x864, 0, 0, 0);
    func_0804d160(D_03005380, anim_rank_results_header_box_mask, 0, SCREEN_CENTER_X + width, RANK_HEADER_Y, 0x850, 0, 0, 0);
}


// RANK Display Result Icon (Script Event)
void rank_results_display_rank(void) {
    func_0804d770(D_03005380, gResults->resultIcon, TRUE);

    if (gResults->medalObtained) {
        func_0804d160(D_03005380, anim_rank_results_medal_get, 0, 180, 140, 0x700, 1, 0, 0);
    }

    if (gResults->stillJustOK) {
        func_0804d160(D_03005380, anim_rank_results_comment_append, 0, 180, 140, 0x700, 1, 0, 0);
    }

    play_sound_in_player(SFX_PLAYER_2, rank_results_sfx[gResults->finalResultLevel]);
}


// RANK Play Music (Script Event)
void rank_results_play_bgm(void) {
    struct SequenceData *music = rank_results_bgm[gResults->finalResultLevel];

    scene_set_music(music);
    set_beatscript_tempo(get_music_base_tempo(music));
}


// RANK Display Positive Reinforcement (Script Event)
void rank_results_append_encouragement(void) {
    u16 *commentSprites;
    u32 totalNegativeComments, totalComments;
    u32 i;

    commentSprites = gResults->commentSprites;
    totalNegativeComments = gResults->totalNegativeComments;
    totalComments = gResults->totalNegativeComments + gResults->totalPositiveComments;

    if ((gResults->finalResultLevel != RESULTS_RANK_TRY_AGAIN)
      || (gResults->totalPositiveComments == 0)
      || (gResults->singleCommentTryAgain)) {
        return;
    }

    for (i = 0; i < totalComments; i++) {
        s32 y = func_0804ddb0(D_03005380, commentSprites[i], 5);

        func_0804d648(D_03005380, commentSprites[i], y - 10);
    }

    for (i = totalNegativeComments; i < totalComments; i++) {
        func_0804d770(D_03005380, commentSprites[i], TRUE);
    }

    play_sound(&s_f_result_mes_add_seqData);
    func_0804d160(D_03005380, anim_rank_results_supportive_bubble, 0, RANK_RESULT_ICON_BUT_X, RANK_RESULT_ICON_BUT_Y, 0, 0, 0, 0);
}


#include "asm/results/asm_08018e60.s"

#include "asm/results/asm_08018e74.s"

#include "asm/results/asm_08018e94.s"

#include "asm/results/asm_08018ec0.s"

#include "asm/results/asm_08018ef0.s"

#include "asm/results/asm_08018f10.s"

#include "asm/results/asm_0801911c.s"

#include "asm/results/asm_08019128.s"

#include "asm/results/asm_08019134.s"

#include "asm/results/asm_08019138.s"

#include "asm/results/asm_08019178.s"

#include "asm/results/asm_08019188.s"


// Set D_03001540
void results_set_enable_save(u32 updateSave) {
    D_03001540 = updateSave;
}


// Return TRUE
u32 func_080191b8(void) {
    return TRUE;
}


 // Save Result
void results_save_to_cart(u32 levelState) {
    struct TengokuSaveData *saveData = &D_030046a8->data;
    s32 gameID;

    if (!D_03001540) return;

    saveData->recentLevelState = levelState;
    saveData->recentLevelScore = results_calculate_final_score();

    gameID = get_level_id_from_grid_xy(saveData->recentLevelX, saveData->recentLevelY);
    func_080108a0(gameID);

    if (gameID >= 0)
        D_030046a8->data.unk190[gameID]++;

    flush_save_buffer_to_sram();
}


// Get Animation for Comment Text
struct Animation *results_get_comment_anim(const char *comment, u32 anchor, u32 colors) {
    struct Animation *anim;

    if ((COMMENT_TILE_Y(gResults->currentLine) < 0) || (COMMENT_TILE_Y(gResults->currentLine) >= 32)) {
        return NULL;
    }

    anim = text_printer_get_unformatted_line_anim(get_current_mem_id(), 0, COMMENT_TILE_Y(gResults->currentLine), TEXT_PRINTER_FONT_SMALL, comment, anchor, colors, 256);
    gResults->currentLine++;
    return anim;
}


// Initialise Input Tracker
void results_init_tracker(struct InputScoreTracker *tracker) {
    tracker->totalInputs = 0;
    tracker->totalHits = 0;
    tracker->totalBarelies = 0;
    tracker->totalEarliness = 0;
    tracker->totalLateness = 0;
}


// Initialise Cue Input Trackers and Marking Criteria
void results_init_cue_tracking(void) {
    u32 i;

    D_089d7980->markingData = NULL;

    for (i = 0; i < 16; i++) {
        results_init_tracker(&D_089d7980->cueInputTrackers[i]);
    }
}


// Initialise Results Handler
void results_init_score_handler(void) {
    u32 i;

    D_089d7980->unk0_b0 = FALSE;
    D_089d7980->totalRecoveries = 0;
    D_089d7980->prevInputLevel = -1;
    D_089d7980->totalIrrelevantInputs = 0;

    for (i = 0; i < 4; i++) {
        results_init_tracker(&D_089d7980->anyInputTrackers[i]);
    }

    results_init_cue_tracking();
    D_089d7980->headerText = NULL;
    D_089d7980->totalPoints = 0;
    D_089d7980->maximumPoints = 0;
}


// Import Criteria (Script Event)
void results_import_marking_criteria(const struct MarkingCriteria **markingData) {
    D_089d7980->markingData = markingData;
}


// Set Header Text (Script Event)
void results_set_header(char *headerText) {
    D_089d7980->headerText = headerText;
}


// Assess Inputs (Script Event)
void results_enable_input_tracking(u32 assess) {
    D_089d7980->markingInputs = assess;
}


// Check if Assessing Inputs
u32 results_tracking_is_enabled(void) {
    return D_089d7980->markingInputs;
}


// Register Input
void results_register_input(u32 criterion, u32 level, s32 offset) {
    struct InputScoreTracker *tracker = &D_089d7980->anyInputTrackers[criterion];
    s32 points;

    if (!D_089d7980->markingInputs) return;

    if (level == CUE_RESULT_NONE) {
        D_089d7980->totalIrrelevantInputs++;
        return;
    }

    tracker->totalInputs++;
    points = 0;

    switch (level) {
        case CUE_RESULT_HIT:
            tracker->totalHits++;
            if (D_089d7980->prevInputLevel == CUE_RESULT_MISS) {
                D_089d7980->totalRecoveries++;
            }
            points = MAX_POINTS_PER_INPUT - ABS(offset) + 1;
            break;
        case CUE_RESULT_BARELY:
            tracker->totalBarelies++;
            if (D_089d7980->prevInputLevel == CUE_RESULT_MISS) {
                D_089d7980->totalRecoveries++;
            }
            points = MAX_POINTS_PER_INPUT - ABS(offset);
            break;
        case CUE_RESULT_MISS:
            offset = 0;
            points = POINTS_LOST_PER_MISS;
            break;
    }

    if (points > MAX_POINTS_PER_INPUT) points = MAX_POINTS_PER_INPUT;
    D_089d7980->totalPoints += points;
    D_089d7980->maximumPoints += MAX_POINTS_PER_INPUT;

    if (offset < 0) {
        tracker->totalEarliness -= offset;
    } else {
        tracker->totalLateness += offset;
    }

    D_089d7980->prevInputLevel = level;
}


// Register Input for Cue
void results_register_cue_input(u32 criterion, u32 level, s32 offset) {
    struct InputScoreTracker *tracker = &D_089d7980->cueInputTrackers[criterion];

    if (!D_089d7980->markingInputs) return;

    tracker->totalInputs++;

    switch (level) {
        case CUE_RESULT_HIT:
            tracker->totalHits++;
            break;
        case CUE_RESULT_BARELY:
            tracker->totalBarelies++;
            break;
        case CUE_RESULT_MISS:
            offset = 0;
            break;
    }

    if (offset < 0) {
        tracker->totalEarliness -= offset;
    } else {
        tracker->totalLateness += offset;
    }
}


// Calculate Input Averages
void results_tracker_calculate_averages(struct InputScoreTracker *tracker) {
    tracker->totalMisses = tracker->totalInputs - (tracker->totalHits + tracker->totalBarelies);

    if (tracker->totalInputs == 0) return;

    tracker->avgHits = Div(INT_TO_FIXED(tracker->totalHits), tracker->totalInputs);
    tracker->avgBarelies = Div(INT_TO_FIXED(tracker->totalBarelies), tracker->totalInputs);
    tracker->avgMisses = Div(INT_TO_FIXED(tracker->totalMisses), tracker->totalInputs);

    if (tracker->totalInputs == tracker->totalMisses) return;

    tracker->avgEarliness = Div(INT_TO_FIXED(tracker->totalEarliness), tracker->totalInputs - tracker->totalMisses);
    tracker->avgLateness = Div(INT_TO_FIXED(tracker->totalLateness), tracker->totalInputs - tracker->totalMisses);
}


#include "asm/results/asm_080194e8.s"

#include "asm/results/asm_08019554.s"

#include "asm/results/asm_08019698.s"

#include "asm/results/asm_080196fc.s"

#include "asm/results/asm_08019750.s"

#include "asm/results/asm_080197a4.s"

#include "asm/results/asm_080197ec.s"

#include "asm/results/asm_08019820.s"

#include "asm/results/asm_08019878.s"

#include "asm/results/asm_080198b0.s"

#include "asm/results/asm_080198e8.s"

#include "asm/results/asm_080198f8.s"

const char D_08054ec4[] = ":1" "＊＊＊＊" ":0" "　　さいてん　　" ":1" "＊＊＊＊";
const char D_08054eec[] = ".5:1" "Ｒ－ＩＱ　　" ".6:0";


// Prepare Negative Remarks (return total failed criteria)
u32 results_get_negative_comments(void) {
    const struct MarkingCriteria **criteriaTable = D_089d7980->markingData;
    struct InputScoreTracker *tracker;
    const char *comments[3];
    char *commentsText;
    u32 totalFailed = 0;
    u32 i;
    u16 *commentSprites;

    tracker = D_089d7980->cueInputTrackers;
    commentSprites = gResults->commentSprites;
    commentsText = gResults->negativeCommentsText;
    gResults->singleCommentTryAgain = FALSE;

    for (criteriaTable; *criteriaTable != NULL; tracker++, criteriaTable++) {
        const struct MarkingCriteria *criteria;
        u32 checkAvgHits, overrideOtherComments;
        u32 failedThisCriterion;

        if (tracker->totalInputs == 0) {
            continue;
        }

        failedThisCriterion = FALSE;
        criteria = *criteriaTable;
        checkAvgHits = criteria->flags & ~0x80;
        overrideOtherComments = criteria->flags & 0x80;

        if (!criteria->checkAverageMisses) {
            if (tracker->totalMisses <= criteria->maxMissesBeforeFail) {
                goto label7A; // :vomit_emoji:
            }
        } else {
            if (tracker->avgMisses > criteria->maxMissesBeforeFail) {
                failedThisCriterion = TRUE;
            }

            label7A:
            if (!failedThisCriterion) {
                if ((checkAvgHits == TRUE) && (tracker->avgHits < criteria->minHitsBeforeFail)) {
                    failedThisCriterion = TRUE;
                }

                if (!failedThisCriterion) {
                    continue;
                }
            }
        }

        if (overrideOtherComments) {
            gResults->singleCommentTryAgain = TRUE;
            comments[0] = criteria->negativeRemark;
            totalFailed = 1;
            break;
        }

        comments[totalFailed] = criteria->negativeRemark;
        totalFailed++;
        if (totalFailed > 2) {
            break;
        }
    }

    for (i = 0; i < totalFailed; i++) {
        struct Animation *anim;
        u16 sprite;

        strcpy(commentsText, results_try_again_comment_pool[clamp_int32(i, 0, 2)]);
        strcat(commentsText, comments[i]);
        anim = results_get_comment_anim(commentsText, TEXT_ANCHOR_BOTTOM_LEFT, 3);
        sprite = func_0804d160(D_03005380, anim, 0, 0, 0, 0x800, 0, 0, 0);
        func_0804d8c4(D_03005380, sprite, COMMENT_PALETTE);
        commentSprites[i] = sprite;
    }

    gResults->totalNegativeComments = totalFailed;
    return totalFailed;
}

// [D_089d7b34] Rank Comment Pool (Try Again)
const char *results_try_again_comment_pool[] = {
    "",
    "また、",
    "あと、"
};


// Prepare Positive Comments (return average succeeded criteria)
s24_8 results_get_positive_comments(void) {
    const struct MarkingCriteria **criteriaTable = D_089d7980->markingData;
    struct InputScoreTracker *tracker;
    char *commentsText;
    u32 totalPassed = 0;
    u32 totalCriteria = 0;
    s24_8 averagePassed;
    u16 *commentSprites;
    u32 imperfectionPenalty;

    tracker = D_089d7980->cueInputTrackers;
    commentSprites = &gResults->commentSprites[gResults->totalNegativeComments];
    imperfectionPenalty = 0;
    commentsText = mem_heap_alloc(0x100);

    for (criteriaTable; *criteriaTable != NULL; tracker++, criteriaTable++) {
        const struct MarkingCriteria *criteria;
        struct Animation *anim;
        u16 sprite;
        u32 palette;
        u32 passedThisCriterion;

        if (tracker->totalInputs == 0) {
            continue;
        }

        passedThisCriterion = TRUE;
        criteria = *criteriaTable;

        if (tracker->totalMisses > 0) {
            passedThisCriterion = FALSE;
            imperfectionPenalty = 1;
        }

        if (criteria->minHitsForSuccess == 0) {
            continue;
        }

        totalCriteria++;

        if (!passedThisCriterion) {
            continue;
        }

        if (tracker->avgHits < criteria->minHitsForSuccess) {
            passedThisCriterion = FALSE;
        }

        if (!passedThisCriterion) {
            continue;
        }

        if (gResults->totalNegativeComments > 0) {
            memcpy(commentsText, "…でも、", 9); // ("...but,")
            strcat(commentsText, criteria->positiveRemark);
            anim = results_get_comment_anim(commentsText, TEXT_ANCHOR_BOTTOM_RIGHT, 3);
            palette = EXTRA_COMMENT_PALETTE;
        } else {
            switch (totalPassed) {
                case 0:
                    memcpy(commentsText, "", 1);
                    break;
                case 1:
                    memcpy(commentsText, "しかも、", 9); // ("moreover,")
                    break;
                default:
                    memcpy(commentsText, "さらに、", 9); // ("also,")
                    break;
            }
            strcat(commentsText, criteria->positiveRemark);
            anim = results_get_comment_anim(commentsText, TEXT_ANCHOR_BOTTOM_LEFT, 3);
            palette = COMMENT_PALETTE;
        }

        sprite = func_0804d160(D_03005380, anim, 0, 0, 0, 0x800, 0, 0, 0);
        func_0804d8c4(D_03005380, sprite, palette);
        commentSprites[totalPassed] = sprite;

        totalPassed++;
        if (totalPassed > 2) {
            break;
        }

        if (gResults->totalNegativeComments) {
            func_0804d770(D_03005380, commentSprites[0], FALSE);
            break;
        }
    }

    mem_heap_dealloc(commentsText);
    gResults->totalPositiveComments = totalPassed;

    if (totalCriteria == 0) {
        return INT_TO_FIXED(0.0);
    }

    averagePassed = INT_TO_FIXED(totalPassed) / totalCriteria;
    if (averagePassed == INT_TO_FIXED(1.0)) {
        averagePassed -= imperfectionPenalty;
    }

    return averagePassed;
}

// [D_089d7b40] Rank Comment Pool (OK)
const char *results_ok_comment_pool[] = {
    "よしと　します。",
    "とりあえず．．．",
    "まぁまぁ、　かな。",
    "う～ん．．．"
};


// Display Comments
void results_render_comments(void) {
    u16 *commentSprites;
    u32 totalNegativeComments, totalComments;
    u32 negativeCommentWidth, positiveCommentWidth, totalWidth;
    s32 y;
    u32 i;

    commentSprites = gResults->commentSprites;
    totalNegativeComments = gResults->totalNegativeComments;
    totalComments = gResults->totalNegativeComments + gResults->totalPositiveComments;

    negativeCommentWidth = 0;
    for (i = 0; i < totalNegativeComments; i++) {
        u32 width = func_0804ddb0(D_03005380, commentSprites[i], 24);

        if (negativeCommentWidth < width)
            negativeCommentWidth = width;
    }

    positiveCommentWidth = 0;
    for (i = totalNegativeComments; i < totalComments; i++) {
        u32 width = func_0804ddb0(D_03005380, commentSprites[i], 24);

        if (positiveCommentWidth < width)
            positiveCommentWidth = width;
    }

    totalWidth = positiveCommentWidth;
    if (totalWidth < negativeCommentWidth)
        totalWidth = negativeCommentWidth;

    if (totalNegativeComments != 0) {
        y = SCREEN_CENTER_Y - ((totalNegativeComments - 1) * (RANK_COMMENT_LINE_SPACING / 2));

        for (i = 0; i < totalNegativeComments; i++) {
            func_0804d5d4(D_03005380, commentSprites[i], SCREEN_CENTER_X - (negativeCommentWidth / 2), y);
            y += RANK_COMMENT_LINE_SPACING;
        }
        y += RANK_EXTRA_COMMENT_MARGIN;

        for (i = totalNegativeComments; i < totalComments; i++) {
            func_0804d5d4(D_03005380, commentSprites[i], SCREEN_CENTER_X + (totalWidth / 2), y);
            y += RANK_COMMENT_LINE_SPACING;
        }
    } else {
        y = SCREEN_CENTER_Y - ((totalComments - 1) * (RANK_COMMENT_LINE_SPACING / 2));

        for (i = totalNegativeComments; i < totalComments; i++) {
            func_0804d5d4(D_03005380, commentSprites[i], SCREEN_CENTER_X - (totalWidth / 2), y);
            y += RANK_COMMENT_LINE_SPACING;
        }
    }
}


// RANK Display Comments (Script Event)
void results_publish_comments(void) {
    struct InputScoreTracker *tracker = D_089d7980->cueInputTrackers;
    const struct MarkingCriteria **criteriaTable = D_089d7980->markingData;
    struct Scene *scene;
    struct Animation *textAnim;
    s16 textSprite;
    u32 totalCriteriaFailed, averageCriteriaSucceeded;
    u32 previousResult;

    update_plays_until_next_campaign();

    while (*criteriaTable != NULL) {
        if (tracker->totalInputs > 0) {
            results_tracker_calculate_averages(tracker);
        }
        criteriaTable++;
        tracker++;
    }

    totalCriteriaFailed = results_get_negative_comments();
    averageCriteriaSucceeded = results_get_positive_comments();
    results_render_comments();

    if (totalCriteriaFailed != 0) {
        gResults->finalResultLevel = RESULTS_RANK_TRY_AGAIN;
        func_0804cebc(D_03005380, gResults->resultIcon, RESULT_ICON_TRY_AGAIN);
        results_save_to_cart(LEVEL_STATE_NULL);
        return;
    }

    if (game_select_roll_credits_after_epilogue()) {
        scene = func_080005e0(&scene_epilogue);
        func_080006b0(&scene_epilogue, &D_089d6d74);
        func_080006b0(&D_089d6d74, scene);
        game_select_disable_credits_after_epilogue();
    }

    if (averageCriteriaSucceeded == INT_TO_FIXED(0.0)) {
        textAnim = results_get_comment_anim(results_ok_comment_pool[agb_random(4)], TEXT_ANCHOR_BOTTOM_CENTER, 3);
        textSprite = func_0804d160(D_03005380, textAnim, 0, SCREEN_CENTER_X, SCREEN_CENTER_Y, 0x800, 0, 0, 0);
        func_0804d8c4(D_03005380, textSprite, COMMENT_PALETTE);
    }

    if (averageCriteriaSucceeded == INT_TO_FIXED(1.0)) {
        gResults->finalResultLevel = RESULTS_RANK_SUPERB;
        func_0804cebc(D_03005380, gResults->resultIcon, RESULT_ICON_SUPERB);
        results_save_to_cart(LEVEL_STATE_HAS_MEDAL);

        previousResult = get_level_state_from_grid_xy(D_030046a8->data.recentLevelX, D_030046a8->data.recentLevelY);
        if (previousResult < LEVEL_STATE_HAS_MEDAL) {
            gResults->medalObtained = TRUE;
        }
    }

    else {
        gResults->finalResultLevel = RESULTS_RANK_OK;
        func_0804cebc(D_03005380, gResults->resultIcon, RESULT_ICON_OK);
        results_save_to_cart(LEVEL_STATE_CLEARED);

        if (averageCriteriaSucceeded != 0) {
            gResults->stillJustOK = TRUE;
        }
    }
}


// Calculate Final Score
u32 results_calculate_final_score(void) {
    s32 points, maxPoints;
    s32 penalty, maxPenalty;
    u32 result, maxResult;

    maxPoints = D_089d7980->maximumPoints;
    points = clamp_int32(D_089d7980->totalPoints, 0, D_089d7980->maximumPoints);

    if (points > 0) {
        maxPenalty = ((points * -15) << 1) / 100; // (awesome: they performed logical shift on a negative value)
        penalty = D_089d7980->totalIrrelevantInputs * -10;
        points += clamp_int32(penalty, maxPenalty, 0);
    }
    points = clamp_int32(points, 0, maxPoints);

    result = points * points;
    maxResult = maxPoints * maxPoints;

    // Keep within the bounds of a short
    while (maxResult > 0x10000) {
        maxResult >>= 1;
        result >>= 1;
    }

    if (maxPoints != 0) {
        return MAX_LEVEL_SCORE * result / maxResult;
    }

    return 0;
}
