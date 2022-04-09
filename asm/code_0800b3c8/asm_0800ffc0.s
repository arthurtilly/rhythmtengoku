asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0800ffc0 \n\
/* 0800ffc0 */ PUSH {R4, LR} \n\
/* 0800ffc2 */ ADDS R3, R0, 0x0 @ Set R3 to R0 + 0x0 \n\
/* 0800ffc4 */ ADDS R2, R1, 0x0 @ Set R2 to R1 + 0x0 \n\
/* 0800ffc6 */ CMP R3, 0x0 @ Compare R3 and 0x0 \n\
/* 0800ffc8 */ BEQ branch_0800ffda \n\
/* 0800ffca */ LDR R0, =D_03005380 \n\
/* 0800ffcc */ LDR R0, [R0] \n\
/* 0800ffce */ MOVS R4, 0x0 @ Set R4 to 0x0 \n\
/* 0800ffd0 */ LDRSH R1, [R3, R4] \n\
/* 0800ffd2 */ LSLS R2, R2, 0x18 \n\
/* 0800ffd4 */ ASRS R2, R2, 0x18 \n\
/* 0800ffd6 */ BL func_0804cebc \n\
 \n\
branch_0800ffda: \n\
/* 0800ffda */ POP {R4} \n\
/* 0800ffdc */ POP {R0} \n\
/* 0800ffde */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
