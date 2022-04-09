asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08047ef4 \n\
/* 08047ef4 */ PUSH {LR} \n\
/* 08047ef6 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08047ef8 */ BL func_0801777c \n\
/* 08047efc */ MOVS R1, 0x80 @ Set R1 to 0x80 \n\
/* 08047efe */ LSLS R1, R1, 0x1 \n\
/* 08047f00 */ BL func_08002894 \n\
/* 08047f04 */ POP {R0} \n\
/* 08047f06 */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
