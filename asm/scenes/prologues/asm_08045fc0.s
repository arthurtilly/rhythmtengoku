asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08045fc0 \n\
/* 08045fc0 */ PUSH {LR} \n\
/* 08045fc2 */ ADDS R2, R0, 0x0 @ Set R2 to R0 + 0x0 \n\
/* 08045fc4 */ LDR R0, =D_03005380 \n\
/* 08045fc6 */ LDR R0, [R0] \n\
/* 08045fc8 */ LDR R1, =D_030055d0 \n\
/* 08045fca */ LDR R1, [R1] \n\
/* 08045fcc */ MOVS R3, 0x2 @ Set R3 to 0x2 \n\
/* 08045fce */ LDRSH R1, [R1, R3] \n\
/* 08045fd0 */ LSLS R2, R2, 0x18 \n\
/* 08045fd2 */ ASRS R2, R2, 0x18 \n\
/* 08045fd4 */ BL func_0804cebc \n\
/* 08045fd8 */ POP {R0} \n\
/* 08045fda */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
