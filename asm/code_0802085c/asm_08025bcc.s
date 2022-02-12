asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
glabel func_08025bcc \n\
/* 08025bcc */ LDR R1, =D_030055d0 \n\
/* 08025bce */ LDR R1, [R1] \n\
/* 08025bd0 */ LDR R2, =0x000013f8 \n\
/* 08025bd2 */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 08025bd4 */ STRB R0, [R1] \n\
/* 08025bd6 */ BX LR \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
