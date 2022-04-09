asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08035f40 \n\
/* 08035f40 */ PUSH {LR} \n\
/* 08035f42 */ BL func_08018068 \n\
/* 08035f46 */ POP {R0} \n\
/* 08035f48 */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
