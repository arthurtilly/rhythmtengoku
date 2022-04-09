asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08008608 \n\
/* 08008608 */ PUSH {LR} \n\
/* 0800860a */ LDR R2, =0x7fffffff \n\
/* 0800860c */ MOVS R3, 0x0 @ Set R3 to 0x0 \n\
/* 0800860e */ BL func_08008594 \n\
/* 08008612 */ POP {R0} \n\
/* 08008614 */ BX R0 \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
