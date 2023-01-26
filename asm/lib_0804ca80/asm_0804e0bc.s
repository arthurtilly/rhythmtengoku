asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0804e0bc \n\
/* 0804e0bc */ STRH R1, [R0, 0x1C] \n\
/* 0804e0be */ BX LR \n\
.balign 4, 0 \n\
.syntax divided");
