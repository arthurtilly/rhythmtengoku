asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
glabel func_08008248 \n\
/* 08008248 */ PUSH {R4-R7, LR} \n\
/* 0800824a */ ADDS R5, R0, 0x0 @ Set R5 to R0 + 0x0 \n\
/* 0800824c */ ADDS R4, R1, 0x0 @ Set R4 to R1 + 0x0 \n\
/* 0800824e */ MOVS R7, 0x1 @ Set R7 to 0x1 \n\
/* 08008250 */ MOVS R1, 0xA @ Set R1 to 0xA \n\
/* 08008252 */ CMP R1, R4 @ Check R1 - R4 \n\
/* 08008254 */ BHI branch_08008262 \n\
 \n\
branch_08008256: \n\
/* 08008256 */ ADDS R7, 0x1 @ Add 0x1 to R7 \n\
/* 08008258 */ LSLS R0, R1, 0x2 \n\
/* 0800825a */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0800825c */ LSLS R1, R0, 0x1 \n\
/* 0800825e */ CMP R1, R4 @ Check R1 - R4 \n\
/* 08008260 */ BLS branch_08008256 \n\
 \n\
branch_08008262: \n\
/* 08008262 */ ADDS R5, R5, R7 @ Set R5 to R5 + R7 \n\
/* 08008264 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08008266 */ STRB R0, [R5] \n\
/* 08008268 */ MOVS R6, 0x0 @ Set R6 to 0x0 \n\
/* 0800826a */ CMP R6, R7 @ Check R6 - R7 \n\
/* 0800826c */ BCS branch_0800828c \n\
 \n\
branch_0800826e: \n\
/* 0800826e */ SUBS R5, 0x1 @ Subtract 0x1 from R5 \n\
/* 08008270 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 08008272 */ MOVS R1, 0xA @ Set R1 to 0xA \n\
/* 08008274 */ BL __umodsi3 \n\
/* 08008278 */ ADDS R0, 0x30 @ Add 0x30 to R0 \n\
/* 0800827a */ STRB R0, [R5] \n\
/* 0800827c */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 0800827e */ MOVS R1, 0xA @ Set R1 to 0xA \n\
/* 08008280 */ BL __udivsi3 \n\
/* 08008284 */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 08008286 */ ADDS R6, 0x1 @ Add 0x1 to R6 \n\
/* 08008288 */ CMP R6, R7 @ Check R6 - R7 \n\
/* 0800828a */ BCC branch_0800826e \n\
 \n\
branch_0800828c: \n\
/* 0800828c */ POP {R4-R7} \n\
/* 0800828e */ POP {R0} \n\
/* 08008290 */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
