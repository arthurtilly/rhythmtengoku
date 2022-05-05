asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08049fa0 \n\
/* 08049fa0 */ PUSH {R4-R7, LR} \n\
/* 08049fa2 */ ADDS R6, R0, 0x0 @ Set R6 to R0 + 0x0 \n\
/* 08049fa4 */ ADDS R7, R1, 0x0 @ Set R7 to R1 + 0x0 \n\
/* 08049fa6 */ ADDS R3, R2, 0x0 @ Set R3 to R2 + 0x0 \n\
/* 08049fa8 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 08049faa */ MOVS R0, 0x64 @ Set R0 to 0x64 \n\
/* 08049fac */ STRB R0, [R6] \n\
/* 08049fae */ STRB R0, [R6, 0x1] \n\
/* 08049fb0 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08049fb2 */ STRH R1, [R6, 0x2] \n\
/* 08049fb4 */ STRB R0, [R6, 0x4] \n\
/* 08049fb6 */ STRB R0, [R6, 0x5] \n\
/* 08049fb8 */ STRH R1, [R6, 0x6] \n\
/* 08049fba */ MOVS R0, 0xA0 @ Set R0 to 0xA0 \n\
/* 08049fbc */ LSLS R0, R0, 0x5 \n\
/* 08049fbe */ STRH R0, [R6, 0x8] \n\
/* 08049fc0 */ LDR R0, =D_08a86008 \n\
/* 08049fc2 */ STR R0, [R6, 0xC] \n\
/* 08049fc4 */ MOVS R0, 0x1F @ Set R0 to 0x1F \n\
/* 08049fc6 */ ADDS R1, R7, 0x0 @ Set R1 to R7 + 0x0 \n\
/* 08049fc8 */ ANDS R1, R0 @ Set R1 to R1 & R0 \n\
/* 08049fca */ LDRB R2, [R6, 0x14] \n\
/* 08049fcc */ MOVS R0, 0x20 @ Set R0 to 0x20 \n\
/* 08049fce */ NEGS R0, R0 @ Set R0 to -R0 \n\
/* 08049fd0 */ ANDS R0, R2 @ Set R0 to R0 & R2 \n\
/* 08049fd2 */ ORRS R0, R1 @ Set R0 to R0 | R1 \n\
/* 08049fd4 */ STRB R0, [R6, 0x14] \n\
/* 08049fd6 */ STR R3, [R6, 0x18] \n\
/* 08049fd8 */ MOVS R5, 0x0 @ Set R5 to 0x0 \n\
/* 08049fda */ CMP R5, R7 @ Check R5 - R7 \n\
/* 08049fdc */ BCS branch_08049fee \n\
/* 08049fde */ ADDS R4, R3, 0x0 @ Set R4 to R3 + 0x0 \n\
 \n\
branch_08049fe0: \n\
/* 08049fe0 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 08049fe2 */ BL func_08049ecc \n\
/* 08049fe6 */ ADDS R4, 0x20 @ Add 0x20 to R4 \n\
/* 08049fe8 */ ADDS R5, 0x1 @ Add 0x1 to R5 \n\
/* 08049fea */ CMP R5, R7 @ Check R5 - R7 \n\
/* 08049fec */ BCC branch_08049fe0 \n\
 \n\
branch_08049fee: \n\
/* 08049fee */ LDR R0, [R6, 0x14] \n\
/* 08049ff0 */ MOVS R1, 0x1F @ Set R1 to 0x1F \n\
/* 08049ff2 */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 08049ff4 */ STR R0, [R6, 0x14] \n\
/* 08049ff6 */ MOVS R5, 0x0 @ Set R5 to 0x0 \n\
/* 08049ff8 */ ADDS R1, R6, 0x0 @ Set R1 to R6 + 0x0 \n\
/* 08049ffa */ ADDS R1, 0x1C @ Add 0x1C to R1 \n\
/* 08049ffc */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
 \n\
branch_08049ffe: \n\
/* 08049ffe */ ADDS R0, R1, R5 @ Set R0 to R1 + R5 \n\
/* 0804a000 */ STRB R2, [R0] \n\
/* 0804a002 */ ADDS R5, 0x1 @ Add 0x1 to R5 \n\
/* 0804a004 */ CMP R5, 0xB @ Compare R5 and 0xB \n\
/* 0804a006 */ BLS branch_08049ffe \n\
/* 0804a008 */ POP {R4-R7} \n\
/* 0804a00a */ POP {R0} \n\
/* 0804a00c */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
