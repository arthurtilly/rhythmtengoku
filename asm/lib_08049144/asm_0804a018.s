asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0804a018 \n\
/* 0804a018 */ PUSH {R4-R7, LR} \n\
/* 0804a01a */ MOV R7, R10 @ Set R7 to R10 \n\
/* 0804a01c */ MOV R6, R9 @ Set R6 to R9 \n\
/* 0804a01e */ MOV R5, R8 @ Set R5 to R8 \n\
/* 0804a020 */ PUSH {R5-R7} \n\
/* 0804a022 */ ADDS R7, R0, 0x0 @ Set R7 to R0 + 0x0 \n\
/* 0804a024 */ LDR R0, [R7, 0x4] \n\
/* 0804a026 */ LDRB R0, [R0] \n\
/* 0804a028 */ CMP R0, 0x46 @ Compare R0 and 0x46 \n\
/* 0804a02a */ BNE branch_0804a030 \n\
/* 0804a02c */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0804a02e */ B branch_0804a1e4 \n\
 \n\
branch_0804a030: \n\
/* 0804a030 */ LDR R0, [R7, 0x8] \n\
/* 0804a032 */ MOV R10, R0 @ Set R10 to R0 \n\
/* 0804a034 */ LDR R1, [R7, 0xC] \n\
/* 0804a036 */ MOV R9, R1 @ Set R9 to R1 \n\
/* 0804a038 */ LDR R0, [R7] \n\
/* 0804a03a */ LSRS R6, R0, 0xF \n\
/* 0804a03c */ LDRB R0, [R1] \n\
/* 0804a03e */ LSLS R0, R0, 0x1E \n\
/* 0804a040 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0804a042 */ BGE branch_0804a046 \n\
/* 0804a044 */ B branch_0804a1e2 \n\
 \n\
branch_0804a046: \n\
/* 0804a046 */ MOV R2, R9 @ Set R2 to R9 \n\
/* 0804a048 */ LDRB R4, [R2, 0x1C] \n\
/* 0804a04a */ CMP R4, 0x0 @ Compare R4 and 0x0 \n\
/* 0804a04c */ BEQ branch_0804a0f4 \n\
/* 0804a04e */ LDRB R0, [R2, 0x1D] \n\
/* 0804a050 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0804a052 */ BEQ branch_0804a0f4 \n\
/* 0804a054 */ LDRB R0, [R2, 0x1E] \n\
/* 0804a056 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0804a058 */ BNE branch_0804a0f4 \n\
/* 0804a05a */ LSLS R0, R4, 0x1 \n\
/* 0804a05c */ ADDS R0, 0x1 @ Add 0x1 to R0 \n\
/* 0804a05e */ BL func_0804af0c \n\
/* 0804a062 */ LDRB R1, [R7] \n\
/* 0804a064 */ LSRS R1, R1, 0x1 \n\
/* 0804a066 */ ADDS R1, R1, R0 @ Set R1 to R1 + R0 \n\
/* 0804a068 */ SUBS R1, R1, R4 @ Set R1 to R1 - R4 \n\
/* 0804a06a */ MOV R3, R10 @ Set R3 to R10 \n\
/* 0804a06c */ MOVS R0, 0x4 @ Set R0 to 0x4 \n\
/* 0804a06e */ LDRSB R0, [R3, R0] \n\
/* 0804a070 */ ADDS R5, R1, R0 @ Set R5 to R1 + R0 \n\
/* 0804a072 */ ADDS R0, R5, 0x0 @ Set R0 to R5 + 0x0 \n\
/* 0804a074 */ MOV R4, R10 @ Set R4 to R10 \n\
/* 0804a076 */ ADDS R4, 0x1C @ Add 0x1C to R4 \n\
/* 0804a078 */ CMP R5, 0x0 @ Compare R5 and 0x0 \n\
/* 0804a07a */ BGE branch_0804a082 \n\
 \n\
branch_0804a07c: \n\
/* 0804a07c */ ADDS R5, 0xC @ Add 0xC to R5 \n\
/* 0804a07e */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0804a080 */ BLT branch_0804a07c \n\
 \n\
branch_0804a082: \n\
/* 0804a082 */ MOVS R1, 0xC @ Set R1 to 0xC \n\
/* 0804a084 */ BL __modsi3 \n\
/* 0804a088 */ ADDS R0, R4, R0 @ Set R0 to R4 + R0 \n\
/* 0804a08a */ LDRB R0, [R0] \n\
/* 0804a08c */ LSLS R0, R0, 0x18 \n\
/* 0804a08e */ ASRS R0, R0, 0x18 \n\
/* 0804a090 */ ADDS R5, R5, R0 @ Set R5 to R5 + R0 \n\
/* 0804a092 */ CMP R5, 0x0 @ Compare R5 and 0x0 \n\
/* 0804a094 */ BGE branch_0804a0a0 \n\
 \n\
