#include "global.h"
#include "src/lib_sram.h"

extern u16 verify_sram_fast_code[];
extern u16 read_sram_fast_code[];
extern u32 write_int_sram_fast_code[];

extern void (*write_int_sram_fast_rom)(const u8 *src, u8 *dest, u32 size);
extern const s32 write_int_sram_fast_rom_end;

// SRAM Library Version
const char lib_sram_version[] = "SRAM_F_V110";

const void *const lib_sram_pointers[] = {
    (void *)&write_int_sram_fast,

    (void *)read_sram_fast_rom,
    (void *)read_sram_fast_code,
    (void *)write_sram_fast,
    (void *)&read_sram_fast,
    (void *)read_sram_fast_code + 1,

    (void *)verify_sram_fast_rom,
    (void *)verify_sram_fast_code,
    (void *)set_sram_fast_func,
    (void *)&verify_sram_fast,
    (void *)verify_sram_fast_code + 1,

    (void *)&write_int_sram_fast_rom,
    (void *)write_int_sram_fast_code,
    (void *)&write_int_sram_fast_rom_end,
    (void *)&write_int_sram_fast,
    (void *)&verify_sram_fast,
};
