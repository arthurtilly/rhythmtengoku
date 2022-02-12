asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
glabel func_0800a1d4 \n\
/* 0800a1d4 */ PUSH {R4, LR} \n\
/* 0800a1d6 */ ADDS R2, R0, 0x0 @ Set R2 to R0 + 0x0 \n\
/* 0800a1d8 */ LDR R0, =D_08938258 \n\
/* 0800a1da */ ADDS R0, R1, R0 @ Set R0 to R1 + R0 \n\
/* 0800a1dc */ LDRB R0, [R0] \n\
/* 0800a1de */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 0800a1e0 */ MULS R4, R2 @ Multiply R4 by R2 \n\
/* 0800a1e2 */ CMP R1, 0x2 @ Compare R1 and 0x2 \n\
/* 0800a1e4 */ BNE branch_0800a1f0 \n\
/* 0800a1e6 */ LSLS R0, R2, 0x1 \n\
/* 0800a1e8 */ MOVS R1, 0x3 @ Set R1 to 0x3 \n\
/* 0800a1ea */ BL __udivsi3 \n\
/* 0800a1ee */ ADDS R4, R4, R0 @ Set R4 to R4 + R0 \n\
 \n\
branch_0800a1f0: \n\
/* 0800a1f0 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 0800a1f2 */ ADDS R0, 0x1F @ Add 0x1F to R0 \n\
/* 0800a1f4 */ LSRS R0, R0, 0x5 \n\
/* 0800a1f6 */ LSLS R0, R0, 0x1 \n\
/* 0800a1f8 */ POP {R4} \n\
/* 0800a1fa */ POP {R1} \n\
/* 0800a1fc */ BX R1 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
