asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
glabel func_0801f7e8 \n\
/* 0801f7e8 */ ADDS R1, 0x26 @ Add 0x26 to R1 \n\
/* 0801f7ea */ STRB R2, [R1] \n\
/* 0801f7ec */ BX LR \n\
.balign 4, 0 \n\
.syntax divided");
