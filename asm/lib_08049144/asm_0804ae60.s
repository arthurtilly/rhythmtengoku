asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0804ae60 \n\
/* 0804ae60 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 0804ae62 */ STRB R1, [R0, 0x6] \n\
/* 0804ae64 */ STR R1, [R0, 0x8] \n\
/* 0804ae66 */ STRB R1, [R0, 0x7] \n\
/* 0804ae68 */ BX LR \n\
.balign 4, 0 \n\
.syntax divided");
