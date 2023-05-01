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
    u8 null25;
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
    u8 padding68[12];
    u16 totalIrrelevantInputs;
    const struct MarkingCriteria **markingData;
    struct InputScoreTracker cueInputTrackers[16];
    char *headerText;
    u32 totalPoints;
    u32 maximumPoints;
};

struct ResultsTextEvent {
    u8 unk0;
    const char **textPool;
    u32 (*func)(void);
};

#define END_OF_RESULTS_TEXT_EVENT_LIST { 0, NULL, NULL }


// Scene Macros/Enums:
enum ResultsRanksEnum {
    RESULTS_RANK_TRY_AGAIN,
    RESULTS_RANK_OK,
    RESULTS_RANK_SUPERB
};

enum ResultsLevelIconsEnum {
    RESULT_ICON_OK,
    RESULT_ICON_TRY_AGAIN,
    RESULT_ICON_SUPERB
};


// Sound Effects:
extern struct SequenceData s_f_result_bad_seqData;
extern struct SequenceData s_f_result_normal_seqData;
extern struct SequenceData s_jingle_hi_level_seqData;
extern struct SequenceData s_kekka_bgm_bad_seqData;
extern struct SequenceData s_kekka_bgm_common_seqData;
extern struct SequenceData s_kekka_bgm_good_seqData;
extern struct SequenceData s_jingle_hi_level_seqData;
extern struct SequenceData s_fanfare_drum1_seqData;
extern struct SequenceData s_fanfare_drum2_seqData;
extern struct SequenceData s_fanfare_drum3_seqData;
extern struct SequenceData s_yuri_naki_seqData;
extern struct SequenceData s_epilogue_fan2_seqData;
extern struct SequenceData s_epilogue_fan1_seqData;


// Scene Data:
extern struct GraphicsTable rank_results_gfx_table[];
extern struct CompressedGraphics *rank_results_buffered_textures[];
extern struct SequenceData *rank_results_sfx[];
extern struct SequenceData *rank_results_bgm[];
extern struct ScoreHandler *D_089d7980; // ( = D_03001338)
extern const char *results_try_again_comment_pool[];
extern const char *results_ok_comment_pool[];


// Functions:
extern void results_scene_init_static_var(void); // DEBUG Init. Static Variables
extern void results_scene_init_gfx3(void); // DEBUG Graphics Init. 3
extern void results_scene_init_gfx2(void); // DEBUG Graphics Init. 2
extern void results_scene_init_gfx1(void); // DEBUG Graphics Init. 1
extern void results_scene_start(void *sceneParam, s32 startParam); // DEBUG Scene Start
extern void results_scene_paused(void *sceneParam, s32 pausedParam); // DEBUG Scene Update (Paused)
extern void results_scene_update(void *sceneParam, s32 updateParam); // DEBUG Scene Update (Active)
extern u32 results_scene_inputs_enabled(void); // DEBUG Scene Is Ready
extern void results_scene_stop(void *sceneParam, s32 stopParam); // DEBUG Scene Stop

extern void rank_results_scene_init_static_var(void); // RANK Init. Static Variables
extern void rank_results_scene_init_gfx3(void); // RANK Graphics Init. 3
extern void rank_results_scene_init_gfx2(void); // RANK Graphics Init. 2
extern void rank_results_scene_init_gfx1(void); // RANK Graphics Init. 1
extern void rank_results_scene_start(void *sceneParam, s32 startParam); // RANK Scene Start
extern void rank_results_scene_paused(void *sceneParam, s32 pausedParam); // RANK Scene Update (Paused)
extern void rank_results_scene_update(void *sceneParam, s32 updateParam); // RANK Scene Update (Active)
extern void rank_results_scene_stop(void *sceneParam, s32 stopParam); // RANK Scene Stop
extern void rank_results_display_header(void);
extern void rank_results_display_rank(void);
extern void rank_results_play_bgm(void);
extern void rank_results_append_encouragement(void);

extern void score_results_scene_init_static_var(void); // SCORE Init. Static Variables
extern void score_results_scene_init_gfx4(void); // SCORE Graphics Init. 4
extern void score_results_scene_init_gfx3(void); // SCORE Graphics Init. 3
extern void score_results_scene_init_gfx2(void); // SCORE Graphics Init. 2
extern void score_results_scene_init_gfx1(void); // SCORE Graphics Init. 1
extern void score_results_scene_start(void *sceneParam, s32 startParam); // SCORE Scene Start
// extern ? func_0801911c(?); // SCORE Import Criteria/Data? (Script Event)
// extern ? func_08019128(?); // SCORE Import Text? (Script Event)
extern void score_results_scene_paused(void *sceneParam, s32 pausedParam); // SCORE Scene Update (Paused)
extern void score_results_scene_update(void *sceneParam, s32 updateParam); // SCORE Scene Update (Active)
extern void score_results_scene_stop(void *sceneParam, s32 stopParam); // SCORE Scene Stop
// extern ? func_08019188(?); // SCORE ? (Script Event)

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
// extern ? func_080194e8(?);
// extern ? func_08019554(?);
extern u32 func_08019698(void);
extern u32 func_080196fc(void);
extern u32 func_08019750(void);
extern u32 func_080197a4(void);
extern u32 func_080197ec(void);
extern u32 func_08019820(void);
extern u32 func_08019878(void);
extern u32 func_080198b0(void);
extern u32 func_080198e8(void);
// extern ? func_080198f8(?); // DEBUG ? (Script Function)
extern u32 results_get_negative_comments(void);
extern s24_8 results_get_positive_comments(void);
extern void results_render_comments(void);
extern void results_publish_comments(void);
extern u32 results_calculate_final_score(void);
