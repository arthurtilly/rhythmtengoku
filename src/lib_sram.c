#include "global.h"
#include "lib_sram.h"

asm(".include \"include/gba.inc\"");//Temporary

extern u16 verify_sram_fast_code[];    // Static Copy of verify_sram_fast_rom()
extern u16 read_sram_fast_code[];      // Static Copy of read_sram_fast_rom()
extern u32 write_int_sram_fast_code[]; // Static Copy of write_int_sram_fast_rom()

extern void (*write_int_sram_fast_rom)(const u8 *src, u8 *dest, u32 size); // ARM Function


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
