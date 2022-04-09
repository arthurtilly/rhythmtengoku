asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080478e8 \n\
/* 080478e8 */ PUSH {LR} \n\
/* 080478ea */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 080478ec */ BL func_0800c604 \n\
/* 080478f0 */ BL func_0800c3b8 \n\
/* 080478f4 */ LSLS R0, R0, 0x10 \n\
/* 080478f6 */ LSRS R0, R0, 0x10 \n\
/* 080478f8 */ LDR R1, =D_089ed824 \n\
/* 080478fa */ MOVS R2, 0x80 @ Set R2 to 0x80 \n\
/* 080478fc */ LSLS R2, R2, 0x6 \n\
/* 080478fe */ BL func_08002ee0 \n\
/* 08047902 */ LDR R1, =func_080478d8 \n\
/* 08047904 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08047906 */ BL func_08005d38 \n\
/* 0804790a */ POP {R0} \n\
/* 0804790c */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
