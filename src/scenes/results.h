#pragma once

#include "global.h"
#include "scenes.h"

// Scene Types:
struct ResultsSceneInfo {
    struct TextObject2 *textObj2;
    struct TextObject1 *textObj1;
    u32 awaitingInput;
    u8 finalResultLevel;
    s16 placeholderIcon;
    s16 resultIcon;
    u8 totalNegativeComments;
    u8 totalPositiveComments;
    u16 commentSprites[3];
    u32 null1C;
    u32 null20;
    u8 unk24;
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


// Scene Macros/Enums:
enum ResultsLevelsEnum {
    RESULT_LEVEL_TRY_AGAIN,
    RESULT_LEVEL_OK,
    RESULT_LEVEL_SUPERB
};

enum ResultsLevelIconsEnum {
    RESULT_ICON_OK,
    RESULT_ICON_TRY_AGAIN,
    RESULT_ICON_SUPERB
};


// Text:
extern const char D_08054f14[]; // ""
extern const char D_08054f18[]; // "…でも、" ("...but,")
extern const char D_08054f24[]; // "しかも、" ("moreover,")
extern const char D_08054f30[]; // "さらに、" ("also,")


// OAM Animations:
extern struct Animation D_0890b6ac[]; // Placeholder Header ("nori-kan check")
extern struct Animation D_0890b6bc[]; // Result Icon { 0 = OK; 1 = Try Again; 2 = Superb }
extern struct Animation D_0890b6dc[]; // Positive Reinforcement Text Bubble
extern struct Animation D_0890b6ec[]; // Header Text Box
extern struct Animation D_0890b6fc[]; // Header Text Box Mask
extern struct Animation D_0890b70c[]; // "Medal Get!"
extern struct Animation D_0890b724[]; // "でも" ("but")


// Sound Effects:


// Scene Definition Data:
extern const struct GraphicsTable D_089d7654[]; // LEVEL - Graphics Table
extern struct CompressedGraphics *const D_089d7684[]; // LEVEL - Buffered Textures List
extern struct SequenceData *const D_089d7688[3]; // LEVEL - Result SFX Pool
extern struct SequenceData *const D_089d7694[3]; // LEVEL - Result BGM Pool
extern struct ScoreHandler *D_089d7980; // ( = D_03001338)
extern const char *const D_089d7b34[3]; // LEVEL - Comment Pool (Try Again)
extern const char *const D_089d7b40[4]; // LEVEL - Comment Pool (OK)


// Functions:
// extern ? func_080188b4(?); // [func_080188b4] DEBUG Initialise Static Variables (STUB)
// extern ? func_080188b8(?); // [func_080188b8] DEBUG Graphics Init. 2
// extern ? func_080188e4(?); // [func_080188e4] DEBUG Graphics Init. 1
// extern ? func_08018914(?); // [func_08018914] DEBUG Graphics Init. 0
// extern ? func_08018934(?); // [func_08018934] DEBUG Scene Init.
// extern ? func_080189b0(?); // [func_080189b0] DEBUG Scene STUB
// extern ? func_080189b4(?); // [func_080189b4] DEBUG Scene Main
// extern ? func_080189f4(?); // [func_080189f4] DEBUG ?
// extern ? func_08018a10(?); // [func_08018a10] DEBUG Scene Close

extern void func_08018a20(void); // [func_08018a20] LEVEL Initialise Static Variables (STUB)
extern void func_08018a24(void); // [func_08018a24] LEVEL Graphics Init. 2
extern void func_08018a50(void); // [func_08018a50] LEVEL Graphics Init. 1
extern void func_08018a80(void); // [func_08018a80] LEVEL Graphics Init. 0
extern void func_08018aa0(s32); // [func_08018aa0] LEVEL Scene Init.
extern void func_08018b9c(s32); // [func_08018b9c] LEVEL Scene STUB
extern void func_08018ba0(s32); // [func_08018ba0] LEVEL Scene Main
extern void func_08018be0(s32); // [func_08018be0] LEVEL Scene Close
extern void func_08018bf0(void); // [func_08018bf0] LEVEL Display Header Text (Script Function)
extern void func_08018cc8(void); // [func_08018cc8] LEVEL Display Result Icon (Script Function)
extern void func_08018d68(void); // [func_08018d68] LEVEL Play Music (Script Function)
extern void func_08018d9c(void); // [func_08018d9c] LEVEL Display Positive Reinforcement (Script Function)

// extern ? func_08018e60(?); // [func_08018e60] SCORE Initialise Static Variables
// extern ? func_08018e74(?); // [func_08018e74] SCORE Graphics Init. 3
// extern ? func_08018e94(?); // [func_08018e94] SCORE Graphics Init. 2
// extern ? func_08018ec0(?); // [func_08018ec0] SCORE Graphics Init. 1
// extern ? func_08018ef0(?); // [func_08018ef0] SCORE Graphics Init. 0
// extern ? func_08018f10(?); // [func_08018f10] SCORE Scene Init.
// extern ? func_0801911c(?); // [func_0801911c] SCORE Import Criteria/Data? (Script Function)
// extern ? func_08019128(?); // [func_08019128] SCORE Import Text? (Script Function)
// extern ? func_08019134(?); // [func_08019134] SCORE Scene STUB
// extern ? func_08019138(?); // [func_08019138] SCORE Scene Main
// extern ? func_08019178(?); // [func_08019178] SCORE Scene Close
// extern ? func_08019188(?); // [func_08019188] SCORE ? (Script Function)

extern void func_080191ac(u32 updateSave); // Set D_03001540
extern u32 func_080191b8(void); // Return TRUE
extern void func_080191bc(u32 level); // Save Result
extern struct Animation *func_08019210(const char *, u32, u32); // Get Animation for Text
extern void func_08019268(struct InputScoreTracker *); // Initialise Any-Input Trackers
extern void func_08019278(void); // Initialise Cue Input Trackers and Marking Criteria
extern void func_080192a4(void); // Initialise Score Handler
extern void func_08019304(const struct MarkingCriteria **); // [func_08019304] Import Criteria (Script Function)
extern void func_08019310(char *); // [func_08019310] Set Header Text (Script Function)
extern void func_08019324(u32 assess); // [func_08019324] Assess Inputs (Script Function)
extern u32 func_08019340(void); // Check if Assessing Inputs
extern void func_08019350(u32 criterion, u32 level, s32 offset); // Register Input
extern void func_08019420(u32 criterion, u32 level, s32 offset); // Register Input for Cue
extern void func_08019480(struct InputScoreTracker *); // Calculate Input Averages
// extern ? func_080194e8(?);
// extern ? func_08019554(?);
// extern ? func_08019698(?);
// extern ? func_080196fc(?);
// extern ? func_08019750(?);
// extern ? func_080197a4(?);
// extern ? func_080197ec(?);
// extern ? func_08019820(?);
// extern ? func_08019878(?);
// extern ? func_080198b0(?);
// extern ? func_080198e8(?);
// extern ? func_080198f8(?); // [func_080198f8] DEBUG ? (Script Function)
extern u32 func_08019a80(void); // Prepare Negative Comments
extern u32 func_08019bec(void); // Prepare Positive Comments
extern void func_08019d9c(void); // Display Comments
extern void func_08019ee0(void); // [func_08019ee0] LEVEL Display Comments (Script Function)
extern u32 func_0801a060(void); // Calculate Final Score
// extern ? func_0801a0ec(?); // [func_0801a0ec] EPILOGUE Initialise Static Variables
// extern ? func_0801a0f0(?); // [func_0801a0f0] EPILOGUE Graphics Init. 2
// extern ? func_0801a140(?); // [func_0801a140] EPILOGUE Graphics Init. 1
// extern ? func_0801a174(?); // [func_0801a174] EPILOGUE Graphics Init. 0
// extern ? func_0801a1b0(?); // [func_0801a1b0] EPILOGUE Scene Init.
// extern ? func_0801a310(?); // [func_0801a310] EPILOGUE Scene STUB
// extern ? func_0801a314(?); // [func_0801a314] EPILOGUE Scene Main
// extern ? func_0801a354(?); // [func_0801a354] EPILOGUE ?
// extern ? func_0801a370(?); // [func_0801a370] EPILOGUE Scene Close
