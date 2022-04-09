asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08045dc8 \n\
/* 08045dc8 */ PUSH {LR} \n\
/* 08045dca */ ADDS R2, R0, 0x0 @ Set R2 to R0 + 0x0 \n\
/* 08045dcc */ LDR R0, =D_03005380 \n\
/* 08045dce */ LDR R0, [R0] \n\
/* 08045dd0 */ LDR R1, =D_030055d0 \n\
/* 08045dd2 */ LDR R1, [R1] \n\
/* 08045dd4 */ MOVS R3, 0x2 @ Set R3 to 0x2 \n\
/* 08045dd6 */ LDRSH R1, [R1, R3] \n\
/* 08045dd8 */ LSLS R2, R2, 0x18 \n\
/* 08045dda */ ASRS R2, R2, 0x18 \n\
/* 08045ddc */ BL func_0804cebc \n\
/* 08045de0 */ POP {R0} \n\
/* 08045de2 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
