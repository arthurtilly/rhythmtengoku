asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08045604 \n\
/* 08045604 */ PUSH {LR} \n\
/* 08045606 */ ADDS R2, R0, 0x0 @ Set R2 to R0 + 0x0 \n\
/* 08045608 */ LDR R0, =D_03005380 \n\
/* 0804560a */ LDR R0, [R0] \n\
/* 0804560c */ LDR R1, =D_030055d0 \n\
/* 0804560e */ LDR R1, [R1] \n\
/* 08045610 */ MOVS R3, 0x2 @ Set R3 to 0x2 \n\
/* 08045612 */ LDRSH R1, [R1, R3] \n\
/* 08045614 */ LSLS R2, R2, 0x18 \n\
/* 08045616 */ ASRS R2, R2, 0x18 \n\
/* 08045618 */ BL func_0804cebc \n\
/* 0804561c */ POP {R0} \n\
/* 0804561e */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
