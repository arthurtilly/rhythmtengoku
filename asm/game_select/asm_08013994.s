asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08013994 \n\
/* 08013994 */ LDR R1, =D_03001324 \n\
/* 08013996 */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 08013998 */ STRB R0, [R1] \n\
/* 0801399a */ BX LR \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
