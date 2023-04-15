#include "global.h"
#include "src/main.h"
#include "src/memory.h"

extern const struct Scene scene_riq_title;

/* MAIN */

// [D_08935fac]
const struct Scene *D_08935fac = &scene_riq_title;

// [D_08935fb0]
const struct Scene *D_08935fb0 = &scene_riq_title;

/* MEMORY */

// [D_08935fb4]
u8 *save_memory_base = (u8 *)CartRAMBase;

// [D_08935fb8]
u8 *backup_save_memory_base = (u8 *)(CartRAMBase + 0x4000);

// [D_08935fbc]
char D_08935fbc[8] = "RIQ";

// [D_08935fc4]
char D_08935fc4[8] = "CAL";
