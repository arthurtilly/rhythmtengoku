asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0803647c \n\
/* 0803647c */ LDR R1, =D_089e5c04 \n\
/* 0803647e */ LSLS R0, R0, 0x1 \n\
/* 08036480 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 08036482 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 08036484 */ LDRSH R0, [R0, R1] \n\
/* 08036486 */ BX LR \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
