asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080141d4 \n\
/* 080141d4 */ MOVS R0, 0x37 @ Set R0 to 0x37 \n\
/* 080141d6 */ BX LR \n\
.balign 4, 0 \n\
.syntax divided");
