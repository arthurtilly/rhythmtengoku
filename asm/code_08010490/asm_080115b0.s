asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080115b0 \n\
/* 080115b0 */ PUSH {LR} \n\
/* 080115b2 */ BL func_0800c3b8 \n\
/* 080115b6 */ LSLS R0, R0, 0x10 \n\
/* 080115b8 */ LSRS R0, R0, 0x10 \n\
/* 080115ba */ LDR R1, =func_08011580 \n\
/* 080115bc */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 080115be */ MOVS R3, 0x2 @ Set R3 to 0x2 \n\
/* 080115c0 */ BL func_0800856c \n\
/* 080115c4 */ BL func_0800e0ec \n\
/* 080115c8 */ POP {R0} \n\
/* 080115ca */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
