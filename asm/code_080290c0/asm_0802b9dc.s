asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
glabel func_0802b9dc \n\
/* 0802b9dc */ PUSH {R4-R7, LR} \n\
/* 0802b9de */ SUB SP, 0xC \n\
/* 0802b9e0 */ ADDS R5, R1, 0x0 @ Set R5 to R1 + 0x0 \n\
/* 0802b9e2 */ LDR R7, =D_030055d0 \n\
/* 0802b9e4 */ LDR R0, [R7] \n\
/* 0802b9e6 */ LDRB R0, [R0, 0x1] \n\
/* 0802b9e8 */ LSLS R0, R0, 0x1F \n\
/* 0802b9ea */ LSRS R6, R0, 0x1F \n\
/* 0802b9ec */ CMP R6, 0x0 @ Compare R6 and 0x0 \n\
/* 0802b9ee */ BEQ branch_0802b9fc \n\
/* 0802b9f0 */ BL func_08018068 \n\
/* 0802b9f4 */ B branch_0802baee \n\
\n\
.ltorg \n\
 \n\
branch_0802b9fc: \n\
/* 0802b9fc */ BL func_08018054 \n\
/* 0802ba00 */ NEGS R4, R0 @ Set R4 to -R0 \n\
/* 0802ba02 */ LDRH R0, [R5] \n\
/* 0802ba04 */ LSLS R0, R0, 0x17 \n\
/* 0802ba06 */ LSRS R0, R0, 0x1C \n\
/* 0802ba08 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0802ba0a */ BNE branch_0802ba16 \n\
/* 0802ba0c */ LDR R0, =D_089e33dc \n\
/* 0802ba0e */ ADDS R1, R4, 0x0 @ Set R1 to R4 + 0x0 \n\
/* 0802ba10 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0802ba12 */ BL func_0802aac0 \n\
 \n\
branch_0802ba16: \n\
/* 0802ba16 */ LDRH R0, [R5] \n\
/* 0802ba18 */ LSLS R0, R0, 0x17 \n\
/* 0802ba1a */ LSRS R0, R0, 0x1C \n\
/* 0802ba1c */ CMP R0, 0x1 @ Compare R0 and 0x1 \n\
/* 0802ba1e */ BNE branch_0802ba2a \n\
/* 0802ba20 */ LDR R0, =D_089e342c \n\
/* 0802ba22 */ ADDS R1, R4, 0x0 @ Set R1 to R4 + 0x0 \n\
/* 0802ba24 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0802ba26 */ BL func_0802aac0 \n\
 \n\
branch_0802ba2a: \n\
/* 0802ba2a */ LDRH R0, [R5] \n\
/* 0802ba2c */ LSLS R0, R0, 0x17 \n\
/* 0802ba2e */ LSRS R0, R0, 0x1C \n\
/* 0802ba30 */ CMP R0, 0x2 @ Compare R0 and 0x2 \n\
/* 0802ba32 */ BNE branch_0802ba3e \n\
/* 0802ba34 */ LDR R0, =D_089e342c \n\
/* 0802ba36 */ ADDS R1, R4, 0x0 @ Set R1 to R4 + 0x0 \n\
/* 0802ba38 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0802ba3a */ BL func_0802aac0 \n\
 \n\
branch_0802ba3e: \n\
/* 0802ba3e */ LDRH R0, [R5] \n\
/* 0802ba40 */ LSLS R0, R0, 0x17 \n\
/* 0802ba42 */ LSRS R0, R0, 0x1C \n\
/* 0802ba44 */ CMP R0, 0x3 @ Compare R0 and 0x3 \n\
/* 0802ba46 */ BNE branch_0802ba52 \n\
/* 0802ba48 */ LDR R0, =D_089e342c \n\
/* 0802ba4a */ ADDS R1, R4, 0x0 @ Set R1 to R4 + 0x0 \n\
/* 0802ba4c */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0802ba4e */ BL func_0802aac0 \n\
 \n\
branch_0802ba52: \n\
/* 0802ba52 */ LDRH R0, [R5] \n\
/* 0802ba54 */ LSLS R0, R0, 0x17 \n\
/* 0802ba56 */ LSRS R0, R0, 0x1C \n\
/* 0802ba58 */ CMP R0, 0x4 @ Compare R0 and 0x4 \n\
/* 0802ba5a */ BNE branch_0802ba66 \n\
/* 0802ba5c */ LDR R0, =D_089e342c \n\
/* 0802ba5e */ ADDS R1, R4, 0x0 @ Set R1 to R4 + 0x0 \n\
/* 0802ba60 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0802ba62 */ BL func_0802aac0 \n\
 \n\