branch_0804a096: \n\
/* 0804a096 */ ADDS R5, 0xC @ Add 0xC to R5 \n\
/* 0804a098 */ CMP R5, 0x0 @ Compare R5 and 0x0 \n\
/* 0804a09a */ BLT branch_0804a096 \n\
/* 0804a09c */ B branch_0804a0a0 \n\
 \n\
branch_0804a09e: \n\
/* 0804a09e */ SUBS R5, 0xC @ Subtract 0xC from R5 \n\
 \n\
branch_0804a0a0: \n\
/* 0804a0a0 */ CMP R5, 0x7F @ Compare R5 and 0x7F \n\
/* 0804a0a2 */ BGT branch_0804a09e \n\
/* 0804a0a4 */ MOV R0, R10 @ Set R0 to R10 \n\
/* 0804a0a6 */ ADDS R1, R5, 0x0 @ Set R1 to R5 + 0x0 \n\
/* 0804a0a8 */ BL func_0804a690 \n\
/* 0804a0ac */ ADDS R6, R0, 0x0 @ Set R6 to R0 + 0x0 \n\
/* 0804a0ae */ LSLS R2, R6, 0xF \n\
/* 0804a0b0 */ LDR R0, [R7] \n\
/* 0804a0b2 */ LDR R1, =0x00007fff \n\
/* 0804a0b4 */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 0804a0b6 */ ORRS R0, R2 @ Set R0 to R0 | R2 \n\
/* 0804a0b8 */ STR R0, [R7] \n\
/* 0804a0ba */ MOV R0, R9 @ Set R0 to R9 \n\
/* 0804a0bc */ LDRB R4, [R0, 0xF] \n\
/* 0804a0be */ SUBS R1, R5, R4 @ Set R1 to R5 - R4 \n\
/* 0804a0c0 */ MOV R0, R10 @ Set R0 to R10 \n\
/* 0804a0c2 */ BL func_0804a690 \n\
/* 0804a0c6 */ LDR R1, [R7] \n\
/* 0804a0c8 */ LSRS R1, R1, 0xF \n\
/* 0804a0ca */ SUBS R1, R1, R0 @ Set R1 to R1 - R0 \n\
/* 0804a0cc */ STRH R1, [R7, 0x10] \n\
/* 0804a0ce */ ADDS R4, R5, R4 @ Set R4 to R5 + R4 \n\
/* 0804a0d0 */ MOV R0, R10 @ Set R0 to R10 \n\
/* 0804a0d2 */ ADDS R1, R4, 0x0 @ Set R1 to R4 + 0x0 \n\
/* 0804a0d4 */ BL func_0804a690 \n\
/* 0804a0d8 */ LDR R1, [R7] \n\
/* 0804a0da */ LSRS R1, R1, 0xF \n\
/* 0804a0dc */ SUBS R0, R0, R1 @ Set R0 to R0 - R1 \n\
/* 0804a0de */ STRH R0, [R7, 0x12] \n\
/* 0804a0e0 */ MOV R2, R9 @ Set R2 to R9 \n\
/* 0804a0e2 */ LDRB R1, [R2, 0xC] \n\
/* 0804a0e4 */ ADDS R1, R5, R1 @ Set R1 to R5 + R1 \n\
/* 0804a0e6 */ MOV R0, R10 @ Set R0 to R10 \n\
/* 0804a0e8 */ BL func_0804a690 \n\
/* 0804a0ec */ LDR R1, [R7] \n\
/* 0804a0ee */ LSRS R1, R1, 0xF \n\
/* 0804a0f0 */ SUBS R0, R0, R1 @ Set R0 to R0 - R1 \n\
/* 0804a0f2 */ STRH R0, [R7, 0x14] \n\
 \n\
branch_0804a0f4: \n\
/* 0804a0f4 */ MOV R3, R9 @ Set R3 to R9 \n\
/* 0804a0f6 */ LDRH R0, [R3, 0x8] \n\
/* 0804a0f8 */ LSLS R0, R0, 0x12 \n\
/* 0804a0fa */ LSRS R5, R0, 0x12 \n\
/* 0804a0fc */ MOVS R0, 0x80 @ Set R0 to 0x80 \n\
/* 0804a0fe */ LSLS R0, R0, 0x6 \n\
/* 0804a100 */ CMP R5, R0 @ Check R5 - R0 \n\
/* 0804a102 */ BEQ branch_0804a164 \n\
/* 0804a104 */ SUBS R0, 0x1 @ Subtract 0x1 from R0 \n\
/* 0804a106 */ CMP R5, R0 @ Check R5 - R0 \n\
/* 0804a108 */ BGT branch_0804a114 \n\
/* 0804a10a */ LDRH R0, [R7, 0x10] \n\
/* 0804a10c */ MOV R8, R0 @ Set R8 to R0 \n\
/* 0804a10e */ B branch_0804a118 \n\
\n\
.ltorg \n\
 \n\
