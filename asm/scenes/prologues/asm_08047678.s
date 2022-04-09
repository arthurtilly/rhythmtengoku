asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08047678 \n\
/* 08047678 */ PUSH {LR} \n\
/* 0804767a */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0804767c */ BL func_0800c604 \n\
/* 08047680 */ BL func_08017578 \n\
/* 08047684 */ POP {R0} \n\
/* 08047686 */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
