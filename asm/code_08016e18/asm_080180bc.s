asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080180bc \n\
/* 080180bc */ ADDS R0, 0x68 @ Add 0x68 to R0 \n\
/* 080180be */ LDRB R0, [R0] \n\
/* 080180c0 */ BX LR \n\
.balign 4, 0 \n\
.syntax divided");
