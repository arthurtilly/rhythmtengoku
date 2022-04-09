asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0802b2b4 \n\
/* 0802b2b4 */ LDR R1, =D_030055d0 \n\
/* 0802b2b6 */ LDR R1, [R1] \n\
/* 0802b2b8 */ LDR R2, =0x00000556 \n\
/* 0802b2ba */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 0802b2bc */ STRH R0, [R1] \n\
/* 0802b2be */ BX LR \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
