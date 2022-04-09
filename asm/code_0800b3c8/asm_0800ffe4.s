asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0800ffe4 \n\
/* 0800ffe4 */ PUSH {R4, LR} \n\
/* 0800ffe6 */ ADDS R3, R0, 0x0 @ Set R3 to R0 + 0x0 \n\
/* 0800ffe8 */ LSLS R1, R1, 0x18 \n\
/* 0800ffea */ LSRS R2, R1, 0x18 \n\
/* 0800ffec */ CMP R3, 0x0 @ Compare R3 and 0x0 \n\
/* 0800ffee */ BEQ branch_0800fffc \n\
/* 0800fff0 */ LDR R0, =D_03005380 \n\
/* 0800fff2 */ LDR R0, [R0] \n\
/* 0800fff4 */ MOVS R4, 0x0 @ Set R4 to 0x0 \n\
/* 0800fff6 */ LDRSH R1, [R3, R4] \n\
/* 0800fff8 */ BL func_0804ced0 \n\
 \n\
branch_0800fffc: \n\
/* 0800fffc */ POP {R4} \n\
/* 0800fffe */ POP {R0} \n\
/* 08010000 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
