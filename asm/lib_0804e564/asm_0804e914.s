asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0804e914 \n\
/* 0804e914 */ PUSH {R4, LR} \n\
/* 0804e916 */ ADDS R4, R0, 0x0 @ Set R4 to R0 + 0x0 \n\
/* 0804e918 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0804e91a */ BL func_0804e618 \n\
/* 0804e91e */ LDR R0, =D_03004440 \n\
/* 0804e920 */ STRB R4, [R0] \n\
/* 0804e922 */ POP {R4} \n\
/* 0804e924 */ POP {R0} \n\
/* 0804e926 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
