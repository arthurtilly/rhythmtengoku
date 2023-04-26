asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0803e2e0 \n\
/* 0803e2e0 */ LDR R1, =gCurrentEngineData \n\
/* 0803e2e2 */ LDR R1, [R1] \n\
/* 0803e2e4 */ MOVS R2, 0xDE @ Set R2 to 0xDE \n\
/* 0803e2e6 */ LSLS R2, R2, 0x2 \n\
/* 0803e2e8 */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 0803e2ea */ STR R0, [R1] \n\
/* 0803e2ec */ BX LR \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
