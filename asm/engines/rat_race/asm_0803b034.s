asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0803b034 \n\
/* 0803b034 */ PUSH {R4-R7, LR} \n\
/* 0803b036 */ MOV R7, R10 @ Set R7 to R10 \n\
/* 0803b038 */ MOV R6, R9 @ Set R6 to R9 \n\
/* 0803b03a */ MOV R5, R8 @ Set R5 to R8 \n\
/* 0803b03c */ PUSH {R5-R7} \n\
/* 0803b03e */ SUB SP, 0xC \n\
/* 0803b040 */ ADDS R5, R0, 0x0 @ Set R5 to R0 + 0x0 \n\
/* 0803b042 */ LDR R0, =gCurrentEngineData \n\
/* 0803b044 */ LDR R1, [R0] \n\
/* 0803b046 */ ADDS R4, R1, 0x0 @ Set R4 to R1 + 0x0 \n\
/* 0803b048 */ ADDS R4, 0x3C @ Add 0x3C to R4 \n\
/* 0803b04a */ ADDS R2, R1, 0x0 @ Set R2 to R1 + 0x0 \n\
/* 0803b04c */ ADDS R2, 0x38 @ Add 0x38 to R2 \n\
/* 0803b04e */ LDRB R1, [R2] \n\
/* 0803b050 */ ADDS R3, R0, 0x0 @ Set R3 to R0 + 0x0 \n\
/* 0803b052 */ CMP R1, R5 @ Check R1 - R5 \n\
/* 0803b054 */ BNE branch_0803b058 \n\
/* 0803b056 */ B branch_0803b198 \n\
 \n\
branch_0803b058: \n\
/* 0803b058 */ STRB R5, [R2] \n\
/* 0803b05a */ CMP R5, 0x1 @ Compare R5 and 0x1 \n\
/* 0803b05c */ BNE branch_0803b092 \n\
/* 0803b05e */ LDR R1, [R3] \n\
/* 0803b060 */ ADDS R0, R1, 0x0 @ Set R0 to R1 + 0x0 \n\
/* 0803b062 */ ADDS R0, 0x2C @ Add 0x2C to R0 \n\
/* 0803b064 */ LDRB R0, [R0] \n\
/* 0803b066 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 0803b068 */ BEQ branch_0803b088 \n\
/* 0803b06a */ CMP R0, 0x1 @ Compare R0 and 0x1 \n\
/* 0803b06c */ BNE branch_0803b07c \n\
/* 0803b06e */ LDR R0, [R1, 0x20] \n\
/* 0803b070 */ MOVS R2, 0xC0 @ Set R2 to 0xC0 \n\
/* 0803b072 */ LSLS R2, R2, 0x7 \n\
/* 0803b074 */ B branch_0803b086 \n\
\n\
.ltorg \n\
 \n\
branch_0803b07c: \n\
/* 0803b07c */ CMP R0, 0x2 @ Compare R0 and 0x2 \n\
/* 0803b07e */ BNE branch_0803b08c \n\
/* 0803b080 */ LDR R0, [R1, 0x20] \n\
/* 0803b082 */ MOVS R2, 0xC0 @ Set R2 to 0xC0 \n\
/* 0803b084 */ LSLS R2, R2, 0x6 \n\
 \n\
branch_0803b086: \n\
/* 0803b086 */ ADDS R0, R0, R2 @ Set R0 to R0 + R2 \n\
 \n\
branch_0803b088: \n\
/* 0803b088 */ STR R0, [R1, 0x24] \n\
/* 0803b08a */ STR R0, [R1, 0x20] \n\
 \n\
branch_0803b08c: \n\
/* 0803b08c */ LDR R1, [R3] \n\
/* 0803b08e */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0803b090 */ STR R0, [R1, 0x28] \n\
 \n\
branch_0803b092: \n\
/* 0803b092 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0803b094 */ MOV R10, R3 @ Set R10 to R3 \n\
/* 0803b096 */ LDR R7, =gSpriteHandler \n\
/* 0803b098 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 0803b09a */ MOV R9, R0 @ Set R9 to R0 \n\
/* 0803b09c */ MOVS R6, 0x0 @ Set R6 to 0x0 \n\
/* 0803b09e */ MOVS R2, 0x7F @ Set R2 to 0x7F \n\
/* 0803b0a0 */ MOV R8, R2 @ Set R8 to R2 \n\
 \n\
