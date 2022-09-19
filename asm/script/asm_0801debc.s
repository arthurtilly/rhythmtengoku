asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0801debc \n\
/* 0801debc */ STRH R1, [R0, 0x32] \n\
/* 0801debe */ BX LR \n\
.balign 4, 0 \n\
.syntax divided");
