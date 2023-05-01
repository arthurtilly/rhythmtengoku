#include "engines/drum_intro.h"
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
#define gDrumIntro ((struct DrumIntroEngineData *)gCurrentEngineData)


/* DRUM INTRO */


#include "asm/engines/drumming_lessons/asm_080239a0.s"

#include "asm/engines/drumming_lessons/asm_080239bc.s"

#include "asm/engines/drumming_lessons/asm_080239ec.s"

#include "asm/engines/drumming_lessons/asm_08023a18.s"

#include "asm/engines/drumming_lessons/asm_08023bb8.s"

#include "asm/engines/drumming_lessons/asm_08023bcc.s"

#include "asm/engines/drumming_lessons/asm_08023bf4.s"

#include "asm/engines/drumming_lessons/asm_08023c0c.s"

#include "asm/engines/drumming_lessons/asm_08023c44.s"

#include "asm/engines/drumming_lessons/asm_08023c58.s"

#include "asm/engines/drumming_lessons/asm_08023c6c.s"

#include "asm/engines/drumming_lessons/asm_08023d44.s"

#include "asm/engines/drumming_lessons/asm_08023d60.s"

#include "asm/engines/drumming_lessons/asm_08023d64.s"

#include "asm/engines/drumming_lessons/asm_08023d68.s"

#include "asm/engines/drumming_lessons/asm_08023d6c.s"

#include "asm/engines/drumming_lessons/asm_08023d78.s"

#include "asm/engines/drumming_lessons/asm_08023da0.s"

#include "asm/engines/drumming_lessons/asm_08023da4.s"

#include "asm/engines/drumming_lessons/asm_08023df8.s"

#include "asm/engines/drumming_lessons/asm_08023e4c.s"

#include "asm/engines/drumming_lessons/asm_08023e50.s"

#include "asm/engines/drumming_lessons/asm_08023edc.s"

#include "asm/engines/drumming_lessons/asm_08023f68.s"

#include "asm/engines/drumming_lessons/asm_08023f6c.s"

#include "asm/engines/drumming_lessons/asm_08023ffc.s"

#include "asm/engines/drumming_lessons/asm_080240a4.s"

#include "asm/engines/drumming_lessons/asm_08024134.s"

#include "asm/engines/drumming_lessons/asm_080241c0.s"

#include "asm/engines/drumming_lessons/asm_0802424c.s"

#include "asm/engines/drumming_lessons/asm_0802428c.s"

#include "asm/engines/drumming_lessons/asm_080242cc.s"

#include "asm/engines/drumming_lessons/asm_080242f8.s"

#include "asm/engines/drumming_lessons/asm_08024978.s"

#include "asm/engines/drumming_lessons/asm_0802497c.s"

#include "asm/engines/drumming_lessons/asm_080249c0.s"

#include "asm/engines/drumming_lessons/asm_080249f0.s"

#include "asm/engines/drumming_lessons/asm_08024a4c.s"

#include "asm/engines/drumming_lessons/asm_08024ae4.s"

#include "asm/engines/drumming_lessons/asm_08024ba0.s"

#include "asm/engines/drumming_lessons/asm_08024bd0.s"

#include "asm/engines/drumming_lessons/asm_08024be8.s"

#include "asm/engines/drumming_lessons/asm_08024bfc.s"

#include "asm/engines/drumming_lessons/asm_08024c2c.s"

#include "asm/engines/drumming_lessons/asm_08024cb0.s"

#include "asm/engines/drumming_lessons/asm_08024d44.s"

#include "asm/engines/drumming_lessons/asm_08024d48.s"

#include "asm/engines/drumming_lessons/asm_08024d4c.s"

#include "asm/engines/drumming_lessons/asm_08024d68.s"

#include "asm/engines/drumming_lessons/asm_08024d6c.s"

#include "asm/engines/drumming_lessons/asm_08024da4.s"

#include "asm/engines/drumming_lessons/asm_08024ddc.s"

#include "asm/engines/drumming_lessons/asm_08024e0c.s"

#include "asm/engines/drumming_lessons/asm_08024e48.s"

#include "asm/engines/drumming_lessons/asm_08024ecc.s"

#include "asm/engines/drumming_lessons/asm_08024ed0.s"

#include "asm/engines/drumming_lessons/asm_08024ef4.s"

#include "asm/engines/drumming_lessons/asm_08024f64.s"

#include "asm/engines/drumming_lessons/asm_08024fb4.s"

#include "asm/engines/drumming_lessons/asm_08024fbc.s"

#include "asm/engines/drumming_lessons/asm_08024fc4.s"

#include "asm/engines/drumming_lessons/asm_08024ff4.s"

#include "asm/engines/drumming_lessons/asm_08025020.s"

#include "asm/engines/drumming_lessons/asm_08025038.s"

#include "asm/engines/drumming_lessons/asm_080251d0.s"

#include "asm/engines/drumming_lessons/asm_080251d8.s"

#include "asm/engines/drumming_lessons/asm_080251e8.s"

#include "asm/engines/drumming_lessons/asm_080251ec.s"

#include "asm/engines/drumming_lessons/asm_080251f0.s"

#include "asm/engines/drumming_lessons/asm_080251fc.s"

#include "asm/engines/drumming_lessons/asm_08025204.s"

#include "asm/engines/drumming_lessons/asm_0802520c.s"

#include "asm/engines/drumming_lessons/asm_08025214.s"

#include "asm/engines/drumming_lessons/asm_08025218.s"

#include "asm/engines/drumming_lessons/asm_0802521c.s"

#include "asm/engines/drumming_lessons/asm_08025220.s"
