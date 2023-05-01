asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0803e324 \n\
/* 0803e324 */ LDR R1, =gCurrentEngineData \n\
/* 0803e326 */ LDR R1, [R1] \n\
/* 0803e328 */ MOVS R2, 0xE1 @ Set R2 to 0xE1 \n\
/* 0803e32a */ LSLS R2, R2, 0x2 \n\
/* 0803e32c */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 0803e32e */ STR R0, [R1] \n\
/* 0803e330 */ BX LR \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
