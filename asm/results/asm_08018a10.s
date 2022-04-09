asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08018a10 \n\
/* 08018a10 */ PUSH {LR} \n\
/* 08018a12 */ BL func_08008628 \n\
/* 08018a16 */ BL func_08004058 \n\
/* 08018a1a */ POP {R0} \n\
/* 08018a1c */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
