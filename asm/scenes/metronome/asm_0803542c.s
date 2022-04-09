asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0803542c \n\
/* 0803542c */ PUSH {LR} \n\
/* 0803542e */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08035430 */ BL func_0800c604 \n\
/* 08035434 */ BL func_0800c3b8 \n\
/* 08035438 */ LSLS R0, R0, 0x10 \n\
/* 0803543a */ LSRS R0, R0, 0x10 \n\
/* 0803543c */ LDR R1, =D_089e5860 \n\
/* 0803543e */ MOVS R2, 0x80 @ Set R2 to 0x80 \n\
/* 08035440 */ LSLS R2, R2, 0x6 \n\
/* 08035442 */ BL func_08002ee0 \n\
/* 08035446 */ LDR R1, =func_0803541c \n\
/* 08035448 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 0803544a */ BL func_08005d38 \n\
/* 0803544e */ POP {R0} \n\
/* 08035450 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