branch_0802ba66: \n\
/* 0802ba66 */ LDRB R4, [R5, 0x1] \n\
/* 0802ba68 */ LSLS R4, R4, 0x1E \n\
/* 0802ba6a */ LSRS R4, R4, 0x1F \n\
/* 0802ba6c */ BL func_08018054 \n\
/* 0802ba70 */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 0802ba72 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 0802ba74 */ BL func_08029f68 \n\
/* 0802ba78 */ LDRB R3, [R5, 0x1] \n\
/* 0802ba7a */ MOVS R0, 0x4 @ Set R0 to 0x4 \n\
/* 0802ba7c */ ORRS R3, R0 @ Set R3 to R3 | R0 \n\
/* 0802ba7e */ STRB R3, [R5, 0x1] \n\
/* 0802ba80 */ LDR R0, =D_03005380 \n\
/* 0802ba82 */ LDR R0, [R0] \n\
/* 0802ba84 */ MOVS R2, 0x4 @ Set R2 to 0x4 \n\
/* 0802ba86 */ LDRSH R1, [R5, R2] \n\
/* 0802ba88 */ LDR R4, =D_089e3648 \n\
/* 0802ba8a */ LSLS R3, R3, 0x1E \n\
/* 0802ba8c */ LSRS R3, R3, 0x1F \n\
/* 0802ba8e */ LSLS R3, R3, 0x2 \n\
/* 0802ba90 */ LDRH R2, [R5] \n\
/* 0802ba92 */ LSLS R2, R2, 0x17 \n\
/* 0802ba94 */ LSRS R2, R2, 0x1C \n\
/* 0802ba96 */ LSLS R2, R2, 0x3 \n\
/* 0802ba98 */ ADDS R3, R3, R2 @ Set R3 to R3 + R2 \n\
/* 0802ba9a */ ADDS R3, R3, R4 @ Set R3 to R3 + R4 \n\
/* 0802ba9c */ LDR R2, [R3] \n\
/* 0802ba9e */ MOVS R3, 0x1 @ Set R3 to 0x1 \n\
/* 0802baa0 */ STR R3, [SP] \n\
/* 0802baa2 */ MOVS R3, 0x7F @ Set R3 to 0x7F \n\
/* 0802baa4 */ STR R3, [SP, 0x4] \n\
/* 0802baa6 */ STR R6, [SP, 0x8] \n\
/* 0802baa8 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0802baaa */ BL func_0804d8f8 \n\
/* 0802baae */ LDR R1, [R7] \n\
/* 0802bab0 */ LDRB R0, [R1] \n\
/* 0802bab2 */ CMP R0, 0x1 @ Compare R0 and 0x1 \n\
/* 0802bab4 */ BNE branch_0802bae8 \n\
/* 0802bab6 */ MOVS R2, 0xA9 @ Set R2 to 0xA9 \n\
/* 0802bab8 */ LSLS R2, R2, 0x3 \n\
/* 0802baba */ ADDS R0, R1, R2 @ Set R0 to R1 + R2 \n\
/* 0802babc */ LDR R0, [R0] \n\
/* 0802babe */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0802bac0 */ BEQ branch_0802bad8 \n\
/* 0802bac2 */ BL func_0802a8f0 \n\
/* 0802bac6 */ B branch_0802bae8 \n\
\n\
.ltorg \n\
 \n\
branch_0802bad8: \n\
/* 0802bad8 */ LDR R2, =0x0000054c \n\
/* 0802bada */ ADDS R0, R1, R2 @ Set R0 to R1 + R2 \n\
/* 0802badc */ LDR R0, [R0] \n\
/* 0802bade */ CMP R0, 0x3 @ Compare R0 and 0x3 \n\
/* 0802bae0 */ BLS branch_0802bae8 \n\
/* 0802bae2 */ MOVS R0, 0x20 @ Set R0 to 0x20 \n\
/* 0802bae4 */ BL func_0802a8f0 \n\
 \n\
branch_0802bae8: \n\
/* 0802bae8 */ ADDS R0, R5, 0x0 @ Set R0 to R5 + 0x0 \n\
/* 0802baea */ BL func_0802b6fc \n\
 \n\
branch_0802baee: \n\
/* 0802baee */ ADD SP, 0xC \n\
/* 0802baf0 */ POP {R4-R7} \n\
/* 0802baf2 */ POP {R0} \n\
/* 0802baf4 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
