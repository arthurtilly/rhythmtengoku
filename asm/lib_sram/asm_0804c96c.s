asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start set_sram_fast_func \n\
/* 0804c96c */ PUSH {LR} \n\
/* 0804c96e */ LDR R2, =read_sram_fast_rom \n\
/* 0804c970 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 0804c972 */ BICS R2, R0 @ Clear bits in R0 from R2 \n\
/* 0804c974 */ LDR R3, =read_sram_fast_code \n\
/* 0804c976 */ LDR R0, =write_sram_fast \n\
/* 0804c978 */ LDR R1, =read_sram_fast_rom \n\
/* 0804c97a */ SUBS R0, R0, R1 @ Set R0 to R0 - R1 \n\
/* 0804c97c */ LSLS R0, R0, 0xF \n\
/* 0804c97e */ B branch_0804c998 \n\
\n\
.ltorg \n\
 \n\
branch_0804c98c: \n\
/* 0804c98c */ LDRH R0, [R2] \n\
/* 0804c98e */ STRH R0, [R3] \n\
/* 0804c990 */ ADDS R2, 0x2 @ Add 0x2 to R2 \n\
/* 0804c992 */ ADDS R3, 0x2 @ Add 0x2 to R3 \n\
/* 0804c994 */ SUBS R0, R1, 0x1 @ Set R0 to R1 - 0x1 \n\
/* 0804c996 */ LSLS R0, R0, 0x10 \n\
 \n\
branch_0804c998: \n\
/* 0804c998 */ LSRS R1, R0, 0x10 \n\
/* 0804c99a */ CMP R1, 0x0 @ Compare R1 and 0x0 \n\
/* 0804c99c */ BNE branch_0804c98c \n\
/* 0804c99e */ LDR R1, =read_sram_fast \n\
/* 0804c9a0 */ LDR R0, =(read_sram_fast_code + 1) \n\
/* 0804c9a2 */ STR R0, [R1] \n\
/* 0804c9a4 */ LDR R2, =verify_sram_fast_rom \n\
/* 0804c9a6 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 0804c9a8 */ BICS R2, R0 @ Clear bits in R0 from R2 \n\
/* 0804c9aa */ LDR R3, =verify_sram_fast_code \n\
/* 0804c9ac */ LDR R0, =set_sram_fast_func \n\
/* 0804c9ae */ LDR R1, =verify_sram_fast_rom \n\
/* 0804c9b0 */ SUBS R0, R0, R1 @ Set R0 to R0 - R1 \n\
/* 0804c9b2 */ LSLS R0, R0, 0xF \n\
/* 0804c9b4 */ B branch_0804c9d8 \n\
\n\
.ltorg \n\
 \n\
branch_0804c9cc: \n\
/* 0804c9cc */ LDRH R0, [R2] \n\
/* 0804c9ce */ STRH R0, [R3] \n\
/* 0804c9d0 */ ADDS R2, 0x2 @ Add 0x2 to R2 \n\
/* 0804c9d2 */ ADDS R3, 0x2 @ Add 0x2 to R3 \n\
/* 0804c9d4 */ SUBS R0, R1, 0x1 @ Set R0 to R1 - 0x1 \n\
/* 0804c9d6 */ LSLS R0, R0, 0x10 \n\
 \n\
branch_0804c9d8: \n\
/* 0804c9d8 */ LSRS R1, R0, 0x10 \n\
/* 0804c9da */ CMP R1, 0x0 @ Compare R1 and 0x0 \n\
/* 0804c9dc */ BNE branch_0804c9cc \n\
/* 0804c9de */ LDR R1, =verify_sram_fast \n\
/* 0804c9e0 */ LDR R0, =(verify_sram_fast_code + 1) \n\
/* 0804c9e2 */ STR R0, [R1] \n\
/* 0804c9e4 */ LDR R2, =write_int_sram_fast_rom \n\
/* 0804c9e6 */ LDR R3, =write_int_sram_fast_code \n\
/* 0804c9e8 */ LDR R0, =write_int_sram_fast_rom_end \n\
/* 0804c9ea */ SUBS R0, R0, R2 @ Set R0 to R0 - R2 \n\
/* 0804c9ec */ LSLS R0, R0, 0xF \n\
/* 0804c9ee */ B branch_0804ca10 \n\
\n\
.ltorg \n\
 \n\
branch_0804ca04: \n\
/* 0804ca04 */ LDRH R0, [R2] \n\
/* 0804ca06 */ STRH R0, [R3] \n\
/* 0804ca08 */ ADDS R2, 0x2 @ Add 0x2 to R2 \n\
/* 0804ca0a */ ADDS R3, 0x2 @ Add 0x2 to R3 \n\
/* 0804ca0c */ SUBS R0, R1, 0x1 @ Set R0 to R1 - 0x1 \n\
/* 0804ca0e */ LSLS R0, R0, 0x10 \n\
 \n\
branch_0804ca10: \n\
/* 0804ca10 */ LSRS R1, R0, 0x10 \n\
/* 0804ca12 */ CMP R1, 0x0 @ Compare R1 and 0x0 \n\
/* 0804ca14 */ BNE branch_0804ca04 \n\
/* 0804ca16 */ LDR R1, =write_int_sram_fast \n\
/* 0804ca18 */ LDR R0, =write_int_sram_fast_code \n\
/* 0804ca1a */ STR R0, [R1] \n\
/* 0804ca1c */ LDR R2, =0x04000204 @ !Hardware REG_WAITCNT \n\
/* 0804ca1e */ LDRH R0, [R2] \n\
/* 0804ca20 */ LDR R1, =0x0000fffc \n\
/* 0804ca22 */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 0804ca24 */ MOVS R1, 0x3 @ Set R1 to 0x3 \n\
/* 0804ca26 */ ORRS R0, R1 @ Set R0 to R0 | R1 \n\
/* 0804ca28 */ STRH R0, [R2] \n\
/* 0804ca2a */ POP {R0} \n\
/* 0804ca2c */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
