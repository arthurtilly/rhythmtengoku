asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08011408 \n\
/* 08011408 */ PUSH {LR} \n\
/* 0801140a */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0801140c */ BL func_0800c604 \n\
/* 08011410 */ BL func_0800c3b8 \n\
/* 08011414 */ LSLS R0, R0, 0x10 \n\
/* 08011416 */ LSRS R0, R0, 0x10 \n\
/* 08011418 */ LDR R1, =D_089cd48c \n\
/* 0801141a */ MOVS R2, 0xC0 @ Set R2 to 0xC0 \n\
/* 0801141c */ LSLS R2, R2, 0x6 \n\
/* 0801141e */ BL func_08002ee0 \n\
/* 08011422 */ LDR R1, =func_080113dc \n\
/* 08011424 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08011426 */ BL func_08005d38 \n\
/* 0801142a */ POP {R0} \n\
/* 0801142c */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
