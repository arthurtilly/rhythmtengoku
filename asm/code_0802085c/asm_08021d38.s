asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
glabel func_08021d38 \n\
/* 08021d38 */ PUSH {R4-R7, LR} \n\
/* 08021d3a */ SUB SP, 0xC \n\
/* 08021d3c */ ADDS R4, R1, 0x0 @ Set R4 to R1 + 0x0 \n\
/* 08021d3e */ LDR R0, =D_030055d0 \n\
/* 08021d40 */ LDR R5, [R0] \n\
/* 08021d42 */ ADDS R6, R5, 0x4 @ Set R6 to R5 + 0x4 \n\
/* 08021d44 */ MOVS R7, 0x0 @ Set R7 to 0x0 \n\
/* 08021d46 */ LDRB R0, [R5] \n\
/* 08021d48 */ CMP R0, 0x1 @ Compare R0 and 0x1 \n\
/* 08021d4a */ BNE branch_08021d4e \n\
/* 08021d4c */ MOVS R7, 0x1 @ Set R7 to 0x1 \n\
 \n\
branch_08021d4e: \n\
/* 08021d4e */ LDRB R2, [R4] \n\
/* 08021d50 */ MOVS R1, 0x10 @ Set R1 to 0x10 \n\
/* 08021d52 */ NEGS R1, R1 @ Set R1 to -R1 \n\
/* 08021d54 */ ADDS R0, R1, 0x0 @ Set R0 to R1 + 0x0 \n\
/* 08021d56 */ ANDS R0, R2 @ Set R0 to R0 & R2 \n\
/* 08021d58 */ MOVS R3, 0x1 @ Set R3 to 0x1 \n\
/* 08021d5a */ ORRS R0, R3 @ Set R0 to R0 | R3 \n\
/* 08021d5c */ STRB R0, [R4] \n\
/* 08021d5e */ MOVS R0, 0x40 @ Set R0 to 0x40 \n\
/* 08021d60 */ STR R0, [R4, 0x18] \n\
/* 08021d62 */ LDR R0, =0xfffffe00 \n\
/* 08021d64 */ STR R0, [R4, 0x1C] \n\
/* 08021d66 */ MOVS R0, 0x20 @ Set R0 to 0x20 \n\
/* 08021d68 */ STR R0, [R4, 0x24] \n\
/* 08021d6a */ ADDS R2, R4, 0x0 @ Set R2 to R4 + 0x0 \n\
/* 08021d6c */ ADDS R2, 0x2D @ Add 0x2D to R2 \n\
/* 08021d6e */ MOVS R4, 0x0 @ Set R4 to 0x0 \n\
/* 08021d70 */ MOVS R0, 0x4 @ Set R0 to 0x4 \n\
/* 08021d72 */ STRB R0, [R2] \n\
/* 08021d74 */ LDRB R0, [R5, 0x4] \n\
/* 08021d76 */ ANDS R1, R0 @ Set R1 to R1 & R0 \n\
/* 08021d78 */ ORRS R1, R3 @ Set R1 to R1 | R3 \n\
/* 08021d7a */ STRB R1, [R5, 0x4] \n\
/* 08021d7c */ LDR R0, =D_03005380 \n\
/* 08021d7e */ LDR R0, [R0] \n\
/* 08021d80 */ MOVS R2, 0x4 @ Set R2 to 0x4 \n\
/* 08021d82 */ LDRSH R1, [R6, R2] \n\
/* 08021d84 */ LDR R2, =D_088acc94 \n\
/* 08021d86 */ MOVS R3, 0x1 @ Set R3 to 0x1 \n\
/* 08021d88 */ STR R3, [SP] \n\
/* 08021d8a */ MOVS R3, 0x7F @ Set R3 to 0x7F \n\
/* 08021d8c */ STR R3, [SP, 0x4] \n\
/* 08021d8e */ STR R4, [SP, 0x8] \n\
/* 08021d90 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 08021d92 */ BL func_0804d8f8 \n\
/* 08021d96 */ MOVS R0, 0x24 @ Set R0 to 0x24 \n\
/* 08021d98 */ BL func_0800c3a4 \n\
/* 08021d9c */ STRH R0, [R6, 0x6] \n\
/* 08021d9e */ BL func_08022170 \n\
/* 08021da2 */ CMP R7, 0x0 @ Compare R7 and 0x0 \n\
/* 08021da4 */ BEQ branch_08021dae \n\
/* 08021da6 */ MOVS R0, 0x2 @ Set R0 to 0x2 \n\
/* 08021da8 */ MOVS R1, 0x30 @ Set R1 to 0x30 \n\
/* 08021daa */ BL func_0802139c \n\
 \n\
branch_08021dae: \n\
/* 08021dae */ BL func_0800bc40 \n\
/* 08021db2 */ ADD SP, 0xC \n\
/* 08021db4 */ POP {R4-R7} \n\
/* 08021db6 */ POP {R0} \n\
/* 08021db8 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
