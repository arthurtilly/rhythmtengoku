asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0804da20 \n\
/* 0804da20 */ PUSH {R4-R6, LR} \n\
/* 0804da22 */ ADDS R5, R0, 0x0 @ Set R5 to R0 + 0x0 \n\
/* 0804da24 */ LSLS R2, R2, 0x10 \n\
/* 0804da26 */ LSRS R6, R2, 0x10 \n\
/* 0804da28 */ LDR R2, =D_03004428 \n\
/* 0804da2a */ MOVS R0, 0x14 @ Set R0 to 0x14 \n\
/* 0804da2c */ STRB R0, [R2] \n\
/* 0804da2e */ LSLS R1, R1, 0x10 \n\
/* 0804da30 */ ASRS R4, R1, 0x10 \n\
/* 0804da32 */ ADDS R0, R5, 0x0 @ Set R0 to R5 + 0x0 \n\
/* 0804da34 */ ADDS R1, R4, 0x0 @ Set R1 to R4 + 0x0 \n\
/* 0804da36 */ BL func_0804cc68 \n\
/* 0804da3a */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0804da3c */ BNE branch_0804da5c \n\
/* 0804da3e */ LDR R0, [R5, 0x8] \n\
/* 0804da40 */ LSLS R1, R4, 0x4 \n\
/* 0804da42 */ SUBS R1, R1, R4 @ Set R1 to R1 - R4 \n\
/* 0804da44 */ LSLS R1, R1, 0x2 \n\
/* 0804da46 */ ADDS R1, R1, R0 @ Set R1 to R1 + R0 \n\
/* 0804da48 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 0804da4a */ ADDS R2, R6, 0x0 @ Set R2 to R6 + 0x0 \n\
/* 0804da4c */ ANDS R2, R0 @ Set R2 to R2 & R0 \n\
/* 0804da4e */ LSLS R2, R2, 0x5 \n\
/* 0804da50 */ LDRB R3, [R1, 0x1] \n\
/* 0804da52 */ MOVS R0, 0x21 @ Set R0 to 0x21 \n\
/* 0804da54 */ NEGS R0, R0 @ Set R0 to -R0 \n\
/* 0804da56 */ ANDS R0, R3 @ Set R0 to R0 & R3 \n\
/* 0804da58 */ ORRS R0, R2 @ Set R0 to R0 | R2 \n\
/* 0804da5a */ STRB R0, [R1, 0x1] \n\
 \n\
branch_0804da5c: \n\
/* 0804da5c */ POP {R4-R6} \n\
/* 0804da5e */ POP {R0} \n\
/* 0804da60 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
