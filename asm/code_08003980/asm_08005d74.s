asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08005d74 \n\
/* 08005d74 */ PUSH {R4-R6, LR} \n\
/* 08005d76 */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 08005d78 */ LSLS R1, R1, 0x10 \n\
/* 08005d7a */ LSRS R5, R1, 0x10 \n\
/* 08005d7c */ CMP R4, 0x0 @ Compare R4 and 0x0 \n\
/* 08005d7e */ BLT branch_08005da8 \n\
/* 08005d80 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 08005d82 */ LDR R2, =D_03000908 \n\
/* 08005d84 */ MOVS R6, 0x1 @ Set R6 to 0x1 \n\
 \n\
branch_08005d86: \n\
/* 08005d86 */ LDRB R1, [R2] \n\
/* 08005d88 */ ADDS R0, R6, 0x0 @ Set R0 to R6 + 0x0 \n\
/* 08005d8a */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 08005d8c */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08005d8e */ BEQ branch_08005da0 \n\
/* 08005d90 */ LDR R0, [R2, 0x8] \n\
/* 08005d92 */ CMP R0, R4 @ Check R0 - R4 \n\
/* 08005d94 */ BNE branch_08005da0 \n\
/* 08005d96 */ STRH R5, [R2, 0x18] \n\
/* 08005d98 */ B branch_08005da8 \n\
\n\
.ltorg \n\
 \n\
branch_08005da0: \n\
/* 08005da0 */ ADDS R3, 0x1 @ Add 0x1 to R3 \n\
/* 08005da2 */ ADDS R2, 0x1C @ Add 0x1C to R2 \n\
/* 08005da4 */ CMP R3, 0x2F @ Compare R3 and 0x2F \n\
/* 08005da6 */ BLS branch_08005d86 \n\
 \n\
branch_08005da8: \n\
/* 08005da8 */ POP {R4-R6} \n\
/* 08005daa */ POP {R0} \n\
/* 08005dac */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
