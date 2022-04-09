asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08046d0c \n\
/* 08046d0c */ PUSH {LR} \n\
/* 08046d0e */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08046d10 */ BL func_0800c604 \n\
/* 08046d14 */ BL func_08017578 \n\
/* 08046d18 */ POP {R0} \n\
/* 08046d1a */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