branch_0804a114: \n\
/* 0804a114 */ LDRH R1, [R7, 0x12] \n\
/* 0804a116 */ MOV R8, R1 @ Set R8 to R1 \n\
 \n\
branch_0804a118: \n\
/* 0804a118 */ LDR R0, =0x00001fff \n\
/* 0804a11a */ CMP R5, R0 @ Check R5 - R0 \n\
/* 0804a11c */ BGT branch_0804a128 \n\
/* 0804a11e */ MOV R2, R8 @ Set R2 to R8 \n\
/* 0804a120 */ SUBS R6, R6, R2 @ Set R6 to R6 - R2 \n\
/* 0804a122 */ B branch_0804a12c \n\
\n\
.ltorg \n\
 \n\
branch_0804a128: \n\
/* 0804a128 */ LDR R3, =0xffffe000 \n\
/* 0804a12a */ ADDS R5, R5, R3 @ Set R5 to R5 + R3 \n\
 \n\
branch_0804a12c: \n\
/* 0804a12c */ LDR R4, =0x000002aa \n\
/* 0804a12e */ ADDS R0, R5, 0x0 @ Set R0 to R5 + 0x0 \n\
/* 0804a130 */ ADDS R1, R4, 0x0 @ Set R1 to R4 + 0x0 \n\
/* 0804a132 */ BL __divsi3 \n\
/* 0804a136 */ ADDS R2, R0, 0x0 @ Set R2 to R0 + 0x0 \n\
/* 0804a138 */ ADDS R0, R2, 0x0 @ Set R0 to R2 + 0x0 \n\
/* 0804a13a */ MULS R0, R4 @ Multiply R0 by R4 \n\
/* 0804a13c */ SUBS R3, R5, R0 @ Set R3 to R5 - R0 \n\
/* 0804a13e */ LDR R1, =D_08a86108 \n\
/* 0804a140 */ LSLS R0, R2, 0x2 \n\
/* 0804a142 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0804a144 */ LDR R5, [R0] \n\
/* 0804a146 */ ADDS R0, R2, 0x1 @ Set R0 to R2 + 0x1 \n\
/* 0804a148 */ LSLS R0, R0, 0x2 \n\
/* 0804a14a */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0804a14c */ LDR R0, [R0] \n\
/* 0804a14e */ SUBS R0, R0, R5 @ Set R0 to R0 - R5 \n\
/* 0804a150 */ MULS R0, R3 @ Multiply R0 by R3 \n\
/* 0804a152 */ ADDS R1, R4, 0x0 @ Set R1 to R4 + 0x0 \n\
/* 0804a154 */ BL __udivsi3 \n\
/* 0804a158 */ ADDS R0, R5, R0 @ Set R0 to R5 + R0 \n\
/* 0804a15a */ MOV R1, R8 @ Set R1 to R8 \n\
/* 0804a15c */ MULS R1, R0 @ Multiply R1 by R0 \n\
/* 0804a15e */ ADDS R0, R1, 0x0 @ Set R0 to R1 + 0x0 \n\
/* 0804a160 */ LSRS R0, R0, 0x10 \n\
/* 0804a162 */ ADDS R6, R6, R0 @ Set R6 to R6 + R0 \n\
 \n\
branch_0804a164: \n\
/* 0804a164 */ MOV R2, R10 @ Set R2 to R10 \n\
/* 0804a166 */ LDRH R1, [R2, 0x6] \n\
/* 0804a168 */ LSLS R0, R1, 0x10 \n\
/* 0804a16a */ MOV R3, R9 @ Set R3 to R9 \n\
/* 0804a16c */ LDRB R4, [R3, 0x7] \n\
/* 0804a16e */ LDRH R2, [R3, 0x1A] \n\
/* 0804a170 */ MOV R8, R2 @ Set R8 to R2 \n\
/* 0804a172 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0804a174 */ BEQ branch_0804a1ba \n\
/* 0804a176 */ ASRS R2, R0, 0x18 \n\
/* 0804a178 */ MOVS R3, 0xFF @ Set R3 to 0xFF \n\
/* 0804a17a */ ANDS R3, R1 @ Set R3 to R3 & R1 \n\
/* 0804a17c */ LDR R1, =D_08a86108 \n\
 \n\
