asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08005c3c \n\
/* 08005c3c */ PUSH {LR} \n\
/* 08005c3e */ ADDS R3, R0, 0x0 @ Set R3 to R0 + 0x0 \n\
/* 08005c40 */ CMP R3, 0x0 @ Compare R3 and 0x0 \n\
/* 08005c42 */ BLT branch_08005c70 \n\
/* 08005c44 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 08005c46 */ LDR R2, =D_03000908 \n\
/* 08005c48 */ B branch_08005c58 \n\
\n\
.ltorg \n\
 \n\
branch_08005c50: \n\
/* 08005c50 */ ADDS R1, 0x1 @ Add 0x1 to R1 \n\
/* 08005c52 */ ADDS R2, 0x1C @ Add 0x1C to R2 \n\
/* 08005c54 */ CMP R1, 0x2F @ Compare R1 and 0x2F \n\
/* 08005c56 */ BHI branch_08005c70 \n\
 \n\
branch_08005c58: \n\
/* 08005c58 */ LDR R0, [R2, 0x8] \n\
/* 08005c5a */ CMP R0, R3 @ Check R0 - R3 \n\
/* 08005c5c */ BNE branch_08005c50 \n\
/* 08005c5e */ CMP R1, 0x2F @ Compare R1 and 0x2F \n\
/* 08005c60 */ BHI branch_08005c70 \n\
/* 08005c62 */ LDRB R1, [R2] \n\
/* 08005c64 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 08005c66 */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 08005c68 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08005c6a */ BEQ branch_08005c70 \n\
/* 08005c6c */ LDR R0, [R2, 0xC] \n\
/* 08005c6e */ B branch_08005c72 \n\
 \n\
branch_08005c70: \n\
/* 08005c70 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
 \n\
branch_08005c72: \n\
/* 08005c72 */ POP {R1} \n\
/* 08005c74 */ BX R1 \n\
.balign 4, 0 \n\
.syntax divided");
