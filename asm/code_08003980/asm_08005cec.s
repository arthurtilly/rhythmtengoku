asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08005cec \n\
/* 08005cec */ PUSH {R4-R6, LR} \n\
/* 08005cee */ ADDS R3, R0, 0x0 @ Set R3 to R0 + 0x0 \n\
/* 08005cf0 */ CMP R3, 0x0 @ Compare R3 and 0x0 \n\
/* 08005cf2 */ BGE branch_08005cfa \n\
/* 08005cf4 */ B branch_08005d30 \n\
 \n\
branch_08005cf6: \n\
/* 08005cf6 */ MOVS R0, 0x2 @ Set R0 to 0x2 \n\
/* 08005cf8 */ B branch_08005d32 \n\
 \n\
branch_08005cfa: \n\
/* 08005cfa */ MOVS R4, 0x0 @ Set R4 to 0x0 \n\
/* 08005cfc */ LDR R2, =D_03000908 \n\
/* 08005cfe */ MOVS R5, 0x1 @ Set R5 to 0x1 \n\
/* 08005d00 */ LDR R6, =0xfffe \n\
 \n\
branch_08005d02: \n\
/* 08005d02 */ LDRB R1, [R2] \n\
/* 08005d04 */ ADDS R0, R5, 0x0 @ Set R0 to R5 + 0x0 \n\
/* 08005d06 */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 08005d08 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08005d0a */ BEQ branch_08005d28 \n\
/* 08005d0c */ LDR R0, [R2, 0x8] \n\
/* 08005d0e */ CMP R0, R3 @ Check R0 - R3 \n\
/* 08005d10 */ BNE branch_08005d28 \n\
/* 08005d12 */ LDRH R1, [R2] \n\
/* 08005d14 */ ADDS R0, R6, 0x0 @ Set R0 to R6 + 0x0 \n\
/* 08005d16 */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 08005d18 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08005d1a */ BNE branch_08005cf6 \n\
/* 08005d1c */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 08005d1e */ B branch_08005d32 \n\
\n\
.ltorg \n\
 \n\
branch_08005d28: \n\
/* 08005d28 */ ADDS R4, 0x1 @ Add 0x1 to R4 \n\
/* 08005d2a */ ADDS R2, 0x1C @ Add 0x1C to R2 \n\
/* 08005d2c */ CMP R4, 0x2F @ Compare R4 and 0x2F \n\
/* 08005d2e */ BLS branch_08005d02 \n\
 \n\
branch_08005d30: \n\
/* 08005d30 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
 \n\
branch_08005d32: \n\
/* 08005d32 */ POP {R4-R6} \n\
/* 08005d34 */ POP {R1} \n\
/* 08005d36 */ BX R1 \n\
.balign 4, 0 \n\
.syntax divided");
