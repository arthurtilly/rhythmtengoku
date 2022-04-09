asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08046330 \n\
/* 08046330 */ PUSH {LR} \n\
/* 08046332 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08046334 */ BL func_0800c604 \n\
/* 08046338 */ BL func_08017578 \n\
/* 0804633c */ POP {R0} \n\
/* 0804633e */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
