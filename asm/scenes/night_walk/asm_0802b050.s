asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0802b050 \n\
/* 0802b050 */ LDR R1, =D_03001568 \n\
/* 0802b052 */ LDR R1, [R1] \n\
/* 0802b054 */ MOVS R2, 0xCD @ Set R2 to 0xCD \n\
/* 0802b056 */ LSLS R2, R2, 0x2 \n\
/* 0802b058 */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 0802b05a */ STR R0, [R1] \n\
/* 0802b05c */ BX LR \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
