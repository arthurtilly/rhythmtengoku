asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08019310 \n\
/* 08019310 */ LDR R1, =D_089d7980 \n\
/* 08019312 */ LDR R1, [R1] \n\
/* 08019314 */ MOVS R2, 0xFE @ Set R2 to 0xFE \n\
/* 08019316 */ LSLS R2, R2, 0x1 \n\
/* 08019318 */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 0801931a */ STR R0, [R1] \n\
/* 0801931c */ BX LR \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
