asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08037434 \n\
/* 08037434 */ PUSH {LR} \n\
/* 08037436 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08037438 */ BL func_0800c604 \n\
/* 0803743c */ BL func_0800c3b8 \n\
/* 08037440 */ LSLS R0, R0, 0x10 \n\
/* 08037442 */ LSRS R0, R0, 0x10 \n\
/* 08037444 */ LDR R1, =D_089e5d2c \n\
/* 08037446 */ BL func_080087b4 \n\
/* 0803744a */ LDR R1, =func_08037404 \n\
/* 0803744c */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0803744e */ BL func_08005d38 \n\
/* 08037452 */ POP {R0} \n\
/* 08037454 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
