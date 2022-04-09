asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0801c510 \n\
/* 0801c510 */ LDR R1, =D_03001544 \n\
/* 0801c512 */ STRB R0, [R1] \n\
/* 0801c514 */ BX LR \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
