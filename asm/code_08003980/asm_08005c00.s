asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08005c00 \n\
/* 08005c00 */ PUSH {LR} \n\
/* 08005c02 */ ADDS R3, R0, 0x0 @ Set R3 to R0 + 0x0 \n\
/* 08005c04 */ CMP R3, 0x0 @ Compare R3 and 0x0 \n\
/* 08005c06 */ BLT branch_08005c38 \n\
/* 08005c08 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 08005c0a */ LDR R2, =D_03000908 \n\
/* 08005c0c */ B branch_08005c1c \n\
\n\
.ltorg \n\
 \n\
branch_08005c14: \n\
/* 08005c14 */ ADDS R1, 0x1 @ Add 0x1 to R1 \n\
/* 08005c16 */ ADDS R2, 0x1C @ Add 0x1C to R2 \n\
/* 08005c18 */ CMP R1, 0x2F @ Compare R1 and 0x2F \n\
/* 08005c1a */ BHI branch_08005c38 \n\
 \n\
branch_08005c1c: \n\
/* 08005c1c */ LDR R0, [R2, 0x8] \n\
/* 08005c1e */ CMP R0, R3 @ Check R0 - R3 \n\
/* 08005c20 */ BNE branch_08005c14 \n\
/* 08005c22 */ CMP R1, 0x2F @ Compare R1 and 0x2F \n\
/* 08005c24 */ BHI branch_08005c38 \n\
/* 08005c26 */ LDRB R1, [R2] \n\
/* 08005c28 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 08005c2a */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 08005c2c */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08005c2e */ BEQ branch_08005c38 \n\
/* 08005c30 */ ADDS R0, R2, 0x0 @ Set R0 to R2 + 0x0 \n\
/* 08005c32 */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 08005c34 */ BL func_08005a40 \n\
 \n\
branch_08005c38: \n\
/* 08005c38 */ POP {R0} \n\
/* 08005c3a */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
