/*
 * Nintendo's GBA SaveRAM Library (V110)
 *
 * SRAM should only be written to through this library's functions.
 * verify_sram() and read_sram() should only be called via static variables.
*/

#pragma once

#include "global.h"

extern void (*read_sram_fast)(const u8 *src, u8 *dest, u32 size);      // Pointer to read_sram_fast_code
extern void (*write_int_sram_fast)(const u8 *src, u8 *dest, u32 size); // Pointer to write_int_sram_fast_code
extern void (*verify_sram_fast)(const u8 *src, u8 *dest, u32 size);    // Pointer to verify_sram_fast_code

extern void read_sram_fast_rom(const u8 *src, u8 *dest, u32 size);  // Read SRAM (Fast)
extern void write_sram_fast(const u8 *src, u8 *dest, u32 size);     // Write SRAM (Fast)
extern u32 verify_sram_fast_rom(const u8 *src, u8 *dest, u32 size); // Verify SRAM (Fast)
extern void set_sram_fast_func(void); // Set SRAM (Fast) Functions
extern u32 write_and_verify_sram_fast(const u8 *src, u8 *dest, u32 size); // Write and Verify SRAM (Fast)
