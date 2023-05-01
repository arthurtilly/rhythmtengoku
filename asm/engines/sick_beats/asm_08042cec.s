asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08042cec \n\
/* 08042cec */ PUSH {R4, R5, LR} \n\
/* 08042cee */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 08042cf0 */ LDR R5, =gCurrentEngineData \n\
/* 08042cf2 */ LDR R0, [R5] \n\
/* 08042cf4 */ LDRB R0, [R0] \n\
/* 08042cf6 */ CMP R0, 0x1 @ Compare R0 and 0x1 \n\
/* 08042cf8 */ BNE branch_08042d38 \n\
/* 08042cfa */ LDR R2, =0x270f \n\
/* 08042cfc */ ADDS R0, R1, 0x0 @ Set R0 to R1 + 0x0 \n\
/* 08042cfe */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 08042d00 */ BL clamp_int32 \n\
/* 08042d04 */ LDR R2, [R5] \n\
/* 08042d06 */ LSLS R1, R4, 0x1 \n\
/* 08042d08 */ ADDS R1, R1, R4 @ Set R1 to R1 + R4 \n\
/* 08042d0a */ LSLS R1, R1, 0x2 \n\
/* 08042d0c */ ADDS R2, R2, R1 @ Set R2 to R2 + R1 \n\
/* 08042d0e */ LDR R1, =0x20e \n\
/* 08042d10 */ ADDS R2, R2, R1 @ Set R2 to R2 + R1 \n\
/* 08042d12 */ STRH R0, [R2] \n\
/* 08042d14 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 08042d16 */ BL func_08042c84 \n\
/* 08042d1a */ CMP R4, 0x0 @ Compare R4 and 0x0 \n\
/* 08042d1c */ BNE branch_08042d38 \n\
/* 08042d1e */ LDR R0, [R5] \n\
/* 08042d20 */ LDR R2, =0x20e \n\
/* 08042d22 */ ADDS R1, R0, R2 @ Set R1 to R0 + R2 \n\
/* 08042d24 */ ADDS R2, 0xC @ Add 0xC to R2 \n\
/* 08042d26 */ ADDS R0, R0, R2 @ Set R0 to R0 + R2 \n\
/* 08042d28 */ LDRH R1, [R1] \n\
/* 08042d2a */ LDRH R2, [R0] \n\
/* 08042d2c */ CMP R1, R2 @ Check R1 - R2 \n\
/* 08042d2e */ BLS branch_08042d38 \n\
/* 08042d30 */ STRH R1, [R0] \n\
/* 08042d32 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 08042d34 */ BL func_08042c84 \n\
 \n\
branch_08042d38: \n\
/* 08042d38 */ POP {R4, R5} \n\
/* 08042d3a */ POP {R0} \n\
/* 08042d3c */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
