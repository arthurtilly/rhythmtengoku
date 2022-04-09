asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
glabel func_08042c84 \n\
/* 08042c84 */ PUSH {R4-R7, LR} \n\
/* 08042c86 */ MOV R7, R8 @ Set R7 to R8 \n\
/* 08042c88 */ PUSH {R7} \n\
/* 08042c8a */ LDR R2, =D_030055d0 \n\
/* 08042c8c */ LSLS R1, R0, 0x1 \n\
/* 08042c8e */ ADDS R1, R1, R0 @ Set R1 to R1 + R0 \n\
/* 08042c90 */ LSLS R1, R1, 0x2 \n\
/* 08042c92 */ MOVS R0, 0x81 @ Set R0 to 0x81 \n\
/* 08042c94 */ LSLS R0, R0, 0x2 \n\
/* 08042c96 */ ADDS R1, R1, R0 @ Set R1 to R1 + R0 \n\
/* 08042c98 */ LDR R0, [R2] \n\
/* 08042c9a */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 08042c9c */ MOV R8, R0 @ Set R8 to R0 \n\
/* 08042c9e */ LDRH R6, [R0, 0xA] \n\
/* 08042ca0 */ MOVS R7, 0x0 @ Set R7 to 0x0 \n\
 \n\
branch_08042ca2: \n\
/* 08042ca2 */ LDR R0, =D_03005380 \n\
/* 08042ca4 */ LDR R5, [R0] \n\
/* 08042ca6 */ LSLS R1, R7, 0x1 \n\
/* 08042ca8 */ MOV R0, R8 @ Set R0 to R8 \n\
/* 08042caa */ ADDS R0, 0x2 @ Add 0x2 to R0 \n\
/* 08042cac */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 08042cae */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 08042cb0 */ LDRSH R4, [R0, R1] \n\
/* 08042cb2 */ ADDS R0, R6, 0x0 @ Set R0 to R6 + 0x0 \n\
/* 08042cb4 */ MOVS R1, 0xA @ Set R1 to 0xA \n\
/* 08042cb6 */ BL __umodsi3 \n\
/* 08042cba */ ADDS R2, R0, 0x0 @ Set R2 to R0 + 0x0 \n\
/* 08042cbc */ LSLS R2, R2, 0x18 \n\
/* 08042cbe */ ASRS R2, R2, 0x18 \n\
/* 08042cc0 */ ADDS R0, R5, 0x0 @ Set R0 to R5 + 0x0 \n\
/* 08042cc2 */ ADDS R1, R4, 0x0 @ Set R1 to R4 + 0x0 \n\
/* 08042cc4 */ BL func_0804cebc \n\
/* 08042cc8 */ ADDS R0, R6, 0x0 @ Set R0 to R6 + 0x0 \n\
/* 08042cca */ MOVS R1, 0xA @ Set R1 to 0xA \n\
/* 08042ccc */ BL __udivsi3 \n\
/* 08042cd0 */ ADDS R6, R0, 0x0 @ Set R6 to R0 + 0x0 \n\
/* 08042cd2 */ ADDS R7, 0x1 @ Add 0x1 to R7 \n\
/* 08042cd4 */ CMP R7, 0x3 @ Compare R7 and 0x3 \n\
/* 08042cd6 */ BLS branch_08042ca2 \n\
/* 08042cd8 */ POP {R3} \n\
/* 08042cda */ MOV R8, R3 @ Set R8 to R3 \n\
/* 08042cdc */ POP {R4-R7} \n\
/* 08042cde */ POP {R0} \n\
/* 08042ce0 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
