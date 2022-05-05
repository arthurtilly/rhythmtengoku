asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0804aff0 \n\
/* 0804aff0 */ PUSH {R4-R7, LR} \n\
/* 0804aff2 */ MOV R7, R10 @ Set R7 to R10 \n\
/* 0804aff4 */ MOV R6, R9 @ Set R6 to R9 \n\
/* 0804aff6 */ MOV R5, R8 @ Set R5 to R8 \n\
/* 0804aff8 */ PUSH {R5-R7} \n\
/* 0804affa */ SUB SP, 0x8 \n\
/* 0804affc */ ADDS R7, R0, 0x0 @ Set R7 to R0 + 0x0 \n\
/* 0804affe */ LSLS R1, R7, 0x5 \n\
/* 0804b000 */ LDR R0, =D_030056a0 \n\
/* 0804b002 */ ADDS R1, R1, R0 @ Set R1 to R1 + R0 \n\
/* 0804b004 */ MOV R8, R1 @ Set R8 to R1 \n\
/* 0804b006 */ LDRB R0, [R1] \n\
/* 0804b008 */ LSLS R0, R0, 0x1F \n\
/* 0804b00a */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0804b00c */ BNE branch_0804b010 \n\
/* 0804b00e */ B branch_0804b2a6 \n\
 \n\
branch_0804b010: \n\
/* 0804b010 */ LDR R0, =D_08a86548 \n\
/* 0804b012 */ LSLS R1, R7, 0x2 \n\
/* 0804b014 */ ADDS R0, R1, R0 @ Set R0 to R1 + R0 \n\
/* 0804b016 */ LDR R0, [R0] \n\
/* 0804b018 */ MOV R10, R0 @ Set R10 to R0 \n\
/* 0804b01a */ LDR R0, =D_08a86558 \n\
/* 0804b01c */ ADDS R1, R1, R0 @ Set R1 to R1 + R0 \n\
/* 0804b01e */ LDR R1, [R1] \n\
/* 0804b020 */ MOV R9, R1 @ Set R9 to R1 \n\
/* 0804b022 */ MOV R0, R8 @ Set R0 to R8 \n\
/* 0804b024 */ LDR R6, [R0, 0x4] \n\
/* 0804b026 */ LDRH R0, [R6, 0x20] \n\
/* 0804b028 */ LSLS R0, R0, 0x16 \n\
/* 0804b02a */ LSRS R0, R0, 0x18 \n\
/* 0804b02c */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0804b02e */ BEQ branch_0804b090 \n\
/* 0804b030 */ LDR R0, =D_03001578 \n\
/* 0804b032 */ ADDS R0, R7, R0 @ Set R0 to R7 + R0 \n\
/* 0804b034 */ LDRB R0, [R0] \n\
/* 0804b036 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0804b038 */ BNE branch_0804b090 \n\
/* 0804b03a */ LDR R0, =0x04000084 @ !Hardware REG_SOUNDCNT_X \n\
/* 0804b03c */ LDRH R0, [R0] \n\
/* 0804b03e */ ADDS R2, R0, 0x0 @ Set R2 to R0 + 0x0 \n\
/* 0804b040 */ LSRS R2, R7 @ Set R2 to R2 >> R7 (logical) \n\
/* 0804b042 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 0804b044 */ ANDS R2, R0 @ Set R2 to R2 & R0 \n\
/* 0804b046 */ CMP R2, 0x0 @ Compare R2 and 0x0 \n\
/* 0804b048 */ BEQ branch_0804b04c \n\
/* 0804b04a */ B branch_0804b2a6 \n\
 \n\
