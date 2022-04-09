asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0800b9fc \n\
/* 0800b9fc */ PUSH {R4-R7, LR} \n\
/* 0800b9fe */ MOV R7, R10 @ Set R7 to R10 \n\
/* 0800ba00 */ MOV R6, R9 @ Set R6 to R9 \n\
/* 0800ba02 */ MOV R5, R8 @ Set R5 to R8 \n\
/* 0800ba04 */ PUSH {R5-R7} \n\
/* 0800ba06 */ SUB SP, 0x4 \n\
/* 0800ba08 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0800ba0a */ LDR R2, =D_030053c0 \n\
/* 0800ba0c */ LDRB R1, [R2] \n\
/* 0800ba0e */ LSLS R0, R1, 0x1C \n\
/* 0800ba10 */ LSRS R0, R0, 0x1C \n\
/* 0800ba12 */ CMP R0, 0x1 @ Compare R0 and 0x1 \n\
/* 0800ba14 */ BNE branch_0800ba18 \n\
/* 0800ba16 */ MOVS R3, 0x1 @ Set R3 to 0x1 \n\
 \n\
branch_0800ba18: \n\
/* 0800ba18 */ LSLS R0, R1, 0x1A \n\
/* 0800ba1a */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0800ba1c */ BGE branch_0800ba2a \n\
/* 0800ba1e */ MOVS R0, 0x10 @ Set R0 to 0x10 \n\
/* 0800ba20 */ ORRS R0, R1 @ Set R0 to R0 | R1 \n\
/* 0800ba22 */ MOVS R1, 0x21 @ Set R1 to 0x21 \n\
/* 0800ba24 */ NEGS R1, R1 @ Set R1 to -R1 \n\
/* 0800ba26 */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 0800ba28 */ STRB R0, [R2] \n\
 \n\
branch_0800ba2a: \n\
/* 0800ba2a */ CMP R3, 0x0 @ Compare R3 and 0x0 \n\
/* 0800ba2c */ BEQ branch_0800ba40 \n\
/* 0800ba2e */ ADDS R5, R2, 0x0 @ Set R5 to R2 + 0x0 \n\
/* 0800ba30 */ ADDS R5, 0xC4 @ Add 0xC4 to R5 \n\
/* 0800ba32 */ LDRB R1, [R5] \n\
/* 0800ba34 */ MOVS R0, 0x61 @ Set R0 to 0x61 \n\
/* 0800ba36 */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 0800ba38 */ CMP R0, 0x1 @ Compare R0 and 0x1 \n\
/* 0800ba3a */ BNE branch_0800ba40 \n\
/* 0800ba3c */ BL func_0800e004 \n\
 \n\
branch_0800ba40: \n\
/* 0800ba40 */ MOVS R4, 0x0 @ Set R4 to 0x0 \n\
/* 0800ba42 */ LDR R7, =D_030053c0 \n\
/* 0800ba44 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 0800ba46 */ MOV R9, R0 @ Set R9 to R0 \n\
/* 0800ba48 */ MOVS R1, 0xB0 @ Set R1 to 0xB0 \n\
/* 0800ba4a */ LSLS R1, R1, 0x1 \n\
/* 0800ba4c */ ADDS R1, R1, R7 @ Set R1 to R1 + R7 \n\
/* 0800ba4e */ MOV R10, R1 @ Set R10 to R1 \n\
 \n\
branch_0800ba50: \n\
/* 0800ba50 */ MOVS R0, 0x7 @ Set R0 to 0x7 \n\
/* 0800ba52 */ ADDS R2, R4, 0x0 @ Set R2 to R4 + 0x0 \n\
/* 0800ba54 */ ANDS R2, R0 @ Set R2 to R2 & R0 \n\
/* 0800ba56 */ LSLS R2, R2, 0x1 \n\
/* 0800ba58 */ LDRB R0, [R7, 0x1] \n\
/* 0800ba5a */ MOVS R3, 0xF @ Set R3 to 0xF \n\
/* 0800ba5c */ NEGS R3, R3 @ Set R3 to -R3 \n\
/* 0800ba5e */ ADDS R1, R3, 0x0 @ Set R1 to R3 + 0x0 \n\
/* 0800ba60 */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 0800ba62 */ ORRS R0, R2 @ Set R0 to R0 | R2 \n\
/* 0800ba64 */ STRB R0, [R7, 0x1] \n\
/* 0800ba66 */ LSLS R0, R0, 0x1C \n\
/* 0800ba68 */ LSRS R0, R0, 0x1D \n\
/* 0800ba6a */ ADDS R0, 0x1 @ Add 0x1 to R0 \n\
/* 0800ba6c */ BL func_0800c3c4 \n\
/* 0800ba70 */ MOVS R0, 0x9C @ Set R0 to 0x9C \n\
/* 0800ba72 */ ADDS R3, R4, 0x0 @ Set R3 to R4 + 0x0 \n\
/* 0800ba74 */ MULS R3, R0 @ Multiply R3 by R0 \n\
/* 0800ba76 */ ADDS R0, R7, 0x0 @ Set R0 to R7 + 0x0 \n\
/* 0800ba78 */ ADDS R0, 0x28 @ Add 0x28 to R0 \n\
/* 0800ba7a */ ADDS R5, R3, R0 @ Set R5 to R3 + R0 \n\
/* 0800ba7c */ ADDS R6, R4, 0x1 @ Set R6 to R4 + 0x1 \n\
/* 0800ba7e */ MOV R8, R6 @ Set R8 to R6 \n\
/* 0800ba80 */ LDRB R1, [R5] \n\
/* 0800ba82 */ MOV R0, R9 @ Set R0 to R9 \n\
/* 0800ba84 */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 0800ba86 */ MOV R1, R8 @ Set R1 to R8 \n\
/* 0800ba88 */ STR R1, [SP] \n\
/* 0800ba8a */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0800ba8c */ BNE branch_0800ba90 \n\
/* 0800ba8e */ B branch_0800bb8e \n\
 \n\
