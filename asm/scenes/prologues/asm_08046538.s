asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08046538 \n\
/* 08046538 */ PUSH {LR} \n\
/* 0804653a */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0804653c */ BL func_0800c604 \n\
/* 08046540 */ BL func_0800c3b8 \n\
/* 08046544 */ LSLS R0, R0, 0x10 \n\
/* 08046546 */ LSRS R0, R0, 0x10 \n\
/* 08046548 */ LDR R1, =D_089ebb80 \n\
/* 0804654a */ MOVS R2, 0x80 @ Set R2 to 0x80 \n\
/* 0804654c */ LSLS R2, R2, 0x6 \n\
/* 0804654e */ BL func_08002ee0 \n\
/* 08046552 */ LDR R1, =func_08046528 \n\
/* 08046554 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08046556 */ BL func_08005d38 \n\
/* 0804655a */ POP {R0} \n\
/* 0804655c */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