branch_0804b04c: \n\
/* 0804b04c */ LDR R0, =D_03001580 \n\
/* 0804b04e */ LSLS R1, R7, 0x1 \n\
/* 0804b050 */ ADDS R0, R1, R0 @ Set R0 to R1 + R0 \n\
/* 0804b052 */ STRH R2, [R0] \n\
/* 0804b054 */ MOV R0, R10 @ Set R0 to R10 \n\
/* 0804b056 */ STRH R2, [R0] \n\
/* 0804b058 */ LDR R0, =D_03001588 \n\
/* 0804b05a */ ADDS R1, R1, R0 @ Set R1 to R1 + R0 \n\
/* 0804b05c */ MOVS R0, 0x80 @ Set R0 to 0x80 \n\
/* 0804b05e */ LSLS R0, R0, 0x8 \n\
/* 0804b060 */ STRH R0, [R1] \n\
/* 0804b062 */ MOV R1, R9 @ Set R1 to R9 \n\
/* 0804b064 */ STRH R0, [R1] \n\
/* 0804b066 */ MOV R2, R8 @ Set R2 to R8 \n\
/* 0804b068 */ LDRB R1, [R2] \n\
/* 0804b06a */ MOVS R0, 0x2 @ Set R0 to 0x2 \n\
/* 0804b06c */ NEGS R0, R0 @ Set R0 to -R0 \n\
/* 0804b06e */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 0804b070 */ STRB R0, [R2] \n\
/* 0804b072 */ B branch_0804b2a6 \n\
\n\
.ltorg \n\
 \n\
branch_0804b090: \n\
/* 0804b090 */ CMP R7, 0x2 @ Compare R7 and 0x2 \n\
/* 0804b092 */ BHI branch_0804b0b0 \n\
/* 0804b094 */ MOV R0, R8 @ Set R0 to R8 \n\
/* 0804b096 */ BL func_0804a018 \n\
/* 0804b09a */ BL func_0804afa4 \n\
/* 0804b09e */ ADDS R5, R0, 0x0 @ Set R5 to R0 + 0x0 \n\
/* 0804b0a0 */ LDRH R0, [R6, 0x20] \n\
/* 0804b0a2 */ LSLS R0, R0, 0x16 \n\
/* 0804b0a4 */ LSRS R0, R0, 0x18 \n\
/* 0804b0a6 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0804b0a8 */ BEQ branch_0804b0d2 \n\
/* 0804b0aa */ MOVS R0, 0x80 @ Set R0 to 0x80 \n\
/* 0804b0ac */ LSLS R0, R0, 0x7 \n\
/* 0804b0ae */ B branch_0804b0d0 \n\
 \n\
branch_0804b0b0: \n\
/* 0804b0b0 */ MOV R1, R8 @ Set R1 to R8 \n\
/* 0804b0b2 */ LDR R0, [R1] \n\
/* 0804b0b4 */ LSRS R1, R0, 0xF \n\
/* 0804b0b6 */ CMP R1, 0x14 @ Compare R1 and 0x14 \n\
/* 0804b0b8 */ BHI branch_0804b0bc \n\
/* 0804b0ba */ MOVS R1, 0x15 @ Set R1 to 0x15 \n\
 \n\
branch_0804b0bc: \n\
/* 0804b0bc */ CMP R1, 0x50 @ Compare R1 and 0x50 \n\
/* 0804b0be */ BLS branch_0804b0c2 \n\
/* 0804b0c0 */ MOVS R1, 0x50 @ Set R1 to 0x50 \n\
 \n\
branch_0804b0c2: \n\
/* 0804b0c2 */ LDR R0, =D_08a86568 \n\
/* 0804b0c4 */ SUBS R1, 0x15 @ Subtract 0x15 from R1 \n\
/* 0804b0c6 */ ADDS R1, R1, R0 @ Set R1 to R1 + R0 \n\
/* 0804b0c8 */ LDRB R5, [R1] \n\
/* 0804b0ca */ LDRH R0, [R6, 0x22] \n\
/* 0804b0cc */ LSRS R0, R0, 0x3 \n\
/* 0804b0ce */ LSLS R0, R0, 0x3 \n\
 \n\
branch_0804b0d0: \n\
/* 0804b0d0 */ ORRS R5, R0 @ Set R5 to R5 | R0 \n\
 \n\