branch_0800ba90: \n\
/* 0800ba90 */ LDR R1, =D_03005588 \n\
/* 0800ba92 */ LSLS R2, R4, 0x2 \n\
/* 0800ba94 */ MOV R6, R10 @ Set R6 to R10 \n\
/* 0800ba96 */ ADDS R0, R2, R6 @ Set R0 to R2 + R6 \n\
/* 0800ba98 */ STR R0, [R1] \n\
/* 0800ba9a */ LDR R1, =D_0300558c \n\
/* 0800ba9c */ ADDS R0, R7, 0x0 @ Set R0 to R7 + 0x0 \n\
/* 0800ba9e */ ADDS R0, 0x7E @ Add 0x7E to R0 \n\
/* 0800baa0 */ ADDS R0, R3, R0 @ Set R0 to R3 + R0 \n\
/* 0800baa2 */ STR R0, [R1] \n\
/* 0800baa4 */ LDRB R1, [R5] \n\
/* 0800baa6 */ MOV R0, R9 @ Set R0 to R9 \n\
/* 0800baa8 */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 0800baaa */ ADDS R6, R2, 0x0 @ Set R6 to R2 + 0x0 \n\
/* 0800baac */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0800baae */ BEQ branch_0800baea \n\
/* 0800bab0 */ LDR R1, [R5, 0xC] \n\
/* 0800bab2 */ LDR R0, [R7, 0x14] \n\
/* 0800bab4 */ CMP R1, R0 @ Check R1 - R0 \n\
/* 0800bab6 */ BGE branch_0800baea \n\
/* 0800bab8 */ LDRB R0, [R7, 0x1] \n\
/* 0800baba */ B branch_0800bae4 \n\
\n\
.ltorg \n\
 \n\
branch_0800bac8: \n\
/* 0800bac8 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 0800baca */ BL func_0800cb28 \n\
/* 0800bace */ LDRB R1, [R5] \n\
/* 0800bad0 */ MOV R0, R9 @ Set R0 to R9 \n\
/* 0800bad2 */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 0800bad4 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0800bad6 */ BEQ branch_0800baea \n\
/* 0800bad8 */ LDR R2, =D_030053c0 \n\
/* 0800bada */ LDR R1, [R5, 0xC] \n\
/* 0800badc */ LDR R0, [R2, 0x14] \n\
/* 0800bade */ CMP R1, R0 @ Check R1 - R0 \n\
/* 0800bae0 */ BGE branch_0800baea \n\
/* 0800bae2 */ LDRB R0, [R2, 0x1] \n\
 \n\
branch_0800bae4: \n\
/* 0800bae4 */ LSLS R0, R0, 0x1F \n\
/* 0800bae6 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0800bae8 */ BEQ branch_0800bac8 \n\
 \n\
