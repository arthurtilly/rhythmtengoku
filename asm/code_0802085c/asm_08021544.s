asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
glabel func_08021544 \n\
/* 08021544 */ LDR R1, =D_030055d0 \n\
/* 08021546 */ LDR R1, [R1] \n\
/* 08021548 */ ADDS R1, 0x36 @ Add 0x36 to R1 \n\
/* 0802154a */ STRB R0, [R1] \n\
/* 0802154c */ BX LR \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