branch_0804b0d2: \n\
/* 0804b0d2 */ MOV R0, R8 @ Set R0 to R8 \n\
/* 0804b0d4 */ BL func_0804a1f4 \n\
/* 0804b0d8 */ BL func_0804afd8 \n\
/* 0804b0dc */ MOV R12, R0 @ Set R12 to R0 \n\
/* 0804b0de */ LDR R0, =D_03001580 \n\
/* 0804b0e0 */ LSLS R3, R7, 0x1 \n\
/* 0804b0e2 */ ADDS R0, R3, R0 @ Set R0 to R3 + R0 \n\
/* 0804b0e4 */ LDRH R2, [R0] \n\
/* 0804b0e6 */ MOV R1, R12 @ Set R1 to R12 \n\
/* 0804b0e8 */ EORS R1, R2 @ Set R1 to R1 ^ R2 \n\
/* 0804b0ea */ NEGS R0, R1 @ Set R0 to -R1 \n\
/* 0804b0ec */ ORRS R0, R1 @ Set R0 to R0 | R1 \n\
/* 0804b0ee */ ASRS R4, R0, 0x1F \n\
/* 0804b0f0 */ MOVS R0, 0x80 @ Set R0 to 0x80 \n\
/* 0804b0f2 */ LSLS R0, R0, 0x8 \n\
/* 0804b0f4 */ ANDS R4, R0 @ Set R4 to R4 & R0 \n\
/* 0804b0f6 */ STR R3, [SP, 0x4] \n\
/* 0804b0f8 */ CMP R12, R2 @ Compare R12 and R2 \n\
/* 0804b0fa */ BNE branch_0804b108 \n\
/* 0804b0fc */ LDR R0, =D_03001588 \n\
/* 0804b0fe */ ADDS R0, R3, R0 @ Set R0 to R3 + R0 \n\
/* 0804b100 */ LDRH R0, [R0] \n\
/* 0804b102 */ CMP R5, R0 @ Check R5 - R0 \n\
/* 0804b104 */ BNE branch_0804b108 \n\
/* 0804b106 */ B branch_0804b26c \n\
 \n\
branch_0804b108: \n\
/* 0804b108 */ CMP R7, 0x1 @ Compare R7 and 0x1 \n\
/* 0804b10a */ BEQ branch_0804b19a \n\
/* 0804b10c */ CMP R7, 0x1 @ Compare R7 and 0x1 \n\
/* 0804b10e */ BCC branch_0804b128 \n\
/* 0804b110 */ CMP R7, 0x2 @ Compare R7 and 0x2 \n\
/* 0804b112 */ BEQ branch_0804b1c2 \n\
/* 0804b114 */ CMP R7, 0x3 @ Compare R7 and 0x3 \n\
/* 0804b116 */ BNE branch_0804b11a \n\
/* 0804b118 */ B branch_0804b244 \n\
 \n\
branch_0804b11a: \n\
/* 0804b11a */ B branch_0804b25c \n\
\n\
.ltorg \n\
 \n\
branch_0804b128: \n\
/* 0804b128 */ LDR R0, =D_03001578 \n\
/* 0804b12a */ ADDS R1, R7, R0 @ Set R1 to R7 + R0 \n\
/* 0804b12c */ LDRB R1, [R1] \n\
/* 0804b12e */ CMP R1, 0x0 @ Compare R1 and 0x0 \n\
/* 0804b130 */ BEQ branch_0804b190 \n\
/* 0804b132 */ LDR R0, [R6, 0x20] \n\
/* 0804b134 */ LSLS R0, R0, 0xF \n\
/* 0804b136 */ LSRS R0, R0, 0x19 \n\
/* 0804b138 */ MOVS R1, 0x8 @ Set R1 to 0x8 \n\
/* 0804b13a */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0804b13c */ BEQ branch_0804b140 \n\
/* 0804b13e */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
 \n\
