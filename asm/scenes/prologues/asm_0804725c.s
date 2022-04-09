asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0804725c \n\
/* 0804725c */ PUSH {LR} \n\
/* 0804725e */ ADDS R2, R0, 0x0 @ Set R2 to R0 + 0x0 \n\
/* 08047260 */ LDR R0, =D_03005380 \n\
/* 08047262 */ LDR R0, [R0] \n\
/* 08047264 */ LDR R1, =D_030055d0 \n\
/* 08047266 */ LDR R1, [R1] \n\
/* 08047268 */ MOVS R3, 0x2 @ Set R3 to 0x2 \n\
/* 0804726a */ LDRSH R1, [R1, R3] \n\
/* 0804726c */ LSLS R2, R2, 0x18 \n\
/* 0804726e */ ASRS R2, R2, 0x18 \n\
/* 08047270 */ BL func_0804cebc \n\
/* 08047274 */ POP {R0} \n\
/* 08047276 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
