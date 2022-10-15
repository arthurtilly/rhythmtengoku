#pragma once

#include "global.h"
#include "scenes.h"

/* TYPES */

struct MarkingCriteria {
    char *positiveRemark;
    char *negativeRemark;
    u8 padding8[8];
};

struct InputScoreTracker {
    u16 totalInputs;
    u16 totalHits;
    u16 totalBarelies;
    u16 totalEarliness;
    u16 totalLateness;
    u8 paddingA[14];
};

struct ScoreHandler {
    u32 unk0_b0:1;
    u32 markingInputs:1;
    u32 null0_b2:30;
    u16 unk4;
    s8 unk6;
    struct InputScoreTracker anyInputTrackers[4];
    u8 padding68[12];
    u16 unk74;
    const struct MarkingCriteria **markingData;
    struct InputScoreTracker cueInputTrackers[16];
    char *flavourText; // text in the upper-right corner of the results comments screen
    u32 totalPoints;
    u32 maximumPoints;
};

/* DATA */

struct ScoreHandler *D_089d7980; // ( = D_03001338)

/* FUNCTIONS */

// extern ? func_080188b4(?); // [func_080188b4] DEBUG Initialise Static Variables (STUB)
// extern ? func_080188b8(?); // [func_080188b8] DEBUG Graphics Init. 2
// extern ? func_080188e4(?); // [func_080188e4] DEBUG Graphics Init. 1
// extern ? func_08018914(?); // [func_08018914] DEBUG Graphics Init. 0
// extern ? func_08018934(?); // [func_08018934] DEBUG Scene Init.
// extern ? func_080189b0(?); // [func_080189b0] DEBUG Scene STUB
// extern ? func_080189b4(?); // [func_080189b4] DEBUG Scene Main
// extern ? func_080189f4(?); // [func_080189f4] DEBUG ?
// extern ? func_08018a10(?); // [func_08018a10] DEBUG Scene Close

// extern ? func_08018a20(?); // [func_08018a20] LEVEL Initialise Static Variables (STUB)
// extern ? func_08018a24(?); // [func_08018a24] LEVEL Graphics Init. 2
// extern ? func_08018a50(?); // [func_08018a50] LEVEL Graphics Init. 1
// extern ? func_08018a80(?); // [func_08018a80] LEVEL Graphics Init. 0
// extern ? func_08018aa0(?); // [func_08018aa0] LEVEL Scene Init.
// extern ? func_08018b9c(?); // [func_08018b9c] LEVEL Scene STUB
// extern ? func_08018ba0(?); // [func_08018ba0] LEVEL Scene Main
// extern ? func_08018be0(?); // [func_08018be0] LEVEL Scene Close
// extern ? func_08018bf0(?); // [func_08018bf0] LEVEL ? (Script Function)
// extern ? func_08018cc8(?); // [func_08018cc8] LEVEL ? (Script Function)
// extern ? func_08018d68(?); // [func_08018d68] LEVEL ? (Script Function)
// extern ? func_08018d9c(?); // [func_08018d9c] LEVEL ? (Script Function)

// extern ? func_08018e60(?); // [func_08018e60] SCORE Initialise Static Variables
// extern ? func_08018e74(?); // [func_08018e74] SCORE Graphics Init. 3
// extern ? func_08018e94(?); // [func_08018e94] SCORE Graphics Init. 2
// extern ? func_08018ec0(?); // [func_08018ec0] SCORE Graphics Init. 1
// extern ? func_08018ef0(?); // [func_08018ef0] SCORE Graphics Init. 0
// extern ? func_08018f10(?); // [func_08018f10] SCORE Scene Init.
// extern ? func_0801911c(?); // [func_0801911c] SCORE ?
// extern ? func_08019128(?); // [func_08019128] SCORE ?
// extern ? func_08019134(?); // [func_08019134] SCORE Scene STUB
// extern ? func_08019138(?); // [func_08019138] SCORE Scene Main
// extern ? func_08019178(?); // [func_08019178] SCORE Scene Close
// extern ? func_08019188(?); // [func_08019188] SCORE ? (Script Function)

// extern ? func_080191ac(?);
// extern ? func_080191b8(?);
// extern ? func_080191bc(?);
// extern ? func_08019210(?);
extern void func_08019268(struct InputScoreTracker *); // Initialise Any-Input Trackers
extern void func_08019278(void); // Initialise Cue Input Trackers and Marking Criteria
extern void func_080192a4(void); // Initialise Score Handler
extern void func_08019304(const struct MarkingCriteria **); // [func_08019304] Import Criteria (Script Function)
extern void func_08019310(char *); // [func_08019310] Set Flavour Text (Script Function)
extern void func_08019324(u32 assess); // [func_08019324] Assess Inputs (Script Function)
extern u32 func_08019340(void); // Check if Assessing Inputs
extern void func_08019350(u32 criterion, u32 level, s32 offset); // Register Input
extern void func_08019420(u32 criterion, u32 level, s32 offset); // Register Input for Cue
// extern ? func_08019480(?);
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
// extern ? func_08019a80(?);
// extern ? func_08019bec(?);
// extern ? func_08019d9c(?);
// extern ? func_08019ee0(?); // [func_08019ee0] LEVEL ? (Script Function)
// extern ? func_0801a060(?);
// extern ? func_0801a0ec(?); // [func_0801a0ec] ??? Initialise Static Variables
// extern ? func_0801a0f0(?); // [func_0801a0f0] ??? Graphics Init. 2
// extern ? func_0801a140(?); // [func_0801a140] ??? Graphics Init. 1
// extern ? func_0801a174(?); // [func_0801a174] ??? Graphics Init. 0
// extern ? func_0801a1b0(?); // [func_0801a1b0] ??? Scene Init.
// extern ? func_0801a310(?); // [func_0801a310] ??? Scene STUB
// extern ? func_0801a314(?); // [func_0801a314] ??? Scene Main
// extern ? func_0801a354(?); // [func_0801a354] ??? ?
// extern ? func_0801a370(?); // [func_0801a370] ??? Scene Close
