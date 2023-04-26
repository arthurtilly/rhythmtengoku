asm(".syntax unified \n\
\n\
.balign 4, 0 \n\
\n\
thumb_func_start func_0803e310 \n\
/* 0803e310 */ LDR R1, =gCurrentEngineData \n\
/* 0803e312 */ LDR R1, [R1] \n\
/* 0803e314 */ MOVS R2, 0xDF @ Set R2 to 0xDF \n\
/* 0803e316 */ LSLS R2, R2, 0x2 \n\
/* 0803e318 */ ADDS R1, R1, R2 @ Set R1 to R1 + R2 \n\
/* 0803e31a */ STR R0, [R1] \n\
/* 0803e31c */ BX LR \n\
\n\
.ltorg \n\
.balign 4, 0 \n\
.syntax divided");
