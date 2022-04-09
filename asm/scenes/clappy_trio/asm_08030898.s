asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08030898 \n\
/* 08030898 */ LDR R1, =D_030055d0 \n\
/* 0803089a */ LDR R1, [R1] \n\
/* 0803089c */ STRB R0, [R1, 0x10] \n\
/* 0803089e */ BX LR \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
