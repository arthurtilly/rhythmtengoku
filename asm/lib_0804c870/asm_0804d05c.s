asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0804d05c \n\
/* 0804d05c */ PUSH {R4-R6, LR} \n\
/* 0804d05e */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 0804d060 */ LDR R3, [R4, 0x8] \n\
/* 0804d062 */ LSLS R1, R1, 0x10 \n\
/* 0804d064 */ ASRS R1, R1, 0x10 \n\
/* 0804d066 */ LSLS R0, R1, 0x4 \n\
/* 0804d068 */ SUBS R0, R0, R1 @ Set R0 to R0 - R1 \n\
/* 0804d06a */ LSLS R0, R0, 0x2 \n\
/* 0804d06c */ ADDS R0, R0, R3 @ Set R0 to R0 + R3 \n\
/* 0804d06e */ LDRH R2, [R0, 0x1A] \n\
/* 0804d070 */ LDRH R5, [R0, 0x18] \n\
/* 0804d072 */ MOVS R6, 0x18 @ Set R6 to 0x18 \n\
/* 0804d074 */ LDRSH R1, [R0, R6] \n\
/* 0804d076 */ CMP R1, 0x0 @ Compare R1 and 0x0 \n\
/* 0804d078 */ BLT branch_0804d086 \n\
/* 0804d07a */ LSLS R0, R1, 0x4 \n\
/* 0804d07c */ SUBS R0, R0, R1 @ Set R0 to R0 - R1 \n\
/* 0804d07e */ LSLS R0, R0, 0x2 \n\
/* 0804d080 */ ADDS R0, R0, R3 @ Set R0 to R0 + R3 \n\
/* 0804d082 */ STRH R2, [R0, 0x1A] \n\
/* 0804d084 */ B branch_0804d088 \n\
 \n\
branch_0804d086: \n\
/* 0804d086 */ STRH R2, [R4, 0xC] \n\
 \n\
branch_0804d088: \n\
/* 0804d088 */ LSLS R0, R2, 0x10 \n\
/* 0804d08a */ ASRS R1, R0, 0x10 \n\
/* 0804d08c */ CMP R1, 0x0 @ Compare R1 and 0x0 \n\
/* 0804d08e */ BLT branch_0804d09c \n\
/* 0804d090 */ LSLS R0, R1, 0x4 \n\
/* 0804d092 */ SUBS R0, R0, R1 @ Set R0 to R0 - R1 \n\
/* 0804d094 */ LSLS R0, R0, 0x2 \n\
/* 0804d096 */ ADDS R0, R0, R3 @ Set R0 to R0 + R3 \n\
/* 0804d098 */ STRH R5, [R0, 0x18] \n\
/* 0804d09a */ B branch_0804d09e \n\
 \n\
branch_0804d09c: \n\
/* 0804d09c */ STRH R5, [R4, 0xE] \n\
 \n\
branch_0804d09e: \n\
/* 0804d09e */ POP {R4-R6} \n\
/* 0804d0a0 */ POP {R0} \n\
/* 0804d0a2 */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
