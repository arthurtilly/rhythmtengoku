asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08004b88 \n\
/* 08004b88 */ PUSH {LR} \n\
/* 08004b8a */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08004b8c */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 08004b8e */ BL func_08004b98 \n\
/* 08004b92 */ POP {R1} \n\
/* 08004b94 */ BX R1 \n\
.balign 4, 0 \n\
.syntax divided");