branch_0804a17e: \n\
/* 0804a17e */ CMP R2, 0xB @ Compare R2 and 0xB \n\
/* 0804a180 */ BLS branch_0804a19e \n\
/* 0804a182 */ CMP R2, 0x0 @ Compare R2 and 0x0 \n\
/* 0804a184 */ BGE branch_0804a198 \n\
/* 0804a186 */ ASRS R6, R6, 0x1 \n\
/* 0804a188 */ ADDS R2, 0xC @ Add 0xC to R2 \n\
/* 0804a18a */ B branch_0804a17e \n\
\n\
.ltorg \n\
 \n\
branch_0804a198: \n\
/* 0804a198 */ LSLS R6, R6, 0x1 \n\
/* 0804a19a */ SUBS R2, 0xC @ Subtract 0xC from R2 \n\
/* 0804a19c */ B branch_0804a17e \n\
 \n\
branch_0804a19e: \n\
/* 0804a19e */ LSLS R0, R2, 0x2 \n\
/* 0804a1a0 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0804a1a2 */ LDR R5, [R0] \n\
/* 0804a1a4 */ ADDS R0, R2, 0x1 @ Set R0 to R2 + 0x1 \n\
/* 0804a1a6 */ LSLS R0, R0, 0x2 \n\
/* 0804a1a8 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0804a1aa */ LDR R0, [R0] \n\
/* 0804a1ac */ SUBS R0, R0, R5 @ Set R0 to R0 - R5 \n\
/* 0804a1ae */ MULS R0, R3 @ Multiply R0 by R3 \n\
/* 0804a1b0 */ LSRS R0, R0, 0x8 \n\
/* 0804a1b2 */ ADDS R0, R5, R0 @ Set R0 to R5 + R0 \n\
/* 0804a1b4 */ MULS R0, R6 @ Multiply R0 by R6 \n\
/* 0804a1b6 */ LSRS R0, R0, 0x10 \n\
/* 0804a1b8 */ ADDS R6, R6, R0 @ Set R6 to R6 + R0 \n\
 \n\
branch_0804a1ba: \n\
/* 0804a1ba */ LSLS R0, R4, 0x1A \n\
/* 0804a1bc */ LSRS R0, R0, 0x1E \n\
/* 0804a1be */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0804a1c0 */ BNE branch_0804a1d2 \n\
/* 0804a1c2 */ MOV R3, R9 @ Set R3 to R9 \n\
/* 0804a1c4 */ MOVS R1, 0xD @ Set R1 to 0xD \n\
/* 0804a1c6 */ LDRSB R1, [R3, R1] \n\
/* 0804a1c8 */ MOVS R2, 0x14 @ Set R2 to 0x14 \n\
/* 0804a1ca */ LDRSH R0, [R7, R2] \n\
/* 0804a1cc */ MULS R0, R1 @ Multiply R0 by R1 \n\
/* 0804a1ce */ ASRS R0, R0, 0x5 \n\
/* 0804a1d0 */ ADDS R6, R6, R0 @ Set R6 to R6 + R0 \n\
 \n\
branch_0804a1d2: \n\
/* 0804a1d2 */ MOVS R0, 0x80 @ Set R0 to 0x80 \n\
/* 0804a1d4 */ LSLS R0, R0, 0x1 \n\
/* 0804a1d6 */ CMP R8, R0 @ Compare R8 and R0 \n\
/* 0804a1d8 */ BEQ branch_0804a1e2 \n\
/* 0804a1da */ MOV R3, R9 @ Set R3 to R9 \n\
/* 0804a1dc */ LDRH R0, [R3, 0x1A] \n\
/* 0804a1de */ MULS R0, R6 @ Multiply R0 by R6 \n\
/* 0804a1e0 */ ASRS R6, R0, 0x8 \n\
 \n\
branch_0804a1e2: \n\
/* 0804a1e2 */ ADDS R0, R6, 0x0 @ Set R0 to R6 + 0x0 \n\
 \n\
branch_0804a1e4: \n\
/* 0804a1e4 */ POP {R3-R5} \n\
/* 0804a1e6 */ MOV R8, R3 @ Set R8 to R3 \n\
/* 0804a1e8 */ MOV R9, R4 @ Set R9 to R4 \n\
/* 0804a1ea */ MOV R10, R5 @ Set R10 to R5 \n\
/* 0804a1ec */ POP {R4-R7} \n\
/* 0804a1ee */ POP {R1} \n\
/* 0804a1f0 */ BX R1 \n\
.balign 4, 0 \n\
.syntax divided");
