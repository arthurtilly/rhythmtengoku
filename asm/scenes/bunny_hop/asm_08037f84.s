asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08037f84 \n\
/* 08037f84 */ PUSH {LR} \n\
/* 08037f86 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08037f88 */ BL func_0800c604 \n\
/* 08037f8c */ BL func_08017578 \n\
/* 08037f90 */ POP {R0} \n\
/* 08037f92 */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
