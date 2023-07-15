#pragma once

#include "global.h"
#include "scenes.h"

// Scene Types:
struct ResultsSceneData {
    struct BitmapFontBG *bgFont;
    struct BitmapFontOBJ *objFont;
    u32 awaitingInput;
    u8 finalResultLevel;
    s16 placeholderIcon;
    s16 resultIcon;
    u8 totalNegativeComments;
    u8 totalPositiveComments;
    u16 commentSprites[3];
    u32 null1C;
    u32 null20;
    u8 currentLine;
    u8 finalGrade;
    char negativeCommentsText[0x100];
    u8 medalObtained;
    u8 stillJustOK;
    u8 singleCommentTryAgain;
};

struct MarkingCriteria {
    const char *positiveRemark;
    const char *negativeRemark;
    u8 flags;
    u8 checkAverageMisses;
    u16 minHitsForSuccess; // [Q8.8] Average Hits
    u16 minHitsBeforeFail; // [Q8.8] Average Hits
    u16 maxMissesBeforeFail; // Misses, either as exact value or Q8.8 average.
};

struct InputScoreTracker {
    u16 totalInputs;
    u16 totalHits;
    u16 totalBarelies;
    u16 totalEarliness;
    u16 totalLateness;
    u16 totalMisses;
    u16 avgHits;      // [Q8.8] hits / inputs
    u16 avgBarelies;  // [Q8.8] barelies / inputs
    u16 avgMisses;    // [Q8.8] misses / inputs
    u16 avgEarliness; // [Q8.8] earliness / (hits + barelies)
    u16 avgLateness;  // [Q8.8] lateness / (hits + barelies)
};

struct ScoreHandler {
    u32 unk0_b0:1;
    u32 markingInputs:1;
    u32 null0_b2:30;
    u16 totalRecoveries;
    s8 prevInputLevel;
    struct InputScoreTracker anyInputTrackers[4];
    u8 skillScores[6];
    u16 unk6E;
    u16 unk70;
    u16 avgSkillScore;
    u16 totalIrrelevantInputs;
    const struct MarkingCriteria **markingData;
    struct InputScoreTracker cueInputTrackers[16];
    char *headerText;
    u32 totalPoints;
    u32 maximumPoints;
};

struct ResultsSkillData {
    u8 weight;
    const char **descPool;
    u32 (*measure)(void);
};

#define END_OF_RESULTS_TEXT_EVENT_LIST { 0, NULL, NULL }


// Scene Macros/Enums:
enum ResultsRanksEnum {
    /* 00 */ RESULTS_RANK_TRY_AGAIN,
    /* 01 */ RESULTS_RANK_OK,
    /* 02 */ RESULTS_RANK_SUPERB
};

enum ResultsRankIconsEnum {
    /* 00 */ RESULT_ICON_OK,
    /* 01 */ RESULT_ICON_TRY_AGAIN,
    /* 02 */ RESULT_ICON_SUPERB
};

enum ResultsGradesEnum {
    /* 00 */ RESULTS_GRADE_D,
    /* 01 */ RESULTS_GRADE_C,
    /* 02 */ RESULTS_GRADE_B,
    /* 03 */ RESULTS_GRADE_A,
    /* 04 */ RESULTS_GRADE_S
};


// Scene Data:
extern union SceneObject debug_results_scene_objects[];
extern struct GraphicsTable debug_results_gfx_table[];
extern struct CompressedGraphics *debug_results_buffered_textures[];
extern struct GraphicsTable rank_results_gfx_table[];
extern struct CompressedGraphics *rank_results_buffered_textures[];
extern struct SequenceData *rank_results_sfx[];
extern struct SequenceData *rank_results_bgm[];
extern union SceneObject score_results_scene_objects[];
extern struct GraphicsTable score_results_gfx_table[];
extern struct CompressedGraphics *score_results_buffered_textures[];
extern const char *score_results_comments_text[];
extern u16 score_results_thresholds[];
extern struct SequenceData *score_results_reveal_sfx[];
extern struct ScoreHandler *D_089d7980; // ( = D_03001338)
extern const char *results_letter_ranks[];
extern const char *D_089d7998[];
extern const char *D_089d79a8[];
extern const char *D_089d79b8[];
extern const char *D_089d79c8[];
extern const char *D_089d79d8[];
extern const char *D_089d79e8[];
extern const char *D_089d79f8[];
extern const char *D_089d7a08[];
extern const char *D_089d7a18[];
extern struct ResultsSkillData D_089d7a38[];
extern struct ResultsSkillData D_089d7a8c[];
extern struct ResultsSkillData D_089d7ae0[];
extern const char *results_try_again_comment_pool[];
extern const char *results_ok_comment_pool[];


