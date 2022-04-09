asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0800c42c \n\
/* 0800c42c */ PUSH {LR} \n\
/* 0800c42e */ BL func_0800c3b8 \n\
/* 0800c432 */ BL func_08002194 \n\
/* 0800c436 */ POP {R1} \n\
/* 0800c438 */ BX R1 \n\
.balign 4, 0 \n\
.syntax divided");
