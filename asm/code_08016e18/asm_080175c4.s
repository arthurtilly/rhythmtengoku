asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080175c4 \n\
/* 080175c4 */ LDR R0, =D_030046a4 \n\
/* 080175c6 */ LDR R1, [R0] \n\
/* 080175c8 */ ADDS R1, 0x88 @ Add 0x88 to R1 \n\
/* 080175ca */ LDRH R0, [R1] \n\
/* 080175cc */ ADDS R0, 0x1 @ Add 0x1 to R0 \n\
/* 080175ce */ STRH R0, [R1] \n\
/* 080175d0 */ BX LR \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
