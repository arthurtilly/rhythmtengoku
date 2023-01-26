asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0802e25c \n\
/* 0802e25c */ LDR R1, =D_030055d0 \n\
/* 0802e25e */ LDR R1, [R1] \n\
/* 0802e260 */ MOVS R2, 0xEC @ Set R2 to 0xEC \n\
/* 0802e262 */ LSLS R2, R2, 0x1 \n\
/* 0802e264 */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 0802e266 */ STRH R0, [R1] \n\
/* 0802e268 */ BX LR \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
