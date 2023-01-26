#include "global.h"
#include "src/main.h"
#include "src/memory.h"

extern const struct Scene D_089dd47c;

/* MAIN */

// [D_08935fac]
const struct Scene *const D_08935fac = &D_089dd47c;

// [D_08935fb0]
const struct Scene *const D_08935fb0 = &D_089dd47c;

/* MEMORY */

// [D_08935fb4]
s32 *const D_08935fb4 = (s32 *)CartRAMBase;

// [D_08935fb8]
s32 *const D_08935fb8 = (s32 *)(CartRAMBase + 0x4000);

// [D_08935fbc]
const char D_08935fbc[8] = "RIQ";

// [D_08935fc4]
const char D_08935fc4[8] = "CAL";
