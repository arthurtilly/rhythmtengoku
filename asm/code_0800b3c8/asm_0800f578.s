asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0800f578 \n\
/* 0800f578 */ STRH R1, [R0, 0x18] \n\
/* 0800f57a */ STRH R2, [R0, 0x1A] \n\
/* 0800f57c */ BX LR \n\
.balign 4, 0 \n\
.syntax divided");
