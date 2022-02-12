asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
glabel func_08020be4 \n\
/* 08020be4 */ LDR R1, =D_030055d0 \n\
/* 08020be6 */ LDR R1, [R1] \n\
/* 08020be8 */ ADDS R1, 0x38 @ Add 0x38 to R1 \n\
/* 08020bea */ STRB R0, [R1] \n\
/* 08020bec */ BX LR \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
