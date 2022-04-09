asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08009884 \n\
/* 08009884 */ LDR R2, =D_089380ac \n\
/* 08009886 */ LSLS R1, R0, 0x1 \n\
/* 08009888 */ ADDS R1, R1, R0 @ Set R1 to R1 + R0 \n\
/* 0800988a */ LSLS R1, R1, 0x2 \n\
/* 0800988c */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 0800988e */ LDRB R0, [R1, 0x9] \n\
/* 08009890 */ BX LR \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
