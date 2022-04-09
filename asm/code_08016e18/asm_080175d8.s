asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080175d8 \n\
/* 080175d8 */ LDR R0, =D_030046a4 \n\
/* 080175da */ LDR R0, [R0] \n\
/* 080175dc */ ADDS R0, 0x88 @ Add 0x88 to R0 \n\
/* 080175de */ LDRH R0, [R0] \n\
/* 080175e0 */ BX LR \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
