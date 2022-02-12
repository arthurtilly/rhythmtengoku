asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
glabel func_08009090 \n\
/* 08009090 */ PUSH {R4-R7, LR} \n\
/* 08009092 */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 08009094 */ ADDS R6, R1, 0x0 @ Set R6 to R1 + 0x0 \n\
/* 08009096 */ LDR R1, =0x20f \n\
/* 08009098 */ ADDS R0, R2, R1 @ Set R0 to R2 + R1 \n\
/* 0800909a */ ADDS R1, 0x1 @ Add 0x1 to R1 \n\
/* 0800909c */ BL __udivsi3 \n\
/* 080090a0 */ ADDS R0, R4, R0 @ Set R0 to R4 + R0 \n\
/* 080090a2 */ CMP R4, R0 @ Check R4 - R0 \n\
/* 080090a4 */ BCS branch_080090c2 \n\
/* 080090a6 */ ADDS R7, R0, 0x0 @ Set R7 to R0 + 0x0 \n\
 \n\
branch_080090a8: \n\
/* 080090a8 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 080090aa */ ADDS R1, R6, 0x0 @ Set R1 to R6 + 0x0 \n\
/* 080090ac */ BL func_08009048 \n\
/* 080090b0 */ ADDS R5, R0, 0x0 @ Set R5 to R0 + 0x0 \n\
/* 080090b2 */ CMP R5, 0x0 @ Compare R5 and 0x0 \n\
/* 080090b4 */ BNE branch_080090c4 \n\
/* 080090b6 */ MOVS R0, 0x84 @ Set R0 to 0x84 \n\
/* 080090b8 */ LSLS R0, R0, 0x2 \n\
/* 080090ba */ ADDS R6, R6, R0 @ Set R6 to R6 + R0 \n\
/* 080090bc */ ADDS R4, 0x1 @ Add 0x1 to R4 \n\
/* 080090be */ CMP R4, R7 @ Check R4 - R7 \n\
/* 080090c0 */ BCC branch_080090a8 \n\
 \n\
branch_080090c2: \n\
/* 080090c2 */ ADDS R0, R5, 0x0 @ Set R0 to R5 + 0x0 \n\
 \n\
branch_080090c4: \n\
/* 080090c4 */ POP {R4-R7} \n\
/* 080090c6 */ POP {R1} \n\
/* 080090c8 */ BX R1 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
