asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0804c398 \n\
/* 0804c398 */ PUSH {R4-R6, LR} \n\
/* 0804c39a */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 0804c39c */ LDR R2, [R4] \n\
/* 0804c39e */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0804c3a0 */ MOVS R6, 0x7F @ Set R6 to 0x7F \n\
/* 0804c3a2 */ MOVS R5, 0x80 @ Set R5 to 0x80 \n\
 \n\
branch_0804c3a4: \n\
/* 0804c3a4 */ LDRB R1, [R2] \n\
/* 0804c3a6 */ ADDS R2, 0x1 @ Add 0x1 to R2 \n\
/* 0804c3a8 */ LSLS R3, R3, 0x7 \n\
/* 0804c3aa */ ADDS R0, R1, 0x0 @ Set R0 to R1 + 0x0 \n\
/* 0804c3ac */ ANDS R0, R6 @ Set R0 to R0 & R6 \n\
/* 0804c3ae */ ORRS R3, R0 @ Set R3 to R3 | R0 \n\
/* 0804c3b0 */ ANDS R1, R5 @ Set R1 to R1 & R5 \n\
/* 0804c3b2 */ CMP R1, 0x0 @ Compare R1 and 0x0 \n\
/* 0804c3b4 */ BNE branch_0804c3a4 \n\
/* 0804c3b6 */ STR R2, [R4] \n\
/* 0804c3b8 */ ADDS R0, R3, 0x0 @ Set R0 to R3 + 0x0 \n\
/* 0804c3ba */ POP {R4-R6} \n\
/* 0804c3bc */ POP {R1} \n\
/* 0804c3be */ BX R1 \n\
.balign 4, 0 \n\
.syntax divided");
