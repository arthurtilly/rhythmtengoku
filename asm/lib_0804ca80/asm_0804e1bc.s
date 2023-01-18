asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0804e1bc \n\
/* 0804e1bc */ STRH R1, [R0, 0x1A] \n\
/* 0804e1be */ BX LR \n\
.balign 4, 0 \n\
.syntax divided");
