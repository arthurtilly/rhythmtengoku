asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0803646c \n\
/* 0803646c */ LDR R1, =D_089e5c00 \n\
/* 0803646e */ LSLS R0, R0, 0x1 \n\
/* 08036470 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 08036472 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 08036474 */ LDRSH R0, [R0, R1] \n\
/* 08036476 */ BX LR \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
