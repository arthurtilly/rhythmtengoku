asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_080175b0 \n\
/* 080175b0 */ LDR R0, =D_030046a4 \n\
/* 080175b2 */ LDR R0, [R0] \n\
/* 080175b4 */ ADDS R1, R0, 0x0 @ Set R1 to R0 + 0x0 \n\
/* 080175b6 */ ADDS R1, 0x8A @ Add 0x8A to R1 \n\
/* 080175b8 */ LDRH R1, [R1] \n\
/* 080175ba */ ADDS R0, 0x88 @ Add 0x88 to R0 \n\
/* 080175bc */ STRH R1, [R0] \n\
/* 080175be */ BX LR \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
