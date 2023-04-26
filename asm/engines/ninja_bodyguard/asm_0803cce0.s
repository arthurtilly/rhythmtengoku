asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0803cce0 \n\
/* 0803cce0 */ LDR R1, =gCurrentEngineData \n\
/* 0803cce2 */ LDR R1, [R1] \n\
/* 0803cce4 */ MOVS R2, 0xBC @ Set R2 to 0xBC \n\
/* 0803cce6 */ LSLS R2, R2, 0x2 \n\
/* 0803cce8 */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 0803ccea */ STRH R0, [R1] \n\
/* 0803ccec */ BX LR \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
