#include "engines/drum_live.h"
#include "src/scenes/gameplay.h"
#include "src/memory.h"
#include "src/code_08001360.h"
#include "src/task_pool.h"
#include "src/memory_heap.h"
#include "src/code_08007468.h"
#include "src/text_printer.h"
#include "src/code_0800b778.h"
#include "src/lib_0804ca80.h"

asm(".include \"include/gba.inc\""); // Temporary

// For readability.
#define gDrumLive ((struct DrumLiveEngineData *)gCurrentEngineData)

static s32 D_03001564; // unknown type


/* DRUM LIVE */


#include "asm/engines/drumming_lessons/asm_08025228.s"

#include "asm/engines/drumming_lessons/asm_08025248.s"

#include "asm/engines/drumming_lessons/asm_08025460.s"

#include "asm/engines/drumming_lessons/asm_08025538.s"

#include "asm/engines/drumming_lessons/asm_0802555c.s"

#include "asm/engines/drumming_lessons/asm_080255f8.s"

#include "asm/engines/drumming_lessons/asm_08025748.s"

#include "asm/engines/drumming_lessons/asm_0802575c.s"

#include "asm/engines/drumming_lessons/asm_080257b8.s"

#include "asm/engines/drumming_lessons/asm_08025848.s"

#include "asm/engines/drumming_lessons/asm_080258c0.s"

#include "asm/engines/drumming_lessons/asm_08025a2c.s"

#include "asm/engines/drumming_lessons/asm_08025a58.s"

#include "asm/engines/drumming_lessons/asm_08025a64.s"

#include "asm/engines/drumming_lessons/asm_08025a98.s"

#include "asm/engines/drumming_lessons/asm_08025aa4.s"

#include "asm/engines/drumming_lessons/asm_08025abc.s"

#include "asm/engines/drumming_lessons/asm_08025ad4.s"

#include "asm/engines/drumming_lessons/asm_08025ae8.s"

#include "asm/engines/drumming_lessons/asm_08025afc.s"

#include "asm/engines/drumming_lessons/asm_08025b88.s"

#include "asm/engines/drumming_lessons/asm_08025bcc.s"

#include "asm/engines/drumming_lessons/asm_08025be0.s"

#include "asm/engines/drumming_lessons/asm_08025bec.s"

#include "asm/engines/drumming_lessons/asm_08025c48.s"

#include "asm/engines/drumming_lessons/asm_08025c4c.s"

#include "asm/engines/drumming_lessons/asm_08025c8c.s"

#include "asm/engines/drumming_lessons/asm_08025ccc.s"

#include "asm/engines/drumming_lessons/asm_08025cd0.s"

#include "asm/engines/drumming_lessons/asm_08025d34.s"

#include "asm/engines/drumming_lessons/asm_08025d98.s"

#include "asm/engines/drumming_lessons/asm_08025d9c.s"

#include "asm/engines/drumming_lessons/asm_08025e00.s"

#include "asm/engines/drumming_lessons/asm_08025e74.s"

#include "asm/engines/drumming_lessons/asm_08025ed8.s"

#include "asm/engines/drumming_lessons/asm_08025f3c.s"

#include "asm/engines/drumming_lessons/asm_08025f50.s"

#include "asm/engines/drumming_lessons/asm_08025f90.s"

#include "asm/engines/drumming_lessons/asm_08025fbc.s"

#include "asm/engines/drumming_lessons/asm_08026024.s"

#include "asm/engines/drumming_lessons/asm_0802663c.s"

#include "asm/engines/drumming_lessons/asm_08026640.s"

#include "asm/engines/drumming_lessons/asm_080268cc.s"

#include "asm/engines/drumming_lessons/asm_08026930.s"

#include "asm/engines/drumming_lessons/asm_08026968.s"

#include "asm/engines/drumming_lessons/asm_080269e8.s"

#include "asm/engines/drumming_lessons/asm_08026a0c.s"

#include "asm/engines/drumming_lessons/asm_08026a50.s"

#include "asm/engines/drumming_lessons/asm_08026aac.s"

#include "asm/engines/drumming_lessons/asm_08026b0c.s"

#include "asm/engines/drumming_lessons/asm_08026b18.s"

#include "asm/engines/drumming_lessons/asm_08026b24.s"

#include "asm/engines/drumming_lessons/asm_08026b3c.s"

#include "asm/engines/drumming_lessons/asm_08026bc8.s"

#include "asm/engines/drumming_lessons/asm_08026c1c.s"

#include "asm/engines/drumming_lessons/asm_08026c38.s"

#include "asm/engines/drumming_lessons/asm_08026c3c.s"

#include "asm/engines/drumming_lessons/asm_08026c84.s"

#include "asm/engines/drumming_lessons/asm_08026cc4.s"

#include "asm/engines/drumming_lessons/asm_08026d04.s"

#include "asm/engines/drumming_lessons/asm_08026d28.s"

#include "asm/engines/drumming_lessons/asm_08026d68.s"

#include "asm/engines/drumming_lessons/asm_08026de8.s"

#include "asm/engines/drumming_lessons/asm_08026dec.s"
