asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080365f8 \n\
/* 080365f8 */ PUSH {LR} \n\
/* 080365fa */ BL func_080365c8 \n\
/* 080365fe */ POP {R1} \n\
/* 08036600 */ BX R1 \n\
.balign 4, 0 \n\
.syntax divided");