branch_0804b140: \n\
/* 0804b140 */ LDR R0, =0x04000060 @ !Hardware REG_SOUND1CNT \n\
/* 0804b142 */ STRH R1, [R0] \n\
/* 0804b144 */ MOV R2, R12 @ Set R2 to R12 \n\
/* 0804b146 */ LSLS R1, R2, 0xC \n\
/* 0804b148 */ ADDS R0, R6, 0x0 @ Set R0 to R6 + 0x0 \n\
/* 0804b14a */ ADDS R0, 0x22 @ Add 0x22 to R0 \n\
/* 0804b14c */ LDRB R0, [R0] \n\
/* 0804b14e */ LSLS R0, R0, 0x1D \n\
/* 0804b150 */ LSRS R0, R0, 0x1E \n\
/* 0804b152 */ LSLS R0, R0, 0x6 \n\
/* 0804b154 */ ORRS R1, R0 @ Set R1 to R1 | R0 \n\
/* 0804b156 */ LDRH R0, [R6, 0x20] \n\
/* 0804b158 */ LSRS R0, R0, 0x2 \n\
/* 0804b15a */ LSLS R0, R0, 0x18 \n\
/* 0804b15c */ LSRS R0, R0, 0x18 \n\
/* 0804b15e */ ORRS R0, R1 @ Set R0 to R0 | R1 \n\
/* 0804b160 */ MOV R1, R10 @ Set R1 to R10 \n\
/* 0804b162 */ STRH R0, [R1] \n\
/* 0804b164 */ ORRS R4, R5 @ Set R4 to R4 | R5 \n\
/* 0804b166 */ MOV R2, R9 @ Set R2 to R9 \n\
/* 0804b168 */ STRH R4, [R2] \n\
/* 0804b16a */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0804b16c */ STR R0, [SP] \n\
/* 0804b16e */ STR R0, [SP] \n\
/* 0804b170 */ STR R0, [SP] \n\
/* 0804b172 */ STR R0, [SP] \n\
/* 0804b174 */ STR R0, [SP] \n\
/* 0804b176 */ STR R0, [SP] \n\
/* 0804b178 */ STR R0, [SP] \n\
/* 0804b17a */ STR R0, [SP] \n\
/* 0804b17c */ ADDS R0, R5, 0x0 @ Set R0 to R5 + 0x0 \n\
/* 0804b17e */ MOVS R1, 0x80 @ Set R1 to 0x80 \n\
/* 0804b180 */ LSLS R1, R1, 0x8 \n\
/* 0804b182 */ ORRS R0, R1 @ Set R0 to R0 | R1 \n\
/* 0804b184 */ STRH R0, [R2] \n\
/* 0804b186 */ B branch_0804b25c \n\
\n\
.ltorg \n\
 \n\
branch_0804b190: \n\
/* 0804b190 */ LDR R0, [R6, 0x20] \n\
/* 0804b192 */ LSLS R0, R0, 0xF \n\
/* 0804b194 */ LSRS R0, R0, 0x19 \n\
/* 0804b196 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0804b198 */ BNE branch_0804b25c \n\
 \n\
branch_0804b19a: \n\
/* 0804b19a */ MOV R2, R12 @ Set R2 to R12 \n\
/* 0804b19c */ LSLS R0, R2, 0xC \n\
/* 0804b19e */ ADDS R1, R6, 0x0 @ Set R1 to R6 + 0x0 \n\
/* 0804b1a0 */ ADDS R1, 0x22 @ Add 0x22 to R1 \n\
/* 0804b1a2 */ LDRB R1, [R1] \n\
/* 0804b1a4 */ LSLS R1, R1, 0x1D \n\
/* 0804b1a6 */ LSRS R1, R1, 0x1E \n\
/* 0804b1a8 */ LSLS R1, R1, 0x6 \n\
/* 0804b1aa */ ORRS R0, R1 @ Set R0 to R0 | R1 \n\
/* 0804b1ac */ LDRH R1, [R6, 0x20] \n\
/* 0804b1ae */ LSRS R1, R1, 0x2 \n\
/* 0804b1b0 */ LSLS R1, R1, 0x18 \n\
/* 0804b1b2 */ LSRS R1, R1, 0x18 \n\
/* 0804b1b4 */ ORRS R1, R0 @ Set R1 to R1 | R0 \n\
/* 0804b1b6 */ MOV R0, R10 @ Set R0 to R10 \n\
/* 0804b1b8 */ STRH R1, [R0] \n\
/* 0804b1ba */ ORRS R4, R5 @ Set R4 to R4 | R5 \n\
/* 0804b1bc */ MOV R1, R9 @ Set R1 to R9 \n\
/* 0804b1be */ STRH R4, [R1] \n\
/* 0804b1c0 */ B branch_0804b25c \n\
 \n\
