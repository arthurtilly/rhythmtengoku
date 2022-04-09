asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0800f580 \n\
/* 0800f580 */ STRH R1, [R0, 0x1C] \n\
/* 0800f582 */ STRH R2, [R0, 0x1E] \n\
/* 0800f584 */ BX LR \n\
.balign 4, 0 \n\
.syntax divided");
