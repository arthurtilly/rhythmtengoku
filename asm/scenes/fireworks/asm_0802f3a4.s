asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0802f3a4 \n\
/* 0802f3a4 */ PUSH {LR} \n\
/* 0802f3a6 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0802f3a8 */ BL func_0800c604 \n\
/* 0802f3ac */ BL func_08017578 \n\
/* 0802f3b0 */ POP {R0} \n\
/* 0802f3b2 */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