branch_0800baea: \n\
/* 0800baea */ LDR R4, [R5, 0x4] \n\
/* 0800baec */ LDRB R2, [R5] \n\
/* 0800baee */ MOV R0, R9 @ Set R0 to R9 \n\
/* 0800baf0 */ ANDS R0, R2 @ Set R0 to R0 & R2 \n\
/* 0800baf2 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0800baf4 */ BEQ branch_0800bb52 \n\
/* 0800baf6 */ MOVS R3, 0x60 @ Set R3 to 0x60 \n\
/* 0800baf8 */ ADDS R0, R3, 0x0 @ Set R0 to R3 + 0x0 \n\
/* 0800bafa */ ANDS R0, R2 @ Set R0 to R0 & R2 \n\
/* 0800bafc */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0800bafe */ BEQ branch_0800bb38 \n\
/* 0800bb00 */ LSLS R1, R2, 0x19 \n\
/* 0800bb02 */ LSRS R1, R1, 0x1E \n\
/* 0800bb04 */ SUBS R1, 0x1 @ Subtract 0x1 from R1 \n\
/* 0800bb06 */ MOVS R0, 0x3 @ Set R0 to 0x3 \n\
/* 0800bb08 */ ANDS R1, R0 @ Set R1 to R1 & R0 \n\
/* 0800bb0a */ LSLS R1, R1, 0x5 \n\
/* 0800bb0c */ MOV R12, R1 @ Set R12 to R1 \n\
/* 0800bb0e */ MOVS R1, 0x61 @ Set R1 to 0x61 \n\
/* 0800bb10 */ NEGS R1, R1 @ Set R1 to -R1 \n\
/* 0800bb12 */ ADDS R0, R1, 0x0 @ Set R0 to R1 + 0x0 \n\
/* 0800bb14 */ ANDS R0, R2 @ Set R0 to R0 & R2 \n\
/* 0800bb16 */ MOV R2, R12 @ Set R2 to R12 \n\
/* 0800bb18 */ ORRS R0, R2 @ Set R0 to R0 | R2 \n\
/* 0800bb1a */ STRB R0, [R5] \n\
/* 0800bb1c */ ANDS R0, R3 @ Set R0 to R0 & R3 \n\
/* 0800bb1e */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0800bb20 */ BNE branch_0800bb48 \n\
/* 0800bb22 */ LDR R3, [R4] \n\
/* 0800bb24 */ CMP R3, 0x0 @ Compare R3 and 0x0 \n\
/* 0800bb26 */ BEQ branch_0800bb48 \n\
/* 0800bb28 */ MOV R1, R10 @ Set R1 to R10 \n\
/* 0800bb2a */ ADDS R0, R6, R1 @ Set R0 to R6 + R1 \n\
/* 0800bb2c */ LDR R1, [R4, 0x4] \n\
/* 0800bb2e */ BL _call_via_r3 \n\
/* 0800bb32 */ B branch_0800bb48 \n\
\n\
.ltorg \n\
 \n\
branch_0800bb38: \n\
/* 0800bb38 */ LDR R3, [R4, 0x10] \n\
/* 0800bb3a */ CMP R3, 0x0 @ Compare R3 and 0x0 \n\
/* 0800bb3c */ BEQ branch_0800bb48 \n\
/* 0800bb3e */ MOV R2, R10 @ Set R2 to R10 \n\
/* 0800bb40 */ ADDS R0, R6, R2 @ Set R0 to R6 + R2 \n\
/* 0800bb42 */ LDR R1, [R4, 0x14] \n\
/* 0800bb44 */ BL _call_via_r3 \n\
 \n\
branch_0800bb48: \n\
/* 0800bb48 */ LDRB R1, [R5] \n\
/* 0800bb4a */ MOV R0, R9 @ Set R0 to R9 \n\
/* 0800bb4c */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 0800bb4e */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0800bb50 */ BNE branch_0800bb8e \n\
 \n\
branch_0800bb52: \n\
/* 0800bb52 */ LDR R3, [R4, 0x18] \n\
/* 0800bb54 */ CMP R3, 0x0 @ Compare R3 and 0x0 \n\
/* 0800bb56 */ BEQ branch_0800bb62 \n\
/* 0800bb58 */ MOV R1, R10 @ Set R1 to R10 \n\
/* 0800bb5a */ ADDS R0, R6, R1 @ Set R0 to R6 + R1 \n\
/* 0800bb5c */ LDR R1, [R4, 0x1C] \n\
/* 0800bb5e */ BL _call_via_r3 \n\
 \n\
branch_0800bb62: \n\
/* 0800bb62 */ LDRB R1, [R5] \n\
/* 0800bb64 */ MOVS R0, 0x80 @ Set R0 to 0x80 \n\
/* 0800bb66 */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 0800bb68 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0800bb6a */ BNE branch_0800bb8e \n\
/* 0800bb6c */ LDR R0, =D_03005380 \n\
/* 0800bb6e */ LDR R0, [R0] \n\
/* 0800bb70 */ MOV R2, R8 @ Set R2 to R8 \n\
/* 0800bb72 */ LSLS R4, R2, 0x10 \n\
/* 0800bb74 */ LSRS R4, R4, 0x10 \n\
/* 0800bb76 */ ADDS R1, R4, 0x0 @ Set R1 to R4 + 0x0 \n\
/* 0800bb78 */ BL func_0804e0c4 \n\
/* 0800bb7c */ MOV R0, R8 @ Set R0 to R8 \n\
/* 0800bb7e */ BL func_0800222c \n\
/* 0800bb82 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 0800bb84 */ BL mem_heap_dealloc_with_id \n\
/* 0800bb88 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 0800bb8a */ BL func_08005de4 \n\
 \n\
