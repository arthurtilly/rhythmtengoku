asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08045664 \n\
/* 08045664 */ PUSH {LR} \n\
/* 08045666 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08045668 */ BL func_0800c604 \n\
/* 0804566c */ BL func_08017578 \n\
/* 08045670 */ POP {R0} \n\
/* 08045672 */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
