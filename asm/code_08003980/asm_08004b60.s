asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08004b60 \n\
/* 08004b60 */ PUSH {LR} \n\
/* 08004b62 */ MOVS R2, 0x0 @ Set R2 to 0x0 \n\
/* 08004b64 */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 08004b66 */ BL func_08004b70 \n\
/* 08004b6a */ POP {R1} \n\
/* 08004b6c */ BX R1 \n\
.balign 4, 0 \n\
.syntax divided");
