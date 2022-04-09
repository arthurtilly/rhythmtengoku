asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08017338 \n\
/* 08017338 */ LDR R2, =D_030046a4 \n\
/* 0801733a */ LDR R2, [R2] \n\
/* 0801733c */ STRH R0, [R2, 0xA] \n\
/* 0801733e */ STRH R1, [R2, 0xC] \n\
/* 08017340 */ BX LR \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
