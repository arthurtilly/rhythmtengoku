#include "global.h"
#include "data_room.h"

asm(".include \"include/gba.inc\"");//Temporary

static s8 D_03001318; // unknown type
static s8 D_03001319; // unknown type

/* RHYTHM DATA ROOM */

#include "asm/data_room/asm_08011ec0.s"

#include "asm/data_room/asm_08011ed0.s"

#include "asm/data_room/asm_08011efc.s"

#include "asm/data_room/asm_08011f2c.s"

#include "asm/data_room/asm_08011f68.s"

#include "asm/data_room/asm_08011fa8.s"

#include "asm/data_room/asm_08012084.s"

#include "asm/data_room/asm_08012090.s"

#include "asm/data_room/asm_080120e4.s"

#include "asm/data_room/asm_08012200.s"

#include "asm/data_room/asm_08012214.s"

#include "asm/data_room/asm_08012218.s"

#include "asm/data_room/asm_080122a8.s"

#include "asm/data_room/asm_080123e0.s"

#include "asm/data_room/asm_080123fc.s"
