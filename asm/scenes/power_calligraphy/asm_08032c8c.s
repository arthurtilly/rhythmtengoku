asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08032c8c \n\
/* 08032c8c */ PUSH {R4-R7, LR} \n\
/* 08032c8e */ LDR R4, =D_030055d0 \n\
/* 08032c90 */ LDR R1, [R4] \n\
/* 08032c92 */ MOVS R2, 0xD2 @ Set R2 to 0xD2 \n\
/* 08032c94 */ LSLS R2, R2, 0x1 \n\
/* 08032c96 */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 08032c98 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 08032c9a */ MOVS R2, 0x1 @ Set R2 to 0x1 \n\
/* 08032c9c */ STRB R2, [R1] \n\
/* 08032c9e */ LDR R1, [R4] \n\
/* 08032ca0 */ MOVS R2, 0xD3 @ Set R2 to 0xD3 \n\
/* 08032ca2 */ LSLS R2, R2, 0x1 \n\
/* 08032ca4 */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 08032ca6 */ STRH R3, [R1] \n\
/* 08032ca8 */ SUBS R0, 0x8 @ Subtract 0x8 from R0 \n\
/* 08032caa */ BL func_0800c3a4 \n\
/* 08032cae */ LDR R1, [R4] \n\
/* 08032cb0 */ MOVS R2, 0xD4 @ Set R2 to 0xD4 \n\
/* 08032cb2 */ LSLS R2, R2, 0x1 \n\
/* 08032cb4 */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 08032cb6 */ STRH R0, [R1] \n\
/* 08032cb8 */ MOVS R6, 0x0 @ Set R6 to 0x0 \n\
/* 08032cba */ ADDS R7, R4, 0x0 @ Set R7 to R4 + 0x0 \n\
/* 08032cbc */ MOVS R5, 0x3C @ Set R5 to 0x3C \n\
 \n\
branch_08032cbe: \n\
/* 08032cbe */ LDR R0, [R7] \n\
/* 08032cc0 */ ADDS R4, R0, R5 @ Set R4 to R0 + R5 \n\
/* 08032cc2 */ MOVS R0, 0x80 @ Set R0 to 0x80 \n\
/* 08032cc4 */ LSLS R0, R0, 0x4 \n\
/* 08032cc6 */ BL func_08001980 \n\
/* 08032cca */ STRH R0, [R4, 0x2] \n\
/* 08032ccc */ MOVS R0, 0x20 @ Set R0 to 0x20 \n\
/* 08032cce */ BL func_08001980 \n\
/* 08032cd2 */ ADDS R0, 0x10 @ Add 0x10 to R0 \n\
/* 08032cd4 */ STRH R0, [R4, 0x4] \n\
/* 08032cd6 */ MOVS R0, 0x2 @ Set R0 to 0x2 \n\
/* 08032cd8 */ BL func_08001980 \n\
/* 08032cdc */ LSLS R0, R0, 0x10 \n\
/* 08032cde */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08032ce0 */ BEQ branch_08032ce8 \n\
/* 08032ce2 */ LDRH R0, [R4, 0x4] \n\
/* 08032ce4 */ NEGS R0, R0 @ Set R0 to -R0 \n\
/* 08032ce6 */ STRH R0, [R4, 0x4] \n\
 \n\
branch_08032ce8: \n\
/* 08032ce8 */ MOVS R0, 0x78 @ Set R0 to 0x78 \n\
/* 08032cea */ BL func_08001980 \n\
/* 08032cee */ ADDS R0, 0x78 @ Add 0x78 to R0 \n\
/* 08032cf0 */ STRH R0, [R4, 0x6] \n\
/* 08032cf2 */ MOVS R0, 0xFA @ Set R0 to 0xFA \n\
/* 08032cf4 */ LSLS R0, R0, 0x2 \n\
/* 08032cf6 */ BL func_08001980 \n\
/* 08032cfa */ NEGS R0, R0 @ Set R0 to -R0 \n\
/* 08032cfc */ STRH R0, [R4, 0x8] \n\
/* 08032cfe */ LDR R0, =D_03005380 \n\
/* 08032d00 */ LDR R0, [R0] \n\
/* 08032d02 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08032d04 */ LDRSH R1, [R4, R2] \n\
/* 08032d06 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08032d08 */ BL func_0804cebc \n\
/* 08032d0c */ ADDS R5, 0xC @ Add 0xC to R5 \n\
/* 08032d0e */ ADDS R6, 0x1 @ Add 0x1 to R6 \n\
/* 08032d10 */ CMP R6, 0x1D @ Compare R6 and 0x1D \n\
/* 08032d12 */ BLS branch_08032cbe \n\
/* 08032d14 */ MOVS R4, 0x0 @ Set R4 to 0x0 \n\
/* 08032d16 */ BL func_08032d34 \n\
/* 08032d1a */ LDR R0, =D_030055d0 \n\
/* 08032d1c */ LDR R0, [R0] \n\
/* 08032d1e */ MOVS R1, 0xD3 @ Set R1 to 0xD3 \n\
/* 08032d20 */ LSLS R1, R1, 0x1 \n\
/* 08032d22 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 08032d24 */ STRH R4, [R0] \n\
/* 08032d26 */ POP {R4-R7} \n\
/* 08032d28 */ POP {R0} \n\
/* 08032d2a */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
