asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08029178 \n\
/* 08029178 */ LDR R1, =gCurrentEngineData \n\
/* 0802917a */ LDR R1, [R1] \n\
/* 0802917c */ LDR R2, =0x000003ce \n\
/* 0802917e */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 08029180 */ STRB R0, [R1] \n\
/* 08029182 */ BX LR \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