// Functions:
extern void results_scene_init_static_var(void);
extern void results_scene_init_gfx3(void);
extern void results_scene_init_gfx2(void);
extern void results_scene_init_gfx1(void);
extern void results_scene_start(void *sVar, s32 dArg);
extern void results_scene_paused(void *sVar, s32 dArg);
extern void results_scene_update(void *sVar, s32 dArg);
extern u32 results_scene_inputs_enabled(void);
extern void results_scene_stop(void *sVar, s32 dArg);

extern void rank_results_scene_init_static_var(void);
extern void rank_results_scene_init_gfx3(void);
extern void rank_results_scene_init_gfx2(void);
extern void rank_results_scene_init_gfx1(void);
extern void rank_results_scene_start(void *sVar, s32 dArg);
extern void rank_results_scene_paused(void *sVar, s32 dArg);
extern void rank_results_scene_update(void *sVar, s32 dArg);
extern void rank_results_scene_stop(void *sVar, s32 dArg);
extern void rank_results_display_header(void);
extern void rank_results_display_rank(void);
extern void rank_results_play_bgm(void);
extern void rank_results_append_encouragement(void);

extern void score_results_scene_init_static_var(void);
extern void score_results_scene_init_gfx4(void);
extern void score_results_scene_init_gfx3(void);
extern void score_results_scene_init_gfx2(void);
extern void score_results_scene_init_gfx1(void);
extern void score_results_scene_start(void *sVar, s32 dArg);
extern void score_results_set_grade_thresholds(u16 *thresholds);
extern void score_results_set_grade_comments(const char **comments);
extern void score_results_scene_paused(void *sVar, s32 dArg);
extern void score_results_scene_update(void *sVar, s32 dArg);
extern void score_results_scene_stop(void *sVar, s32 dArg);
extern void score_results_reveal(void);

extern void results_set_enable_save(u32 updateSave);
extern u32 func_080191b8(void); // Return TRUE (used in the Perfect Certificate scene)
extern void results_save_to_cart(u32 levelState);
extern struct Animation *results_get_comment_anim(const char *comment, u32 anchor, u32 colors);
extern void results_init_tracker(struct InputScoreTracker *);
extern void results_init_cue_tracking(void);
extern void results_init_score_handler(void);
extern void results_import_marking_criteria(const struct MarkingCriteria **);
extern void results_set_header(char *headerText);
extern void results_enable_input_tracking(u32 assess);
extern u32 results_tracking_is_enabled(void);
extern void results_register_input(u32 criterion, u32 level, s32 offset);
extern void results_register_cue_input(u32 criterion, u32 level, s32 offset);
extern void results_tracker_calculate_averages(struct InputScoreTracker *);
extern void results_tracker_calculate_skill_averages(void);
extern void results_render_skills(struct ResultsSkillData *data);
extern u32 func_08019698(void);
extern u32 func_080196fc(void);
extern u32 func_08019750(void);
extern u32 func_080197a4(void);
extern u32 func_080197ec(void);
extern u32 func_08019820(void);
extern u32 func_08019878(void);
extern u32 func_080198b0(void);
extern u32 func_080198e8(void);
extern void results_render_skill_screen(void);
extern u32 results_get_negative_comments(void);
extern s24_8 results_get_positive_comments(void);
extern void results_render_comments(void);
extern void results_publish_comments(void);
extern u32 results_calculate_final_score(void);
