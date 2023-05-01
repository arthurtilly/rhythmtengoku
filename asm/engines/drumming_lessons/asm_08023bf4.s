asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_08023bf4 \n\
/* 08023bf4 */ LDR R0, =gCurrentEngineData \n\
/* 08023bf6 */ LDR R0, [R0] \n\
/* 08023bf8 */ LDR R1, =0x000003a9 \n\
/* 08023bfa */ ADDS R0, R0, R1 @ Set R0 to R0 + R1 \n\
/* 08023bfc */ MOVS R1, 0x0 @ Set R1 to 0x0 \n\
/* 08023bfe */ STRB R1, [R0] \n\
/* 08023c00 */ BX LR \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
