asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08028950 \n\
/* 08028950 */ MOVS R0, 0xF @ Set R0 to 0xF \n\
/* 08028952 */ BX LR \n\
.balign 4, 0 \n\
.syntax divided");
