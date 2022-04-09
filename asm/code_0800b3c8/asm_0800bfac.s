asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0800bfac \n\
/* 0800bfac */ PUSH {LR} \n\
/* 0800bfae */ ADDS R2, R1, 0x0 @ Set R2 to R1 + 0x0 \n\
/* 0800bfb0 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 0800bfb2 */ BL func_0800bed0 \n\
/* 0800bfb6 */ POP {R0} \n\
/* 0800bfb8 */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
