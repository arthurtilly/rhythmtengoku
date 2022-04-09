asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08045fe4 \n\
/* 08045fe4 */ PUSH {LR} \n\
/* 08045fe6 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08045fe8 */ BL func_0800c604 \n\
/* 08045fec */ BL func_08017578 \n\
/* 08045ff0 */ POP {R0} \n\
/* 08045ff2 */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
