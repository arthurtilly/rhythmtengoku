asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08014db0 \n\
/* 08014db0 */ PUSH {LR} \n\
/* 08014db2 */ BL func_08014d40 \n\
/* 08014db6 */ POP {R0} \n\
/* 08014db8 */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
