#include "results.h"
#include "cues.h"
#include "src/main.h"
#include "src/memory.h"
#include "src/code_08001360.h"
#include "src/code_08003980.h"
// #include "src/code_08007468.h"
#include "src/code_0800b778.h"
#include "src/game_select.h"
#include "src/lib_0804c870.h"

// Might need better splitting

asm(".include \"include/gba.inc\"");//Temporary

#define RESULTS_TEXT_VRAM_ADDRESS (void *)(VRAMBase + 0x14000)

static s32 D_0300132c; // unknown type, unknown if exists
static s32 D_03001330; // unknown type
static s32 D_03001334; // unknown type
static u8 D_03001338[0x204]; // this is wrong though? this is the global score handler, which is 0x208 bytes, which is also equal to (0x1540 - 0x1338)
static s32 D_03001540; // unknown type

extern u8 D_03005b3c; // LFO Mode { 0 = Disabled; 1 = Note Triggered; 2 = Constant }
extern const struct FontDefinition D_089de670;

extern struct Scene D_089d6d74; // Gameplay Scene..?
extern struct Scene D_089d77e4; // Results (Level-Type)
extern struct Scene D_089d7c18; // Results (Epilogue)
extern struct Scene D_089d7964; // Results (Score-Type)
extern struct Scene D_089cdf08; // Game Select


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


// [func_08018a20] LEVEL Initialise Static Variables (STUB)
void func_08018a20(void) {
}


// [func_08018a24] LEVEL Graphics Init. 2
void func_08018a24(void) {
    u32 data;

    func_0800c604(0);
    data = func_080087b4((u16) func_0800c3b8(), D_089d7684);
    func_08005d38(data, func_0800bd04, 0);
}


// [func_08018a50] LEVEL Graphics Init. 1
void func_08018a50(void) {
    u32 data;

    func_0800c604(0);
    data = func_08002ee0(func_0800c3b8(), D_089d7654, 0x3000);
    func_08005d38(data, func_08018a24, 0);
}


// [func_08018a80] LEVEL Graphics Init. 0
void func_08018a80(void) {
    func_0800856c((u16) func_0800c3b8(), func_08018a50, 0, 2);
    func_0800e0ec();
}


// [func_08018aa0] LEVEL Scene Init.
void func_08018aa0(s32 arg) {
    func_08007324(0);
    func_080073f0();
    gResultsInfo.textObj2 = func_08005124(func_0800c3b8(), &D_089de670, 0, 0x340, 6);
    gResultsInfo.textObj1 = func_0800c660(0x300, 4);
    func_080018e0(0, RESULTS_TEXT_VRAM_ADDRESS, 0x4000, 0x20, 0x200);
    gResultsInfo.unk24 = 0;

    gResultsInfo.placeholderIcon = func_0804d160(D_03005380, D_0890b6ac, 0, 45, 24, 0x800, 0, 0, 0x8000);
    gResultsInfo.resultIcon = func_0804d160(D_03005380, D_0890b6bc, 0, 180, 140, 0x800, 0, 0, 0x8000);
    func_08018a80(); // gfx init.
    D_03005b3c = 0;
    gResultsInfo.awaitingInput = FALSE;
    gResultsInfo.unk126 = 0;
    gResultsInfo.unk127 = 0;
}


// [func_08018b9c] LEVEL Scene STUB
void func_08018b9c(s32 arg) {
}


// [func_08018ba0] LEVEL Scene Main
void func_08018ba0(s32 arg) {
    if (!func_080189f4()) return;

    if (D_03004afc & A_BUTTON) {
        func_0800bd04(FALSE); // unpause
        gResultsInfo.awaitingInput = FALSE;
        func_08002698(&s_menu_se20_seqData, INT_TO_FIXED(0.5), 0);
    }
}


// [func_08018be0] LEVEL Scene Close
void func_08018be0(s32 arg) {
    func_08008628();
    func_08004058();
}


