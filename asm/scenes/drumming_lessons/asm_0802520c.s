asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0802520c \n\
/* 0802520c */ LDRH R1, [R0] \n\
/* 0802520e */ ADDS R1, 0x1 @ Add 0x1 to R1 \n\
/* 08025210 */ STRH R1, [R0] \n\
/* 08025212 */ BX LR \n\
.balign 4, 0 \n\
.syntax divided");
