#include "global.h"
#include "src/main.h"
#include "src/memory.h"

extern struct Scene D_089dd47c;

/* MAIN */

// [D_08935fac]
struct Scene *D_08935fac = &D_089dd47c;

// [D_08935fb0]
struct Scene *D_08935fb0 = &D_089dd47c;

/* MEMORY */

// [D_08935fb4]
u8 *save_memory_base = (u8 *)CartRAMBase;

// [D_08935fb8]
u8 *backup_save_memory_base = (u8 *)(CartRAMBase + 0x4000);

// [D_08935fbc]
char D_08935fbc[8] = "RIQ";

// [D_08935fc4]
char D_08935fc4[8] = "CAL";
