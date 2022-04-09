asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08045ec4 \n\
/* 08045ec4 */ PUSH {LR} \n\
/* 08045ec6 */ ADDS R2, R0, 0x0 @ Set R2 to R0 + 0x0 \n\
/* 08045ec8 */ LDR R0, =D_03005380 \n\
/* 08045eca */ LDR R0, [R0] \n\
/* 08045ecc */ LDR R1, =D_030055d0 \n\
/* 08045ece */ LDR R1, [R1] \n\
/* 08045ed0 */ MOVS R3, 0x2 @ Set R3 to 0x2 \n\
/* 08045ed2 */ LDRSH R1, [R1, R3] \n\
/* 08045ed4 */ LSLS R2, R2, 0x18 \n\
/* 08045ed6 */ ASRS R2, R2, 0x18 \n\
/* 08045ed8 */ BL func_0804cebc \n\
/* 08045edc */ POP {R0} \n\
/* 08045ede */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
