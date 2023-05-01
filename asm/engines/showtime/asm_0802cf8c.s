asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0802cf8c \n\
/* 0802cf8c */ LDR R1, =gCurrentEngineData \n\
/* 0802cf8e */ LDR R2, [R1] \n\
/* 0802cf90 */ LSLS R1, R0, 0x2 \n\
/* 0802cf92 */ ADDS R1, R1, R0 @ Set R1 to R1 + R0 \n\
/* 0802cf94 */ LSLS R1, R1, 0x3 \n\
/* 0802cf96 */ ADDS R2, 0x3C @ Add 0x3C to R2 \n\
/* 0802cf98 */ ADDS R2, R2, R1 @ Set R2 to R2 + R1 \n\
/* 0802cf9a */ MOVS R0, 0x0 @ Set R0 to 0x0 \n\
/* 0802cf9c */ STR R0, [R2] \n\
/* 0802cf9e */ BX LR \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
