asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0801f318 \n\
/* 0801f318 */ LDR R1, =D_030055d0 \n\
/* 0801f31a */ LDR R1, [R1] \n\
/* 0801f31c */ ADDS R1, 0x8B @ Add 0x8B to R1 \n\
/* 0801f31e */ STRB R0, [R1] \n\
/* 0801f320 */ BX LR \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
