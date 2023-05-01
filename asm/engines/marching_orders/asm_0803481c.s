asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0803481c \n\
/* 0803481c */ LDR R0, =gCurrentEngineData \n\
/* 0803481e */ LDR R0, [R0] \n\
/* 08034820 */ ADDS R0, 0x44 @ Add 0x44 to R0 \n\
/* 08034822 */ MOVS R1, 0x1 @ Set R1 to 0x1 \n\
/* 08034824 */ STRB R1, [R0] \n\
/* 08034826 */ BX LR \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
