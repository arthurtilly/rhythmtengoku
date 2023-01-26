asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0801dec4 \n\
/* 0801dec4 */ ADDS R0, 0x31 @ Add 0x31 to R0 \n\
/* 0801dec6 */ LDRB R0, [R0] \n\
/* 0801dec8 */ BX LR \n\
.balign 4, 0 \n\
.syntax divided");
