asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08047d4c \n\
/* 08047d4c */ PUSH {LR} \n\
/* 08047d4e */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08047d50 */ BL func_0800c604 \n\
/* 08047d54 */ BL func_08017578 \n\
/* 08047d58 */ POP {R0} \n\
/* 08047d5a */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