branch_0804b1c2: \n\
/* 0804b1c2 */ LDR R0, =D_03001578 \n\
/* 0804b1c4 */ LDRB R1, [R0, 0x2] \n\
/* 0804b1c6 */ CMP R1, 0x0 @ Compare R1 and 0x0 \n\
/* 0804b1c8 */ BEQ branch_0804b206 \n\
/* 0804b1ca */ LDR R1, =0x04000080 @ !Hardware REG_SOUNDCNT \n\
/* 0804b1cc */ LDR R2, =0x0000ff77 \n\
/* 0804b1ce */ ADDS R0, R2, 0x0 @ Set R0 to R2 + 0x0 \n\
/* 0804b1d0 */ STRH R0, [R1] \n\
/* 0804b1d2 */ MOVS R0, 0x80 @ Set R0 to 0x80 \n\
/* 0804b1d4 */ LSLS R0, R0, 0x8 \n\
/* 0804b1d6 */ ORRS R5, R0 @ Set R5 to R5 | R0 \n\
/* 0804b1d8 */ LDR R0, =D_03001590 \n\
/* 0804b1da */ LDR R0, [R0] \n\
/* 0804b1dc */ LDR R3, [R6, 0x4] \n\
/* 0804b1de */ CMP R0, R3 @ Check R0 - R3 \n\
/* 0804b1e0 */ BEQ branch_0804b206 \n\
/* 0804b1e2 */ LDR R2, =0x04000090 @ !Hardware REG_SGWR0 \n\
/* 0804b1e4 */ ADDS R1, R3, 0x0 @ Set R1 to R3 + 0x0 \n\
/* 0804b1e6 */ LDMIA R1!, {R0} \n\
/* 0804b1e8 */ STMIA R2!, {R0} \n\
/* 0804b1ea */ LDR R0, [R3, 0x4] \n\
/* 0804b1ec */ STMIA R2!, {R0} \n\
/* 0804b1ee */ ADDS R1, 0x4 @ Add 0x4 to R1 \n\
/* 0804b1f0 */ LDMIA R1!, {R0} \n\
/* 0804b1f2 */ STMIA R2!, {R0} \n\
/* 0804b1f4 */ LDR R0, [R1] \n\
/* 0804b1f6 */ STR R0, [R2] \n\
/* 0804b1f8 */ LDR R2, =0x04000070 @ !Hardware REG_SOUND3CNT \n\
/* 0804b1fa */ LDRH R1, [R2] \n\
/* 0804b1fc */ MOVS R0, 0x40 @ Set R0 to 0x40 \n\
/* 0804b1fe */ BICS R0, R1 @ Clear bits in R1 from R0 \n\
/* 0804b200 */ MOVS R1, 0x80 @ Set R1 to 0x80 \n\
/* 0804b202 */ ORRS R0, R1 @ Set R0 to R0 | R1 \n\
/* 0804b204 */ STRH R0, [R2] \n\
 \n\
branch_0804b206: \n\
/* 0804b206 */ LDR R0, =D_08a86540 \n\
/* 0804b208 */ MOV R2, R12 @ Set R2 to R12 \n\
/* 0804b20a */ LSRS R1, R2, 0x2 \n\
/* 0804b20c */ LSLS R1, R1, 0x1 \n\
/* 0804b20e */ ADDS R1, R1, R0 @ Set R1 to R1 + R0 \n\
/* 0804b210 */ LDRH R0, [R6, 0x20] \n\
/* 0804b212 */ LSRS R0, R0, 0x2 \n\
/* 0804b214 */ LSLS R0, R0, 0x18 \n\
/* 0804b216 */ LSRS R0, R0, 0x18 \n\
/* 0804b218 */ LDRH R1, [R1] \n\
/* 0804b21a */ ORRS R0, R1 @ Set R0 to R0 | R1 \n\
/* 0804b21c */ MOV R1, R10 @ Set R1 to R10 \n\
/* 0804b21e */ STRH R0, [R1] \n\
/* 0804b220 */ MOV R2, R9 @ Set R2 to R9 \n\
/* 0804b222 */ STRH R5, [R2] \n\
/* 0804b224 */ B branch_0804b25c \n\
\n\
.ltorg \n\
 \n\
