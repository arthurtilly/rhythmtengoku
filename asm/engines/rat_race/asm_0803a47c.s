asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0803a47c \n\
/* 0803a47c */ LDR R0, =gCurrentEngineData \n\
/* 0803a47e */ LDR R0, [R0] \n\
/* 0803a480 */ MOVS R1, 0x8E @ Set R1 to 0x8E \n\
/* 0803a482 */ LSLS R1, R1, 0x1 \n\
/* 0803a484 */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 0803a486 */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 0803a488 */ STRB R1, [R0] \n\
/* 0803a48a */ BX LR \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
