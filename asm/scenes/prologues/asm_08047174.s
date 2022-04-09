asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08047174 \n\
/* 08047174 */ PUSH {LR} \n\
/* 08047176 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08047178 */ BL func_0800c604 \n\
/* 0804717c */ BL func_0800c3b8 \n\
/* 08047180 */ LSLS R0, R0, 0x10 \n\
/* 08047182 */ LSRS R0, R0, 0x10 \n\
/* 08047184 */ LDR R1, =D_089ecfc0 \n\
/* 08047186 */ MOVS R2, 0x80 @ Set R2 to 0x80 \n\
/* 08047188 */ LSLS R2, R2, 0x6 \n\
/* 0804718a */ BL func_08002ee0 \n\
/* 0804718e */ LDR R1, =func_08047164 \n\
/* 08047190 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08047192 */ BL func_08005d38 \n\
/* 08047196 */ POP {R0} \n\
/* 08047198 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
