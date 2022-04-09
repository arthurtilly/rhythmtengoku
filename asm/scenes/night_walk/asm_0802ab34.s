asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0802ab34 \n\
/* 0802ab34 */ PUSH {LR} \n\
/* 0802ab36 */ BL func_0802aa4c \n\
/* 0802ab3a */ BL func_0802aa84 \n\
/* 0802ab3e */ POP {R0} \n\
/* 0802ab40 */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
