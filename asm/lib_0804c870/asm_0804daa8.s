asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0804daa8 \n\
/* 0804daa8 */ PUSH {R4-R7, LR} \n\
/* 0804daaa */ ADDS R5, R0, 0x0 @ Set R5 to R0 + 0x0 \n\
/* 0804daac */ ADDS R6, R2, 0x0 @ Set R6 to R2 + 0x0 \n\
/* 0804daae */ ADDS R7, R3, 0x0 @ Set R7 to R3 + 0x0 \n\
/* 0804dab0 */ LDR R2, =D_03004428 \n\
/* 0804dab2 */ MOVS R0, 0x16 @ Set R0 to 0x16 \n\
/* 0804dab4 */ STRB R0, [R2] \n\
/* 0804dab6 */ LSLS R1, R1, 0x10 \n\
/* 0804dab8 */ ASRS R4, R1, 0x10 \n\
/* 0804daba */ ADDS R0, R5, 0x0 @ Set R0 to R5 + 0x0 \n\
/* 0804dabc */ ADDS R1, R4, 0x0 @ Set R1 to R4 + 0x0 \n\
/* 0804dabe */ BL func_0804cc68 \n\
/* 0804dac2 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0804dac4 */ BNE branch_0804dad4 \n\
/* 0804dac6 */ LDR R1, [R5, 0x8] \n\
/* 0804dac8 */ LSLS R0, R4, 0x4 \n\
/* 0804daca */ SUBS R0, R0, R4 @ Set R0 to R0 - R4 \n\
/* 0804dacc */ LSLS R0, R0, 0x2 \n\
/* 0804dace */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0804dad0 */ STR R6, [R0, 0x20] \n\
/* 0804dad2 */ STR R7, [R0, 0x24] \n\
 \n\
branch_0804dad4: \n\
/* 0804dad4 */ POP {R4-R7} \n\
/* 0804dad6 */ POP {R0} \n\
/* 0804dad8 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
