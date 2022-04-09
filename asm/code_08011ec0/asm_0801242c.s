asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0801242c \n\
/* 0801242c */ LDR R1, =D_030055d8 \n\
/* 0801242e */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08012430 */ STRB R0, [R1] \n\
/* 08012432 */ BX LR \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