branch_0803b0a2: \n\
/* 0803b0a2 */ LDRB R2, [R4, 0x5] \n\
/* 0803b0a4 */ CMP R2, 0x0 @ Compare R2 and 0x0 \n\
/* 0803b0a6 */ BNE branch_0803b0d4 \n\
/* 0803b0a8 */ CMP R5, 0x2 @ Compare R5 and 0x2 \n\
/* 0803b0aa */ BNE branch_0803b188 \n\
/* 0803b0ac */ LDRB R0, [R4, 0x4] \n\
/* 0803b0ae */ CMP R0, 0x2 @ Compare R0 and 0x2 \n\
/* 0803b0b0 */ BNE branch_0803b188 \n\
/* 0803b0b2 */ MOVS R0, 0x6 @ Set R0 to 0x6 \n\
/* 0803b0b4 */ STRB R0, [R4, 0x4] \n\
/* 0803b0b6 */ LDR R0, [R7] \n\
/* 0803b0b8 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0803b0ba */ LDRSH R1, [R4, R3] \n\
/* 0803b0bc */ MOV R3, R9 @ Set R3 to R9 \n\
/* 0803b0be */ STR R3, [SP] \n\
/* 0803b0c0 */ MOV R3, R8 @ Set R3 to R8 \n\
/* 0803b0c2 */ STR R3, [SP, 0x4] \n\
/* 0803b0c4 */ STR R2, [SP, 0x8] \n\
/* 0803b0c6 */ LDR R2, =anim_rat_prepare_dash \n\
/* 0803b0c8 */ B branch_0803b152 \n\
\n\
.ltorg \n\
 \n\
branch_0803b0d4: \n\
/* 0803b0d4 */ CMP R5, 0x1 @ Compare R5 and 0x1 \n\
/* 0803b0d6 */ BEQ branch_0803b104 \n\
/* 0803b0d8 */ CMP R5, 0x1 @ Compare R5 and 0x1 \n\
/* 0803b0da */ BCC branch_0803b0e2 \n\
/* 0803b0dc */ CMP R5, 0x2 @ Compare R5 and 0x2 \n\
/* 0803b0de */ BEQ branch_0803b160 \n\
/* 0803b0e0 */ B branch_0803b188 \n\
 \n\
branch_0803b0e2: \n\
/* 0803b0e2 */ MOVS R0, 0x2 @ Set R0 to 0x2 \n\
/* 0803b0e4 */ STRB R0, [R4, 0x4] \n\
/* 0803b0e6 */ MOV R0, R9 @ Set R0 to R9 \n\
/* 0803b0e8 */ STRB R0, [R4, 0xC] \n\
/* 0803b0ea */ LDR R0, [R7] \n\
/* 0803b0ec */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0803b0ee */ LDRSH R1, [R4, R2] \n\
/* 0803b0f0 */ MOV R3, R9 @ Set R3 to R9 \n\
/* 0803b0f2 */ STR R3, [SP] \n\
/* 0803b0f4 */ MOV R2, R8 @ Set R2 to R8 \n\
/* 0803b0f6 */ STR R2, [SP, 0x4] \n\
/* 0803b0f8 */ STR R6, [SP, 0x8] \n\
/* 0803b0fa */ LDR R2, =anim_rat_stop \n\
/* 0803b0fc */ B branch_0803b152 \n\
\n\
.ltorg \n\
 \n\
branch_0803b104: \n\
/* 0803b104 */ LDRB R0, [R4, 0x4] \n\
/* 0803b106 */ CMP R0, 0x5 @ Compare R0 and 0x5 \n\
/* 0803b108 */ BNE branch_0803b140 \n\
/* 0803b10a */ STRB R5, [R4, 0x4] \n\
/* 0803b10c */ LDR R0, [R7] \n\
/* 0803b10e */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0803b110 */ LDRSH R1, [R4, R3] \n\
/* 0803b112 */ STR R5, [SP] \n\
/* 0803b114 */ MOV R2, R8 @ Set R2 to R8 \n\
/* 0803b116 */ STR R2, [SP, 0x4] \n\
/* 0803b118 */ MOVS R2, 0x4 @ Set R2 to 0x4 \n\
/* 0803b11a */ STR R2, [SP, 0x8] \n\
/* 0803b11c */ LDR R2, =anim_rat_angry_run_r \n\
/* 0803b11e */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0803b120 */ BL sprite_set_anim \n\
/* 0803b124 */ LDR R0, [R7] \n\
/* 0803b126 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0803b128 */ LDRSH R1, [R4, R3] \n\
/* 0803b12a */ LDR R2, =func_0803aef4 \n\
/* 0803b12c */ ADDS R3, R4, 0x0 @ Set R3 to R4 + 0x0 \n\
/* 0803b12e */ BL sprite_set_callback \n\
/* 0803b132 */ STRB R6, [R4, 0xC] \n\
/* 0803b134 */ B branch_0803b188 \n\
\n\
.ltorg \n\
 \n\
