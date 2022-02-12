asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
glabel func_0801fd70 \n\
/* 0801fd70 */ PUSH {R4-R7, LR} \n\
/* 0801fd72 */ ADDS R5, R0, 0x0 @ Set R5 to R0 + 0x0 \n\
/* 0801fd74 */ ADDS R6, R1, 0x0 @ Set R6 to R1 + 0x0 \n\
/* 0801fd76 */ ADDS R7, R2, 0x0 @ Set R7 to R2 + 0x0 \n\
/* 0801fd78 */ ADDS R1, R3, 0x0 @ Set R1 to R3 + 0x0 \n\
/* 0801fd7a */ LDR R0, =D_030055d0 \n\
/* 0801fd7c */ LDR R0, [R0] \n\
/* 0801fd7e */ LDR R0, [R0, 0x4] \n\
/* 0801fd80 */ SUBS R1, R1, R0 @ Set R1 to R1 - R0 \n\
/* 0801fd82 */ MOVS R0, 0x80 @ Set R0 to 0x80 \n\
/* 0801fd84 */ LSLS R0, R0, 0x9 \n\
/* 0801fd86 */ BL func_08007b80 \n\
/* 0801fd8a */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 0801fd8c */ ADDS R0, R6, 0x0 @ Set R0 to R6 + 0x0 \n\
/* 0801fd8e */ MULS R0, R4 @ Multiply R0 by R4 \n\
/* 0801fd90 */ ASRS R6, R0, 0x8 \n\
/* 0801fd92 */ ADDS R0, R7, 0x0 @ Set R0 to R7 + 0x0 \n\
/* 0801fd94 */ MULS R0, R4 @ Multiply R0 by R4 \n\
/* 0801fd96 */ ASRS R7, R0, 0x8 \n\
/* 0801fd98 */ ADDS R1, R6, 0x0 @ Set R1 to R6 + 0x0 \n\
/* 0801fd9a */ ADDS R1, 0x78 @ Add 0x78 to R1 \n\
/* 0801fd9c */ LSLS R1, R1, 0x10 \n\
/* 0801fd9e */ ASRS R1, R1, 0x10 \n\
/* 0801fda0 */ ADDS R2, R7, 0x0 @ Set R2 to R7 + 0x0 \n\
/* 0801fda2 */ ADDS R2, 0x50 @ Add 0x50 to R2 \n\
/* 0801fda4 */ LSLS R2, R2, 0x10 \n\
/* 0801fda6 */ ASRS R2, R2, 0x10 \n\
/* 0801fda8 */ ADDS R0, R5, 0x0 @ Set R0 to R5 + 0x0 \n\
/* 0801fdaa */ BL func_0800fddc \n\
/* 0801fdae */ LSLS R4, R4, 0x10 \n\
/* 0801fdb0 */ ASRS R4, R4, 0x10 \n\
/* 0801fdb2 */ ADDS R0, R5, 0x0 @ Set R0 to R5 + 0x0 \n\
/* 0801fdb4 */ ADDS R1, R4, 0x0 @ Set R1 to R4 + 0x0 \n\
/* 0801fdb6 */ BL func_0800fe60 \n\
/* 0801fdba */ POP {R4-R7} \n\
/* 0801fdbc */ POP {R0} \n\
/* 0801fdbe */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
