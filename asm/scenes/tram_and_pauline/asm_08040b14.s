asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08040b14 \n\
/* 08040b14 */ PUSH {LR} \n\
/* 08040b16 */ BL func_0800bc40 \n\
/* 08040b1a */ POP {R0} \n\
/* 08040b1c */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
