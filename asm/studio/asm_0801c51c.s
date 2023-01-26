asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0801c51c \n\
/* 0801c51c */ LDR R2, =D_03001545 \n\
/* 0801c51e */ STRB R0, [R2] \n\
/* 0801c520 */ LDR R0, =D_03001546 \n\
/* 0801c522 */ STRB R1, [R0] \n\
/* 0801c524 */ BX LR \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
