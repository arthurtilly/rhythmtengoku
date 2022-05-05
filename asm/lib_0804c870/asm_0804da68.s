asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0804da68 \n\
/* 0804da68 */ PUSH {R4-R6, LR} \n\
/* 0804da6a */ ADDS R5, R0, 0x0 @ Set R5 to R0 + 0x0 \n\
/* 0804da6c */ LSLS R2, R2, 0x10 \n\
/* 0804da6e */ LSRS R6, R2, 0x10 \n\
/* 0804da70 */ LDR R2, =D_03004428 \n\
/* 0804da72 */ MOVS R0, 0x15 @ Set R0 to 0x15 \n\
/* 0804da74 */ STRB R0, [R2] \n\
/* 0804da76 */ LSLS R1, R1, 0x10 \n\
/* 0804da78 */ ASRS R4, R1, 0x10 \n\
/* 0804da7a */ ADDS R0, R5, 0x0 @ Set R0 to R5 + 0x0 \n\
/* 0804da7c */ ADDS R1, R4, 0x0 @ Set R1 to R4 + 0x0 \n\
/* 0804da7e */ BL func_0804cc68 \n\
/* 0804da82 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0804da84 */ BNE branch_0804da9c \n\
/* 0804da86 */ LDR R0, [R5, 0x8] \n\
/* 0804da88 */ LSLS R1, R4, 0x4 \n\
/* 0804da8a */ SUBS R1, R1, R4 @ Set R1 to R1 - R4 \n\
/* 0804da8c */ LSLS R1, R1, 0x2 \n\
/* 0804da8e */ ADDS R1, R1, R0 @ Set R1 to R1 + R0 \n\
/* 0804da90 */ LSLS R3, R6, 0x7 \n\
/* 0804da92 */ LDRB R2, [R1, 0x1] \n\
/* 0804da94 */ MOVS R0, 0x7F @ Set R0 to 0x7F \n\
/* 0804da96 */ ANDS R0, R2 @ Set R0 to R0 & R2 \n\
/* 0804da98 */ ORRS R0, R3 @ Set R0 to R0 | R3 \n\
/* 0804da9a */ STRB R0, [R1, 0x1] \n\
 \n\
branch_0804da9c: \n\
/* 0804da9c */ POP {R4-R6} \n\
/* 0804da9e */ POP {R0} \n\
/* 0804daa0 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
