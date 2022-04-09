asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08047c08 \n\
/* 08047c08 */ PUSH {LR} \n\
/* 08047c0a */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08047c0c */ BL func_0800c604 \n\
/* 08047c10 */ BL func_08017578 \n\
/* 08047c14 */ POP {R0} \n\
/* 08047c16 */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
