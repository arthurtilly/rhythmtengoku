#include "results.h"
#include "cues.h"
#include "src/code_08001360.h"
#include "src/code_08003980.h"
// #include "src/code_08007468.h"
#include "src/code_0800b778.h"
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


#include "asm/results/asm_08018bf0.s"

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


#include "asm/results/asm_08019480.s"

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

#include "asm/results/asm_08019a80.s"

#include "asm/results/asm_08019bec.s"

#include "asm/results/asm_08019d9c.s"

#include "asm/results/asm_08019ee0.s"

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
