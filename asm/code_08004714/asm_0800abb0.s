asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
glabel func_0800abb0 \n\
/* 0800abb0 */ PUSH {R4-R7, LR} \n\
/* 0800abb2 */ MOV R7, R8 @ Set R7 to R8 \n\
/* 0800abb4 */ PUSH {R7} \n\
/* 0800abb6 */ ADDS R5, R1, 0x0 @ Set R5 to R1 + 0x0 \n\
/* 0800abb8 */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 0800abba */ CMP R4, 0x0 @ Compare R4 and 0x0 \n\
/* 0800abbc */ BEQ branch_0800ac48 \n\
/* 0800abbe */ LDRB R0, [R4, 0x2] \n\
/* 0800abc0 */ CMP R0, 0x1 @ Compare R0 and 0x1 \n\
/* 0800abc2 */ BNE branch_0800ac48 \n\
/* 0800abc4 */ MOVS R0, 0xC @ Set R0 to 0xC \n\
/* 0800abc6 */ LDRSH R6, [R4, R0] \n\
/* 0800abc8 */ ADDS R0, R5, 0x0 @ Set R0 to R5 + 0x0 \n\
/* 0800abca */ ADDS R1, R6, 0x0 @ Set R1 to R6 + 0x0 \n\
/* 0800abcc */ BL __modsi3 \n\
/* 0800abd0 */ ADDS R5, R0, 0x0 @ Set R5 to R0 + 0x0 \n\
/* 0800abd2 */ CMP R5, 0x0 @ Compare R5 and 0x0 \n\
/* 0800abd4 */ BGE branch_0800abd8 \n\
/* 0800abd6 */ ADDS R5, R5, R6 @ Set R5 to R5 + R6 \n\
 \n\
branch_0800abd8: \n\
/* 0800abd8 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 0800abda */ ADDS R0, 0x54 @ Add 0x54 to R0 \n\
/* 0800abdc */ STRB R5, [R0] \n\
/* 0800abde */ MOVS R7, 0x0 @ Set R7 to 0x0 \n\
/* 0800abe0 */ MOVS R1, 0xC @ Set R1 to 0xC \n\
/* 0800abe2 */ LDRSH R0, [R4, R1] \n\
/* 0800abe4 */ CMP R7, R0 @ Check R7 - R0 \n\
/* 0800abe6 */ BCS branch_0800ac48 \n\
/* 0800abe8 */ LDR R0, =D_03005380 \n\
/* 0800abea */ MOV R8, R0 @ Set R8 to R0 \n\
 \n\
branch_0800abec: \n\
/* 0800abec */ LDR R0, [R4, 0x10] \n\
/* 0800abee */ LSLS R6, R5, 0x1 \n\
/* 0800abf0 */ ADDS R0, R6, R0 @ Set R0 to R6 + R0 \n\
/* 0800abf2 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 0800abf4 */ LDRSH R3, [R0, R1] \n\
/* 0800abf6 */ CMP R3, 0x0 @ Compare R3 and 0x0 \n\
/* 0800abf8 */ BLT branch_0800ac12 \n\
/* 0800abfa */ MOV R1, R8 @ Set R1 to R8 \n\
/* 0800abfc */ LDR R0, [R1] \n\
/* 0800abfe */ LDRB R1, [R4, 0xB] \n\
/* 0800ac00 */ ADDS R2, R1, 0x0 @ Set R2 to R1 + 0x0 \n\
/* 0800ac02 */ MULS R2, R7 @ Multiply R2 by R7 \n\
/* 0800ac04 */ LDRH R1, [R4, 0x2E] \n\
/* 0800ac06 */ ADDS R2, R2, R1 @ Set R2 to R2 + R1 \n\
/* 0800ac08 */ LSLS R2, R2, 0x10 \n\
/* 0800ac0a */ ASRS R2, R2, 0x10 \n\
/* 0800ac0c */ ADDS R1, R3, 0x0 @ Set R1 to R3 + 0x0 \n\
/* 0800ac0e */ BL func_0804d648 \n\
 \n\
branch_0800ac12: \n\
/* 0800ac12 */ LDR R0, [R4, 0x20] \n\
/* 0800ac14 */ ADDS R0, R6, R0 @ Set R0 to R6 + R0 \n\
/* 0800ac16 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 0800ac18 */ LDRSH R3, [R0, R1] \n\
/* 0800ac1a */ CMP R3, 0x0 @ Compare R3 and 0x0 \n\
/* 0800ac1c */ BLT branch_0800ac36 \n\
/* 0800ac1e */ MOV R1, R8 @ Set R1 to R8 \n\
/* 0800ac20 */ LDR R0, [R1] \n\
/* 0800ac22 */ LDRB R1, [R4, 0xB] \n\
/* 0800ac24 */ ADDS R2, R1, 0x0 @ Set R2 to R1 + 0x0 \n\
/* 0800ac26 */ MULS R2, R7 @ Multiply R2 by R7 \n\
/* 0800ac28 */ LDRH R1, [R4, 0x2E] \n\
/* 0800ac2a */ ADDS R2, R2, R1 @ Set R2 to R2 + R1 \n\
/* 0800ac2c */ LSLS R2, R2, 0x10 \n\
/* 0800ac2e */ ASRS R2, R2, 0x10 \n\
/* 0800ac30 */ ADDS R1, R3, 0x0 @ Set R1 to R3 + 0x0 \n\
/* 0800ac32 */ BL func_0804d648 \n\
 \n\
branch_0800ac36: \n\
/* 0800ac36 */ ADDS R5, 0x1 @ Add 0x1 to R5 \n\
/* 0800ac38 */ MOVS R1, 0xC @ Set R1 to 0xC \n\
/* 0800ac3a */ LDRSH R0, [R4, R1] \n\
/* 0800ac3c */ CMP R5, R0 @ Check R5 - R0 \n\
/* 0800ac3e */ BLT branch_0800ac42 \n\
/* 0800ac40 */ MOVS R5, 0x0 @ Set R5 to 0x0 \n\
 \n\
branch_0800ac42: \n\
/* 0800ac42 */ ADDS R7, 0x1 @ Add 0x1 to R7 \n\
/* 0800ac44 */ CMP R7, R0 @ Check R7 - R0 \n\
/* 0800ac46 */ BCC branch_0800abec \n\
 \n\
branch_0800ac48: \n\
/* 0800ac48 */ POP {R3} \n\
/* 0800ac4a */ MOV R8, R3 @ Set R8 to R3 \n\
/* 0800ac4c */ POP {R4-R7} \n\
/* 0800ac4e */ POP {R0} \n\
/* 0800ac50 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
