#include "global.h"
#include "scenes.h"
#include "reading.h"
#include "graphics/data_room/data_room_graphics.h"

#include "levels.h"
#include "src/scenes/game_select.h"

asm(".include \"include/gba.inc\"");//Temporary

// For readability.
#define gReadingInfo ((struct ReadingSceneInfo *)D_030046a4)


/* READING MATERIAL */


#include "asm/reading/asm_0801a384.s"

#include "asm/reading/asm_0801a3b0.s"

#include "asm/reading/asm_0801a3e4.s"

#include "asm/reading/asm_0801a414.s"

#include "asm/reading/asm_0801a450.s"

#include "asm/reading/asm_0801a5d8.s"

#include "asm/reading/asm_0801a70c.s"

#include "asm/reading/asm_0801a860.s"

#include "asm/reading/asm_0801a8a0.s"

#include "asm/reading/asm_0801a8b0.s"
