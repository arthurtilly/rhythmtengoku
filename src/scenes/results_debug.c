#include "global.h"
#include "results.h"
#include "graphics/results/results_graphics.h"

#include "levels.h"
#include "cues.h"
#include "src/scenes/game_select.h"

asm(".include \"include/gba.inc\"");//Temporary


// For readability.
#define gResults ((struct ResultsSceneData *)gCurrentSceneData)


/* RESULTS (DEBUG-TYPE) */


#include "asm/results/asm_080188b4.s"

#include "asm/results/asm_080188b8.s"

#include "asm/results/asm_080188e4.s"

#include "asm/results/asm_08018914.s"

#include "asm/results/asm_08018934.s"

#include "asm/results/asm_080189b0.s"

#include "asm/results/asm_080189b4.s"

#include "asm/results/asm_080189f4.s"

#include "asm/results/asm_08018a10.s"
