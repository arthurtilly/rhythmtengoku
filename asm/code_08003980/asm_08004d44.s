asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08004d44 \n\
/* 08004d44 */ PUSH {R4-R7, LR} \n\
/* 08004d46 */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 08004d48 */ MOV R12, R1 @ Set R12 to R1 \n\
/* 08004d4a */ CMP R1, 0x0 @ Compare R1 and 0x0 \n\
/* 08004d4c */ BEQ branch_08004d98 \n\
/* 08004d4e */ LDR R7, [R1] \n\
/* 08004d50 */ ADDS R5, R7, 0x2 @ Set R5 to R7 + 0x2 \n\
/* 08004d52 */ MOVS R6, 0x0 @ Set R6 to 0x0 \n\
/* 08004d54 */ B branch_08004d8c \n\
 \n\
branch_08004d56: \n\
/* 08004d56 */ LDRH R0, [R5, 0x4] \n\
/* 08004d58 */ LSLS R0, R0, 0x16 \n\
/* 08004d5a */ LSRS R0, R0, 0x16 \n\
/* 08004d5c */ LDRH R1, [R4, 0x8] \n\
/* 08004d5e */ SUBS R2, R0, R1 @ Set R2 to R0 - R1 \n\
/* 08004d60 */ MOVS R1, 0x1F @ Set R1 to 0x1F \n\
/* 08004d62 */ ANDS R1, R2 @ Set R1 to R1 & R2 \n\
/* 08004d64 */ LSRS R1, R1, 0x1 \n\
/* 08004d66 */ LSRS R0, R2, 0x6 \n\
/* 08004d68 */ LSLS R0, R0, 0x4 \n\
/* 08004d6a */ ADDS R2, R1, R0 @ Set R2 to R1 + R0 \n\
/* 08004d6c */ LDR R1, [R4, 0x10] \n\
/* 08004d6e */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 08004d70 */ LDRB R0, [R1] \n\
/* 08004d72 */ SUBS R0, 0x1 @ Subtract 0x1 from R0 \n\
/* 08004d74 */ STRB R0, [R1] \n\
/* 08004d76 */ LDR R0, [R4, 0x10] \n\
/* 08004d78 */ ADDS R0, R0, R2 @ Set R0 to R0 + R2 \n\
/* 08004d7a */ LDRB R3, [R0] \n\
/* 08004d7c */ CMP R3, 0x0 @ Compare R3 and 0x0 \n\
/* 08004d7e */ BNE branch_08004d88 \n\
/* 08004d80 */ LDR R1, [R4, 0xC] \n\
/* 08004d82 */ LSLS R0, R2, 0x1 \n\
/* 08004d84 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 08004d86 */ STRH R3, [R0] \n\
 \n\
branch_08004d88: \n\
/* 08004d88 */ ADDS R5, 0x6 @ Add 0x6 to R5 \n\
/* 08004d8a */ ADDS R6, 0x1 @ Add 0x1 to R6 \n\
 \n\
branch_08004d8c: \n\
/* 08004d8c */ LDRH R0, [R7] \n\
/* 08004d8e */ CMP R6, R0 @ Check R6 - R0 \n\
/* 08004d90 */ BCC branch_08004d56 \n\
/* 08004d92 */ MOV R0, R12 @ Set R0 to R12 \n\
/* 08004d94 */ BL mem_heap_dealloc \n\
 \n\
branch_08004d98: \n\
/* 08004d98 */ POP {R4-R7} \n\
/* 08004d9a */ POP {R0} \n\
/* 08004d9c */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
