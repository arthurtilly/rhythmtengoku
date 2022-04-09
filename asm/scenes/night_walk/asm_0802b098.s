asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0802b098 \n\
/* 0802b098 */ PUSH {LR} \n\
/* 0802b09a */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0802b09c */ BL func_0800c604 \n\
/* 0802b0a0 */ BL func_08017578 \n\
/* 0802b0a4 */ POP {R0} \n\
/* 0802b0a6 */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