branch_0800bb8e: \n\
/* 0800bb8e */ LDR R4, [SP] \n\
/* 0800bb90 */ CMP R4, 0x1 @ Compare R4 and 0x1 \n\
/* 0800bb92 */ BHI branch_0800bb96 \n\
/* 0800bb94 */ B branch_0800ba50 \n\
 \n\
branch_0800bb96: \n\
/* 0800bb96 */ LDR R1, =D_030053c0 \n\
/* 0800bb98 */ LDRB R0, [R1, 0x2] \n\
/* 0800bb9a */ LSLS R0, R0, 0x1E \n\
/* 0800bb9c */ ADDS R5, R1, 0x0 @ Set R5 to R1 + 0x0 \n\
/* 0800bb9e */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0800bba0 */ BGE branch_0800bbd2 \n\
/* 0800bba2 */ BL func_0800e970 \n\
/* 0800bba6 */ BL func_0800eb1c \n\
/* 0800bbaa */ BL func_0800ec34 \n\
/* 0800bbae */ LDR R0, [R5, 0x4] \n\
/* 0800bbb0 */ MOVS R3, 0xCA @ Set R3 to 0xCA \n\
/* 0800bbb2 */ LSLS R3, R3, 0x1 \n\
/* 0800bbb4 */ ADDS R1, R5, R3 @ Set R1 to R5 + R3 \n\
/* 0800bbb6 */ LDRH R1, [R1] \n\
/* 0800bbb8 */ MOVS R6, 0xC9 @ Set R6 to 0xC9 \n\
/* 0800bbba */ LSLS R6, R6, 0x1 \n\
/* 0800bbbc */ ADDS R2, R5, R6 @ Set R2 to R5 + R6 \n\
/* 0800bbbe */ LDRH R2, [R2] \n\
/* 0800bbc0 */ BL func_08002934 \n\
/* 0800bbc4 */ LDR R0, [R5, 0x4] \n\
/* 0800bbc6 */ MOVS R2, 0xC8 @ Set R2 to 0xC8 \n\
/* 0800bbc8 */ LSLS R2, R2, 0x1 \n\
/* 0800bbca */ ADDS R1, R5, R2 @ Set R1 to R5 + R2 \n\
/* 0800bbcc */ LDRH R1, [R1] \n\
/* 0800bbce */ BL func_08002920 \n\
 \n\
branch_0800bbd2: \n\
/* 0800bbd2 */ LDRB R0, [R5, 0x1] \n\
/* 0800bbd4 */ LSLS R0, R0, 0x1F \n\
/* 0800bbd6 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0800bbd8 */ BNE branch_0800bbfa \n\
/* 0800bbda */ MOVS R4, 0x0 @ Set R4 to 0x0 \n\
/* 0800bbdc */ ADDS R3, R5, 0x0 @ Set R3 to R5 + 0x0 \n\
/* 0800bbde */ ADDS R2, R5, 0x0 @ Set R2 to R5 + 0x0 \n\
/* 0800bbe0 */ ADDS R2, 0x34 @ Add 0x34 to R2 \n\
 \n\
branch_0800bbe2: \n\
/* 0800bbe2 */ LDR R0, [R2] \n\
/* 0800bbe4 */ LDR R1, [R3, 0x14] \n\
/* 0800bbe6 */ SUBS R0, R0, R1 @ Set R0 to R0 - R1 \n\
/* 0800bbe8 */ STR R0, [R2] \n\
/* 0800bbea */ ADDS R2, 0x9C @ Add 0x9C to R2 \n\
/* 0800bbec */ ADDS R4, 0x1 @ Add 0x1 to R4 \n\
/* 0800bbee */ CMP R4, 0x1 @ Compare R4 and 0x1 \n\
/* 0800bbf0 */ BLS branch_0800bbe2 \n\
/* 0800bbf2 */ LDR R0, [R5, 0x18] \n\
/* 0800bbf4 */ LDR R1, [R5, 0x14] \n\
/* 0800bbf6 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0800bbf8 */ STR R0, [R5, 0x18] \n\
 \n\
branch_0800bbfa: \n\
/* 0800bbfa */ ADD SP, 0x4 \n\
/* 0800bbfc */ POP {R3-R5} \n\
/* 0800bbfe */ MOV R8, R3 @ Set R8 to R3 \n\
/* 0800bc00 */ MOV R9, R4 @ Set R9 to R4 \n\
/* 0800bc02 */ MOV R10, R5 @ Set R10 to R5 \n\
/* 0800bc04 */ POP {R4-R7} \n\
/* 0800bc06 */ POP {R0} \n\
/* 0800bc08 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