// [func_08018bf0] LEVEL Display Header Text (Script Function)
void func_08018bf0(void) {
    struct Animation *textAnim;
    s32 textSprite, textWidth;

    if (D_089d7980->headerText == NULL) {
        func_0804d770(D_03005380, gResultsInfo.placeholderIcon, TRUE);
        return;
    }

    textAnim = func_08019210(D_089d7980->headerText, 2, 0);
    textSprite = func_0804d160(D_03005380, textAnim, 0, 24, 24, 0x800, 0, 0, 0);
    func_0804d8c4(D_03005380, textSprite, 4);
    textWidth = func_0804ddb0(D_03005380, textSprite, 24);
    func_0804d160(D_03005380, D_0890b6ec, 0, 120, 24, 0x864, 0, 0, 0);
    func_0804d160(D_03005380, D_0890b6fc, 0, 120 + textWidth, 24, 0x850, 0, 0, 0);
}


#include "asm/results/asm_08018cc8.s"

#include "asm/results/asm_08018d68.s"

#include "asm/results/asm_08018d9c.s"

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

#include "asm/results/asm_080191ac.s"

#include "asm/results/asm_080191b8.s"

#include "asm/results/asm_080191bc.s"

#include "asm/results/asm_08019210.s"


// Initialise Any-Input Trackers
void func_08019268(struct InputScoreTracker *tracker) {
    tracker->totalInputs = 0;
    tracker->totalHits = 0;
    tracker->totalBarelies = 0;
    tracker->totalEarliness = 0;
    tracker->totalLateness = 0;
}


// Initialise Cue Input Trackers and Marking Criteria
void func_08019278(void) {
    u32 i;

    D_089d7980->markingData = NULL;

    for (i = 0; i < 16; i++) {
        func_08019268(&D_089d7980->cueInputTrackers[i]);
    }
}


// Initialise Results Handler
void func_080192a4(void) {
    u32 i;

    D_089d7980->unk0_b0 = FALSE;
    D_089d7980->unk4 = 0;
    D_089d7980->unk6 = -1;
    D_089d7980->unk74 = 0;

    for (i = 0; i < 4; i++) {
        func_08019268(&D_089d7980->anyInputTrackers[i]);
    }

    func_08019278();
    D_089d7980->headerText = NULL;
    D_089d7980->totalPoints = 0;
    D_089d7980->maximumPoints = 0;
}


// [func_08019304] Import Criteria (Script Function)
void func_08019304(const struct MarkingCriteria **markingData) {
    D_089d7980->markingData = markingData;
}


// [func_08019310] Set Header Text (Script Function)
void func_08019310(char *headerText) {
    D_089d7980->headerText = headerText;
}


// [func_08019324] Assess Inputs (Script Function)
void func_08019324(u32 assess) {
    D_089d7980->markingInputs = assess;
}


// Check if Assessing Inputs
u32 func_08019340(void) {
    return D_089d7980->markingInputs;
}


// Register Input
void func_08019350(u32 criterion, u32 level, s32 offset) {
    struct InputScoreTracker *tracker = &D_089d7980->anyInputTrackers[criterion];
    s32 points;

    if (!D_089d7980->markingInputs) return;

    if (level == CUE_RESULT_NONE) {
        D_089d7980->unk74++;
        return;
    }

    tracker->totalInputs++;
    points = 0;

    switch (level) {
        case CUE_RESULT_HIT:
            tracker->totalHits++;
            if (D_089d7980->unk6 == 2) {
                D_089d7980->unk4++;
            }
            points = 11 - ABS(offset);
            break;
        case CUE_RESULT_BARELY:
            tracker->totalBarelies++;
            if (D_089d7980->unk6 == 2) {
                D_089d7980->unk4++;
            }
            points = 10 - ABS(offset);
            break;
        case CUE_RESULT_MISS:
            offset = 0;
            points = -20;
            break;
    }

    if (points > 10) points = 10;
    D_089d7980->totalPoints += points;
    D_089d7980->maximumPoints += 10;

    if (offset < 0) {
        tracker->totalEarliness -= offset;
    } else {
        tracker->totalLateness += offset;
    }

    D_089d7980->unk6 = level;
}


