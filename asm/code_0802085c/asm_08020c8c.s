asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
glabel func_08020c8c \n\
/* 08020c8c */ PUSH {R4-R7, LR} \n\
/* 08020c8e */ MOV R7, R8 @ Set R7 to R8 \n\
/* 08020c90 */ PUSH {R7} \n\
/* 08020c92 */ SUB SP, 0x4 \n\
/* 08020c94 */ MOV R8, R0 @ Set R8 to R0 \n\
/* 08020c96 */ LDR R7, =D_030055d0 \n\
/* 08020c98 */ LDR R2, [R7] \n\
/* 08020c9a */ ADDS R0, R2, 0x0 @ Set R0 to R2 + 0x0 \n\
/* 08020c9c */ ADDS R0, 0x38 @ Add 0x38 to R0 \n\
/* 08020c9e */ LDRB R1, [R0] \n\
/* 08020ca0 */ LSLS R0, R1, 0x1 \n\
/* 08020ca2 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 08020ca4 */ LSLS R0, R0, 0x2 \n\
/* 08020ca6 */ ADDS R0, 0x8 @ Add 0x8 to R0 \n\
/* 08020ca8 */ ADDS R4, R2, R0 @ Set R4 to R2 + R0 \n\
/* 08020caa */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 08020cac */ LDRSH R0, [R4, R1] \n\
/* 08020cae */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08020cb0 */ BLT branch_08020d04 \n\
/* 08020cb2 */ LDR R0, =D_03005380 \n\
/* 08020cb4 */ LDR R0, [R0] \n\
/* 08020cb6 */ MOVS R2, 0x2 @ Set R2 to 0x2 \n\
/* 08020cb8 */ LDRSH R1, [R4, R2] \n\
/* 08020cba */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 08020cbc */ BL func_0804d770 \n\
/* 08020cc0 */ MOVS R0, 0x8 @ Set R0 to 0x8 \n\
/* 08020cc2 */ LDRSH R6, [R4, R0] \n\
/* 08020cc4 */ NEGS R6, R6 @ Set R6 to -R6 \n\
/* 08020cc6 */ LDRH R5, [R4, 0xA] \n\
/* 08020cc8 */ SUBS R5, R6, R5 @ Set R5 to R6 - R5 \n\
/* 08020cca */ LDR R0, [R7] \n\
/* 08020ccc */ MOVS R1, 0x3C @ Set R1 to 0x3C \n\
/* 08020cce */ LDRSH R2, [R0, R1] \n\
/* 08020cd0 */ SUBS R2, 0x18 @ Subtract 0x18 from R2 \n\
/* 08020cd2 */ ADDS R0, 0x38 @ Add 0x38 to R0 \n\
/* 08020cd4 */ LDRB R1, [R0] \n\
/* 08020cd6 */ LSLS R0, R1, 0x1 \n\
/* 08020cd8 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 08020cda */ LSLS R0, R0, 0x3 \n\
/* 08020cdc */ SUBS R2, R2, R0 @ Set R2 to R2 - R0 \n\
/* 08020cde */ LDR R4, =D_03004b10 \n\
/* 08020ce0 */ STRH R2, [R4, 0xE] \n\
/* 08020ce2 */ MOV R0, R8 @ Set R0 to R8 \n\
/* 08020ce4 */ BL func_0800c3a4 \n\
/* 08020ce8 */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 08020cea */ ADDS R4, 0xC @ Add 0xC to R4 \n\
/* 08020cec */ STR R5, [SP] \n\
/* 08020cee */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 08020cf0 */ ADDS R2, R4, 0x0 @ Set R2 to R4 + 0x0 \n\
/* 08020cf2 */ ADDS R3, R6, 0x0 @ Set R3 to R6 + 0x0 \n\
/* 08020cf4 */ BL func_0800c4b0 \n\
/* 08020cf8 */ LDR R1, =(func_08020c4c + 1) \n\
/* 08020cfa */ LDR R2, [R7] \n\
/* 08020cfc */ ADDS R2, 0x38 @ Add 0x38 to R2 \n\
/* 08020cfe */ LDRB R2, [R2] \n\
/* 08020d00 */ BL func_08005d38 \n\
 \n\
branch_08020d04: \n\
/* 08020d04 */ ADD SP, 0x4 \n\
/* 08020d06 */ POP {R3} \n\
/* 08020d08 */ MOV R8, R3 @ Set R8 to R3 \n\
/* 08020d0a */ POP {R4-R7} \n\
/* 08020d0c */ POP {R0} \n\
/* 08020d0e */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
