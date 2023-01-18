asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0804d9b0 \n\
/* 0804d9b0 */ PUSH {R4-R7, LR} \n\
/* 0804d9b2 */ ADDS R7, R0, 0x0 @ Set R7 to R0 + 0x0 \n\
/* 0804d9b4 */ ADDS R4, R2, 0x0 @ Set R4 to R2 + 0x0 \n\
/* 0804d9b6 */ LDR R2, =D_03004428 \n\
/* 0804d9b8 */ MOVS R0, 0x13 @ Set R0 to 0x13 \n\
/* 0804d9ba */ STRB R0, [R2] \n\
/* 0804d9bc */ LSLS R1, R1, 0x10 \n\
/* 0804d9be */ ASRS R6, R1, 0x10 \n\
/* 0804d9c0 */ ADDS R0, R7, 0x0 @ Set R0 to R7 + 0x0 \n\
/* 0804d9c2 */ ADDS R1, R6, 0x0 @ Set R1 to R6 + 0x0 \n\
/* 0804d9c4 */ BL func_0804cc68 \n\
/* 0804d9c8 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0804d9ca */ BNE branch_0804da12 \n\
/* 0804d9cc */ LSLS R0, R6, 0x4 \n\
/* 0804d9ce */ SUBS R0, R0, R6 @ Set R0 to R0 - R6 \n\
/* 0804d9d0 */ LSLS R0, R0, 0x2 \n\
/* 0804d9d2 */ LDR R1, [R7, 0x8] \n\
/* 0804d9d4 */ ADDS R5, R1, R0 @ Set R5 to R1 + R0 \n\
/* 0804d9d6 */ LDR R0, [R4] \n\
/* 0804d9d8 */ BL func_0804d11c \n\
/* 0804d9dc */ LSLS R0, R0, 0x18 \n\
/* 0804d9de */ LSRS R0, R0, 0x13 \n\
/* 0804d9e0 */ LDRH R2, [R5] \n\
/* 0804d9e2 */ LDR R1, =0xffffe01f \n\
/* 0804d9e4 */ ANDS R1, R2 @ Set R1 to R1 & R2 \n\
/* 0804d9e6 */ ORRS R1, R0 @ Set R1 to R1 | R0 \n\
/* 0804d9e8 */ STRH R1, [R5] \n\
/* 0804d9ea */ LDR R0, [R4] \n\
/* 0804d9ec */ STR R0, [R5, 0x8] \n\
/* 0804d9ee */ LDR R0, [R4] \n\
/* 0804d9f0 */ BL func_0804d140 \n\
/* 0804d9f4 */ STRH R0, [R5, 0x28] \n\
/* 0804d9f6 */ MOVS R0, 0x4 @ Set R0 to 0x4 \n\
/* 0804d9f8 */ LDRSB R0, [R4, R0] \n\
/* 0804d9fa */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0804d9fc */ BLT branch_0804da12 \n\
/* 0804d9fe */ LDRB R0, [R4, 0x5] \n\
/* 0804da00 */ STRB R0, [R5, 0xD] \n\
/* 0804da02 */ LDRB R0, [R4, 0x6] \n\
/* 0804da04 */ STRB R0, [R5, 0xE] \n\
/* 0804da06 */ MOVS R2, 0x4 @ Set R2 to 0x4 \n\
/* 0804da08 */ LDRSB R2, [R4, R2] \n\
/* 0804da0a */ ADDS R0, R7, 0x0 @ Set R0 to R7 + 0x0 \n\
/* 0804da0c */ ADDS R1, R6, 0x0 @ Set R1 to R6 + 0x0 \n\
/* 0804da0e */ BL func_0804cebc \n\
 \n\
branch_0804da12: \n\
/* 0804da12 */ POP {R4-R7} \n\
/* 0804da14 */ POP {R0} \n\
/* 0804da16 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
