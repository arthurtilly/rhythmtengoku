asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08047ae0 \n\
/* 08047ae0 */ PUSH {LR} \n\
/* 08047ae2 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08047ae4 */ BL func_0800c604 \n\
/* 08047ae8 */ BL func_0800c3b8 \n\
/* 08047aec */ LSLS R0, R0, 0x10 \n\
/* 08047aee */ LSRS R0, R0, 0x10 \n\
/* 08047af0 */ LDR R1, =D_089edbbc \n\
/* 08047af2 */ MOVS R2, 0x80 @ Set R2 to 0x80 \n\
/* 08047af4 */ LSLS R2, R2, 0x6 \n\
/* 08047af6 */ BL func_08002ee0 \n\
/* 08047afa */ LDR R1, =func_08047ad0 \n\
/* 08047afc */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08047afe */ BL func_08005d38 \n\
/* 08047b02 */ POP {R0} \n\
/* 08047b04 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
