asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0800f8f8 \n\
/* 0800f8f8 */ PUSH {LR} \n\
/* 0800f8fa */ BL func_0800f588 \n\
/* 0800f8fe */ POP {R0} \n\
/* 0800f900 */ BX R0 \n\
.balign 4, 0 \n\
.syntax divided");
