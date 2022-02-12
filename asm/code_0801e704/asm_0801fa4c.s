asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
glabel func_0801fa4c \n\
/* 0801fa4c */ PUSH {R4-R7, LR} \n\
/* 0801fa4e */ MOV R7, R8 @ Set R7 to R8 \n\
/* 0801fa50 */ PUSH {R7} \n\
/* 0801fa52 */ SUB SP, 0x14 \n\
/* 0801fa54 */ LDR R4, =D_030055d0 \n\
/* 0801fa56 */ LDR R0, [R4] \n\
/* 0801fa58 */ ADDS R0, 0x72 @ Add 0x72 to R0 \n\
/* 0801fa5a */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 0801fa5c */ MOV R8, R1 @ Set R8 to R1 \n\
/* 0801fa5e */ MOV R2, R8 @ Set R2 to R8 \n\
/* 0801fa60 */ STRB R2, [R0] \n\
/* 0801fa62 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0801fa64 */ BL func_08017338 \n\
/* 0801fa68 */ LDR R6, =D_03005380 \n\
/* 0801fa6a */ LDR R0, [R6] \n\
/* 0801fa6c */ LDR R1, [R4] \n\
/* 0801fa6e */ ADDS R1, 0x70 @ Add 0x70 to R1 \n\
/* 0801fa70 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0801fa72 */ LDRSH R1, [R1, R3] \n\
/* 0801fa74 */ LDR R2, =D_088a1158 \n\
/* 0801fa76 */ MOVS R7, 0x1 @ Set R7 to 0x1 \n\
/* 0801fa78 */ STR R7, [SP] \n\
/* 0801fa7a */ MOVS R4, 0x7F @ Set R4 to 0x7F \n\
/* 0801fa7c */ STR R4, [SP, 0x4] \n\
/* 0801fa7e */ MOV R3, R8 @ Set R3 to R8 \n\
/* 0801fa80 */ STR R3, [SP, 0x8] \n\
/* 0801fa82 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0801fa84 */ BL func_0804d8f8 \n\
/* 0801fa88 */ LDR R0, [R6] \n\
/* 0801fa8a */ LDR R1, =D_088a0df0 \n\
/* 0801fa8c */ MOVS R2, 0x3A @ Set R2 to 0x3A \n\
/* 0801fa8e */ STR R2, [SP] \n\
/* 0801fa90 */ LDR R5, =0x00008792 \n\
/* 0801fa92 */ STR R5, [SP, 0x4] \n\
/* 0801fa94 */ STR R7, [SP, 0x8] \n\
/* 0801fa96 */ STR R4, [SP, 0xC] \n\
/* 0801fa98 */ MOVS R4, 0x3 @ Set R4 to 0x3 \n\
/* 0801fa9a */ STR R4, [SP, 0x10] \n\
/* 0801fa9c */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0801fa9e */ MOVS R3, 0x46 @ Set R3 to 0x46 \n\
/* 0801faa0 */ BL func_0804d160 \n\
/* 0801faa4 */ BL func_08018054 \n\
/* 0801faa8 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0801faaa */ BGE branch_0801fae0 \n\
/* 0801faac */ LDR R0, [R6] \n\
/* 0801faae */ LDR R1, =D_088a0e80 \n\
/* 0801fab0 */ MOVS R2, 0x5E @ Set R2 to 0x5E \n\
/* 0801fab2 */ STR R2, [SP] \n\
/* 0801fab4 */ STR R5, [SP, 0x4] \n\
/* 0801fab6 */ STR R7, [SP, 0x8] \n\
/* 0801fab8 */ MOV R2, R8 @ Set R2 to R8 \n\
/* 0801faba */ STR R2, [SP, 0xC] \n\
/* 0801fabc */ STR R4, [SP, 0x10] \n\
/* 0801fabe */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0801fac0 */ MOVS R3, 0x7A @ Set R3 to 0x7A \n\
/* 0801fac2 */ BL func_0804d160 \n\
/* 0801fac6 */ B branch_0801fafa \n\
\n\
.ltorg \n\
 \n\
branch_0801fae0: \n\
/* 0801fae0 */ LDR R0, [R6] \n\
/* 0801fae2 */ LDR R1, =D_088a11b8 \n\
/* 0801fae4 */ MOVS R2, 0x5E @ Set R2 to 0x5E \n\
/* 0801fae6 */ STR R2, [SP] \n\
/* 0801fae8 */ STR R5, [SP, 0x4] \n\
/* 0801faea */ STR R7, [SP, 0x8] \n\
/* 0801faec */ MOV R3, R8 @ Set R3 to R8 \n\
/* 0801faee */ STR R3, [SP, 0xC] \n\
/* 0801faf0 */ STR R4, [SP, 0x10] \n\
/* 0801faf2 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0801faf4 */ MOVS R3, 0x7A @ Set R3 to 0x7A \n\
/* 0801faf6 */ BL func_0804d160 \n\
 \n\
branch_0801fafa: \n\
/* 0801fafa */ LDR R0, =D_08a9c478 \n\
/* 0801fafc */ BL func_08002634 \n\
/* 0801fb00 */ ADD SP, 0x14 \n\
/* 0801fb02 */ POP {R3} \n\
/* 0801fb04 */ MOV R8, R3 @ Set R8 to R3 \n\
/* 0801fb06 */ POP {R4-R7} \n\
/* 0801fb08 */ POP {R0} \n\
/* 0801fb0a */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
