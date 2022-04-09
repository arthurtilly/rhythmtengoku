asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0802d068 \n\
/* 0802d068 */ LDR R1, =D_030055d0 \n\
/* 0802d06a */ LDR R2, [R1] \n\
/* 0802d06c */ LSLS R1, R0, 0x2 \n\
/* 0802d06e */ ADDS R1, R1, R0 @ Set R1 to R1 + R0 \n\
/* 0802d070 */ LSLS R1, R1, 0x3 \n\
/* 0802d072 */ ADDS R2, 0x2C @ Add 0x2C to R2 \n\
/* 0802d074 */ ADDS R2, R2, R1 @ Set R2 to R2 + R1 \n\
/* 0802d076 */ LDR R0, [R2] \n\
/* 0802d078 */ BX LR \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
