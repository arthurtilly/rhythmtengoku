#include "global.h"
#include "src/lib_sram.h"

extern u16 sVerifySramFastWorkCopy[];
extern u16 sReadSramFastWorkCopy[];
extern u32 sWriteIntSramFastWorkCopy[];

extern void (*write_int_sram_fast)(const u8 *src, u8 *dest, u32 size);
extern const s32 write_int_sram_fast_end;

// SRAM Library Version
const char lib_sram_version[] = "SRAM_F_V110";

const void *const lib_sram_pointers[] = {
    (void *)&gWriteIntSramFast,

    (void *)read_sram_fast,
    (void *)sReadSramFastWorkCopy,
    (void *)write_sram_fast,
    (void *)&gReadSramFast,
    (void *)sReadSramFastWorkCopy + 1,

    (void *)verify_sram_fast,
    (void *)sVerifySramFastWorkCopy,
    (void *)set_sram_fast_func,
    (void *)&gVerifySramFast,
    (void *)sVerifySramFastWorkCopy + 1,

    (void *)&write_int_sram_fast,
    (void *)sWriteIntSramFastWorkCopy,
    (void *)&write_int_sram_fast_end,
    (void *)&gWriteIntSramFast,
    (void *)&gVerifySramFast,
};
