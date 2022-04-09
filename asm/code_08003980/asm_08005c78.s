asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08005c78 \n\
/* 08005c78 */ PUSH {R4, R5, LR} \n\
/* 08005c7a */ MOVS R5, 0x0 @ Set R5 to 0x0 \n\
/* 08005c7c */ LDR R4, =D_03000908 \n\
 \n\
branch_08005c7e: \n\
/* 08005c7e */ LDRB R1, [R4] \n\
/* 08005c80 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 08005c82 */ ANDS R0, R1 @ Set R0 to R0 & R1 \n\
/* 08005c84 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08005c86 */ BEQ branch_08005c96 \n\
/* 08005c88 */ LDR R0, [R4, 0x8] \n\
/* 08005c8a */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08005c8c */ BLT branch_08005c96 \n\
/* 08005c8e */ ADDS R0, R4, 0x0 @ Set R0 to R4 + 0x0 \n\
/* 08005c90 */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 08005c92 */ BL func_08005a40 \n\
 \n\
branch_08005c96: \n\
/* 08005c96 */ ADDS R5, 0x1 @ Add 0x1 to R5 \n\
/* 08005c98 */ ADDS R4, 0x1C @ Add 0x1C to R4 \n\
/* 08005c9a */ CMP R5, 0x2F @ Compare R5 and 0x2F \n\
/* 08005c9c */ BLS branch_08005c7e \n\
/* 08005c9e */ POP {R4, R5} \n\
/* 08005ca0 */ POP {R0} \n\
/* 08005ca2 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
