asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08005e18 \n\
/* 08005e18 */ PUSH {R4-R6, LR} \n\
/* 08005e1a */ LSLS R0, R0, 0x10 \n\
/* 08005e1c */ LSRS R6, R0, 0x10 \n\
/* 08005e1e */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 08005e20 */ LDR R2, =D_03000908 \n\
/* 08005e22 */ MOVS R4, 0x1 @ Set R4 to 0x1 \n\
/* 08005e24 */ LSLS R5, R1, 0x1 \n\
 \n\
branch_08005e26: \n\
/* 08005e26 */ LDRB R1, [R2] \n\
/* 08005e28 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 08005e2a */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 08005e2c */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08005e2e */ BEQ branch_08005e40 \n\
/* 08005e30 */ LDRH R0, [R2, 0x2] \n\
/* 08005e32 */ CMP R0, R6 @ Check R0 - R6 \n\
/* 08005e34 */ BNE branch_08005e40 \n\
/* 08005e36 */ LDRH R1, [R2] \n\
/* 08005e38 */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 08005e3a */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 08005e3c */ ORRS R0, R5 @ Set R0 to R0 | R5 \n\
/* 08005e3e */ STRH R0, [R2] \n\
 \n\
branch_08005e40: \n\
/* 08005e40 */ ADDS R3, 0x1 @ Add 0x1 to R3 \n\
/* 08005e42 */ ADDS R2, 0x1C @ Add 0x1C to R2 \n\
/* 08005e44 */ CMP R3, 0x2F @ Compare R3 and 0x2F \n\
/* 08005e46 */ BLS branch_08005e26 \n\
/* 08005e48 */ POP {R4-R6} \n\
/* 08005e4a */ POP {R0} \n\
/* 08005e4c */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
