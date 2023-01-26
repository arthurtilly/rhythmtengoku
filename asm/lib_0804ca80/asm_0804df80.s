asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0804df80 \n\
/* 0804df80 */ PUSH {R4-R7, LR} \n\
/* 0804df82 */ MOV R7, R8 @ Set R7 to R8 \n\
/* 0804df84 */ PUSH {R7} \n\
/* 0804df86 */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 0804df88 */ ADDS R6, R2, 0x0 @ Set R6 to R2 + 0x0 \n\
/* 0804df8a */ ADDS R5, R3, 0x0 @ Set R5 to R3 + 0x0 \n\
/* 0804df8c */ LSLS R1, R1, 0x10 \n\
/* 0804df8e */ LSRS R1, R1, 0x10 \n\
/* 0804df90 */ MOV R8, R1 @ Set R8 to R1 \n\
/* 0804df92 */ LDRH R3, [R4, 0xC] \n\
/* 0804df94 */ B branch_0804e08c \n\
 \n\
branch_0804df96: \n\
/* 0804df96 */ ASRS R1, R1, 0x10 \n\
/* 0804df98 */ LDR R2, [R4, 0x8] \n\
/* 0804df9a */ LSLS R0, R1, 0x4 \n\
/* 0804df9c */ SUBS R0, R0, R1 @ Set R0 to R0 - R1 \n\
/* 0804df9e */ LSLS R0, R0, 0x2 \n\
/* 0804dfa0 */ ADDS R0, R0, R2 @ Set R0 to R0 + R2 \n\
/* 0804dfa2 */ LDRH R7, [R0, 0x1A] \n\
/* 0804dfa4 */ LDRH R0, [R0, 0x2A] \n\
/* 0804dfa6 */ CMP R0, R8 @ Compare R0 and R8 \n\
/* 0804dfa8 */ BNE branch_0804e08a \n\
/* 0804dfaa */ CMP R6, 0xA @ Compare R6 and 0xA \n\
/* 0804dfac */ BHI branch_0804e08a \n\
/* 0804dfae */ LSLS R0, R6, 0x2 \n\
/* 0804dfb0 */ LDR R1, =jtbl_0804dfbc \n\
/* 0804dfb2 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0804dfb4 */ LDR R0, [R0] \n\
/* 0804dfb6 */ MOV PC, R0 @ Set PC to R0 \n\
\n\
.ltorg \n\
jtbl_0804dfbc: \n\
.word jump_0804dfe8 \n\
.word jump_0804dff4 \n\
.word jump_0804e004 \n\
.word jump_0804e014 \n\
.word jump_0804e022 \n\
.word jump_0804e030 \n\
.word jump_0804e03e \n\
.word jump_0804e04c \n\
.word jump_0804e05c \n\
.word jump_0804e06c \n\
.word jump_0804e07c \n\
jump_0804dfe8: \n\
/* 0804dfe8 */ LSLS R1, R3, 0x10 \n\
/* 0804dfea */ ASRS R1, R1, 0x10 \n\
/* 0804dfec */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 0804dfee */ BL func_0804d504 \n\
/* 0804dff2 */ B branch_0804e08a \n\
jump_0804dff4: \n\
/* 0804dff4 */ LSLS R1, R3, 0x10 \n\
/* 0804dff6 */ ASRS R1, R1, 0x10 \n\
/* 0804dff8 */ LSLS R2, R5, 0x10 \n\
/* 0804dffa */ LSRS R2, R2, 0x10 \n\
/* 0804dffc */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 0804dffe */ BL func_0804d770 \n\
/* 0804e002 */ B branch_0804e08a \n\
jump_0804e004: \n\
/* 0804e004 */ LSLS R1, R3, 0x10 \n\
/* 0804e006 */ ASRS R1, R1, 0x10 \n\
/* 0804e008 */ LSLS R2, R5, 0x10 \n\
/* 0804e00a */ LSRS R2, R2, 0x10 \n\
/* 0804e00c */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 0804e00e */ BL func_0804da20 \n\
/* 0804e012 */ B branch_0804e08a \n\
jump_0804e014: \n\
/* 0804e014 */ LSLS R1, R3, 0x10 \n\
/* 0804e016 */ ASRS R1, R1, 0x10 \n\
/* 0804e018 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 0804e01a */ ADDS R2, R5, 0x0 @ Set R2 to R5 + 0x0 \n\
/* 0804e01c */ BL func_0804d7b4 \n\
/* 0804e020 */ B branch_0804e08a \n\
jump_0804e022: \n\
/* 0804e022 */ LSLS R1, R3, 0x10 \n\
/* 0804e024 */ ASRS R1, R1, 0x10 \n\
/* 0804e026 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 0804e028 */ ADDS R2, R5, 0x0 @ Set R2 to R5 + 0x0 \n\
/* 0804e02a */ BL func_0804d7e8 \n\
/* 0804e02e */ B branch_0804e08a \n\
jump_0804e030: \n\
/* 0804e030 */ LSLS R1, R3, 0x10 \n\
/* 0804e032 */ ASRS R1, R1, 0x10 \n\
/* 0804e034 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 0804e036 */ ADDS R2, R5, 0x0 @ Set R2 to R5 + 0x0 \n\
/* 0804e038 */ BL func_0804d820 \n\
/* 0804e03c */ B branch_0804e08a \n\
jump_0804e03e: \n\
/* 0804e03e */ LSLS R1, R3, 0x10 \n\
/* 0804e040 */ ASRS R1, R1, 0x10 \n\
/* 0804e042 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 0804e044 */ ADDS R2, R5, 0x0 @ Set R2 to R5 + 0x0 \n\
/* 0804e046 */ BL func_0804d858 \n\
/* 0804e04a */ B branch_0804e08a \n\
jump_0804e04c: \n\
/* 0804e04c */ LSLS R1, R3, 0x10 \n\
/* 0804e04e */ ASRS R1, R1, 0x10 \n\
/* 0804e050 */ LSLS R2, R5, 0x10 \n\
/* 0804e052 */ ASRS R2, R2, 0x10 \n\
/* 0804e054 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 0804e056 */ BL func_0804d890 \n\
/* 0804e05a */ B branch_0804e08a \n\
jump_0804e05c: \n\
/* 0804e05c */ LSLS R1, R3, 0x10 \n\
/* 0804e05e */ ASRS R1, R1, 0x10 \n\
/* 0804e060 */ LSLS R2, R5, 0x18 \n\
/* 0804e062 */ ASRS R2, R2, 0x18 \n\
/* 0804e064 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 0804e066 */ BL func_0804d8c4 \n\
/* 0804e06a */ B branch_0804e08a \n\
jump_0804e06c: \n\
/* 0804e06c */ LSLS R1, R3, 0x10 \n\
/* 0804e06e */ ASRS R1, R1, 0x10 \n\
/* 0804e070 */ LDR R2, [R5] \n\
/* 0804e072 */ LDR R3, [R5, 0x4] \n\
/* 0804e074 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 0804e076 */ BL func_0804db44 \n\
/* 0804e07a */ B branch_0804e08a \n\
jump_0804e07c: \n\
/* 0804e07c */ LSLS R1, R3, 0x10 \n\
/* 0804e07e */ ASRS R1, R1, 0x10 \n\
/* 0804e080 */ LSLS R2, R5, 0x10 \n\
/* 0804e082 */ LSRS R2, R2, 0x10 \n\
/* 0804e084 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 0804e086 */ BL func_0804dcb8 \n\
 \n\
branch_0804e08a: \n\
/* 0804e08a */ ADDS R3, R7, 0x0 @ Set R3 to R7 + 0x0 \n\
 \n\
branch_0804e08c: \n\
/* 0804e08c */ LSLS R1, R3, 0x10 \n\
/* 0804e08e */ CMP R1, 0x0 @ Compare R1 and 0x0 \n\
/* 0804e090 */ BLT branch_0804e094 \n\
/* 0804e092 */ B branch_0804df96 \n\
 \n\
branch_0804e094: \n\
/* 0804e094 */ POP {R3} \n\
/* 0804e096 */ MOV R8, R3 @ Set R8 to R3 \n\
/* 0804e098 */ POP {R4-R7} \n\
/* 0804e09a */ POP {R0} \n\
/* 0804e09c */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
