asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08047aac \n\
/* 08047aac */ PUSH {LR} \n\
/* 08047aae */ ADDS R2, R0, 0x0 @ Set R2 to R0 + 0x0 \n\
/* 08047ab0 */ LDR R0, =D_03005380 \n\
/* 08047ab2 */ LDR R0, [R0] \n\
/* 08047ab4 */ LDR R1, =D_030055d0 \n\
/* 08047ab6 */ LDR R1, [R1] \n\
/* 08047ab8 */ MOVS R3, 0x2 @ Set R3 to 0x2 \n\
/* 08047aba */ LDRSH R1, [R1, R3] \n\
/* 08047abc */ LSLS R2, R2, 0x18 \n\
/* 08047abe */ ASRS R2, R2, 0x18 \n\
/* 08047ac0 */ BL func_0804cebc \n\
/* 08047ac4 */ POP {R0} \n\
/* 08047ac6 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
