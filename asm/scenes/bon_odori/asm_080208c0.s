asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080208c0 \n\
/* 080208c0 */ PUSH {LR} \n\
/* 080208c2 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 080208c4 */ BL func_0800c604 \n\
/* 080208c8 */ BL func_0800c3b8 \n\
/* 080208cc */ LSLS R0, R0, 0x10 \n\
/* 080208ce */ LSRS R0, R0, 0x10 \n\
/* 080208d0 */ LDR R1, =D_089ded10 \n\
/* 080208d2 */ BL func_080087b4 \n\
/* 080208d6 */ LDR R1, =func_08020880 \n\
/* 080208d8 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 080208da */ BL func_08005d38 \n\
/* 080208de */ POP {R0} \n\
/* 080208e0 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
