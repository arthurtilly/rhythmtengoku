asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08046b14 \n\
/* 08046b14 */ PUSH {LR} \n\
/* 08046b16 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08046b18 */ BL func_0800c604 \n\
/* 08046b1c */ BL func_08017578 \n\
/* 08046b20 */ POP {R0} \n\
/* 08046b22 */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
