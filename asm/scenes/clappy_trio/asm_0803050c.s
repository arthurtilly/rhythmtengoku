asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0803050c \n\
/* 0803050c */ PUSH {LR} \n\
/* 0803050e */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08030510 */ BL func_0800c604 \n\
/* 08030514 */ BL func_08017578 \n\
/* 08030518 */ POP {R0} \n\
/* 0803051a */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
