.section .text
.syntax unified

.include "include/gba.inc"

@ SRAM Library
@ Write 32-bit Integers to SRAM
arm_func_start write_int_sram_fast
    ldr     r12, [r0], #4
    strb    r12, [r1], #1
    lsr     r12, r12, #8
    strb    r12, [r1], #1
    lsr     r12, r12, #8
    strb    r12, [r1], #1
    lsr     r12, r12, #8
    strb    r12, [r1], #1
    subs    r2, r2, #1
    bne     write_int_sram_fast
    bx      lr
glabel write_int_sram_fast_end

.end
