asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080478d8 \n\
/* 080478d8 */ PUSH {LR} \n\
/* 080478da */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 080478dc */ BL func_0800c604 \n\
/* 080478e0 */ BL func_08017578 \n\
/* 080478e4 */ POP {R0} \n\
/* 080478e6 */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
