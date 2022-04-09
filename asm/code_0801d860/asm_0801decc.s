asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0801decc \n\
/* 0801decc */ ADDS R0, 0x28 @ Add 0x28 to R0 \n\
/* 0801dece */ STRB R1, [R0] \n\
/* 0801ded0 */ BX LR \n\
.balign 4, 0 \n\
.syntax divided");
