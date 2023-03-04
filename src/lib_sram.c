#include "global.h"
#include "lib_sram.h"

asm(".include \"include/gba.inc\"");//Temporary

extern u16 sVerifySramFastWorkCopy[];   // Static Copy of verify_sram_fast()
extern u16 sReadSramFastWorkCopy[];     // Static Copy of read_sram_fast()
extern u32 sWriteIntSramFastWorkCopy[]; // Static Copy of write_int_sram_fast()

extern void (*write_int_sram_fast)(const u8 *src, u8 *dest, u32 size);


/* SRAM Library */


// (https://decomp.me/scratch/twvo4)
#include "asm/lib_sram/asm_0804c870.s"

// (https://decomp.me/scratch/pFWEv)
#include "asm/lib_sram/asm_0804c8b0.s"

// ...
#include "asm/lib_sram/asm_0804c920.s"

// (https://decomp.me/scratch/qFu1X)
#include "asm/lib_sram/asm_0804c96c.s"

// ...
#include "asm/lib_sram/asm_0804ca40.s"
