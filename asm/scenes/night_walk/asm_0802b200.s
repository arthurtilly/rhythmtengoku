asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0802b200 \n\
/* 0802b200 */ LDR R1, =D_030055d0 \n\
/* 0802b202 */ LDR R1, [R1] \n\
/* 0802b204 */ MOVS R2, 0xAA @ Set R2 to 0xAA \n\
/* 0802b206 */ LSLS R2, R2, 0x3 \n\
/* 0802b208 */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 0802b20a */ STR R0, [R1] \n\
/* 0802b20c */ BX LR \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
