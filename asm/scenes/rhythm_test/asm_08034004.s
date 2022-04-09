asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08034004 \n\
/* 08034004 */ PUSH {LR} \n\
/* 08034006 */ BL func_08033b48 \n\
/* 0803400a */ BL func_0802ab34 \n\
/* 0803400e */ POP {R0} \n\
/* 08034010 */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
