asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0800fe20 \n\
/* 0800fe20 */ PUSH {R4, LR} \n\
/* 0800fe22 */ ADDS R3, R0, 0x0 @ Set R3 to R0 + 0x0 \n\
/* 0800fe24 */ LSLS R1, R1, 0x10 \n\
/* 0800fe26 */ LSRS R2, R1, 0x10 \n\
/* 0800fe28 */ CMP R3, 0x0 @ Compare R3 and 0x0 \n\
/* 0800fe2a */ BEQ branch_0800fe38 \n\
/* 0800fe2c */ LDR R0, =D_03005380 \n\
/* 0800fe2e */ LDR R0, [R0] \n\
/* 0800fe30 */ MOVS R4, 0x0 @ Set R4 to 0x0 \n\
/* 0800fe32 */ LDRSH R1, [R3, R4] \n\
/* 0800fe34 */ BL func_0804d67c \n\
 \n\
branch_0800fe38: \n\
/* 0800fe38 */ POP {R4} \n\
/* 0800fe3a */ POP {R0} \n\
/* 0800fe3c */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
