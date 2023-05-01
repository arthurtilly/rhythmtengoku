asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0803e354 \n\
/* 0803e354 */ LDR R1, =gCurrentEngineData \n\
/* 0803e356 */ LDR R1, [R1] \n\
/* 0803e358 */ MOVS R2, 0xE2 @ Set R2 to 0xE2 \n\
/* 0803e35a */ LSLS R2, R2, 0x2 \n\
/* 0803e35c */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 0803e35e */ STR R0, [R1] \n\
/* 0803e360 */ BX LR \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
