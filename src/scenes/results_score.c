#include "global.h"
#include "results.h"
#include "graphics/results/results_graphics.h"

#include "levels.h"
#include "cues.h"
#include "src/scenes/game_select.h"

asm(".include \"include/gba.inc\"");//Temporary


// For readability.
#define gResults ((struct ResultsSceneData *)gCurrentSceneData)


static s32 D_0300132c; // unknown type, unknown if exists
static s32 D_03001330; // unknown type
static s32 D_03001334; // unknown type


/* RESULTS (SCORE-TYPE) */


// Init. Static Variables
#include "asm/results/asm_08018e60.s"


// Graphics Init. 4
#include "asm/results/asm_08018e74.s"


// Graphics Init. 3
#include "asm/results/asm_08018e94.s"


// Graphics Init. 2
#include "asm/results/asm_08018ec0.s"


// Graphics Init. 1
#include "asm/results/asm_08018ef0.s"


// Scene Start
#include "asm/results/asm_08018f10.s"


// Import Criteria/Data? (Script Event)
#include "asm/results/asm_0801911c.s"


// Import Text? (Script Event)
#include "asm/results/asm_08019128.s"


// Scene Update (Paused)
#include "asm/results/asm_08019134.s"


// Scene Update (Active)
#include "asm/results/asm_08019138.s"


// Scene Stop
#include "asm/results/asm_08019178.s"


// ? (Script Event)
#include "asm/results/asm_08019188.s"
