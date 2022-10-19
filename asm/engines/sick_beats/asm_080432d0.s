asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080432d0 \n\
/* 080432d0 */ MOVS R0, 0x1 @ Set R0 to 0x1 \n\
/* 080432d2 */ STRB R0, [R2] \n\
/* 080432d4 */ BX LR \n\
.balign 4, 0 \n\
.syntax divided");
