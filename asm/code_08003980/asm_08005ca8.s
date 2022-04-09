asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08005ca8 \n\
/* 08005ca8 */ PUSH {R4-R6, LR} \n\
/* 08005caa */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 08005cac */ CMP R4, 0x0 @ Compare R4 and 0x0 \n\
/* 08005cae */ BLT branch_08005cd8 \n\
/* 08005cb0 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 08005cb2 */ LDR R2, =D_03000908 \n\
/* 08005cb4 */ LSLS R5, R1, 0x1 \n\
/* 08005cb6 */ MOVS R6, 0x1 @ Set R6 to 0x1 \n\
 \n\
branch_08005cb8: \n\
/* 08005cb8 */ LDR R0, [R2, 0x8] \n\
/* 08005cba */ CMP R0, R4 @ Check R0 - R4 \n\
/* 08005cbc */ BNE branch_08005cd0 \n\
/* 08005cbe */ LDRH R1, [R2] \n\
/* 08005cc0 */ ADDS R0, R6, 0x0 @ Set R0 to R6 + 0x0 \n\
/* 08005cc2 */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 08005cc4 */ ORRS R0, R5 @ Set R0 to R0 | R5 \n\
/* 08005cc6 */ STRH R0, [R2] \n\
/* 08005cc8 */ B branch_08005cd8 \n\
\n\
.ltorg \n\
 \n\
branch_08005cd0: \n\
/* 08005cd0 */ ADDS R3, 0x1 @ Add 0x1 to R3 \n\
/* 08005cd2 */ ADDS R2, 0x1C @ Add 0x1C to R2 \n\
/* 08005cd4 */ CMP R3, 0x2F @ Compare R3 and 0x2F \n\
/* 08005cd6 */ BLS branch_08005cb8 \n\
 \n\
branch_08005cd8: \n\
/* 08005cd8 */ POP {R4-R6} \n\
/* 08005cda */ POP {R0} \n\
/* 08005cdc */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
