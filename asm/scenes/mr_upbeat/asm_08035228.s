asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08035228 \n\
/* 08035228 */ PUSH {LR} \n\
/* 0803522a */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0803522c */ BL func_0800c604 \n\
/* 08035230 */ BL func_0800c3b8 \n\
/* 08035234 */ LSLS R0, R0, 0x10 \n\
/* 08035236 */ LSRS R0, R0, 0x10 \n\
/* 08035238 */ LDR R1, =D_089e56e8 \n\
/* 0803523a */ BL func_080087b4 \n\
/* 0803523e */ LDR R1, =func_080351f8 \n\
/* 08035240 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08035242 */ BL func_08005d38 \n\
/* 08035246 */ POP {R0} \n\
/* 08035248 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
