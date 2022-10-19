asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08026b0c \n\
/* 08026b0c */ LDR R1, =D_03001564 \n\
/* 08026b0e */ STRB R0, [R1] \n\
/* 08026b10 */ BX LR \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