// Register Input for Cue
void func_08019420(u32 criterion, u32 level, s32 offset) {
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
void func_08019480(struct InputScoreTracker *tracker) {
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


// Prepare Negative Remarks (if any)
u32 func_08019a80(void) {
    const struct MarkingCriteria **criteriaPtr;
    const struct MarkingCriteria *criteria;
    struct InputScoreTracker *tracker;
    const char *comments[3];
    char *textDest;
    u32 totalFailed, i;
    u16 *commentSprites;
    u32 requiresSufficientHits, overrideOtherComments;
    u32 failedThisCriterion;
    struct Animation *anim;
    u16 sprite;


    criteriaPtr = D_089d7980->markingData;
    totalFailed = 0;
    tracker = D_089d7980->cueInputTrackers;
    commentSprites = gResultsInfo.commentSprites;
    textDest = gResultsInfo.text;
    gResultsInfo.unk128 = FALSE;

    for (criteriaPtr; *criteriaPtr != NULL; tracker++, criteriaPtr++) {
        if (tracker->totalInputs == 0) continue;

        failedThisCriterion = FALSE;
        criteria = *criteriaPtr;
        requiresSufficientHits = criteria->flags & ~128;
        overrideOtherComments = criteria->flags & 128;

        if (!criteria->useAverageScores) {
            if (tracker->totalMisses <= criteria->missThreshold)
                goto label7A; // :vomit_emoji:
        } else {
            if (tracker->avgMisses > criteria->missThreshold)
                failedThisCriterion = TRUE;

            label7A:
            if (!failedThisCriterion) {
                if ((requiresSufficientHits == TRUE) && (tracker->avgHits < criteria->unkC))
                    failedThisCriterion = TRUE;

                if (!failedThisCriterion)
                    continue;
            }
        }

        if (overrideOtherComments) {
            gResultsInfo.unk128 = TRUE;
            comments[0] = criteria->negativeRemark;
            totalFailed = 1;
            break;
        }

        comments[totalFailed] = criteria->negativeRemark;
        totalFailed++;
        if (totalFailed > 2)
            break;
    }

    for (i = 0; i < totalFailed; i++) {
        strcpy(textDest, D_089d7b34[func_080087d4(i, 0, 2)]);
        func_080081a8(textDest, comments[i]);
        anim = func_08019210(textDest, 2, 3);
        sprite = func_0804d160(D_03005380, anim, 0, 0, 0, 0x800, 0, 0, 0);
        func_0804d8c4(D_03005380, sprite, 4);
        commentSprites[i] = sprite;
    }

    gResultsInfo.totalNegativeComments = totalFailed;
    return totalFailed;
}


// Prepare Positive Remarks (if any)
u32 func_08019bec(void) {
    const struct MarkingCriteria **criteriaPtr;
    const struct MarkingCriteria *criteria;
    struct InputScoreTracker *tracker;
    char *textDest;
    u32 totalSucceeded, totalCriteria, averageSucceeded;
    u16 *commentSprites;
    u32 notPerfect, succeededThisCriterion;
    struct Animation *anim;
    u16 sprite;
    u32 palette;

    criteriaPtr = D_089d7980->markingData;
    totalSucceeded = 0;
    totalCriteria = 0;
    tracker = D_089d7980->cueInputTrackers;
    commentSprites = &gResultsInfo.commentSprites[gResultsInfo.totalNegativeComments];
    notPerfect = FALSE;
    textDest = mem_heap_alloc(0x100);

    for (criteriaPtr; *criteriaPtr != NULL; tracker++, criteriaPtr++) {
        if (tracker->totalInputs == 0)
            continue;

        succeededThisCriterion = TRUE;
        criteria = *criteriaPtr;

        if (tracker->totalMisses != 0) {
            succeededThisCriterion = FALSE;
            notPerfect = TRUE;
        }

        if (criteria->unkA == 0)
            continue;

        totalCriteria++;

        if (!succeededThisCriterion)
            continue;

        if (tracker->avgHits < criteria->unkA)
            succeededThisCriterion = FALSE;

        if (!succeededThisCriterion)
            continue;

        if (gResultsInfo.totalNegativeComments != 0) {
            memcpy(textDest, D_08054f18, 9); // "…でも、"
            func_080081a8(textDest, criteria->positiveRemark);
            anim = func_08019210(textDest, 3, 3);
            palette = 2;
        } else {
            switch (totalSucceeded) {
                case 0:
                    *textDest = *D_08054f14; // ""
                    break;
                case 1:
                    memcpy(textDest, D_08054f24, 9); // "しかも、"
                    break;
                default:
                    memcpy(textDest, D_08054f30, 9); // "さらに、"
                    break;
            }
            func_080081a8(textDest, criteria->positiveRemark);
            anim = func_08019210(textDest, 2, 3);
            palette = 4;
        }

        sprite = func_0804d160(D_03005380, anim, 0, 0, 0, 0x800, 0, 0, 0);
        func_0804d8c4(D_03005380, sprite, palette);
        commentSprites[totalSucceeded] = sprite;

        totalSucceeded++;
        if (totalSucceeded > 2)
            break;

        if (gResultsInfo.totalNegativeComments) {
            func_0804d770(D_03005380, commentSprites[0], FALSE);
            break;
        }
    }

    mem_heap_dealloc(textDest);
    gResultsInfo.totalPositiveComments = totalSucceeded;
    if (totalCriteria == 0)
        return 0;

    averageSucceeded = INT_TO_FIXED(totalSucceeded) / totalCriteria;
    if (averageSucceeded == INT_TO_FIXED(1.0))
        averageSucceeded -= notPerfect;

    return averageSucceeded;
}


#include "asm/results/asm_08019d9c.s"


// [func_08019ee0] LEVEL Display Comments (Script Function)
void func_08019ee0(void) {
    struct InputScoreTracker *tracker = D_089d7980->cueInputTrackers;
    const struct MarkingCriteria **markingData = D_089d7980->markingData;
    const struct Scene *scene;
    struct Animation *textAnim;
    s16 textSprite;
    u32 totalCriteriaFailed, averageCriteriaSucceeded;
    u32 previousResult;

    func_0801287c();

    while (*markingData != NULL) {
        if (tracker->totalInputs != 0) {
            func_08019480(tracker);
        }
        markingData++;
        tracker++;
    }

    totalCriteriaFailed = func_08019a80();
    averageCriteriaSucceeded = func_08019bec();
    func_08019d9c();
    if (totalCriteriaFailed != 0) {
        gResultsInfo.unkC = 0;
        func_0804cebc(D_03005380, gResultsInfo.resultIcon, 1); // Try Again
        func_080191bc(-1);
        return;
    }
    if (func_080139a0() != 0) {
        scene = func_080005e0(&D_089d7c18);
        func_080006b0(&D_089d7c18, &D_089d6d74);
        func_080006b0(&D_089d6d74, scene);
        func_08013994();
    }
    if (averageCriteriaSucceeded == 0) {
        textAnim = func_08019210(D_089d7b40[func_08001980(4)], 1, 3);
        textSprite = func_0804d160(D_03005380, textAnim, 0, 120, 80, 0x800, 0, 0, 0);
        func_0804d8c4(D_03005380, textSprite, 4);
    }
    if (averageCriteriaSucceeded == INT_TO_FIXED(1.0)) {
        gResultsInfo.unkC = 2;
        func_0804cebc(D_03005380, gResultsInfo.resultIcon, 2); // Superb
        func_080191bc(RHYTHM_GAME_STATE_MEDAL_OBTAINED);
        previousResult = func_0801317c(D_030046a8->data.gameSelectPosX, D_030046a8->data.gameSelectPosY);
        if (previousResult < RHYTHM_GAME_STATE_MEDAL_OBTAINED) {
            gResultsInfo.unk126 = 1;
        }
        return;
    }
    gResultsInfo.unkC = 1;
    func_0804cebc(D_03005380, gResultsInfo.resultIcon, 0); // OK
    func_080191bc(RHYTHM_GAME_STATE_CLEARED);
    if (averageCriteriaSucceeded != 0) {
        gResultsInfo.unk127 = 1;
    }
}


#include "asm/results/asm_0801a060.s"

#include "asm/results/asm_0801a0ec.s"

// Epilogue screen

#include "asm/results/asm_0801a0f0.s"

#include "asm/results/asm_0801a140.s"

#include "asm/results/asm_0801a174.s"

#include "asm/results/asm_0801a1b0.s"

#include "asm/results/asm_0801a310.s"

#include "asm/results/asm_0801a314.s"

#include "asm/results/asm_0801a354.s"

#include "asm/results/asm_0801a370.s"
