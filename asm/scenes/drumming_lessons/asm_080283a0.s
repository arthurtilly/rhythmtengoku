asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080283a0 \n\
/* 080283a0 */ PUSH {LR} \n\
/* 080283a2 */ BL func_08028330 \n\
/* 080283a6 */ POP {R0} \n\
/* 080283a8 */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
