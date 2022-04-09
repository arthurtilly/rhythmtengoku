asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0800b074 \n\
/* 0800b074 */ PUSH {R4, R5, LR} \n\
/* 0800b076 */ ADDS R2, R0, 0x0 @ Set R2 to R0 + 0x0 \n\
/* 0800b078 */ ADDS R4, R2, 0x0 @ Set R4 to R2 + 0x0 \n\
/* 0800b07a */ CMP R2, 0x0 @ Compare R2 and 0x0 \n\
/* 0800b07c */ BEQ branch_0800b0cc \n\
/* 0800b07e */ MOVS R1, 0x20 @ Set R1 to 0x20 \n\
/* 0800b080 */ LDRSH R0, [R2, R1] \n\
/* 0800b082 */ LSRS R3, R0, 0x1F \n\
/* 0800b084 */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 0800b086 */ CMP R1, 0x0 @ Compare R1 and 0x0 \n\
/* 0800b088 */ BGE branch_0800b08c \n\
/* 0800b08a */ NEGS R1, R1 @ Set R1 to -R1 \n\
 \n\
branch_0800b08c: \n\
/* 0800b08c */ LSLS R0, R1, 0x2 \n\
/* 0800b08e */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0800b090 */ ASRS R0, R0, 0x3 \n\
/* 0800b092 */ STRH R0, [R2, 0x20] \n\
/* 0800b094 */ CMP R3, 0x0 @ Compare R3 and 0x0 \n\
/* 0800b096 */ BEQ branch_0800b09c \n\
/* 0800b098 */ NEGS R0, R0 @ Set R0 to -R0 \n\
/* 0800b09a */ STRH R0, [R2, 0x20] \n\
 \n\
branch_0800b09c: \n\
/* 0800b09c */ LDRH R1, [R4, 0x18] \n\
/* 0800b09e */ STRH R1, [R4, 0x1C] \n\
/* 0800b0a0 */ LDRH R2, [R4, 0x1A] \n\
/* 0800b0a2 */ LDRH R3, [R4, 0x20] \n\
/* 0800b0a4 */ ADDS R0, R2, R3 @ Set R0 to R2 + R3 \n\
/* 0800b0a6 */ STRH R0, [R4, 0x1E] \n\
/* 0800b0a8 */ STRH R1, [R4, 0x22] \n\
/* 0800b0aa */ MOVS R5, 0x26 @ Set R5 to 0x26 \n\
/* 0800b0ac */ LDRSH R0, [R4, R5] \n\
/* 0800b0ae */ MOVS R5, 0x2C @ Set R5 to 0x2C \n\
/* 0800b0b0 */ LDRSH R1, [R4, R5] \n\
/* 0800b0b2 */ SUBS R0, R0, R1 @ Set R0 to R0 - R1 \n\
/* 0800b0b4 */ MOVS R5, 0x30 @ Set R5 to 0x30 \n\
/* 0800b0b6 */ LDRSH R1, [R4, R5] \n\
/* 0800b0b8 */ SUBS R0, R0, R1 @ Set R0 to R0 - R1 \n\
/* 0800b0ba */ MOVS R5, 0x10 @ Set R5 to 0x10 \n\
/* 0800b0bc */ LDRSH R1, [R4, R5] \n\
/* 0800b0be */ MULS R0, R1 @ Multiply R0 by R1 \n\
/* 0800b0c0 */ ADDS R2, R2, R0 @ Set R2 to R2 + R0 \n\
/* 0800b0c2 */ ADDS R3, R3, R2 @ Set R3 to R3 + R2 \n\
/* 0800b0c4 */ STRH R3, [R4, 0x24] \n\
/* 0800b0c6 */ LDR R0, [R4, 0x4] \n\
/* 0800b0c8 */ BL func_0800a914 \n\
 \n\
branch_0800b0cc: \n\
/* 0800b0cc */ POP {R4, R5} \n\
/* 0800b0ce */ POP {R0} \n\
/* 0800b0d0 */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
