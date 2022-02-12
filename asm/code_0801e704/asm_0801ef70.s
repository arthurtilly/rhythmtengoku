asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
glabel func_0801ef70 \n\
/* 0801ef70 */ PUSH {R4-R7, LR} \n\
/* 0801ef72 */ SUB SP, 0x14 \n\
/* 0801ef74 */ MOVS R4, 0x0 @ Set R4 to 0x0 \n\
/* 0801ef76 */ MOVS R5, 0x0 @ Set R5 to 0x0 \n\
 \n\
branch_0801ef78: \n\
/* 0801ef78 */ LDR R0, =D_03005380 \n\
/* 0801ef7a */ LDR R0, [R0] \n\
/* 0801ef7c */ MOVS R1, 0x50 @ Set R1 to 0x50 \n\
/* 0801ef7e */ STR R1, [SP] \n\
/* 0801ef80 */ MOVS R1, 0x80 @ Set R1 to 0x80 \n\
/* 0801ef82 */ LSLS R1, R1, 0x4 \n\
/* 0801ef84 */ STR R1, [SP, 0x4] \n\
/* 0801ef86 */ STR R5, [SP, 0x8] \n\
/* 0801ef88 */ STR R5, [SP, 0xC] \n\
/* 0801ef8a */ MOVS R1, 0x80 @ Set R1 to 0x80 \n\
/* 0801ef8c */ LSLS R1, R1, 0x8 \n\
/* 0801ef8e */ STR R1, [SP, 0x10] \n\
/* 0801ef90 */ LDR R1, =D_088a0fd8 \n\
/* 0801ef92 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0801ef94 */ MOVS R3, 0x78 @ Set R3 to 0x78 \n\
/* 0801ef96 */ BL func_0804d160 \n\
/* 0801ef9a */ LDR R1, =D_030055d0 \n\
/* 0801ef9c */ LDR R1, [R1] \n\
/* 0801ef9e */ LSLS R2, R4, 0x1 \n\
/* 0801efa0 */ ADDS R1, 0x6 @ Add 0x6 to R1 \n\
/* 0801efa2 */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 0801efa4 */ STRH R0, [R1] \n\
/* 0801efa6 */ ADDS R4, 0x1 @ Add 0x1 to R4 \n\
/* 0801efa8 */ CMP R4, 0x1D @ Compare R4 and 0x1D \n\
/* 0801efaa */ BLS branch_0801ef78 \n\
/* 0801efac */ MOVS R4, 0x0 @ Set R4 to 0x0 \n\
/* 0801efae */ MOVS R5, 0x0 @ Set R5 to 0x0 \n\
 \n\
branch_0801efb0: \n\
/* 0801efb0 */ LDR R7, =D_03005380 \n\
/* 0801efb2 */ LDR R0, [R7] \n\
/* 0801efb4 */ MOVS R1, 0x40 @ Set R1 to 0x40 \n\
/* 0801efb6 */ STR R1, [SP] \n\
/* 0801efb8 */ MOVS R1, 0x84 @ Set R1 to 0x84 \n\
/* 0801efba */ LSLS R1, R1, 0x8 \n\
/* 0801efbc */ STR R1, [SP, 0x4] \n\
/* 0801efbe */ STR R5, [SP, 0x8] \n\
/* 0801efc0 */ STR R5, [SP, 0xC] \n\
/* 0801efc2 */ LDR R1, =0x00008002 \n\
/* 0801efc4 */ STR R1, [SP, 0x10] \n\
/* 0801efc6 */ LDR R1, =D_088a1000 \n\
/* 0801efc8 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0801efca */ MOVS R3, 0x40 @ Set R3 to 0x40 \n\
/* 0801efcc */ BL func_0804d160 \n\
/* 0801efd0 */ LDR R6, =D_030055d0 \n\
/* 0801efd2 */ LDR R1, [R6] \n\
/* 0801efd4 */ MOV R12, R1 @ Set R12 to R1 \n\
/* 0801efd6 */ LSLS R2, R4, 0x1 \n\
/* 0801efd8 */ ADDS R1, 0x44 @ Add 0x44 to R1 \n\
/* 0801efda */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 0801efdc */ STRH R0, [R1] \n\
/* 0801efde */ ADDS R4, 0x1 @ Add 0x1 to R4 \n\
/* 0801efe0 */ CMP R4, 0x13 @ Compare R4 and 0x13 \n\
/* 0801efe2 */ BLS branch_0801efb0 \n\
/* 0801efe4 */ MOV R0, R12 @ Set R0 to R12 \n\
/* 0801efe6 */ ADDS R0, 0x42 @ Add 0x42 to R0 \n\
/* 0801efe8 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 0801efea */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0801efec */ STRH R3, [R0] \n\
/* 0801efee */ ADDS R0, 0x2A @ Add 0x2A to R0 \n\
/* 0801eff0 */ STRH R3, [R0] \n\
/* 0801eff2 */ MOV R0, R12 @ Set R0 to R12 \n\
/* 0801eff4 */ STRB R1, [R0, 0x5] \n\
/* 0801eff6 */ LDR R0, [R6] \n\
/* 0801eff8 */ ADDS R0, 0x8B @ Add 0x8B to R0 \n\
/* 0801effa */ STRB R1, [R0] \n\
/* 0801effc */ LDR R0, [R7] \n\
/* 0801effe */ LDR R1, =D_088a0f28 \n\
/* 0801f000 */ MOVS R2, 0x4C @ Set R2 to 0x4C \n\
/* 0801f002 */ STR R2, [SP] \n\
/* 0801f004 */ MOVS R2, 0x9E @ Set R2 to 0x9E \n\
/* 0801f006 */ LSLS R2, R2, 0x7 \n\
/* 0801f008 */ STR R2, [SP, 0x4] \n\
/* 0801f00a */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 0801f00c */ STR R2, [SP, 0x8] \n\
/* 0801f00e */ STR R3, [SP, 0xC] \n\
/* 0801f010 */ STR R3, [SP, 0x10] \n\
/* 0801f012 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0801f014 */ MOVS R3, 0xDF @ Set R3 to 0xDF \n\
/* 0801f016 */ BL func_0804d160 \n\
/* 0801f01a */ LDR R1, [R6] \n\
/* 0801f01c */ ADDS R1, 0x6E @ Add 0x6E to R1 \n\
/* 0801f01e */ STRH R0, [R1] \n\
/* 0801f020 */ ADD SP, 0x14 \n\
/* 0801f022 */ POP {R4-R7} \n\
/* 0801f024 */ POP {R0} \n\
/* 0801f026 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