branch_0803b140: \n\
/* 0803b140 */ STRB R5, [R4, 0x4] \n\
/* 0803b142 */ STRB R6, [R4, 0xC] \n\
/* 0803b144 */ LDR R0, [R7] \n\
/* 0803b146 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0803b148 */ LDRSH R1, [R4, R2] \n\
/* 0803b14a */ STR R5, [SP] \n\
/* 0803b14c */ STR R6, [SP, 0x4] \n\
/* 0803b14e */ STR R6, [SP, 0x8] \n\
/* 0803b150 */ LDR R2, =anim_rat_run \n\
 \n\
branch_0803b152: \n\
/* 0803b152 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0803b154 */ BL sprite_set_anim \n\
/* 0803b158 */ B branch_0803b188 \n\
\n\
.ltorg \n\
 \n\
branch_0803b160: \n\
/* 0803b160 */ LDRB R0, [R4, 0x4] \n\
/* 0803b162 */ CMP R0, 0x5 @ Compare R0 and 0x5 \n\
/* 0803b164 */ BNE branch_0803b16c \n\
/* 0803b166 */ MOVS R0, 0x4 @ Set R0 to 0x4 \n\
/* 0803b168 */ STRB R0, [R4, 0xC] \n\
/* 0803b16a */ B branch_0803b188 \n\
 \n\
branch_0803b16c: \n\
/* 0803b16c */ MOVS R0, 0x6 @ Set R0 to 0x6 \n\
/* 0803b16e */ STRB R0, [R4, 0x4] \n\
/* 0803b170 */ LDR R0, [R7] \n\
/* 0803b172 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0803b174 */ LDRSH R1, [R4, R3] \n\
/* 0803b176 */ MOV R2, R9 @ Set R2 to R9 \n\
/* 0803b178 */ STR R2, [SP] \n\
/* 0803b17a */ MOV R3, R8 @ Set R3 to R8 \n\
/* 0803b17c */ STR R3, [SP, 0x4] \n\
/* 0803b17e */ STR R6, [SP, 0x8] \n\
/* 0803b180 */ LDR R2, =anim_rat_prepare_dash \n\
/* 0803b182 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0803b184 */ BL sprite_set_anim \n\
 \n\
branch_0803b188: \n\
/* 0803b188 */ MOV R0, R10 @ Set R0 to R10 \n\
/* 0803b18a */ ADDS R0, 0x1 @ Add 0x1 to R0 \n\
/* 0803b18c */ LSLS R0, R0, 0x18 \n\
/* 0803b18e */ LSRS R0, R0, 0x18 \n\
/* 0803b190 */ MOV R10, R0 @ Set R10 to R0 \n\
/* 0803b192 */ ADDS R4, 0x10 @ Add 0x10 to R4 \n\
/* 0803b194 */ CMP R0, 0x2 @ Compare R0 and 0x2 \n\
/* 0803b196 */ BLS branch_0803b0a2 \n\
 \n\
branch_0803b198: \n\
/* 0803b198 */ ADD SP, 0xC \n\
/* 0803b19a */ POP {R3-R5} \n\
/* 0803b19c */ MOV R8, R3 @ Set R8 to R3 \n\
/* 0803b19e */ MOV R9, R4 @ Set R9 to R4 \n\
/* 0803b1a0 */ MOV R10, R5 @ Set R10 to R5 \n\
/* 0803b1a2 */ POP {R4-R7} \n\
/* 0803b1a4 */ POP {R0} \n\
/* 0803b1a6 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