branch_0804b244: \n\
/* 0804b244 */ MOV R0, R12 @ Set R0 to R12 \n\
/* 0804b246 */ LSLS R1, R0, 0xC \n\
/* 0804b248 */ LDRH R0, [R6, 0x20] \n\
/* 0804b24a */ LSRS R0, R0, 0x2 \n\
/* 0804b24c */ LSLS R0, R0, 0x18 \n\
/* 0804b24e */ LSRS R0, R0, 0x18 \n\
/* 0804b250 */ ORRS R0, R1 @ Set R0 to R0 | R1 \n\
/* 0804b252 */ MOV R1, R10 @ Set R1 to R10 \n\
/* 0804b254 */ STRH R0, [R1] \n\
/* 0804b256 */ ORRS R4, R5 @ Set R4 to R4 | R5 \n\
/* 0804b258 */ MOV R2, R9 @ Set R2 to R9 \n\
/* 0804b25a */ STRH R4, [R2] \n\
 \n\
branch_0804b25c: \n\
/* 0804b25c */ LDR R0, =D_03001580 \n\
/* 0804b25e */ LDR R1, [SP, 0x4] \n\
/* 0804b260 */ ADDS R0, R1, R0 @ Set R0 to R1 + R0 \n\
/* 0804b262 */ MOV R2, R12 @ Set R2 to R12 \n\
/* 0804b264 */ STRH R2, [R0] \n\
/* 0804b266 */ LDR R0, =D_03001588 \n\
/* 0804b268 */ ADDS R0, R1, R0 @ Set R0 to R1 + R0 \n\
/* 0804b26a */ STRH R5, [R0] \n\
 \n\
branch_0804b26c: \n\
/* 0804b26c */ LDR R1, =D_03001578 \n\
/* 0804b26e */ ADDS R0, R7, R1 @ Set R0 to R7 + R1 \n\
/* 0804b270 */ MOVS R4, 0x0 @ Set R4 to 0x0 \n\
/* 0804b272 */ STRB R4, [R0] \n\
/* 0804b274 */ MOV R0, R8 @ Set R0 to R8 \n\
/* 0804b276 */ BL func_0804a224 \n\
/* 0804b27a */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0804b27c */ BEQ branch_0804b2a6 \n\
/* 0804b27e */ LDR R0, =D_03001580 \n\
/* 0804b280 */ LDR R2, [SP, 0x4] \n\
/* 0804b282 */ ADDS R0, R2, R0 @ Set R0 to R2 + R0 \n\
/* 0804b284 */ STRH R4, [R0] \n\
/* 0804b286 */ MOV R0, R10 @ Set R0 to R10 \n\
/* 0804b288 */ STRH R4, [R0] \n\
/* 0804b28a */ LDR R0, =D_03001588 \n\
/* 0804b28c */ ADDS R0, R2, R0 @ Set R0 to R2 + R0 \n\
/* 0804b28e */ MOVS R1, 0x80 @ Set R1 to 0x80 \n\
/* 0804b290 */ LSLS R1, R1, 0x8 \n\
/* 0804b292 */ STRH R1, [R0] \n\
/* 0804b294 */ MOV R2, R9 @ Set R2 to R9 \n\
/* 0804b296 */ STRH R1, [R2] \n\
/* 0804b298 */ MOV R0, R8 @ Set R0 to R8 \n\
/* 0804b29a */ LDRB R1, [R0] \n\
/* 0804b29c */ MOVS R0, 0x2 @ Set R0 to 0x2 \n\
/* 0804b29e */ NEGS R0, R0 @ Set R0 to -R0 \n\
/* 0804b2a0 */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 0804b2a2 */ MOV R1, R8 @ Set R1 to R8 \n\
/* 0804b2a4 */ STRB R0, [R1] \n\
 \n\
branch_0804b2a6: \n\
/* 0804b2a6 */ ADD SP, 0x8 \n\
/* 0804b2a8 */ POP {R3-R5} \n\
/* 0804b2aa */ MOV R8, R3 @ Set R8 to R3 \n\
/* 0804b2ac */ MOV R9, R4 @ Set R9 to R4 \n\
/* 0804b2ae */ MOV R10, R5 @ Set R10 to R5 \n\
/* 0804b2b0 */ POP {R4-R7} \n\
/* 0804b2b2 */ POP {R0} \n\
/* 0804b2b4 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
