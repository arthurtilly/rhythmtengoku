asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0802c078 \n\
/* 0802c078 */ PUSH {LR} \n\
/* 0802c07a */ BL func_0800bc40 \n\
/* 0802c07e */ POP {R0} \n\
/* 0802c080 */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
