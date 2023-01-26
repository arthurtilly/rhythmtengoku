asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08011a58 \n\
/* 08011a58 */ PUSH {R4-R6, LR} \n\
/* 08011a5a */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 08011a5c */ ADDS R5, R1, 0x0 @ Set R5 to R1 + 0x0 \n\
/* 08011a5e */ ADDS R6, R2, 0x0 @ Set R6 to R2 + 0x0 \n\
/* 08011a60 */ LSLS R2, R5, 0x1 \n\
/* 08011a62 */ ADDS R1, R4, 0x0 @ Set R1 to R4 + 0x0 \n\
/* 08011a64 */ ADDS R1, 0xC @ Add 0xC to R1 \n\
/* 08011a66 */ ADDS R2, R1, R2 @ Set R2 to R1 + R2 \n\
/* 08011a68 */ LDRH R1, [R2] \n\
/* 08011a6a */ CMP R1, 0x0 @ Compare R1 and 0x0 \n\
/* 08011a6c */ BNE branch_08011a78 \n\
/* 08011a6e */ STR R1, [R6] \n\
/* 08011a70 */ STR R1, [R3] \n\
/* 08011a72 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 08011a74 */ NEGS R0, R0 @ Set R0 to -R0 \n\
/* 08011a76 */ B branch_08011a8a \n\
 \n\
branch_08011a78: \n\
/* 08011a78 */ ADDS R1, R4, 0x1 @ Set R1 to R4 + 0x1 \n\
/* 08011a7a */ ADDS R1, R1, R5 @ Set R1 to R1 + R5 \n\
/* 08011a7c */ LDRB R1, [R1] \n\
/* 08011a7e */ STR R1, [R6] \n\
/* 08011a80 */ LDRH R1, [R2] \n\
/* 08011a82 */ ADDS R2, R1, 0x0 @ Set R2 to R1 + 0x0 \n\
/* 08011a84 */ ADDS R2, 0xFF @ Add 0xFF to R2 \n\
/* 08011a86 */ ASRS R1, R2, 0x8 \n\
/* 08011a88 */ STR R1, [R3] \n\
 \n\
branch_08011a8a: \n\
/* 08011a8a */ POP {R4-R6} \n\
/* 08011a8c */ POP {R1} \n\
/* 08011a8e */ BX R1 \n\
.balign 4, 0 \n\
.syntax divided");
