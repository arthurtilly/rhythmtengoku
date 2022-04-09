asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0800bcb8 \n\
/* 0800bcb8 */ PUSH {LR} \n\
/* 0800bcba */ MOVS R0, 0x18 @ Set R0 to 0x18 \n\
/* 0800bcbc */ BL func_0800bc68 \n\
/* 0800bcc0 */ POP {R0} \n\
/* 0800bcc2 */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
