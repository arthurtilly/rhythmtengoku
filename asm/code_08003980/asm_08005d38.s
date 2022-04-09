asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08005d38 \n\
/* 08005d38 */ PUSH {R4-R7, LR} \n\
/* 08005d3a */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 08005d3c */ ADDS R5, R1, 0x0 @ Set R5 to R1 + 0x0 \n\
/* 08005d3e */ ADDS R6, R2, 0x0 @ Set R6 to R2 + 0x0 \n\
/* 08005d40 */ CMP R4, 0x0 @ Compare R4 and 0x0 \n\
/* 08005d42 */ BLT branch_08005d6c \n\
/* 08005d44 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08005d46 */ LDR R3, =D_03000908 \n\
/* 08005d48 */ MOVS R7, 0x1 @ Set R7 to 0x1 \n\
 \n\
branch_08005d4a: \n\
/* 08005d4a */ LDRB R1, [R3] \n\
/* 08005d4c */ ADDS R0, R7, 0x0 @ Set R0 to R7 + 0x0 \n\
/* 08005d4e */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 08005d50 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08005d52 */ BEQ branch_08005d64 \n\
/* 08005d54 */ LDR R0, [R3, 0x8] \n\
/* 08005d56 */ CMP R0, R4 @ Check R0 - R4 \n\
/* 08005d58 */ BNE branch_08005d64 \n\
/* 08005d5a */ STR R5, [R3, 0x10] \n\
/* 08005d5c */ STR R6, [R3, 0x14] \n\
/* 08005d5e */ B branch_08005d6c \n\
\n\
.ltorg \n\
 \n\
branch_08005d64: \n\
/* 08005d64 */ ADDS R2, 0x1 @ Add 0x1 to R2 \n\
/* 08005d66 */ ADDS R3, 0x1C @ Add 0x1C to R3 \n\
/* 08005d68 */ CMP R2, 0x2F @ Compare R2 and 0x2F \n\
/* 08005d6a */ BLS branch_08005d4a \n\
 \n\
branch_08005d6c: \n\
/* 08005d6c */ POP {R4-R7} \n\
/* 08005d6e */ POP {R0} \n\
/* 08005d70 */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
