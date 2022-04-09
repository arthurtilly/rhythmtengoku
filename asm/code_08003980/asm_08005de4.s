asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08005de4 \n\
/* 08005de4 */ PUSH {R4-R6, LR} \n\
/* 08005de6 */ LSLS R0, R0, 0x10 \n\
/* 08005de8 */ LSRS R6, R0, 0x10 \n\
/* 08005dea */ MOVS R5, 0x0 @ Set R5 to 0x0 \n\
/* 08005dec */ LDR R4, =D_03000908 \n\
 \n\
branch_08005dee: \n\
/* 08005dee */ LDRB R1, [R4] \n\
/* 08005df0 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 08005df2 */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 08005df4 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08005df6 */ BEQ branch_08005e06 \n\
/* 08005df8 */ LDRH R0, [R4, 0x2] \n\
/* 08005dfa */ CMP R0, R6 @ Check R0 - R6 \n\
/* 08005dfc */ BNE branch_08005e06 \n\
/* 08005dfe */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 08005e00 */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 08005e02 */ BL func_08005a40 \n\
 \n\
branch_08005e06: \n\
/* 08005e06 */ ADDS R5, 0x1 @ Add 0x1 to R5 \n\
/* 08005e08 */ ADDS R4, 0x1C @ Add 0x1C to R4 \n\
/* 08005e0a */ CMP R5, 0x2F @ Compare R5 and 0x2F \n\
/* 08005e0c */ BLS branch_08005dee \n\
/* 08005e0e */ POP {R4-R6} \n\
/* 08005e10 */ POP {R0} \n\
/* 08005e12 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
