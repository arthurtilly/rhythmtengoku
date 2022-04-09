asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0802e41c \n\
/* 0802e41c */ PUSH {LR} \n\
/* 0802e41e */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0802e420 */ BL func_0800c604 \n\
/* 0802e424 */ BL func_0800c3b8 \n\
/* 0802e428 */ LSLS R0, R0, 0x10 \n\
/* 0802e42a */ LSRS R0, R0, 0x10 \n\
/* 0802e42c */ LDR R1, =D_089e3c0c \n\
/* 0802e42e */ BL func_080087b4 \n\
/* 0802e432 */ LDR R1, =func_0802e3dc \n\
/* 0802e434 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0802e436 */ BL func_08005d38 \n\
/* 0802e43a */ POP {R0} \n\
/* 0802e43c */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
