asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08004e88 \n\
/* 08004e88 */ PUSH {R4-R6, LR} \n\
/* 08004e8a */ ADDS R6, R0, 0x0 @ Set R6 to R0 + 0x0 \n\
/* 08004e8c */ LDR R0, [R2] \n\
/* 08004e8e */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08004e90 */ BEQ branch_08004ea6 \n\
/* 08004e92 */ ADDS R4, R2, 0x0 @ Set R4 to R2 + 0x0 \n\
/* 08004e94 */ ADDS R5, R1, 0x0 @ Set R5 to R1 + 0x0 \n\
 \n\
branch_08004e96: \n\
/* 08004e96 */ LDMIA R5!, {R1} \n\
/* 08004e98 */ ADDS R0, R6, 0x0 @ Set R0 to R6 + 0x0 \n\
/* 08004e9a */ BL func_08004d44 \n\
/* 08004e9e */ ADDS R4, 0x8 @ Add 0x8 to R4 \n\
/* 08004ea0 */ LDR R0, [R4] \n\
/* 08004ea2 */ CMP R0, 0x0 @ Compare R0 and 0x0 \n\
/* 08004ea4 */ BNE branch_08004e96 \n\
 \n\
branch_08004ea6: \n\
/* 08004ea6 */ POP {R4-R6} \n\
/* 08004ea8 */ POP {R0} \n\
/* 08004eaa */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
