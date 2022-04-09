asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0804642c \n\
/* 0804642c */ PUSH {LR} \n\
/* 0804642e */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08046430 */ BL func_0800c604 \n\
/* 08046434 */ BL func_08017578 \n\
/* 08046438 */ POP {R0} \n\
/* 0804643a */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
